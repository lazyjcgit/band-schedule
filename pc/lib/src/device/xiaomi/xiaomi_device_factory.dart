import 'package:band_schedule_pc/src/device/core/entity.dart';
import 'package:band_schedule_pc/src/device/core/event_bus.dart';
import 'package:band_schedule_pc/src/device/core/runtime.dart';
import 'package:band_schedule_pc/src/device/core/transport.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/auth_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/info_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/gnss_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/install_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/mass_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/media_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/report_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/request_pool_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/resource_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/sync_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/thirdparty_app_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/watchface_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/xiaomi_device_component.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/screenshot_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_dispatcher.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_protocol_trace.dart';

class XiaomiDeviceFactory implements DeviceEntityFactory {
  @override
  DeviceEntity create({
    required String id,
    required String kind,
    required Transport transport,
    required DeviceEventBus eventBus,
  }) {
    final entity = DeviceEntity(
      id: id,
      kind: kind,
      transport: transport,
      eventBus: eventBus,
    );

    final component = XiaomiDeviceComponent(
      transport: transport,
      sppV1: kind == 'xiaomi-spp-v1',
    );
    component.onTransportFailure = (error, stackTrace) {
      entity.system<XiaomiMassSystem>()?.abortPending(error, stackTrace);
      entity.system<XiaomiScreenshotSystem>()?.abortPending(error, stackTrace);
      entity.emit(DeviceError(deviceId: id, error: error.toString()));
      entity.emit(TransportDisconnected(deviceId: id));
    };
    component.onRawOutgoing = entity.recordRawOutgoing;
    final tracer = XiaomiProtocolTracer((trace) {
      entity.emit(
        XiaomiProtocolTrace(deviceId: id, trace: Map.unmodifiable(trace)),
      );
    });
    component.protocolTracer = tracer;
    entity.set(component);

    final dispatcher = XiaomiDispatcher(component, tracer: tracer);
    component.onL2Payload = dispatcher.onL2Payload;
    entity.setDispatcher(dispatcher);

    entity.registerSystem(XiaomiRequestPoolSystem());
    entity.registerSystem(XiaomiAuthSystem());

    entity.registerSystem(XiaomiMassSystem());
    entity.registerSystem(XiaomiGnssSystem());
    entity.registerSystem(XiaomiScreenshotSystem());
    entity.registerSystem(XiaomiMediaSystem());
    // 说明：这里去掉了上游的 XiaomiNetworkSystem（它依赖 OronBox 自家的
    // oronbox_network 包）和 XiaomiHealthSystem（健康数据，本项目不做）。
    // 我们需要的安装/互联/课表相关能力都在下面这些系统里。

    entity.registerSystem(XiaomiInstallSystem());
    entity.registerSystem(XiaomiInfoSystem());
    entity.registerSystem(XiaomiSyncSystem());
    entity.registerSystem(XiaomiResourceSystem());
    entity.registerSystem(XiaomiWatchfaceSystem());
    entity.registerSystem(XiaomiThirdpartyAppSystem());
    entity.registerSystem(XiaomiReportSystem());

    return entity;
  }
}
