import 'dart:async';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/core/models/bt_models.dart';
import 'package:band_schedule_pc/src/device/core/transport.dart';

sealed class DeviceEvent {
  const DeviceEvent({required this.deviceId});

  final String deviceId;
}

final class TransportConnected extends DeviceEvent {
  const TransportConnected({required super.deviceId});
}

final class TransportDisconnected extends DeviceEvent {
  const TransportDisconnected({required super.deviceId});
}

enum PassiveReconnectPhase { attempt, success, failed }

final class PassiveReconnectStatus extends DeviceEvent {
  const PassiveReconnectStatus({
    required super.deviceId,
    required this.phase,
    this.attempt = 0,
  });

  static const commandEvent = 'device.reconnect.status';

  final PassiveReconnectPhase phase;
  final int attempt;
}

final class LinkTrafficUpdated extends DeviceEvent {
  const LinkTrafficUpdated({required super.deviceId, required this.traffic});

  final LinkTraffic traffic;
}

final class DeviceAuthenticated extends DeviceEvent {
  const DeviceAuthenticated({required super.deviceId});
}

final class AuthFailed extends DeviceEvent {
  const AuthFailed({required super.deviceId, required this.error});

  final String error;
}

final class BatteryUpdated extends DeviceEvent {
  const BatteryUpdated({required super.deviceId, required this.battery});

  final BatteryStatus battery;
}

/// The wearable started or stopped the phone finder through the Xiaomi
/// private system channel. This is an inbound event: the phone reacts locally
/// instead of sending the same command back to the wearable.
final class XiaomiFindPhoneRequested extends DeviceEvent {
  const XiaomiFindPhoneRequested({
    required super.deviceId,
    required this.finding,
  });

  final bool finding;
}

/// The wearable started or stopped its own finder through the Xiaomi private
/// system channel. This is an inbound state notification: the phone updates
/// the device-page switch instead of sending a second command back.
final class XiaomiFindWearableRequested extends DeviceEvent {
  const XiaomiFindWearableRequested({
    required super.deviceId,
    required this.finding,
  });

  final bool finding;
}

final class XiaomiScreenshotReceived extends DeviceEvent {
  const XiaomiScreenshotReceived({
    required super.deviceId,
    required this.bytes,
  });

  final Uint8List bytes;
}

/// The wearable requested Xiaomi-hosted GNSS assistance data, but the host
/// does not have a signed-in Xiaomi account session.
final class XiaomiGnssAccountRequired extends DeviceEvent {
  const XiaomiGnssAccountRequired({required super.deviceId});

  static const commandEvent = 'device.xiaomi.gnss.account_required';
}

/// A structured protocol trace item emitted after a Xiaomi transport frame has
/// been parsed.  This is intentionally separate from ordinary application
/// logs so DevTools can inspect the protocol without scraping log strings.
final class XiaomiProtocolTrace extends DeviceEvent {
  const XiaomiProtocolTrace({required super.deviceId, required this.trace});

  final Map<String, Object?> trace;
}

final class DeviceInfoUpdated extends DeviceEvent {
  const DeviceInfoUpdated({required super.deviceId, required this.info});

  final SystemInfo info;
}

final class AppListUpdated extends DeviceEvent {
  const AppListUpdated({required super.deviceId, required this.apps});

  final List<AppInfo> apps;
}

final class WatchfaceListUpdated extends DeviceEvent {
  const WatchfaceListUpdated({
    required super.deviceId,
    required this.watchfaces,
  });

  final List<WatchfaceInfo> watchfaces;
}

final class StorageInfoUpdated extends DeviceEvent {
  const StorageInfoUpdated({required super.deviceId, required this.info});

  final StorageInfo info;
}

final class InstallPrepared extends DeviceEvent {
  const InstallPrepared({required super.deviceId});
}

final class InstallProgress extends DeviceEvent {
  const InstallProgress({
    required super.deviceId,
    required this.progress,
    required this.totalParts,
    required this.currentPart,
  });

  final double progress;
  final int totalParts;
  final int currentPart;
}

final class InstallCompleted extends DeviceEvent {
  const InstallCompleted({required super.deviceId});
}

final class InstallFailed extends DeviceEvent {
  const InstallFailed({required super.deviceId, required this.error});

  final String error;
}

final class DeviceError extends DeviceEvent {
  const DeviceError({required super.deviceId, required this.error});

  final String error;
}

final class UnknownPacket extends DeviceEvent {
  const UnknownPacket({required super.deviceId});
}

final class InterconnectMessage extends DeviceEvent {
  const InterconnectMessage({
    required super.deviceId,
    required this.pkgName,
    required this.payload,
  });

  final String pkgName;
  final Uint8List payload;
}

final class XiaoAiSessionStarted extends DeviceEvent {
  const XiaoAiSessionStarted({
    required super.deviceId,
    required this.capabilities,
  });

  final Map<String, Object?> capabilities;
}

final class XiaoAiSessionEnded extends DeviceEvent {
  const XiaoAiSessionEnded({required super.deviceId});
}

final class XiaoAiOpusFrameReceived extends DeviceEvent {
  const XiaoAiOpusFrameReceived({
    required super.deviceId,
    required this.sequence,
    required this.frame,
  });

  final int sequence;
  final Uint8List frame;
}

class DeviceEventBus {
  DeviceEventBus();

  final _controller = StreamController<DeviceEvent>.broadcast();

  Stream<DeviceEvent> get stream => _controller.stream;

  void emit(DeviceEvent event) => _controller.add(event);

  void dispose() => _controller.close();
}
