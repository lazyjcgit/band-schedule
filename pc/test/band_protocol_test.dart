/// 协议栈选择（`spawnDevice` 的 kind）的测试。
///
/// 这里钉的是**手环连不上的真正原因**：kind 决定走哪套协议栈
///
///   'xiaomi-spp-v1' → SPP v1 编解码（version/protobuf 通道）
///   'xiaomi'        → 老的 L1/L2 + SAR 分片
///
/// 原来代码写死成 'xiaomi-spp-v1'，手环 9 收到认证请求后**一个字节都不回**；
/// 对着 OronBox 的日志才发现它连同一只手环时用的是老的 L1/L2 路径，
/// 而且 18 毫秒就收到了 device verify。
library;

import 'package:band_schedule_pc/src/band/band_client.dart';
import 'package:band_schedule_pc/src/device/core/xiaomi_wearable_catalog.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('按设备名选协议栈', () {
    test('手环 9 不能走 v1 编解码（这是真实踩过的坑）', () {
      // n66 / M2345B1 在目录里标的是 sppV2
      expect(xiaomiDeviceKindForName('Xiaomi Smart Band 9'), 'xiaomi');
      expect(xiaomiDeviceKindForName('小米手环9'), 'xiaomi');
      expect(xiaomiDeviceKindForName('M2345B1'), 'xiaomi');
    });

    test('目录里明确标 sppV1 的型号才走 v1', () {
      // m67 = Xiaomi Smart Band 8 Pro，目录里标的是 sppV1
      expect(xiaomiDeviceKindForName('Xiaomi Smart Band 8 Pro'), 'xiaomi-spp-v1');
      expect(xiaomiDeviceKindForName('小米手环8 Pro'), 'xiaomi-spp-v1');
    });

    test('认不出型号时走老路径（跟 OronBox 一致，也更保险）', () {
      expect(xiaomiDeviceKindForName('随便什么设备'), 'xiaomi');
      expect(xiaomiDeviceKindForName(''), 'xiaomi');
    });

    test('直接按协议枚举判断', () {
      expect(xiaomiDeviceKindForProtocol(XiaomiWearableProtocol.sppV1),
          'xiaomi-spp-v1');
      expect(xiaomiDeviceKindForProtocol(XiaomiWearableProtocol.sppV2),
          'xiaomi');
      expect(xiaomiDeviceKindForProtocol(XiaomiWearableProtocol.unsupported),
          'xiaomi');
      expect(xiaomiDeviceKindForProtocol(null), 'xiaomi');
    });
  });

  group('设备名可信度', () {
    test('认得出的型号给出标准名', () {
      expect(xiaomiKnownDeviceName('小米手环9'), 'Xiaomi Smart Band 9');
      expect(xiaomiKnownDeviceName('M2345B1'), 'Xiaomi Smart Band 9');
    });

    test('认不出的名字返回空串 —— 设置里可能存着一次失败尝试留下的耳机名', () {
      // 这是真实发生过的：自动挑错设备去连，把 "EDIFIER W820NB 双金标版"
      // 存进了设置，之后它既会显示在界面上、又参与协议判断。
      expect(xiaomiKnownDeviceName('EDIFIER W820NB 双金标版'), '');
      expect(xiaomiKnownDeviceName('ROSE CAMBRIAN'), '');
      expect(xiaomiKnownDeviceName(''), '');
      expect(xiaomiKnownDeviceName('小米手环'), ''); // 不带代号的泛称认不出
    });
  });
}
