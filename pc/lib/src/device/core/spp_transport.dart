import 'dart:async';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/core/services/rfcomm_driver.dart';
import 'package:band_schedule_pc/src/device/core/bluetooth_platform.dart';
import 'package:band_schedule_pc/src/device/core/transport.dart';

class SppTransport implements Transport, TrafficReportingTransport {
  SppTransport.xiaomi(RfcommConnection connection)
    : _rfcommConnection = connection,
      _bluetoothConnection = null;

  SppTransport.zeppBtbr(RfcommConnection connection)
    : _rfcommConnection = connection,
      _bluetoothConnection = null;

  SppTransport.xiaomiBluetooth(BluetoothConnection connection)
    : _rfcommConnection = null,
      _bluetoothConnection = connection;

  SppTransport.zeppBtbrBluetooth(BluetoothConnection connection)
    : _rfcommConnection = null,
      _bluetoothConnection = connection;

  static final _log = getLogger('SppTransport');
  final RfcommConnection? _rfcommConnection;
  final BluetoothConnection? _bluetoothConnection;

  final _incomingController = StreamController<Uint8List>.broadcast();
  final _trafficMeter = LinkTrafficMeter();
  StreamSubscription<Uint8List>? _dataSubscription;
  StreamSubscription<bool>? _connectionSubscription;

  @override
  String get deviceId =>
      _rfcommConnection?.deviceId ?? _bluetoothConnection!.deviceId;

  @override
  String get deviceName =>
      _rfcommConnection?.deviceName ?? _bluetoothConnection!.deviceName;

  @override
  Stream<Uint8List> get incomingData => _incomingController.stream;

  @override
  Stream<LinkTraffic> get traffic => _trafficMeter.stream;

  @override
  Stream<bool> get connectionState =>
      _rfcommConnection?.connectionState ??
      _bluetoothConnection!.connectionState;

  Future<void> start() async {
    _log.fine('[$deviceId] starting SPP transport');
    final incomingData =
        _rfcommConnection?.incomingData ?? _bluetoothConnection!.incomingData;
    _dataSubscription = incomingData.listen(
      (data) {
        _trafficMeter.addDownload(data.length);
        _incomingController.add(data);
      },
      onError: (Object e) =>
          _log.warning('[$deviceId] SPP data stream error', e),
      onDone: () {
        if (!_incomingController.isClosed) {
          _incomingController.close();
        }
      },
    );
    _connectionSubscription = connectionState.listen(
      (connected) {
        _log.info('[$deviceId] SPP connection state: $connected');
        if (!connected && !_incomingController.isClosed) {
          _incomingController.close();
        }
      },
      onError: (Object e) =>
          _log.warning('[$deviceId] connection stream error', e),
    );
  }

  @override
  Future<void> send(Uint8List data) async {
    _log.fine('[$deviceId] sending ${data.length} bytes over SPP');
    await (_rfcommConnection?.send(data) ?? _bluetoothConnection!.send(data));
    _trafficMeter.addUpload(data.length);
  }

  @override
  Future<void> dispose() async {
    _log.fine('[$deviceId] disposing SPP transport');
    await _dataSubscription?.cancel();
    _dataSubscription = null;
    await _connectionSubscription?.cancel();
    _connectionSubscription = null;
    if (!_incomingController.isClosed) {
      await _incomingController.close();
    }
    await _trafficMeter.dispose();
    await (_rfcommConnection?.dispose() ?? _bluetoothConnection!.dispose());
  }
}
