import 'dart:async';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/device/core/transport.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/xiaomi/commands/xiaomi_request_pool.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/l1_packet.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/l1cmd_packet.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/l2_packet.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/spp_v1_packet.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/transport/xiaomi_sar_controller.dart';
import 'package:band_schedule_pc/src/device/xiaomi/utils/auth_utils.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_protocol_trace.dart';

class _Mutex {
  Completer<void>? _last;

  Future<void> acquire() async {
    final previous = _last;
    final completer = Completer<void>();
    _last = completer;
    if (previous != null) {
      await previous.future;
    }
  }

  void release() {
    final current = _last;
    if (current != null && !current.isCompleted) {
      current.complete();
    }
  }
}

class XiaomiDeviceComponent {
  XiaomiDeviceComponent({required this.transport, required this.sppV1})
    : _log = getLogger('XiaomiDeviceComponent');

  final Transport transport;
  final bool sppV1;
  final Logger _log;

  XiaomiAuthKeys? authKeys;
  void Function(Uint8List l2Payload)? onL2Payload;

  /// Activity/fitness files use a dedicated transport channel rather than
  /// protobuf.  Keep that channel separate from [onL2Payload] so a complete
  /// file can be assembled by the health system without pretending it is a
  /// protobuf packet.
  void Function(Uint8List payload)? onActivityPayload;
  void Function(Uint8List frame)? onRawOutgoing;
  void Function(Object error, StackTrace stackTrace)? onTransportFailure;
  XiaomiProtocolTracer? protocolTracer;
  Completer<void>? _sppHelloCompleter;
  final XiaomiSppV1Codec _sppV1Codec = XiaomiSppV1Codec();
  final _massSendLock = _Mutex();

  static final Uint8List _sppHelloPacket = Uint8List.fromList([
    0xba,
    0xdc,
    0xfe,
    0x00,
    0xc0,
    0x03,
    0x00,
    0x00,
    0x01,
    0x00,
    0xef,
  ]);

  late final XiaomiSarController sar = XiaomiSarController(
    onSend: _onSarSend,
    onData: (data) => onL2Payload?.call(data),
    onSendError: _onSarSendError,
  );

  late final XiaomiRequestPool requestPool = XiaomiRequestPool(
    sendPacket: sendPbPacket,
  );

  Future<void> _onSarSend(Uint8List data) async {
    _log.fine('SAR sending ${data.length} bytes');
    _traceOutgoingL1(data);
    onRawOutgoing?.call(Uint8List.fromList(data));
    await transport.send(data);
  }

  void _onSarSendError(Object error, StackTrace stackTrace) {
    _log.warning('SAR send failed, marking transport disconnected', error);
    sar.abortPendingTransmissions(error);
    requestPool.clear();
    onTransportFailure?.call(error, stackTrace);
  }

  Future<void> startSession({required bool spp}) async {
    if (spp) {
      _log.info('starting SPP hello');
      _sppHelloCompleter = Completer<void>();
      final hello = sppV1 ? _sppV1Codec.versionRequest() : _sppHelloPacket;
      onRawOutgoing?.call(Uint8List.fromList(hello));
      await transport.send(hello);
      await _sppHelloCompleter!.future.timeout(const Duration(seconds: 10));
      _sppHelloCompleter = null;
      _log.info('SPP hello completed');
    }
    if (!sppV1) sar.start();
  }

  bool handleSppHello(Uint8List data) {
    if (sppV1) return false;
    if (data.length < 3 ||
        data[0] != 0xba ||
        data[1] != 0xdc ||
        data[2] != 0xfe) {
      return false;
    }
    _log.fine('received SPP hello response (${data.length} bytes)');
    if (_sppHelloCompleter != null && !_sppHelloCompleter!.isCompleted) {
      _sppHelloCompleter!.complete();
    }
    return true;
  }

  void completeSppV1Hello() {
    final completer = _sppHelloCompleter;
    if (completer != null && !completer.isCompleted) completer.complete();
  }

  Future<void> sendPbPacket(
    pb.WearPacket packet, {
    bool waitForAck = false,
  }) async {
    final encrypted = authKeys != null;
    _log.fine(
      'sending PB packet type=${packet.type} id=${packet.id} encrypted=$encrypted',
    );
    _traceOutgoingWearPacket(packet, encrypted: encrypted);
    if (sppV1) {
      _sppV1Codec.authKeys = authKeys;
      final data = _sppV1Codec.encodeProtobuf(
        packet.writeToBuffer(),
        authenticate: false,
      );
      onRawOutgoing?.call(Uint8List.fromList(data));
      await transport.send(data);
      return;
    }
    final l2 = encrypted
        ? L2Packet.pbWriteEnc(packet, authKeys!.cipher)
        : L2Packet.pbWrite(packet);
    if (waitForAck) {
      await sar.sendDataRegisterAck(l2.toBytes()).ack;
    } else {
      await sar.sendData(l2.toBytes());
    }
  }

  /// Sends an already encoded WearPacket through the normal protobuf
  /// transport. This is needed for newer Xiaomi control fields that are not
  /// represented by the public protobuf schema yet.
  Future<void> sendProtobufBytes(
    Uint8List bytes, {
    bool waitForAck = false,
  }) async {
    final encrypted = authKeys != null;
    _log.fine('sending raw PB packet len=${bytes.length} encrypted=$encrypted');
    protocolTracer?.emitWearPacket(
      direction: 'out',
      bytes: bytes,
      encrypted: encrypted,
    );
    if (sppV1) {
      _sppV1Codec.authKeys = authKeys;
      final data = _sppV1Codec.encodeProtobuf(bytes, authenticate: false);
      onRawOutgoing?.call(Uint8List.fromList(data));
      await transport.send(data);
      return;
    }
    final l2 = encrypted
        ? L2Packet.pbWriteEncBytes(bytes, authKeys!.cipher)
        : L2Packet.pbWriteBytes(bytes);
    if (waitForAck) {
      await sar.sendDataRegisterAck(l2.toBytes()).ack;
    } else {
      await sar.sendData(l2.toBytes());
    }
  }

  Future<void> sendPbPacketUnencrypted(pb.WearPacket packet) async {
    _log.fine(
      'sending unencrypted PB packet type=${packet.type} id=${packet.id}',
    );
    _traceOutgoingWearPacket(packet, encrypted: false);
    if (sppV1) {
      _sppV1Codec.authKeys = authKeys;
      final data = _sppV1Codec.encodeProtobuf(
        packet.writeToBuffer(),
        authenticate: true,
      );
      onRawOutgoing?.call(Uint8List.fromList(data));
      await transport.send(data);
      return;
    }
    final l2 = L2Packet.pbWrite(packet);
    await sar.sendData(l2.toBytes());
  }

  Future<void> sendSppV1MassChunk(Uint8List payload) async {
    _sppV1Codec.authKeys = authKeys;
    final data = _sppV1Codec.encodeData(payload);
    onRawOutgoing?.call(Uint8List.fromList(data));
    await transport.send(data);
  }

  List<XiaomiSppV1Packet> decodeSppV1(Uint8List data) {
    _sppV1Codec.authKeys = authKeys;
    return _sppV1Codec.add(data);
  }

  Future<void> sendL2MassData(Uint8List l2Payload) async {
    final l2 = L2Packet(
      channel: L2Channel.mass,
      opcode: L2OpCode.write,
      payload: l2Payload,
    );
    await sar.sendData(l2.toBytes());
  }

  Future<void> sendL2NetworkData(Uint8List l2Payload) async {
    final l2 = L2Packet(
      channel: L2Channel.network,
      opcode: L2OpCode.write,
      payload: l2Payload,
    );
    await sar.sendData(l2.toBytes());
  }

  Future<RegisteredAck> sendL2MassDataRegisterAck(
    Uint8List l2Payload, {
    Duration? timeout,
  }) async {
    await _massSendLock.acquire();
    try {
      final l2 = L2Packet(
        channel: L2Channel.mass,
        opcode: L2OpCode.write,
        payload: l2Payload,
      );
      return sar.sendDataRegisterAck(l2.toBytes(), timeout: timeout);
    } finally {
      _massSendLock.release();
    }
  }

  Future<void> dispose() async {
    _log.info('disposing component');
    sar.stop();
    requestPool.clear();
  }

  void _traceOutgoingL1(Uint8List data) {
    if (data.length < 8 || data[0] != 0xa5 || data[1] != 0xa5) return;
    final type = L1DataType.fromValue(data[2] & L1Packet.typeMask);
    final size = data[4] | (data[5] << 8);
    // Keep control frames and a small sample of payload frames visible while
    // avoiding a hex conversion for every MASS transfer fragment.
    if (type == L1DataType.data && size > 64 && data[3].isOdd) return;
    final trace = <String, Object?>{
      'layer': 'l1',
      'direction': 'out',
      'type': type.name,
      'seq': data[3],
      'frx': (data[2] & L1Packet.frxMask) != 0,
      'size': size,
      'hex': type == L1DataType.data && size > 64
          ? _hexPreview(Uint8List.sublistView(data, 8))
          : _hex(Uint8List.sublistView(data, 8)),
      if (type == L1DataType.data && size > 64) 'sampled': true,
    };
    if (type == L1DataType.cmd) {
      try {
        trace['command'] = L1CmdPacket.fromPayloadBytes(
          Uint8List.sublistView(data, 8),
        )?.cmd.name;
      } catch (_) {
        trace['command'] = 'decode_failed';
      }
    }
    protocolTracer?.emit(trace);
  }

  void _traceOutgoingWearPacket(
    pb.WearPacket packet, {
    required bool encrypted,
  }) {
    protocolTracer?.emitWearPacket(
      direction: 'out',
      bytes: packet.writeToBuffer(),
      encrypted: encrypted,
    );
  }

  static String _hex(Uint8List bytes) =>
      bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join(' ');

  static String _hexPreview(Uint8List bytes, {int maxBytes = 64}) {
    final length = bytes.length > maxBytes ? maxBytes : bytes.length;
    final preview = _hex(Uint8List.sublistView(bytes, 0, length));
    return bytes.length > length ? '$preview …' : preview;
  }
}
