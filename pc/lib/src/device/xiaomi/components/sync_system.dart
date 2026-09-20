import 'dart:async';

import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/core/models/sync_models.dart';
import 'package:band_schedule_pc/src/device/core/event_bus.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_system.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_common.pb.dart'
    as pb_common;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_system.pb.dart'
    as pb_system;

class XiaomiSyncSystem extends XiaomiPbSystem {
  static final _log = getLogger('XiaomiSyncSystem');

  Future<void> syncTime(TimeSyncProps props) async {
    _log.fine('[${entity.id}] syncing time: ${props.toJson()}');
    await component.sendPbPacket(_buildTimeSyncPacket(props), waitForAck: true);
  }

  Future<void> setLanguage(String locale) async {
    _log.fine('[${entity.id}] setting language: $locale');
    await component.sendPbPacket(_buildSetLanguagePacket(locale));
  }

  Future<void> setFindingPhone(bool finding) async {
    if (finding) {
      // Xiaomi's FIND_PHONE command is an inbound watch->phone request.
      // Starting it from the phone would make the watch wait for a state it
      // does not own. The local phone ringtone is started by the inbound
      // XiaomiFindPhoneRequested event instead.
      _log.fine('[${entity.id}] phone finder start is wearable-originated');
      return;
    }
    _log.info(
      '[${entity.id}] ${finding ? 'starting' : 'stopping'} phone finder',
    );
    await component.sendPbPacket(
      _buildFindPacket(pb_system.System_SystemID.FIND_PHONE, finding),
      waitForAck: true,
    );
  }

  Future<void> setFindingWearable(bool finding) async {
    _log.info(
      '[${entity.id}] ${finding ? 'starting' : 'stopping'} wearable finder',
    );
    await component.sendPbPacket(
      _buildFindPacket(pb_system.System_SystemID.FIND_WEAR, finding),
      waitForAck: true,
    );
  }

  pb.WearPacket _buildSetLanguagePacket(String lang) {
    final payload = pb_system.Language(locale: lang);
    final pktPayload = pb_system.System(language: payload);

    return pb.WearPacket(
      type: pb.WearPacket_Type.SYSTEM,
      id: pb_system.System_SystemID.SET_LANGUAGE.value,
      system: pktPayload,
    );
  }

  pb.WearPacket _buildFindPacket(pb_system.System_SystemID id, bool finding) {
    return pb.WearPacket(
      type: pb.WearPacket_Type.SYSTEM,
      id: id.value,
      system: pb_system.System(
        findMode: finding
            ? pb_system.FindMode.FIND_START
            : pb_system.FindMode.FIND_STOP,
      ),
    );
  }

  pb.WearPacket _buildTimeSyncPacket(TimeSyncProps props) {
    final payload = pb_system.SystemTime(
      date: pb_common.Date(
        year: props.date.year,
        month: props.date.month,
        day: props.date.day,
      ),
      time: pb_common.Time(
        hour: props.time.hour,
        minuter: props.time.minute,
        second: props.time.second,
        millisecond: props.time.millisecond,
      ),
      timeZone: pb_common.Timezone(
        offset: props.timezone.offset,
        dstSaving: props.timezone.dstOffset,
        id: props.timezone.id,
        idSpec: '',
      ),
      is12Hours: props.is12HourFormat,
    );

    final pktPayload = pb_system.System(systemTime: payload);

    return pb.WearPacket(
      type: pb.WearPacket_Type.SYSTEM,
      id: pb_system.System_SystemID.SET_SYSTEM_TIME.value,
      system: pktPayload,
    );
  }

  @override
  void onWearPacket(pb.WearPacket packet) {
    if (packet.type != pb.WearPacket_Type.SYSTEM ||
        (packet.id != pb_system.System_SystemID.FIND_PHONE.value &&
            packet.id != pb_system.System_SystemID.FIND_WEAR.value) ||
        !packet.hasSystem() ||
        !packet.system.hasFindMode()) {
      return;
    }
    final finding = packet.system.findMode == pb_system.FindMode.FIND_START;
    if (packet.id == pb_system.System_SystemID.FIND_PHONE.value) {
      _log.info(
        '[${entity.id}] wearable phone finder '
        '${finding ? 'started' : 'stopped'}',
      );
      entity.emit(
        XiaomiFindPhoneRequested(deviceId: entity.id, finding: finding),
      );
    } else {
      _log.info(
        '[${entity.id}] wearable finder '
        '${finding ? 'started' : 'stopped'}',
      );
      entity.emit(
        XiaomiFindWearableRequested(deviceId: entity.id, finding: finding),
      );
    }
  }
}
