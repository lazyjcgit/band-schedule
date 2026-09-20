import 'dart:async';
import 'dart:typed_data';

enum ProtocolState {
  disconnected,
  connecting,
  connected,
  authenticating,
  ready,
  error,
}

abstract class ProtocolConnection {
  String get deviceId;
  String get deviceName;
  Stream<Uint8List> get incomingData;
  Stream<bool> get connectionState;
  Future<void> send(Uint8List data);
  Future<void> dispose();
}

abstract class DeviceProtocol {
  String get name;
  ProtocolState get state;
  Stream<ProtocolState> get stateStream;
  Stream<String> get errorStream;

  Future<void> connect(ProtocolConnection connection, {String? authKey});
  Future<void> disconnect();

  Future<void> installApp({
    required Uint8List packageBytes,
    String? packageName,
    void Function(double progress)? onProgress,
  });

  Future<void> installWatchface({
    required Uint8List watchfaceBytes,
    required String watchfaceId,
    void Function(double progress)? onProgress,
  });

  Future<void> uninstallApp(String packageName);
  Future<void> uninstallWatchface(String watchfaceId);
  Future<void> setWatchface(String watchfaceId);

  Future<BatteryInfo> fetchBatteryInfo();
  Future<DeviceInfo> fetchDeviceInfo();
  Future<List<InstalledApp>> fetchInstalledApps();
  Future<List<InstalledWatchface>> fetchInstalledWatchfaces();
}

class BatteryInfo {
  const BatteryInfo({
    required this.capacity,
    this.chargeStatus = ChargeStatus.unknown,
    this.lastChargeTimestamp,
  });

  final int capacity;
  final ChargeStatus chargeStatus;
  final int? lastChargeTimestamp;
}

enum ChargeStatus { unknown, charging, notCharging, full }

class DeviceInfo {
  const DeviceInfo({
    this.serialNumber,
    this.firmwareVersion,
    this.imei,
    this.model,
    this.macAddress,
    this.storageTotal,
    this.storageFree,
  });

  final String? serialNumber;
  final String? firmwareVersion;
  final String? imei;
  final String? model;
  final String? macAddress;
  final int? storageTotal;
  final int? storageFree;
}

class InstalledApp {
  const InstalledApp({
    required this.packageName,
    required this.appName,
    this.versionCode = 0,
    this.canRemove = true,
  });

  final String packageName;
  final String appName;
  final int versionCode;
  final bool canRemove;
}

class InstalledWatchface {
  const InstalledWatchface({
    required this.id,
    required this.name,
    this.isCurrent = false,
    this.canRemove = true,
    this.canEdit = false,
  });

  final String id;
  final String name;
  final bool isCurrent;
  final bool canRemove;
  final bool canEdit;
}

class ProtocolException implements Exception {
  const ProtocolException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => cause == null ? message : '$message (caused by $cause)';
}

extension ProtocolConnectionChunking on ProtocolConnection {
  Future<void> sendChunks(
    Uint8List data, {
    required int chunkSize,
    Duration delay = Duration.zero,
  }) async {
    for (var i = 0; i < data.length; i += chunkSize) {
      final end = (i + chunkSize < data.length) ? i + chunkSize : data.length;
      await send(Uint8List.sublistView(data, i, end));
      if (delay != Duration.zero && end < data.length) {
        await Future.delayed(delay);
      }
    }
  }
}
