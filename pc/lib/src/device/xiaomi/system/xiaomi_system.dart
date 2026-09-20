import 'dart:typed_data';

import 'package:band_schedule_pc/src/device/core/system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/xiaomi_device_component.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/l2_packet.dart';

abstract class XiaomiSystem extends System {
  XiaomiDeviceComponent get component =>
      entity.getRequired<XiaomiDeviceComponent>();

  @override
  void onData(Uint8List data) {}

  void onLayer2Packet(L2Channel channel, L2OpCode opcode, Uint8List payload);
}

abstract class XiaomiPbSystem extends XiaomiSystem {
  @override
  void onLayer2Packet(L2Channel channel, L2OpCode opcode, Uint8List payload) {
    if (channel != L2Channel.pb) return;
    final l2 = L2Packet(channel: channel, opcode: opcode, payload: payload);
    onWearPacket(l2.toWearPacket());
  }

  void onWearPacket(pb.WearPacket packet);
}
