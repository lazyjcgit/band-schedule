import 'dart:async';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/device/core/event_bus.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_protocol_trace.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/l2_packet.dart';

/// Xiaomi screenshot control and data protocol.
///
/// Mi Fitness registers the screenshot data handler for transport type 104.
/// OronBox's Xiaomi dispatcher exposes transport type 104 as the L2 mass
/// channel, so [onLayer2Packet] only forwards that channel to [handleData].
class XiaomiScreenshotSystem extends XiaomiSystem {
  XiaomiScreenshotSystem() : _log = getLogger('XiaomiScreenshotSystem');

  static const _screenshotCapability = 0x01000000;
  static const _capabilityUpdateId = 31;
  static const _screenshotSetupCommand = 108;
  static const _permissionRequest = 112;
  static const _permissionResponse = 113;
  static const _dataType = 104;
  static const _version = 0;
  static const _command = 133;
  static const _timeout = Duration(seconds: 30);

  final Logger _log;
  Timer? _timeoutTimer;
  final _segments = <Uint8List>[];
  int? _totalSegments;
  int _currentSegment = 0;
  XiaomiTraceOperation? _operation;

  bool _negotiationSent = false;

  /// Registers OronBox as a screenshot-capable companion after Xiaomi auth.
  ///
  /// Mi Fitness performs this in two layers: it advertises the capability to
  /// the core and then sends ACCOUNT/31 followed by SYSTEM/108.  The watch
  /// checks that state when the screenshot key combination is pressed; without
  /// it the watch reports an old/unsupported companion and never sends 112.
  Future<void> negotiateAfterAuthentication() async {
    if (_negotiationSent) return;
    _negotiationSent = true;
    final operation = component.protocolTracer?.beginOperation(
      'screenshot.negotiation',
      data: {
        'appCapability': _screenshotCapability,
        'capabilityUpdateId': _capabilityUpdateId,
        'setupCommand': _screenshotSetupCommand,
      },
    );
    try {
      await component.sendProtobufBytes(_buildCapabilityPacket());
      operation?.step('capability_sent', data: {'id': _capabilityUpdateId});
      await component.sendProtobufBytes(
        _buildSystemPacket(_screenshotSetupCommand),
      );
      operation?.step(
        'screenshot_setup_sent',
        data: {'command': _screenshotSetupCommand},
      );
      operation?.complete();
      _log.info(
        '[${entity.id}] registered screenshot capability and sent setup',
      );
    } catch (error, stackTrace) {
      _negotiationSent = false;
      operation?.fail(error);
      _log.warning(
        '[${entity.id}] screenshot capability negotiation failed',
        error,
        stackTrace,
      );
    }
  }

  /// Clears the per-connection negotiation guard before a new auth session.
  void resetSession() {
    _negotiationSent = false;
    _log.fine('[${entity.id}] reset Xiaomi screenshot session');
  }

  void abortPending([Object? reason, StackTrace? stackTrace]) {
    _log.warning(
      '[${entity.id}] aborting pending Xiaomi screenshot transfer',
      reason,
      stackTrace,
    );
    _completeError(
      reason ?? StateError('Xiaomi screenshot transfer aborted'),
      stackTrace,
    );
    _resetAssembly();
  }

  @override
  void onLayer2Packet(L2Channel channel, L2OpCode opcode, Uint8List payload) {
    if (channel == L2Channel.pb) {
      _handleControlPacket(payload);
      return;
    }
    if (channel == L2Channel.mass) {
      handleData(_dataType, payload);
    }
  }

  /// Public for transports that expose Xiaomi's data-handler type separately
  /// from the L2 channel.
  void handleData(int type, Uint8List data) {
    if (type != _dataType || data.length < 6) return;
    if (data[0] != _version || data[1] != _command) return;

    final total = _readUint16LE(data, 2);
    final sequence = _readUint16LE(data, 4);
    if (total <= 0 || sequence <= 0 || sequence > total) {
      _log.warning(
        '[${entity.id}] invalid Xiaomi screenshot segment '
        'sequence=$sequence total=$total',
      );
      _resetAssembly();
      return;
    }
    if (_totalSegments == null) {
      _totalSegments = total;
      _log.info(
        '[${entity.id}] Xiaomi screenshot transfer started: '
        'segments=$total',
      );
    } else if (_totalSegments != total) {
      _log.warning('[${entity.id}] Xiaomi screenshot segment total changed');
      _resetAssembly();
      return;
    }
    if (sequence != _currentSegment + 1) {
      _log.warning(
        '[${entity.id}] Xiaomi screenshot segment out of order '
        'sequence=$sequence expected=${_currentSegment + 1}',
      );
      _resetAssembly();
      return;
    }

    _currentSegment = sequence;
    _segments.add(Uint8List.fromList(Uint8List.sublistView(data, 6)));
    _operation?.step(
      'segment_received',
      data: {'sequence': sequence, 'total': total},
    );
    if (sequence == total) {
      _finishAssembly();
    }
  }

  void _handleControlPacket(Uint8List payload) {
    final pb.WearPacket packet;
    try {
      packet = pb.WearPacket.fromBuffer(payload);
    } catch (_) {
      return;
    }
    if (packet.type != pb.WearPacket_Type.SYSTEM) return;

    final rawSystems = _readLengthDelimitedFields(payload)[4];
    final rawSystem = rawSystems == null || rawSystems.isEmpty
        ? null
        : rawSystems.first;
    final systemPayload =
        rawSystem ??
        (packet.hasSystem() ? packet.system.writeToBuffer() : null);
    if (packet.id == _permissionRequest &&
        systemPayload != null &&
        _hasScreenshotPermissionRequest(systemPayload)) {
      _log.info('[${entity.id}] wearable requested screenshot permission');
      _operation ??= component.protocolTracer?.beginOperation(
        'screenshot.capture',
        data: {'origin': 'wearable'},
      );
      _operation?.step(
        'permission_requested',
        data: {'command': _permissionRequest},
      );
      _startAssembly();
      unawaited(_respondToPermissionRequest());
      return;
    }
  }

  void _startAssembly() {
    _resetAssembly();
    _timeoutTimer?.cancel();
    _timeoutTimer = Timer(_timeout, () {
      _completeError(
        TimeoutException('Timed out waiting for Xiaomi screenshot'),
      );
    });
  }

  Future<void> _sendPermissionResponse({required bool granted}) {
    // Mi Fitness uses the newer System oneof field 74:
    // System(74) -> PermissionList(1) -> Permission(1=2, 2=0/1).
    final permission = BytesBuilder()
      ..add(_fieldVarint(1, 2))
      ..add(_fieldVarint(2, granted ? 0 : 1));
    final permissionList = BytesBuilder()
      ..add(_fieldBytes(1, permission.toBytes()));
    final system = BytesBuilder()
      ..add(_fieldBytes(74, permissionList.toBytes()));
    final packet = BytesBuilder()
      ..add(_fieldVarint(1, pb.WearPacket_Type.SYSTEM.value))
      ..add(_fieldVarint(2, _permissionResponse))
      ..add(_fieldBytes(4, system.toBytes()));
    return component.sendProtobufBytes(Uint8List.fromList(packet.toBytes()));
  }

  Future<void> _respondToPermissionRequest() async {
    try {
      await _sendPermissionResponse(granted: true);
      _operation?.step(
        'permission_response_sent',
        data: {'command': _permissionResponse, 'granted': true},
      );
      _log.fine('[${entity.id}] screenshot permission response sent');
    } catch (error, stackTrace) {
      _operation?.fail(error);
      _log.warning(
        '[${entity.id}] screenshot permission response failed',
        error,
      );
      _completeError(error, stackTrace);
    }
  }

  bool _hasScreenshotPermissionRequest(Uint8List system) {
    final fields = _readLengthDelimitedFields(system);
    for (final permissionList in fields[74] ?? const <Uint8List>[]) {
      for (final permission
          in _readLengthDelimitedFields(permissionList)[1] ??
              const <Uint8List>[]) {
        final permissionType = _readVarintField(permission, 1);
        if (permissionType == 2) return true;
      }
    }
    return false;
  }

  Map<int, List<Uint8List>> _readLengthDelimitedFields(Uint8List data) {
    final fields = <int, List<Uint8List>>{};
    var offset = 0;
    while (offset < data.length) {
      final key = _readVarint(data, offset);
      offset = key.nextOffset;
      final field = key.value >> 3;
      final wireType = key.value & 7;
      if (wireType == 0) {
        final value = _readVarint(data, offset);
        offset = value.nextOffset;
        continue;
      }
      if (wireType != 2) return fields;
      final length = _readVarint(data, offset);
      offset = length.nextOffset;
      final end = offset + length.value;
      if (end > data.length) return fields;
      fields
          .putIfAbsent(field, () => [])
          .add(Uint8List.sublistView(data, offset, end));
      offset = end;
    }
    return fields;
  }

  int? _readVarintField(Uint8List data, int fieldNumber) {
    var offset = 0;
    while (offset < data.length) {
      final key = _readVarint(data, offset);
      offset = key.nextOffset;
      final field = key.value >> 3;
      final wireType = key.value & 7;
      if (wireType != 0) {
        if (wireType == 2) {
          final length = _readVarint(data, offset);
          offset = length.nextOffset + length.value;
          continue;
        }
        return null;
      }
      final value = _readVarint(data, offset);
      offset = value.nextOffset;
      if (field == fieldNumber) return value.value;
    }
    return null;
  }

  _Varint _readVarint(Uint8List data, int offset) {
    var value = 0;
    var shift = 0;
    while (offset < data.length && shift < 64) {
      final byte = data[offset++];
      value |= (byte & 0x7f) << shift;
      if ((byte & 0x80) == 0) return _Varint(value, offset);
      shift += 7;
    }
    return _Varint(value, data.length);
  }

  void _finishAssembly() {
    final merged = BytesBuilder();
    for (final segment in _segments) {
      merged.add(segment);
    }
    final bytes = Uint8List.fromList(merged.toBytes());
    _resetAssembly();
    if (bytes.length < 10) {
      _completeError(FormatException('Xiaomi screenshot payload is too short'));
      return;
    }

    final expectedCrc = _readUint32LE(bytes, bytes.length - 4);
    final content = Uint8List.sublistView(bytes, 0, bytes.length - 4);
    if (_crc32(content) != expectedCrc) {
      _completeError(FormatException('Xiaomi screenshot checksum mismatch'));
      return;
    }
    final idLength = content[0];
    final imageStart = 1 + idLength + 5;
    if (imageStart > content.length) {
      _completeError(FormatException('Xiaomi screenshot header is invalid'));
      return;
    }
    final image = Uint8List.sublistView(content, imageStart);
    if (!_isPng(image)) {
      _completeError(FormatException('Xiaomi screenshot is not a PNG image'));
      return;
    }
    _log.info(
      '[${entity.id}] Xiaomi screenshot received: ${image.length} bytes',
    );
    final copy = Uint8List.fromList(image);
    entity.emit(XiaomiScreenshotReceived(deviceId: entity.id, bytes: copy));
    _operation?.complete(data: {'imageLength': image.length});
    _operation = null;
    _complete();
  }

  void _complete() {
    _timeoutTimer?.cancel();
    _timeoutTimer = null;
  }

  void _completeError(Object error, [StackTrace? stackTrace]) {
    _timeoutTimer?.cancel();
    _timeoutTimer = null;
    _log.warning(
      '[${entity.id}] Xiaomi screenshot transfer failed',
      error,
      stackTrace,
    );
    _operation?.fail(error);
    _operation = null;
  }

  void _resetAssembly() {
    _segments.clear();
    _totalSegments = null;
    _currentSegment = 0;
  }

  static Uint8List _fieldVarint(int number, int value) {
    final out = BytesBuilder()..add(_encodeVarint((number << 3) | 0));
    out.add(_encodeVarint(value));
    return Uint8List.fromList(out.toBytes());
  }

  static Uint8List _fieldBytes(int number, Uint8List value) {
    final out = BytesBuilder()
      ..add(_encodeVarint((number << 3) | 2))
      ..add(_encodeVarint(value.length))
      ..add(value);
    return Uint8List.fromList(out.toBytes());
  }

  static Uint8List _encodeVarint(int value) {
    final out = BytesBuilder();
    var remaining = value;
    do {
      var byte = remaining & 0x7f;
      remaining >>= 7;
      if (remaining != 0) byte |= 0x80;
      out.addByte(byte);
    } while (remaining != 0);
    return Uint8List.fromList(out.toBytes());
  }

  static int _readUint16LE(Uint8List data, int offset) =>
      data[offset] | (data[offset + 1] << 8);

  static int _readUint32LE(Uint8List data, int offset) =>
      data[offset] |
      (data[offset + 1] << 8) |
      (data[offset + 2] << 16) |
      (data[offset + 3] << 24);

  static bool _isPng(Uint8List data) {
    const signature = [0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a];
    return data.length >= signature.length &&
        List.generate(
          signature.length,
          (i) => data[i] == signature[i],
        ).every((value) => value);
  }

  static int _crc32(Uint8List data) {
    var crc = 0xffffffff;
    for (final byte in data) {
      crc ^= byte;
      for (var i = 0; i < 8; i++) {
        crc = (crc & 1) == 1 ? (crc >> 1) ^ 0xedb88320 : crc >> 1;
      }
    }
    return (crc ^ 0xffffffff) & 0xffffffff;
  }

  @override
  Future<void> dispose() async {
    _timeoutTimer?.cancel();
    _completeError(StateError('Xiaomi screenshot system disposed'));
    _resetAssembly();
  }

  static Uint8List _buildCapabilityPacket() {
    // The current MiWear account schema uses an older generated oneof.  The
    // official client sends Account/31 with the newer oneof field 37:
    // Capability { uint32 capability = 1; }.
    final capability = _fieldVarint(1, _screenshotCapability);
    final account = _fieldBytes(37, capability);
    return Uint8List.fromList([
      ..._fieldVarint(1, pb.WearPacket_Type.ACCOUNT.value),
      ..._fieldVarint(2, _capabilityUpdateId),
      ..._fieldBytes(3, account),
    ]);
  }

  static Uint8List _buildSystemPacket(int command) => Uint8List.fromList([
    ..._fieldVarint(1, pb.WearPacket_Type.SYSTEM.value),
    ..._fieldVarint(2, command),
  ]);
}

class _Varint {
  const _Varint(this.value, this.nextOffset);

  final int value;
  final int nextOffset;
}
