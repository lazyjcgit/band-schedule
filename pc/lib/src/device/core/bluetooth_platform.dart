import 'dart:async';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/device/core/ble_requirement.dart';
import 'package:band_schedule_pc/src/device/core/connect_type.dart';

class BluetoothEndpoint {
  const BluetoothEndpoint({
    required this.name,
    required this.address,
    required this.connectType,
    this.rssi,
    this.serviceUuids = const [],
  });

  final String name;
  final String address;
  final ConnectType connectType;
  final int? rssi;
  final List<String> serviceUuids;
}

class BluetoothScanOptions {
  const BluetoothScanOptions({
    this.connectTypes = const {ConnectType.ble},
    this.timeout = const Duration(seconds: 15),
    this.serviceUuids = const [],
    this.namePrefixes = const [],
  });

  factory BluetoothScanOptions.ble({
    Duration timeout = const Duration(seconds: 15),
    List<String> serviceUuids = const [],
    List<String> namePrefixes = const [],
  }) {
    return BluetoothScanOptions(
      connectTypes: const {ConnectType.ble},
      timeout: timeout,
      serviceUuids: serviceUuids,
      namePrefixes: namePrefixes,
    );
  }

  factory BluetoothScanOptions.rfcomm({
    Duration timeout = const Duration(seconds: 15),
  }) {
    return BluetoothScanOptions(
      connectTypes: const {ConnectType.spp},
      timeout: timeout,
    );
  }

  factory BluetoothScanOptions.all({
    Duration timeout = const Duration(seconds: 15),
    List<String> serviceUuids = const [],
    List<String> namePrefixes = const [],
  }) {
    return BluetoothScanOptions(
      connectTypes: const {ConnectType.ble, ConnectType.spp},
      timeout: timeout,
      serviceUuids: serviceUuids,
      namePrefixes: namePrefixes,
    );
  }

  final Set<ConnectType> connectTypes;
  final Duration timeout;
  final List<String> serviceUuids;
  final List<String> namePrefixes;

  Set<ConnectType> get normalizedConnectTypes =>
      connectTypes.isEmpty ? const {ConnectType.ble} : connectTypes;
}

class BluetoothConnectOptions {
  const BluetoothConnectOptions({
    required this.connectType,
    this.bleRequiredCharacteristics = const [],
    this.bleDesiredMtu,
    this.bleAttemptPair = true,
    this.sppServiceUuid,
    this.sppFallbackChannels = const [5, 1],
    this.sppRemoveBond = false,
  });

  final ConnectType connectType;
  final List<BleRequiredCharacteristic> bleRequiredCharacteristics;
  final int? bleDesiredMtu;
  final bool bleAttemptPair;
  final String? sppServiceUuid;
  final List<int> sppFallbackChannels;
  final bool sppRemoveBond;
}

abstract class BluetoothConnection {
  String get deviceId;
  String get deviceName;
  ConnectType get connectType;
  Stream<Uint8List> get incomingData;
  Stream<bool> get connectionState;
  int? get maxWriteLength;
  bool supportsCharacteristic(BleRequiredCharacteristic characteristic);

  Future<void> send(
    Uint8List data, {
    BleRequiredCharacteristic? characteristic,
    bool withResponse = false,
  });

  Future<void> subscribe({
    BleRequiredCharacteristic? characteristic,
    void Function(Uint8List data)? onData,
  });

  Future<void> unsubscribe({BleRequiredCharacteristic? characteristic});

  Future<void> dispose();
}

abstract class BluetoothPlatform {
  Stream<BluetoothEndpoint> get scanStream;

  Future<bool> isAvailable();
  Future<void> requestPermissions();
  Future<void> startScan(BluetoothScanOptions options);
  Future<List<BluetoothEndpoint>> stopScan();
  Future<BluetoothConnection> connect(
    String address,
    String name,
    BluetoothConnectOptions options,
  );

  /// Aborts an RFCOMM connection whose native socket is still connecting.
  ///
  /// This is separate from [disconnect] because a pending connection has
  /// not been added to the platform's active connection map yet.
  Future<void> cancelPendingSppConnection();
  Future<void> disconnect(String address);
  Future<void> disconnectAll();
}
