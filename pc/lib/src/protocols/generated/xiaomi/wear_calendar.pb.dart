// This is a generated file - do not edit.
//
// Generated from wear_calendar.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_calendar.pbenum.dart';

enum Calendar_Payload { calendarInfo, calendarInfoList, notSet }

class Calendar extends $pb.GeneratedMessage {
  factory Calendar({
    CalendarInfo? calendarInfo,
    CalendarInfo_List? calendarInfoList,
  }) {
    final result = create();
    if (calendarInfo != null) result.calendarInfo = calendarInfo;
    if (calendarInfoList != null) result.calendarInfoList = calendarInfoList;
    return result;
  }

  Calendar._();

  factory Calendar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Calendar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Calendar_Payload> _Calendar_PayloadByTag = {
    1: Calendar_Payload.calendarInfo,
    2: Calendar_Payload.calendarInfoList,
    0: Calendar_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Calendar',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CalendarInfo>(1, _omitFieldNames ? '' : 'calendarInfo',
        subBuilder: CalendarInfo.create)
    ..aOM<CalendarInfo_List>(2, _omitFieldNames ? '' : 'calendarInfoList',
        subBuilder: CalendarInfo_List.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Calendar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Calendar copyWith(void Function(Calendar) updates) =>
      super.copyWith((message) => updates(message as Calendar)) as Calendar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Calendar create() => Calendar._();
  @$core.override
  Calendar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Calendar getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Calendar>(create);
  static Calendar? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  Calendar_Payload whichPayload() => _Calendar_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CalendarInfo get calendarInfo => $_getN(0);
  @$pb.TagNumber(1)
  set calendarInfo(CalendarInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCalendarInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalendarInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  CalendarInfo ensureCalendarInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  CalendarInfo_List get calendarInfoList => $_getN(1);
  @$pb.TagNumber(2)
  set calendarInfoList(CalendarInfo_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCalendarInfoList() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalendarInfoList() => $_clearField(2);
  @$pb.TagNumber(2)
  CalendarInfo_List ensureCalendarInfoList() => $_ensure(1);
}

class CalendarInfo_List extends $pb.GeneratedMessage {
  factory CalendarInfo_List({
    $core.Iterable<CalendarInfo>? list,
    $core.bool? disable,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (disable != null) result.disable = disable;
    return result;
  }

  CalendarInfo_List._();

  factory CalendarInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalendarInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalendarInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<CalendarInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: CalendarInfo.create)
    ..aOB(2, _omitFieldNames ? '' : 'disable');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalendarInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalendarInfo_List copyWith(void Function(CalendarInfo_List) updates) =>
      super.copyWith((message) => updates(message as CalendarInfo_List))
          as CalendarInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalendarInfo_List create() => CalendarInfo_List._();
  @$core.override
  CalendarInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalendarInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalendarInfo_List>(create);
  static CalendarInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CalendarInfo> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get disable => $_getBF(1);
  @$pb.TagNumber(2)
  set disable($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisable() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisable() => $_clearField(2);
}

class CalendarInfo extends $pb.GeneratedMessage {
  factory CalendarInfo({
    $core.String? title,
    $core.String? description,
    $core.String? location,
    $core.int? start,
    $core.int? end,
    $core.bool? allDay,
    $core.int? reminderMinutes,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (description != null) result.description = description;
    if (location != null) result.location = location;
    if (start != null) result.start = start;
    if (end != null) result.end = end;
    if (allDay != null) result.allDay = allDay;
    if (reminderMinutes != null) result.reminderMinutes = reminderMinutes;
    return result;
  }

  CalendarInfo._();

  factory CalendarInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalendarInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalendarInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'title')
    ..aQS(2, _omitFieldNames ? '' : 'description')
    ..aQS(3, _omitFieldNames ? '' : 'location')
    ..aI(4, _omitFieldNames ? '' : 'start', fieldType: $pb.PbFieldType.QU3)
    ..aI(5, _omitFieldNames ? '' : 'end', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(6, _omitFieldNames ? '' : 'allDay', $pb.PbFieldType.QB)
    ..aI(7, _omitFieldNames ? '' : 'reminderMinutes',
        fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalendarInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalendarInfo copyWith(void Function(CalendarInfo) updates) =>
      super.copyWith((message) => updates(message as CalendarInfo))
          as CalendarInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalendarInfo create() => CalendarInfo._();
  @$core.override
  CalendarInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalendarInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalendarInfo>(create);
  static CalendarInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get location => $_getSZ(2);
  @$pb.TagNumber(3)
  set location($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get start => $_getIZ(3);
  @$pb.TagNumber(4)
  set start($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStart() => $_has(3);
  @$pb.TagNumber(4)
  void clearStart() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get end => $_getIZ(4);
  @$pb.TagNumber(5)
  set end($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnd() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get allDay => $_getBF(5);
  @$pb.TagNumber(6)
  set allDay($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAllDay() => $_has(5);
  @$pb.TagNumber(6)
  void clearAllDay() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get reminderMinutes => $_getIZ(6);
  @$pb.TagNumber(7)
  set reminderMinutes($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasReminderMinutes() => $_has(6);
  @$pb.TagNumber(7)
  void clearReminderMinutes() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
