import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_system.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;

class XiaomiRequestPoolSystem extends XiaomiPbSystem {
  @override
  void onWearPacket(pb.WearPacket packet) {
    component.requestPool.onPacket(packet);
  }
}
