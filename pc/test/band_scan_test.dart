/// 扫描流程的回归测试。
///
/// 这里钉的是一个很隐蔽的 bug：原生那边 `startScan` 只是**发起**扫描（结果
/// 通过 scan_events 边扫边推），`stopScan` 只负责停、返回的是**已配对**设备。
/// 原来代码 start 之后立刻 stop，等于刚发起就取消 —— 一个设备都扫不到，
/// 界面列表永远是空的，能连上纯粹靠记住的 MAC。
///
/// 所以下面断言：扫描期间**真的订阅了 scanStream**，并且**等满超时**才停。
library;

import 'dart:async';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/band/band_client.dart';
import 'package:band_schedule_pc/src/core/services/rfcomm_driver.dart';
import 'package:band_schedule_pc/src/device/core/bluetooth_platform.dart';
import 'package:band_schedule_pc/src/device/core/connect_type.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeRfcommDriver implements RfcommDriver {
  final scanEvents = StreamController<BluetoothEndpoint>.broadcast();
  final calls = <String>[];

  /// 扫描流上有没有人监听（没有的话原生那边也不会把结果写进列表）。
  bool scanStreamHasListener = false;

  /// startScan 到 stopScan 之间过了多久。
  Duration? scanWindow;

  DateTime? _scanStartedAt;

  @override
  Stream<BluetoothEndpoint> get scanStream {
    scanStreamHasListener = true;
    return scanEvents.stream;
  }

  @override
  Future<void> requestPermissions() async => calls.add('requestPermissions');

  @override
  Future<void> startScan({Duration timeout = const Duration(seconds: 15)}) async {
    calls.add('startScan');
    _scanStartedAt = DateTime.now();
    // 模拟「边扫边推」：稍后推一个设备出来。
    unawaited(Future<void>.delayed(const Duration(milliseconds: 120), () {
      if (!scanEvents.isClosed) {
        scanEvents.add(BluetoothEndpoint(
          name: 'Xiaomi Smart Band 9',
          address: 'aa:bb:cc:dd:ee:ff',
          connectType: ConnectType.spp,
        ));
      }
    }));
  }

  @override
  Future<List<BluetoothEndpoint>> stopScan() async {
    calls.add('stopScan');
    if (_scanStartedAt != null) {
      scanWindow = DateTime.now().difference(_scanStartedAt!);
    }
    // 原生 stopScan 返回的是「已配对」设备 —— 特意给一个不同的设备，
    // 用来说明「光靠 stopScan 是扫不到东西的」。
    return [
      BluetoothEndpoint(
        name: 'Paired Speaker',
        address: '11:22:33:44:55:66',
        connectType: ConnectType.spp,
      ),
    ];
  }

  @override
  Future<RfcommConnection> connect(
    String deviceId,
    String deviceName, {
    String? serviceUuid,
    List<int> fallbackChannels = const [5, 1],
    bool removeBond = false,
  }) async =>
      throw UnimplementedError('这个测试不连设备');

  @override
  Future<void> send(Uint8List data) async {}

  @override
  Future<void> disconnect() async {}
}

void main() {
  test('扫描会订阅 scanStream，并且等够「原生查询时长」才停止', () async {
    final driver = FakeRfcommDriver();
    final client = BandClient(driver: driver);

    const timeout = Duration(milliseconds: 400);
    final devices = await client.scan(timeout: timeout);

    // 关键一：扫描期间必须有人在听 scanStream，否则原生不会把结果推过来。
    expect(driver.scanStreamHasListener, isTrue,
        reason: '没订阅 scanStream 就会一个设备都扫不到');

    // 关键二：不能刚发起就取消。原生的查询会阻塞到查询结束（时长按
    // 1.28 秒的整数倍向上取整），停早了会在结果出来前把它掐掉。
    // 400ms 对齐到 1 × 1280ms，再加上 1.5 秒余量。
    expect(driver.scanWindow, isNotNull);
    expect(driver.scanWindow! >= const Duration(milliseconds: 2780), isTrue,
        reason: '扫描窗口只有 ${driver.scanWindow}，会在原生查询出结果前就停掉');

    expect(driver.calls, ['requestPermissions', 'startScan', 'stopScan']);

    final addresses = devices.map((d) => d.address).toList();
    // 扫到的设备必须在列表里（这才是修复的意义）。
    expect(addresses, contains('aa:bb:cc:dd:ee:ff'));
    // 已配对的设备也要列出来。
    expect(addresses, contains('11:22:33:44:55:66'));
  });

  test('查询时长按原生的 1.28 秒倍率换算，不会一直挂着', () async {
    final driver = FakeRfcommDriver();
    final client = BandClient(driver: driver);

    final startedAt = DateTime.now();
    // 12 秒是界面上的默认值 → 原生倍率 10 → 12.8 秒 + 1.5 秒余量
    await client.scan(timeout: const Duration(seconds: 12));
    final elapsed = DateTime.now().difference(startedAt);

    expect(elapsed.inMilliseconds >= 14300, isTrue,
        reason: '12 秒的请求原生要查 12.8 秒，等太短就扫不到东西（实际 $elapsed）');
    expect(elapsed.inSeconds <= 20, isTrue,
        reason: '扫描不该远远超过预期（实际 $elapsed）');
  });
}
