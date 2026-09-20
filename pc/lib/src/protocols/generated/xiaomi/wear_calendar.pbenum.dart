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

class Calendar_CalendarID extends $pb.ProtobufEnum {
  static const Calendar_CalendarID SYNC_CALENDAR_INFO =
      Calendar_CalendarID._(0, _omitEnumNames ? '' : 'SYNC_CALENDAR_INFO');
  static const Calendar_CalendarID SYNC_CALENDAR_INFO_LIST =
      Calendar_CalendarID._(1, _omitEnumNames ? '' : 'SYNC_CALENDAR_INFO_LIST');
  static const Calendar_CalendarID WEAR_REQUEST =
      Calendar_CalendarID._(2, _omitEnumNames ? '' : 'WEAR_REQUEST');

  static const $core.List<Calendar_CalendarID> values = <Calendar_CalendarID>[
    SYNC_CALENDAR_INFO,
    SYNC_CALENDAR_INFO_LIST,
    WEAR_REQUEST,
  ];

  static final $core.List<Calendar_CalendarID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Calendar_CalendarID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Calendar_CalendarID._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
