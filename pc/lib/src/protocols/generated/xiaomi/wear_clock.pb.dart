// This is a generated file - do not edit.
//
// Generated from wear_clock.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_clock.pbenum.dart';
import 'wear_common.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_clock.pbenum.dart';

enum Clock_Payload {
  clockInfoList,
  clockData,
  clockInfo,
  id,
  clockIdList,
  enable,
  clockHoliday,
  clockError,
  workAndRest,
  reminderInfoList,
  worldClockIdList,
  worldClockId,
  worldClockResult,
  reminderData,
  reminderInfo,
  phoneAlarmOperation,
  reminderIdList,
  reminderMark,
  notSet
}

class Clock extends $pb.GeneratedMessage {
  factory Clock({
    ClockInfo_List? clockInfoList,
    ClockInfo_Data? clockData,
    ClockInfo? clockInfo,
    $core.int? id,
    ClockIdList? clockIdList,
    $core.bool? enable,
    $0.ClockHoliday? clockHoliday,
    ClockError? clockError,
    WorkAndRest? workAndRest,
    ReminderInfo_List? reminderInfoList,
    WorldClockIdList? worldClockIdList,
    $core.String? worldClockId,
    WorldClockResult? worldClockResult,
    ReminderInfo_Data? reminderData,
    ReminderInfo? reminderInfo,
    PhoneAlarm_Operation? phoneAlarmOperation,
    ReminderIdList? reminderIdList,
    ReminderInfo_Mark? reminderMark,
  }) {
    final result = create();
    if (clockInfoList != null) result.clockInfoList = clockInfoList;
    if (clockData != null) result.clockData = clockData;
    if (clockInfo != null) result.clockInfo = clockInfo;
    if (id != null) result.id = id;
    if (clockIdList != null) result.clockIdList = clockIdList;
    if (enable != null) result.enable = enable;
    if (clockHoliday != null) result.clockHoliday = clockHoliday;
    if (clockError != null) result.clockError = clockError;
    if (workAndRest != null) result.workAndRest = workAndRest;
    if (reminderInfoList != null) result.reminderInfoList = reminderInfoList;
    if (worldClockIdList != null) result.worldClockIdList = worldClockIdList;
    if (worldClockId != null) result.worldClockId = worldClockId;
    if (worldClockResult != null) result.worldClockResult = worldClockResult;
    if (reminderData != null) result.reminderData = reminderData;
    if (reminderInfo != null) result.reminderInfo = reminderInfo;
    if (phoneAlarmOperation != null)
      result.phoneAlarmOperation = phoneAlarmOperation;
    if (reminderIdList != null) result.reminderIdList = reminderIdList;
    if (reminderMark != null) result.reminderMark = reminderMark;
    return result;
  }

  Clock._();

  factory Clock.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Clock.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Clock_Payload> _Clock_PayloadByTag = {
    1: Clock_Payload.clockInfoList,
    2: Clock_Payload.clockData,
    3: Clock_Payload.clockInfo,
    4: Clock_Payload.id,
    5: Clock_Payload.clockIdList,
    6: Clock_Payload.enable,
    7: Clock_Payload.clockHoliday,
    8: Clock_Payload.clockError,
    9: Clock_Payload.workAndRest,
    10: Clock_Payload.reminderInfoList,
    11: Clock_Payload.worldClockIdList,
    12: Clock_Payload.worldClockId,
    13: Clock_Payload.worldClockResult,
    14: Clock_Payload.reminderData,
    15: Clock_Payload.reminderInfo,
    16: Clock_Payload.phoneAlarmOperation,
    17: Clock_Payload.reminderIdList,
    18: Clock_Payload.reminderMark,
    0: Clock_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Clock',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18])
    ..aOM<ClockInfo_List>(1, _omitFieldNames ? '' : 'clockInfoList',
        subBuilder: ClockInfo_List.create)
    ..aOM<ClockInfo_Data>(2, _omitFieldNames ? '' : 'clockData',
        subBuilder: ClockInfo_Data.create)
    ..aOM<ClockInfo>(3, _omitFieldNames ? '' : 'clockInfo',
        subBuilder: ClockInfo.create)
    ..aI(4, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..aOM<ClockIdList>(5, _omitFieldNames ? '' : 'clockIdList',
        subBuilder: ClockIdList.create)
    ..aOB(6, _omitFieldNames ? '' : 'enable')
    ..aOM<$0.ClockHoliday>(7, _omitFieldNames ? '' : 'clockHoliday',
        subBuilder: $0.ClockHoliday.create)
    ..aE<ClockError>(8, _omitFieldNames ? '' : 'clockError',
        enumValues: ClockError.values)
    ..aOM<WorkAndRest>(9, _omitFieldNames ? '' : 'workAndRest',
        subBuilder: WorkAndRest.create)
    ..aOM<ReminderInfo_List>(10, _omitFieldNames ? '' : 'reminderInfoList',
        subBuilder: ReminderInfo_List.create)
    ..aOM<WorldClockIdList>(11, _omitFieldNames ? '' : 'worldClockIdList',
        subBuilder: WorldClockIdList.create)
    ..aOS(12, _omitFieldNames ? '' : 'worldClockId')
    ..aE<WorldClockResult>(13, _omitFieldNames ? '' : 'worldClockResult',
        enumValues: WorldClockResult.values)
    ..aOM<ReminderInfo_Data>(14, _omitFieldNames ? '' : 'reminderData',
        subBuilder: ReminderInfo_Data.create)
    ..aOM<ReminderInfo>(15, _omitFieldNames ? '' : 'reminderInfo',
        subBuilder: ReminderInfo.create)
    ..aOM<PhoneAlarm_Operation>(
        16, _omitFieldNames ? '' : 'phoneAlarmOperation',
        subBuilder: PhoneAlarm_Operation.create)
    ..aOM<ReminderIdList>(17, _omitFieldNames ? '' : 'reminderIdList',
        subBuilder: ReminderIdList.create)
    ..aOM<ReminderInfo_Mark>(18, _omitFieldNames ? '' : 'reminderMark',
        subBuilder: ReminderInfo_Mark.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Clock clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Clock copyWith(void Function(Clock) updates) =>
      super.copyWith((message) => updates(message as Clock)) as Clock;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Clock create() => Clock._();
  @$core.override
  Clock createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Clock getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Clock>(create);
  static Clock? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  Clock_Payload whichPayload() => _Clock_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ClockInfo_List get clockInfoList => $_getN(0);
  @$pb.TagNumber(1)
  set clockInfoList(ClockInfo_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasClockInfoList() => $_has(0);
  @$pb.TagNumber(1)
  void clearClockInfoList() => $_clearField(1);
  @$pb.TagNumber(1)
  ClockInfo_List ensureClockInfoList() => $_ensure(0);

  @$pb.TagNumber(2)
  ClockInfo_Data get clockData => $_getN(1);
  @$pb.TagNumber(2)
  set clockData(ClockInfo_Data value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasClockData() => $_has(1);
  @$pb.TagNumber(2)
  void clearClockData() => $_clearField(2);
  @$pb.TagNumber(2)
  ClockInfo_Data ensureClockData() => $_ensure(1);

  @$pb.TagNumber(3)
  ClockInfo get clockInfo => $_getN(2);
  @$pb.TagNumber(3)
  set clockInfo(ClockInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasClockInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearClockInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  ClockInfo ensureClockInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get id => $_getIZ(3);
  @$pb.TagNumber(4)
  set id($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(4)
  void clearId() => $_clearField(4);

  @$pb.TagNumber(5)
  ClockIdList get clockIdList => $_getN(4);
  @$pb.TagNumber(5)
  set clockIdList(ClockIdList value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasClockIdList() => $_has(4);
  @$pb.TagNumber(5)
  void clearClockIdList() => $_clearField(5);
  @$pb.TagNumber(5)
  ClockIdList ensureClockIdList() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get enable => $_getBF(5);
  @$pb.TagNumber(6)
  set enable($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEnable() => $_has(5);
  @$pb.TagNumber(6)
  void clearEnable() => $_clearField(6);

  @$pb.TagNumber(7)
  $0.ClockHoliday get clockHoliday => $_getN(6);
  @$pb.TagNumber(7)
  set clockHoliday($0.ClockHoliday value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasClockHoliday() => $_has(6);
  @$pb.TagNumber(7)
  void clearClockHoliday() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.ClockHoliday ensureClockHoliday() => $_ensure(6);

  @$pb.TagNumber(8)
  ClockError get clockError => $_getN(7);
  @$pb.TagNumber(8)
  set clockError(ClockError value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasClockError() => $_has(7);
  @$pb.TagNumber(8)
  void clearClockError() => $_clearField(8);

  @$pb.TagNumber(9)
  WorkAndRest get workAndRest => $_getN(8);
  @$pb.TagNumber(9)
  set workAndRest(WorkAndRest value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasWorkAndRest() => $_has(8);
  @$pb.TagNumber(9)
  void clearWorkAndRest() => $_clearField(9);
  @$pb.TagNumber(9)
  WorkAndRest ensureWorkAndRest() => $_ensure(8);

  @$pb.TagNumber(10)
  ReminderInfo_List get reminderInfoList => $_getN(9);
  @$pb.TagNumber(10)
  set reminderInfoList(ReminderInfo_List value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasReminderInfoList() => $_has(9);
  @$pb.TagNumber(10)
  void clearReminderInfoList() => $_clearField(10);
  @$pb.TagNumber(10)
  ReminderInfo_List ensureReminderInfoList() => $_ensure(9);

  @$pb.TagNumber(11)
  WorldClockIdList get worldClockIdList => $_getN(10);
  @$pb.TagNumber(11)
  set worldClockIdList(WorldClockIdList value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasWorldClockIdList() => $_has(10);
  @$pb.TagNumber(11)
  void clearWorldClockIdList() => $_clearField(11);
  @$pb.TagNumber(11)
  WorldClockIdList ensureWorldClockIdList() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.String get worldClockId => $_getSZ(11);
  @$pb.TagNumber(12)
  set worldClockId($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasWorldClockId() => $_has(11);
  @$pb.TagNumber(12)
  void clearWorldClockId() => $_clearField(12);

  @$pb.TagNumber(13)
  WorldClockResult get worldClockResult => $_getN(12);
  @$pb.TagNumber(13)
  set worldClockResult(WorldClockResult value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasWorldClockResult() => $_has(12);
  @$pb.TagNumber(13)
  void clearWorldClockResult() => $_clearField(13);

  @$pb.TagNumber(14)
  ReminderInfo_Data get reminderData => $_getN(13);
  @$pb.TagNumber(14)
  set reminderData(ReminderInfo_Data value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasReminderData() => $_has(13);
  @$pb.TagNumber(14)
  void clearReminderData() => $_clearField(14);
  @$pb.TagNumber(14)
  ReminderInfo_Data ensureReminderData() => $_ensure(13);

  @$pb.TagNumber(15)
  ReminderInfo get reminderInfo => $_getN(14);
  @$pb.TagNumber(15)
  set reminderInfo(ReminderInfo value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasReminderInfo() => $_has(14);
  @$pb.TagNumber(15)
  void clearReminderInfo() => $_clearField(15);
  @$pb.TagNumber(15)
  ReminderInfo ensureReminderInfo() => $_ensure(14);

  @$pb.TagNumber(16)
  PhoneAlarm_Operation get phoneAlarmOperation => $_getN(15);
  @$pb.TagNumber(16)
  set phoneAlarmOperation(PhoneAlarm_Operation value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasPhoneAlarmOperation() => $_has(15);
  @$pb.TagNumber(16)
  void clearPhoneAlarmOperation() => $_clearField(16);
  @$pb.TagNumber(16)
  PhoneAlarm_Operation ensurePhoneAlarmOperation() => $_ensure(15);

  @$pb.TagNumber(17)
  ReminderIdList get reminderIdList => $_getN(16);
  @$pb.TagNumber(17)
  set reminderIdList(ReminderIdList value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasReminderIdList() => $_has(16);
  @$pb.TagNumber(17)
  void clearReminderIdList() => $_clearField(17);
  @$pb.TagNumber(17)
  ReminderIdList ensureReminderIdList() => $_ensure(16);

  @$pb.TagNumber(18)
  ReminderInfo_Mark get reminderMark => $_getN(17);
  @$pb.TagNumber(18)
  set reminderMark(ReminderInfo_Mark value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasReminderMark() => $_has(17);
  @$pb.TagNumber(18)
  void clearReminderMark() => $_clearField(18);
  @$pb.TagNumber(18)
  ReminderInfo_Mark ensureReminderMark() => $_ensure(17);
}

class ClockInfo_Data extends $pb.GeneratedMessage {
  factory ClockInfo_Data({
    $0.Time? time,
    $0.ClockMode? clockMode,
    $core.int? weekDays,
    $core.bool? enable,
    $core.String? label,
  }) {
    final result = create();
    if (time != null) result.time = time;
    if (clockMode != null) result.clockMode = clockMode;
    if (weekDays != null) result.weekDays = weekDays;
    if (enable != null) result.enable = enable;
    if (label != null) result.label = label;
    return result;
  }

  ClockInfo_Data._();

  factory ClockInfo_Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClockInfo_Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClockInfo.Data',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<$0.Time>(2, _omitFieldNames ? '' : 'time', subBuilder: $0.Time.create)
    ..aE<$0.ClockMode>(3, _omitFieldNames ? '' : 'clockMode',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.ClockMode.values)
    ..aI(4, _omitFieldNames ? '' : 'weekDays', fieldType: $pb.PbFieldType.OU3)
    ..a<$core.bool>(5, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB)
    ..aQS(6, _omitFieldNames ? '' : 'label');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClockInfo_Data clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClockInfo_Data copyWith(void Function(ClockInfo_Data) updates) =>
      super.copyWith((message) => updates(message as ClockInfo_Data))
          as ClockInfo_Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClockInfo_Data create() => ClockInfo_Data._();
  @$core.override
  ClockInfo_Data createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClockInfo_Data getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClockInfo_Data>(create);
  static ClockInfo_Data? _defaultInstance;

  @$pb.TagNumber(2)
  $0.Time get time => $_getN(0);
  @$pb.TagNumber(2)
  set time($0.Time value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(2)
  void clearTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureTime() => $_ensure(0);

  @$pb.TagNumber(3)
  $0.ClockMode get clockMode => $_getN(1);
  @$pb.TagNumber(3)
  set clockMode($0.ClockMode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasClockMode() => $_has(1);
  @$pb.TagNumber(3)
  void clearClockMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get weekDays => $_getIZ(2);
  @$pb.TagNumber(4)
  set weekDays($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasWeekDays() => $_has(2);
  @$pb.TagNumber(4)
  void clearWeekDays() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get enable => $_getBF(3);
  @$pb.TagNumber(5)
  set enable($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(5)
  $core.bool hasEnable() => $_has(3);
  @$pb.TagNumber(5)
  void clearEnable() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(6)
  set label($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(6)
  void clearLabel() => $_clearField(6);
}

class ClockInfo_List extends $pb.GeneratedMessage {
  factory ClockInfo_List({
    $core.Iterable<ClockInfo>? list,
    $core.int? supportMaxClocks,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (supportMaxClocks != null) result.supportMaxClocks = supportMaxClocks;
    return result;
  }

  ClockInfo_List._();

  factory ClockInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClockInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClockInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<ClockInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: ClockInfo.create)
    ..aI(2, _omitFieldNames ? '' : 'supportMaxClocks',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClockInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClockInfo_List copyWith(void Function(ClockInfo_List) updates) =>
      super.copyWith((message) => updates(message as ClockInfo_List))
          as ClockInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClockInfo_List create() => ClockInfo_List._();
  @$core.override
  ClockInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClockInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClockInfo_List>(create);
  static ClockInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ClockInfo> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get supportMaxClocks => $_getIZ(1);
  @$pb.TagNumber(2)
  set supportMaxClocks($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportMaxClocks() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportMaxClocks() => $_clearField(2);
}

class ClockInfo extends $pb.GeneratedMessage {
  factory ClockInfo({
    $core.int? id,
    ClockInfo_Data? data,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (data != null) result.data = data;
    return result;
  }

  ClockInfo._();

  factory ClockInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClockInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClockInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aQM<ClockInfo_Data>(2, _omitFieldNames ? '' : 'data',
        subBuilder: ClockInfo_Data.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClockInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClockInfo copyWith(void Function(ClockInfo) updates) =>
      super.copyWith((message) => updates(message as ClockInfo)) as ClockInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClockInfo create() => ClockInfo._();
  @$core.override
  ClockInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClockInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClockInfo>(create);
  static ClockInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  ClockInfo_Data get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(ClockInfo_Data value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  ClockInfo_Data ensureData() => $_ensure(1);
}

class ClockIdList extends $pb.GeneratedMessage {
  factory ClockIdList({
    $core.Iterable<$core.int>? id,
  }) {
    final result = create();
    if (id != null) result.id.addAll(id);
    return result;
  }

  ClockIdList._();

  factory ClockIdList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClockIdList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClockIdList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClockIdList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClockIdList copyWith(void Function(ClockIdList) updates) =>
      super.copyWith((message) => updates(message as ClockIdList))
          as ClockIdList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClockIdList create() => ClockIdList._();
  @$core.override
  ClockIdList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClockIdList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClockIdList>(create);
  static ClockIdList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get id => $_getList(0);
}

class WorkAndRest_Data extends $pb.GeneratedMessage {
  factory WorkAndRest_Data({
    $0.Time? bedtime,
    $0.Time? getupTime,
    $core.int? remindBed,
  }) {
    final result = create();
    if (bedtime != null) result.bedtime = bedtime;
    if (getupTime != null) result.getupTime = getupTime;
    if (remindBed != null) result.remindBed = remindBed;
    return result;
  }

  WorkAndRest_Data._();

  factory WorkAndRest_Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WorkAndRest_Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WorkAndRest.Data',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<$0.Time>(1, _omitFieldNames ? '' : 'bedtime',
        subBuilder: $0.Time.create)
    ..aQM<$0.Time>(2, _omitFieldNames ? '' : 'getupTime',
        subBuilder: $0.Time.create)
    ..aI(3, _omitFieldNames ? '' : 'remindBed', fieldType: $pb.PbFieldType.QS3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkAndRest_Data clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkAndRest_Data copyWith(void Function(WorkAndRest_Data) updates) =>
      super.copyWith((message) => updates(message as WorkAndRest_Data))
          as WorkAndRest_Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkAndRest_Data create() => WorkAndRest_Data._();
  @$core.override
  WorkAndRest_Data createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WorkAndRest_Data getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WorkAndRest_Data>(create);
  static WorkAndRest_Data? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Time get bedtime => $_getN(0);
  @$pb.TagNumber(1)
  set bedtime($0.Time value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBedtime() => $_has(0);
  @$pb.TagNumber(1)
  void clearBedtime() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Time ensureBedtime() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Time get getupTime => $_getN(1);
  @$pb.TagNumber(2)
  set getupTime($0.Time value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGetupTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearGetupTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureGetupTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get remindBed => $_getIZ(2);
  @$pb.TagNumber(3)
  set remindBed($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRemindBed() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemindBed() => $_clearField(3);
}

class WorkAndRest extends $pb.GeneratedMessage {
  factory WorkAndRest({
    WorkAndRest_Source? source,
    WorkAndRest_Data? data,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (data != null) result.data = data;
    return result;
  }

  WorkAndRest._();

  factory WorkAndRest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WorkAndRest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WorkAndRest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<WorkAndRest_Source>(1, _omitFieldNames ? '' : 'source',
        fieldType: $pb.PbFieldType.QE, enumValues: WorkAndRest_Source.values)
    ..aOM<WorkAndRest_Data>(2, _omitFieldNames ? '' : 'data',
        subBuilder: WorkAndRest_Data.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkAndRest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkAndRest copyWith(void Function(WorkAndRest) updates) =>
      super.copyWith((message) => updates(message as WorkAndRest))
          as WorkAndRest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkAndRest create() => WorkAndRest._();
  @$core.override
  WorkAndRest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WorkAndRest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WorkAndRest>(create);
  static WorkAndRest? _defaultInstance;

  @$pb.TagNumber(1)
  WorkAndRest_Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(WorkAndRest_Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);

  @$pb.TagNumber(2)
  WorkAndRest_Data get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(WorkAndRest_Data value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  WorkAndRest_Data ensureData() => $_ensure(1);
}

class WorldClockIdList extends $pb.GeneratedMessage {
  factory WorldClockIdList({
    $core.Iterable<$core.String>? id,
  }) {
    final result = create();
    if (id != null) result.id.addAll(id);
    return result;
  }

  WorldClockIdList._();

  factory WorldClockIdList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WorldClockIdList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WorldClockIdList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorldClockIdList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorldClockIdList copyWith(void Function(WorldClockIdList) updates) =>
      super.copyWith((message) => updates(message as WorldClockIdList))
          as WorldClockIdList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorldClockIdList create() => WorldClockIdList._();
  @$core.override
  WorldClockIdList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WorldClockIdList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WorldClockIdList>(create);
  static WorldClockIdList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get id => $_getList(0);
}

class PhoneAlarm_Operation extends $pb.GeneratedMessage {
  factory PhoneAlarm_Operation({
    PhoneAlarm_OpCode? opCode,
    PhoneAlarm? phoneAlarm,
  }) {
    final result = create();
    if (opCode != null) result.opCode = opCode;
    if (phoneAlarm != null) result.phoneAlarm = phoneAlarm;
    return result;
  }

  PhoneAlarm_Operation._();

  factory PhoneAlarm_Operation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneAlarm_Operation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneAlarm.Operation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<PhoneAlarm_OpCode>(1, _omitFieldNames ? '' : 'opCode',
        fieldType: $pb.PbFieldType.QE, enumValues: PhoneAlarm_OpCode.values)
    ..aQM<PhoneAlarm>(2, _omitFieldNames ? '' : 'phoneAlarm',
        subBuilder: PhoneAlarm.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneAlarm_Operation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneAlarm_Operation copyWith(void Function(PhoneAlarm_Operation) updates) =>
      super.copyWith((message) => updates(message as PhoneAlarm_Operation))
          as PhoneAlarm_Operation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneAlarm_Operation create() => PhoneAlarm_Operation._();
  @$core.override
  PhoneAlarm_Operation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneAlarm_Operation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneAlarm_Operation>(create);
  static PhoneAlarm_Operation? _defaultInstance;

  @$pb.TagNumber(1)
  PhoneAlarm_OpCode get opCode => $_getN(0);
  @$pb.TagNumber(1)
  set opCode(PhoneAlarm_OpCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOpCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpCode() => $_clearField(1);

  @$pb.TagNumber(2)
  PhoneAlarm get phoneAlarm => $_getN(1);
  @$pb.TagNumber(2)
  set phoneAlarm(PhoneAlarm value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPhoneAlarm() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhoneAlarm() => $_clearField(2);
  @$pb.TagNumber(2)
  PhoneAlarm ensurePhoneAlarm() => $_ensure(1);
}

class PhoneAlarm extends $pb.GeneratedMessage {
  factory PhoneAlarm({
    $core.int? id,
    $core.int? alertTime,
    $core.String? label,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (alertTime != null) result.alertTime = alertTime;
    if (label != null) result.label = label;
    return result;
  }

  PhoneAlarm._();

  factory PhoneAlarm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneAlarm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneAlarm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'alertTime', fieldType: $pb.PbFieldType.OU3)
    ..aQS(3, _omitFieldNames ? '' : 'label');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneAlarm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneAlarm copyWith(void Function(PhoneAlarm) updates) =>
      super.copyWith((message) => updates(message as PhoneAlarm)) as PhoneAlarm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneAlarm create() => PhoneAlarm._();
  @$core.override
  PhoneAlarm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneAlarm getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneAlarm>(create);
  static PhoneAlarm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get alertTime => $_getIZ(1);
  @$pb.TagNumber(2)
  set alertTime($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAlertTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlertTime() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get label => $_getSZ(2);
  @$pb.TagNumber(3)
  set label($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLabel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabel() => $_clearField(3);
}

class ReminderInfo_List extends $pb.GeneratedMessage {
  factory ReminderInfo_List({
    $core.Iterable<ReminderInfo>? list,
    $core.int? supportMaxReminders,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (supportMaxReminders != null)
      result.supportMaxReminders = supportMaxReminders;
    return result;
  }

  ReminderInfo_List._();

  factory ReminderInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReminderInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReminderInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<ReminderInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: ReminderInfo.create)
    ..aI(2, _omitFieldNames ? '' : 'supportMaxReminders',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo_List copyWith(void Function(ReminderInfo_List) updates) =>
      super.copyWith((message) => updates(message as ReminderInfo_List))
          as ReminderInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReminderInfo_List create() => ReminderInfo_List._();
  @$core.override
  ReminderInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReminderInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReminderInfo_List>(create);
  static ReminderInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ReminderInfo> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get supportMaxReminders => $_getIZ(1);
  @$pb.TagNumber(2)
  set supportMaxReminders($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportMaxReminders() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportMaxReminders() => $_clearField(2);
}

class ReminderInfo_SubTodo extends $pb.GeneratedMessage {
  factory ReminderInfo_SubTodo({
    $core.int? id,
    $core.int? status,
    $core.String? content,
    $core.bool? truncated,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (status != null) result.status = status;
    if (content != null) result.content = content;
    if (truncated != null) result.truncated = truncated;
    return result;
  }

  ReminderInfo_SubTodo._();

  factory ReminderInfo_SubTodo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReminderInfo_SubTodo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReminderInfo.SubTodo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3)
    ..aQS(3, _omitFieldNames ? '' : 'content')
    ..aOB(4, _omitFieldNames ? '' : 'truncated');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo_SubTodo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo_SubTodo copyWith(void Function(ReminderInfo_SubTodo) updates) =>
      super.copyWith((message) => updates(message as ReminderInfo_SubTodo))
          as ReminderInfo_SubTodo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReminderInfo_SubTodo create() => ReminderInfo_SubTodo._();
  @$core.override
  ReminderInfo_SubTodo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReminderInfo_SubTodo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReminderInfo_SubTodo>(create);
  static ReminderInfo_SubTodo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get truncated => $_getBF(3);
  @$pb.TagNumber(4)
  set truncated($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTruncated() => $_has(3);
  @$pb.TagNumber(4)
  void clearTruncated() => $_clearField(4);
}

class ReminderInfo_Data extends $pb.GeneratedMessage {
  factory ReminderInfo_Data({
    $0.Date? date,
    $0.Time? time,
    $0.ClockMode? clockMode,
    $core.int? weekDays,
    $core.String? label,
    $core.bool? truncated,
    $core.int? source,
    $core.int? status,
    $fixnum.Int64? updateTime,
    $core.Iterable<ReminderInfo_SubTodo>? subList,
  }) {
    final result = create();
    if (date != null) result.date = date;
    if (time != null) result.time = time;
    if (clockMode != null) result.clockMode = clockMode;
    if (weekDays != null) result.weekDays = weekDays;
    if (label != null) result.label = label;
    if (truncated != null) result.truncated = truncated;
    if (source != null) result.source = source;
    if (status != null) result.status = status;
    if (updateTime != null) result.updateTime = updateTime;
    if (subList != null) result.subList.addAll(subList);
    return result;
  }

  ReminderInfo_Data._();

  factory ReminderInfo_Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReminderInfo_Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReminderInfo.Data',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<$0.Date>(1, _omitFieldNames ? '' : 'date', subBuilder: $0.Date.create)
    ..aQM<$0.Time>(2, _omitFieldNames ? '' : 'time', subBuilder: $0.Time.create)
    ..aE<$0.ClockMode>(3, _omitFieldNames ? '' : 'clockMode',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.ClockMode.values)
    ..aI(4, _omitFieldNames ? '' : 'weekDays', fieldType: $pb.PbFieldType.OU3)
    ..aQS(5, _omitFieldNames ? '' : 'label')
    ..aOB(6, _omitFieldNames ? '' : 'truncated')
    ..aI(7, _omitFieldNames ? '' : 'source', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'updateTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<ReminderInfo_SubTodo>(10, _omitFieldNames ? '' : 'subList',
        subBuilder: ReminderInfo_SubTodo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo_Data clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo_Data copyWith(void Function(ReminderInfo_Data) updates) =>
      super.copyWith((message) => updates(message as ReminderInfo_Data))
          as ReminderInfo_Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReminderInfo_Data create() => ReminderInfo_Data._();
  @$core.override
  ReminderInfo_Data createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReminderInfo_Data getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReminderInfo_Data>(create);
  static ReminderInfo_Data? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Date get date => $_getN(0);
  @$pb.TagNumber(1)
  set date($0.Date value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Date ensureDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Time get time => $_getN(1);
  @$pb.TagNumber(2)
  set time($0.Time value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.ClockMode get clockMode => $_getN(2);
  @$pb.TagNumber(3)
  set clockMode($0.ClockMode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasClockMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearClockMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get weekDays => $_getIZ(3);
  @$pb.TagNumber(4)
  set weekDays($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWeekDays() => $_has(3);
  @$pb.TagNumber(4)
  void clearWeekDays() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(5)
  set label($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLabel() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get truncated => $_getBF(5);
  @$pb.TagNumber(6)
  set truncated($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTruncated() => $_has(5);
  @$pb.TagNumber(6)
  void clearTruncated() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get source => $_getIZ(6);
  @$pb.TagNumber(7)
  set source($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSource() => $_has(6);
  @$pb.TagNumber(7)
  void clearSource() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get status => $_getIZ(7);
  @$pb.TagNumber(8)
  set status($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get updateTime => $_getI64(8);
  @$pb.TagNumber(9)
  set updateTime($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasUpdateTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdateTime() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<ReminderInfo_SubTodo> get subList => $_getList(9);
}

class ReminderInfo_Mark extends $pb.GeneratedMessage {
  factory ReminderInfo_Mark({
    $core.int? id,
    $core.int? source,
    $core.int? status,
    $fixnum.Int64? updateTime,
    $core.Iterable<ReminderInfo_SubTodo>? subList,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (source != null) result.source = source;
    if (status != null) result.status = status;
    if (updateTime != null) result.updateTime = updateTime;
    if (subList != null) result.subList.addAll(subList);
    return result;
  }

  ReminderInfo_Mark._();

  factory ReminderInfo_Mark.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReminderInfo_Mark.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReminderInfo.Mark',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'source', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'updateTime', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<ReminderInfo_SubTodo>(5, _omitFieldNames ? '' : 'subList',
        subBuilder: ReminderInfo_SubTodo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo_Mark clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo_Mark copyWith(void Function(ReminderInfo_Mark) updates) =>
      super.copyWith((message) => updates(message as ReminderInfo_Mark))
          as ReminderInfo_Mark;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReminderInfo_Mark create() => ReminderInfo_Mark._();
  @$core.override
  ReminderInfo_Mark createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReminderInfo_Mark getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReminderInfo_Mark>(create);
  static ReminderInfo_Mark? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get source => $_getIZ(1);
  @$pb.TagNumber(2)
  set source($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearSource() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(2);
  @$pb.TagNumber(3)
  set status($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get updateTime => $_getI64(3);
  @$pb.TagNumber(4)
  set updateTime($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUpdateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<ReminderInfo_SubTodo> get subList => $_getList(4);
}

class ReminderInfo extends $pb.GeneratedMessage {
  factory ReminderInfo({
    $core.int? id,
    ReminderInfo_Data? data,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (data != null) result.data = data;
    return result;
  }

  ReminderInfo._();

  factory ReminderInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReminderInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReminderInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aQM<ReminderInfo_Data>(2, _omitFieldNames ? '' : 'data',
        subBuilder: ReminderInfo_Data.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderInfo copyWith(void Function(ReminderInfo) updates) =>
      super.copyWith((message) => updates(message as ReminderInfo))
          as ReminderInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReminderInfo create() => ReminderInfo._();
  @$core.override
  ReminderInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReminderInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReminderInfo>(create);
  static ReminderInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  ReminderInfo_Data get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(ReminderInfo_Data value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  ReminderInfo_Data ensureData() => $_ensure(1);
}

class ReminderIdList extends $pb.GeneratedMessage {
  factory ReminderIdList({
    $core.Iterable<$core.int>? id,
  }) {
    final result = create();
    if (id != null) result.id.addAll(id);
    return result;
  }

  ReminderIdList._();

  factory ReminderIdList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReminderIdList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReminderIdList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderIdList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReminderIdList copyWith(void Function(ReminderIdList) updates) =>
      super.copyWith((message) => updates(message as ReminderIdList))
          as ReminderIdList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReminderIdList create() => ReminderIdList._();
  @$core.override
  ReminderIdList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReminderIdList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReminderIdList>(create);
  static ReminderIdList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get id => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
