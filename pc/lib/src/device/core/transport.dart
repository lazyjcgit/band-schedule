import 'dart:async';
import 'dart:collection';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/device/core/ble_requirement.dart';

class LinkTraffic {
  const LinkTraffic({
    required this.uploadBytesPerSecond,
    required this.downloadBytesPerSecond,
  });

  final double uploadBytesPerSecond;
  final double downloadBytesPerSecond;
}

class LinkTrafficMeter {
  LinkTrafficMeter({this.window = const Duration(seconds: 3)}) {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _emit());
  }

  final Duration window;
  final _uploads = ListQueue<(DateTime, int)>();
  final _downloads = ListQueue<(DateTime, int)>();
  final _controller = StreamController<LinkTraffic>.broadcast();
  late final Timer _timer;

  Stream<LinkTraffic> get stream => _controller.stream;

  void addUpload(int bytes) => _add(_uploads, bytes);
  void addDownload(int bytes) => _add(_downloads, bytes);

  void _add(ListQueue<(DateTime, int)> events, int bytes) {
    if (bytes > 0) events.add((DateTime.now(), bytes));
  }

  void _evict(ListQueue<(DateTime, int)> events, DateTime now) {
    while (events.isNotEmpty && now.difference(events.first.$1) > window) {
      events.removeFirst();
    }
  }

  void _emit() {
    final now = DateTime.now();
    _evict(_uploads, now);
    _evict(_downloads, now);
    final seconds = window.inMilliseconds / 1000;
    _controller.add(
      LinkTraffic(
        uploadBytesPerSecond:
            _uploads.fold<int>(0, (sum, event) => sum + event.$2) / seconds,
        downloadBytesPerSecond:
            _downloads.fold<int>(0, (sum, event) => sum + event.$2) / seconds,
      ),
    );
  }

  Future<void> dispose() async {
    _timer.cancel();
    await _controller.close();
  }
}

abstract class Transport {
  String get deviceId;
  String get deviceName;
  Stream<Uint8List> get incomingData;
  Stream<bool> get connectionState;
  Future<void> send(Uint8List data);
  Future<void> dispose();
}

abstract interface class TrafficReportingTransport {
  Stream<LinkTraffic> get traffic;
}

abstract class CharacteristicTransport implements Transport {
  int? get maxWriteLength;

  Future<void> sendToCharacteristic(
    Uint8List data,
    BleRequiredCharacteristic characteristic, {
    bool? withResponse,
  });

  Future<StreamSubscription<Uint8List>?> subscribeToCharacteristic(
    BleRequiredCharacteristic characteristic,
    void Function(Uint8List data) onData,
  );
}

class TransportException implements Exception {
  const TransportException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => cause == null ? message : '$message (caused by $cause)';
}
