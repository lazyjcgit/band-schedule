import 'dart:async';

import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_system.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_system.pb.dart'
    as pb_system;

class XiaomiReportSystem extends XiaomiPbSystem {
  static final _log = getLogger('XiaomiReportSystem');

  Completer<pb_system.ReportData_Result>? _deviceLogWaiter;

  Future<pb_system.ReportData_Result> requestDeviceLogExport({
    Duration timeout = const Duration(seconds: 90),
  }) async {
    _log.info('[${entity.id}] requesting device log export');
    if (_deviceLogWaiter != null) {
      throw StateError('device log export already in progress');
    }
    final completer = Completer<pb_system.ReportData_Result>();
    _deviceLogWaiter = completer;
    try {
      await component.sendPbPacket(
        _buildReportDataPacket(pb_system.ReportData_Type.DEVICE_LOG),
      );
      try {
        return await completer.future.timeout(timeout);
      } on TimeoutException {
        throw DeviceLogRequestTimeout(timeout);
      }
    } finally {
      if (identical(_deviceLogWaiter, completer) && !completer.isCompleted) {
        _deviceLogWaiter = null;
      }
    }
  }

  void clearDeviceLogWait() {
    _deviceLogWaiter = null;
  }

  void cancelDeviceLogExport() {
    final waiter = _deviceLogWaiter;
    if (waiter != null && !waiter.isCompleted) {
      waiter.completeError(StateError('Device log export was cancelled'));
    }
    _deviceLogWaiter = null;
  }

  @override
  void onWearPacket(pb.WearPacket packet) {
    if (packet.whichPayload() != pb.WearPacket_Payload.system) return;
    final system = packet.system;
    if (system.whichPayload() != pb_system.System_Payload.reportDataResult) {
      return;
    }
    final result = system.reportDataResult;
    if (result.type != pb_system.ReportData_Type.DEVICE_LOG &&
        result.type != pb_system.ReportData_Type.DUMP_LOG) {
      _log.warning(
        '[${entity.id}] ignored report response type=${result.type.name} '
        'status=${result.status.name} while waiting for device logs',
      );
      return;
    }

    final waiter = _deviceLogWaiter;
    if (waiter != null && !waiter.isCompleted) {
      waiter.complete(result);
    }
    _deviceLogWaiter = null;
  }
}

class DeviceLogRequestTimeout implements Exception {
  const DeviceLogRequestTimeout(this.timeout);

  final Duration timeout;

  @override
  String toString() =>
      'Device did not answer the log export request within '
      '${timeout.inSeconds}s';
}

pb.WearPacket _buildReportDataPacket(pb_system.ReportData_Type reportType) {
  final reportData = pb_system.ReportData(type: reportType);
  final packetPayload = pb_system.System(reportData: reportData);

  return pb.WearPacket(
    type: pb.WearPacket_Type.SYSTEM,
    id: pb_system.System_SystemID.REPORT_DATA.value,
    system: packetPayload,
  );
}
