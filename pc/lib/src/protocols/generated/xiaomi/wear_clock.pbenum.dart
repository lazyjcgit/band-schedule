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

import 'package:protobuf/protobuf.dart' as $pb;

class ClockError extends $pb.ProtobufEnum {
  static const ClockError EXCEED_LIMIT =
      ClockError._(1, _omitEnumNames ? '' : 'EXCEED_LIMIT');
  static const ClockError INVALID_ID =
      ClockError._(2, _omitEnumNames ? '' : 'INVALID_ID');
  static const ClockError INVALID_DATA =
      ClockError._(3, _omitEnumNames ? '' : 'INVALID_DATA');
  static const ClockError NOT_SUPPORT_HOLIDAY =
      ClockError._(4, _omitEnumNames ? '' : 'NOT_SUPPORT_HOLIDAY');

  static const $core.List<ClockError> values = <ClockError>[
    EXCEED_LIMIT,
    INVALID_ID,
    INVALID_DATA,
    NOT_SUPPORT_HOLIDAY,
  ];

  static final $core.List<ClockError?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ClockError? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ClockError._(super.value, super.name);
}

class WorldClockResult extends $pb.ProtobufEnum {
  static const WorldClockResult OPERATE_SUCCESS =
      WorldClockResult._(0, _omitEnumNames ? '' : 'OPERATE_SUCCESS');
  static const WorldClockResult ID_NOT_SUPPORT =
      WorldClockResult._(1, _omitEnumNames ? '' : 'ID_NOT_SUPPORT');
  static const WorldClockResult OVER_LIMIT =
      WorldClockResult._(2, _omitEnumNames ? '' : 'OVER_LIMIT');

  static const $core.List<WorldClockResult> values = <WorldClockResult>[
    OPERATE_SUCCESS,
    ID_NOT_SUPPORT,
    OVER_LIMIT,
  ];

  static final $core.List<WorldClockResult?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static WorldClockResult? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WorldClockResult._(super.value, super.name);
}

class Clock_ClockID extends $pb.ProtobufEnum {
  static const Clock_ClockID GET_CLOCK_LIST =
      Clock_ClockID._(0, _omitEnumNames ? '' : 'GET_CLOCK_LIST');
  static const Clock_ClockID ADD_CLOCK =
      Clock_ClockID._(1, _omitEnumNames ? '' : 'ADD_CLOCK');
  static const Clock_ClockID UPDATE_CLOCK =
      Clock_ClockID._(2, _omitEnumNames ? '' : 'UPDATE_CLOCK');
  static const Clock_ClockID REMOVE_CLOCK =
      Clock_ClockID._(3, _omitEnumNames ? '' : 'REMOVE_CLOCK');
  static const Clock_ClockID REMOVE_CLOCKS =
      Clock_ClockID._(4, _omitEnumNames ? '' : 'REMOVE_CLOCKS');
  static const Clock_ClockID ENABLE_OR_DISABLE_CLOCK =
      Clock_ClockID._(5, _omitEnumNames ? '' : 'ENABLE_OR_DISABLE_CLOCK');
  static const Clock_ClockID GET_REMINDER_LIST =
      Clock_ClockID._(14, _omitEnumNames ? '' : 'GET_REMINDER_LIST');
  static const Clock_ClockID ADD_REMINDER =
      Clock_ClockID._(15, _omitEnumNames ? '' : 'ADD_REMINDER');
  static const Clock_ClockID UPDATE_REMINDER =
      Clock_ClockID._(17, _omitEnumNames ? '' : 'UPDATE_REMINDER');
  static const Clock_ClockID REMOVE_REMINDERS =
      Clock_ClockID._(18, _omitEnumNames ? '' : 'REMOVE_REMINDERS');
  static const Clock_ClockID SYNC_REMINDER_LIST =
      Clock_ClockID._(19, _omitEnumNames ? '' : 'SYNC_REMINDER_LIST');
  static const Clock_ClockID MARK_REMINDER =
      Clock_ClockID._(20, _omitEnumNames ? '' : 'MARK_REMINDER');
  static const Clock_ClockID REQUEST_REMINDERS =
      Clock_ClockID._(21, _omitEnumNames ? '' : 'REQUEST_REMINDERS');
  static const Clock_ClockID SYNC_HOLIDAY =
      Clock_ClockID._(6, _omitEnumNames ? '' : 'SYNC_HOLIDAY');
  static const Clock_ClockID WEAR_REQUEST_HOLIDAY =
      Clock_ClockID._(7, _omitEnumNames ? '' : 'WEAR_REQUEST_HOLIDAY');
  static const Clock_ClockID GET_WORK_AND_REST =
      Clock_ClockID._(8, _omitEnumNames ? '' : 'GET_WORK_AND_REST');
  static const Clock_ClockID SET_WORK_AND_REST =
      Clock_ClockID._(9, _omitEnumNames ? '' : 'SET_WORK_AND_REST');
  static const Clock_ClockID GET_WORLD_CLOCK_LIST =
      Clock_ClockID._(10, _omitEnumNames ? '' : 'GET_WORLD_CLOCK_LIST');
  static const Clock_ClockID ADD_WORLD_CLOCK =
      Clock_ClockID._(11, _omitEnumNames ? '' : 'ADD_WORLD_CLOCK');
  static const Clock_ClockID REMOVE_WORLD_CLOCK =
      Clock_ClockID._(12, _omitEnumNames ? '' : 'REMOVE_WORLD_CLOCK');
  static const Clock_ClockID REMOVE_WORLD_CLOCKS =
      Clock_ClockID._(13, _omitEnumNames ? '' : 'REMOVE_WORLD_CLOCKS');
  static const Clock_ClockID PHONE_ALARM_OPERATION =
      Clock_ClockID._(16, _omitEnumNames ? '' : 'PHONE_ALARM_OPERATION');

  static const $core.List<Clock_ClockID> values = <Clock_ClockID>[
    GET_CLOCK_LIST,
    ADD_CLOCK,
    UPDATE_CLOCK,
    REMOVE_CLOCK,
    REMOVE_CLOCKS,
    ENABLE_OR_DISABLE_CLOCK,
    GET_REMINDER_LIST,
    ADD_REMINDER,
    UPDATE_REMINDER,
    REMOVE_REMINDERS,
    SYNC_REMINDER_LIST,
    MARK_REMINDER,
    REQUEST_REMINDERS,
    SYNC_HOLIDAY,
    WEAR_REQUEST_HOLIDAY,
    GET_WORK_AND_REST,
    SET_WORK_AND_REST,
    GET_WORLD_CLOCK_LIST,
    ADD_WORLD_CLOCK,
    REMOVE_WORLD_CLOCK,
    REMOVE_WORLD_CLOCKS,
    PHONE_ALARM_OPERATION,
  ];

  static final $core.List<Clock_ClockID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 21);
  static Clock_ClockID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Clock_ClockID._(super.value, super.name);
}

class WorkAndRest_Source extends $pb.ProtobufEnum {
  static const WorkAndRest_Source NONE =
      WorkAndRest_Source._(0, _omitEnumNames ? '' : 'NONE');
  static const WorkAndRest_Source MIUI =
      WorkAndRest_Source._(1, _omitEnumNames ? '' : 'MIUI');
  static const WorkAndRest_Source MANUAL =
      WorkAndRest_Source._(2, _omitEnumNames ? '' : 'MANUAL');

  static const $core.List<WorkAndRest_Source> values = <WorkAndRest_Source>[
    NONE,
    MIUI,
    MANUAL,
  ];

  static final $core.List<WorkAndRest_Source?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static WorkAndRest_Source? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WorkAndRest_Source._(super.value, super.name);
}

class PhoneAlarm_OpCode extends $pb.ProtobufEnum {
  static const PhoneAlarm_OpCode ALERT =
      PhoneAlarm_OpCode._(0, _omitEnumNames ? '' : 'ALERT');
  static const PhoneAlarm_OpCode DISMISS =
      PhoneAlarm_OpCode._(1, _omitEnumNames ? '' : 'DISMISS');
  static const PhoneAlarm_OpCode SNOOZE =
      PhoneAlarm_OpCode._(2, _omitEnumNames ? '' : 'SNOOZE');

  static const $core.List<PhoneAlarm_OpCode> values = <PhoneAlarm_OpCode>[
    ALERT,
    DISMISS,
    SNOOZE,
  ];

  static final $core.List<PhoneAlarm_OpCode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static PhoneAlarm_OpCode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PhoneAlarm_OpCode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
