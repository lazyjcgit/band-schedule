import 'dart:async';
import 'dart:collection';
import 'dart:typed_data';

import 'package:crypto/crypto.dart' as crypto;
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_system.dart';
import 'package:band_schedule_pc/src/protocols/common/device_protocol.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_common.pbenum.dart'
    as pb_common;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_mass.pb.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/l2_packet.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/mass_packet.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/transport/mass_transfer.dart';

typedef XiaomiMassSendExecutor =
    Future<void> Function({
      required Uint8List fileData,
      required MassDataType dataType,
      int? expectedSliceLength,
      void Function(SendMassCallbackData data)? onProgress,
    });

class XiaomiMassSendQueue {
  XiaomiMassSendQueue({required this.execute});

  final XiaomiMassSendExecutor execute;
  final _pending = Queue<_MassSendJob>();
  final _inFlight = <String, _MassSendJob>{};
  bool _draining = false;

  Future<void> enqueue({
    required Uint8List fileData,
    required MassDataType dataType,
    int? expectedSliceLength,
    void Function(SendMassCallbackData data)? onProgress,
  }) {
    final data = Uint8List.fromList(fileData);
    // The same bytes can legitimately be sent as different MASS payloads.
    // The data type and negotiated slice size are part of the transfer
    // contract, so they must participate in coalescing as well.
    final key = [
      dataType.value,
      expectedSliceLength ?? -1,
      crypto.md5.convert(data),
    ].join(':');
    final existing = _inFlight[key];
    if (existing != null) {
      existing.listeners.add(onProgress);
      return existing.completer.future;
    }

    final job = _MassSendJob(
      key: key,
      fileData: data,
      dataType: dataType,
      expectedSliceLength: expectedSliceLength,
      onProgress: onProgress,
    );
    _inFlight[key] = job;
    _pending.add(job);
    _drain();
    return job.completer.future;
  }

  /// Fails all queued requests when the underlying link is no longer usable.
  ///
  /// The active transport operation is allowed to unwind through its normal
  /// error path, but its public future is completed immediately so callers do
  /// not wait for a transfer timeout after a disconnect.
  void abortPending([Object? reason, StackTrace? stackTrace]) {
    final error = reason ?? StateError('Xiaomi MASS transfer aborted');
    for (final job in _pending) {
      if (!job.completer.isCompleted) {
        job.completer.completeError(error, stackTrace ?? StackTrace.current);
      }
    }
    for (final job in _inFlight.values) {
      if (!job.completer.isCompleted) {
        job.completer.completeError(error, stackTrace ?? StackTrace.current);
      }
    }
    _pending.clear();
    _inFlight.clear();
  }

  void _drain() {
    if (_draining) return;
    _draining = true;
    unawaited(_drainAsync());
  }

  Future<void> _drainAsync() async {
    try {
      while (_pending.isNotEmpty) {
        final job = _pending.removeFirst();
        try {
          await execute(
            fileData: job.fileData,
            dataType: job.dataType,
            expectedSliceLength: job.expectedSliceLength,
            onProgress: job.emitProgress,
          );
          if (!job.completer.isCompleted) job.completer.complete();
        } catch (error, stackTrace) {
          if (!job.completer.isCompleted) {
            job.completer.completeError(error, stackTrace);
          }
        } finally {
          _inFlight.remove(job.key);
        }
      }
    } finally {
      _draining = false;
      if (_pending.isNotEmpty) _drain();
    }
  }
}

class _MassSendJob {
  _MassSendJob({
    required this.key,
    required this.fileData,
    required this.dataType,
    required this.expectedSliceLength,
    required void Function(SendMassCallbackData data)? onProgress,
  }) {
    listeners.add(onProgress);
  }

  final String key;
  final Uint8List fileData;
  final MassDataType dataType;
  final int? expectedSliceLength;
  final completer = Completer<void>();
  final listeners = <void Function(SendMassCallbackData data)?>[];

  void emitProgress(SendMassCallbackData data) {
    for (final listener in List<void Function(SendMassCallbackData data)?>.from(
      listeners,
    )) {
      if (listener == null) continue;
      try {
        listener(data);
      } catch (_) {
        // A progress consumer must not abort the transport operation.
      }
    }
  }
}

class XiaomiMassSystem extends XiaomiSystem {
  late final XiaomiMassSendQueue _sendQueue = XiaomiMassSendQueue(
    execute:
        ({
          required fileData,
          required dataType,
          expectedSliceLength,
          onProgress,
        }) => _sendFileNow(
          fileData: fileData,
          dataType: dataType,
          expectedSliceLength: expectedSliceLength,
          onProgress: onProgress,
        ),
  );

  late final MassTransfer _transfer = MassTransfer(
    sendPbPacket: component.sendPbPacket,
    sar: component.sar,
    requestPool: component.requestPool,
    deviceAddr: entity.id,
    tracer: component.protocolTracer,
  );

  Future<void> sendFile({
    required Uint8List fileData,
    required MassDataType dataType,
    int? expectedSliceLength,
    void Function(SendMassCallbackData data)? onProgress,
  }) async {
    return _sendQueue.enqueue(
      fileData: fileData,
      dataType: dataType,
      expectedSliceLength: expectedSliceLength,
      onProgress: onProgress,
    );
  }

  void abortPending([Object? reason, StackTrace? stackTrace]) {
    _sendQueue.abortPending(reason, stackTrace);
  }

  @override
  Future<void> dispose() async {
    _sendQueue.abortPending(StateError('Xiaomi MASS system disposed'));
    await super.dispose();
  }

  Future<void> _sendFileNow({
    required Uint8List fileData,
    required MassDataType dataType,
    int? expectedSliceLength,
    void Function(SendMassCallbackData data)? onProgress,
  }) async {
    if (component.sppV1) {
      return _sendSppV1File(
        fileData: fileData,
        dataType: dataType,
        expectedSliceLength: expectedSliceLength,
        onProgress: onProgress,
      );
    }
    return _transfer.sendFileWithKnownSliceLength(
      fileData: fileData,
      dataType: dataType,
      expectedSliceLength: expectedSliceLength,
      onProgress: onProgress,
    );
  }

  Future<void> _sendSppV1File({
    required Uint8List fileData,
    required MassDataType dataType,
    int? expectedSliceLength,
    void Function(SendMassCallbackData data)? onProgress,
  }) async {
    final md5 = Uint8List.fromList(crypto.md5.convert(fileData).bytes);
    final response = await component.requestPool.request<PrepareResponse>(
      packet: pb.WearPacket(
        type: pb.WearPacket_Type.MASS,
        id: Mass_MassID.PREPARE.value,
        mass: Mass(
          prepareRequest: PrepareRequest(
            dataType: dataType.value,
            dataId: md5,
            dataLength: fileData.length,
          ),
        ),
      ),
      typeMatcher: (packet) =>
          packet.whichPayload() == pb.WearPacket_Payload.mass &&
          packet.id == Mass_MassID.PREPARE.value,
      responseMapper: (packet) => packet.mass.prepareResponse,
      timeout: const Duration(seconds: 10),
    );
    if (response.prepareStatus != pb_common.PrepareStatus.READY) {
      throw ProtocolException('SPP v1 mass prepare not READY');
    }
    final resume = response.hasRemainedDataLength()
        ? response.remainedDataLength.clamp(0, fileData.length)
        : 0;
    final chunkSize =
        expectedSliceLength ??
        (response.hasExpectedSliceLength()
            ? response.expectedSliceLength
            : 2048);
    final payload = MassPacket.build(
      fileData,
      dataType,
    ).encodeWithCrc32(sentLength: resume);
    final partSize = chunkSize - 4;
    if (partSize <= 0) throw ProtocolException('Invalid SPP v1 chunk size');
    final total = (payload.length / partSize).ceil();
    for (var index = 0; index < total; index++) {
      final current = index + 1;
      final start = index * partSize;
      final end = (start + partSize).clamp(0, payload.length);
      final chunk = BytesBuilder()
        ..addByte(total & 0xff)
        ..addByte((total >> 8) & 0xff)
        ..addByte(current & 0xff)
        ..addByte((current >> 8) & 0xff)
        ..add(Uint8List.sublistView(payload, start, end));
      await component.sendSppV1MassChunk(chunk.toBytes());
      onProgress?.call(
        SendMassCallbackData(
          progress: current / total,
          totalParts: total,
          currentPartNum: current,
          actualDataPayloadLen: end - start,
        ),
      );
    }
  }

  Future<ReverseMassReceiveResult> beginReverseMassReceive(
    L2Channel channel, {
    required void Function(ReceiveMassCallbackData) progressCb,
  }) {
    return _transfer.beginReverseMassReceive(channel, progressCb: progressCb);
  }

  Future<ReverseMassReceiveResult> beginReverseMassReceiveMulti(
    List<L2Channel> channels, {
    required void Function(ReceiveMassCallbackData) progressCb,
  }) {
    return _transfer.beginReverseMassReceiveMulti(
      channels,
      progressCb: progressCb,
    );
  }

  void clearReverseMassWait(L2Channel channel) {
    _transfer.clearReverseMassWait(channel);
  }

  void cancelReverseMassReceive(L2Channel channel) {
    _transfer.cancelReverseMassReceive(channel);
  }

  @override
  void onLayer2Packet(L2Channel channel, L2OpCode opcode, Uint8List payload) {
    if (channel == L2Channel.pb) {
      return;
    }
    if (_transfer.reverseMassWaits.containsKey(channel.value)) {
      _transfer.handleReverseMassPayload(channel, payload);
    }
  }
}
