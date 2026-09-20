// This is a generated file - do not edit.
//
// Generated from wear_alexa.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AlexaResultType extends $pb.ProtobufEnum {
  static const AlexaResultType ALEXA_START_LISTENING =
      AlexaResultType._(0, _omitEnumNames ? '' : 'ALEXA_START_LISTENING');
  static const AlexaResultType ALEXA_END_LISTENING =
      AlexaResultType._(1, _omitEnumNames ? '' : 'ALEXA_END_LISTENING');
  static const AlexaResultType ALEXA_AUTH_STATUS =
      AlexaResultType._(3, _omitEnumNames ? '' : 'ALEXA_AUTH_STATUS');
  static const AlexaResultType ALEXA_ERROR_NETWORK =
      AlexaResultType._(80, _omitEnumNames ? '' : 'ALEXA_ERROR_NETWORK');
  static const AlexaResultType ALEXA_ERROR_AUTH =
      AlexaResultType._(81, _omitEnumNames ? '' : 'ALEXA_ERROR_AUTH');
  static const AlexaResultType ALEXA_ERROR_CONTENT_TOO_LONG = AlexaResultType._(
      82, _omitEnumNames ? '' : 'ALEXA_ERROR_CONTENT_TOO_LONG');
  static const AlexaResultType ALEXA_ERROR_UNRECOGNIZABLE_SPEECH =
      AlexaResultType._(
          83, _omitEnumNames ? '' : 'ALEXA_ERROR_UNRECOGNIZABLE_SPEECH');
  static const AlexaResultType ALEXA_ERROR_UNSUPPORTED_AREA = AlexaResultType._(
      84, _omitEnumNames ? '' : 'ALEXA_ERROR_UNSUPPORTED_AREA');
  static const AlexaResultType ALEXA_ERROR_IOS_DEVICE_NOT_SUPPORT =
      AlexaResultType._(
          85, _omitEnumNames ? '' : 'ALEXA_ERROR_IOS_DEVICE_NOT_SUPPORT');
  static const AlexaResultType ALEXA_ERROR_ANDROID_DEVICE_NOT_SUPPORT =
      AlexaResultType._(
          86, _omitEnumNames ? '' : 'ALEXA_ERROR_ANDROID_DEVICE_NOT_SUPPORT');
  static const AlexaResultType ALEXA_ERROR_PLAY_NOT_SUPPORT = AlexaResultType._(
      87, _omitEnumNames ? '' : 'ALEXA_ERROR_PLAY_NOT_SUPPORT');
  static const AlexaResultType ALEXA_TEMPLATE_GENERAL =
      AlexaResultType._(257, _omitEnumNames ? '' : 'ALEXA_TEMPLATE_GENERAL');
  static const AlexaResultType ALEXA_TEMPLATE_WEATHER =
      AlexaResultType._(258, _omitEnumNames ? '' : 'ALEXA_TEMPLATE_WEATHER');
  static const AlexaResultType ALEXA_TEMPLATE_LISTS =
      AlexaResultType._(259, _omitEnumNames ? '' : 'ALEXA_TEMPLATE_LISTS');
  static const AlexaResultType ALEXA_ALERTS_SETALERT =
      AlexaResultType._(260, _omitEnumNames ? '' : 'ALEXA_ALERTS_SETALERT');
  static const AlexaResultType ALEXA_ALERTS_DELETEALERTS =
      AlexaResultType._(261, _omitEnumNames ? '' : 'ALEXA_ALERTS_DELETEALERTS');
  static const AlexaResultType ALEXA_SPEECHSYNTHESIZER_SPEAK =
      AlexaResultType._(
          262, _omitEnumNames ? '' : 'ALEXA_SPEECHSYNTHESIZER_SPEAK');
  static const AlexaResultType ALEXA_SPEECHRECOGNIZER_EXPECTSPEECH =
      AlexaResultType._(
          263, _omitEnumNames ? '' : 'ALEXA_SPEECHRECOGNIZER_EXPECTSPEECH');
  static const AlexaResultType ALEXA_NOTIFICATIONS_SETINDICATOR =
      AlexaResultType._(
          264, _omitEnumNames ? '' : 'ALEXA_NOTIFICATIONS_SETINDICATOR');
  static const AlexaResultType ALEXA_NOTIFICATIONS_CLEARINDICATOR =
      AlexaResultType._(
          265, _omitEnumNames ? '' : 'ALEXA_NOTIFICATIONS_CLEARINDICATOR');

  static const $core.List<AlexaResultType> values = <AlexaResultType>[
    ALEXA_START_LISTENING,
    ALEXA_END_LISTENING,
    ALEXA_AUTH_STATUS,
    ALEXA_ERROR_NETWORK,
    ALEXA_ERROR_AUTH,
    ALEXA_ERROR_CONTENT_TOO_LONG,
    ALEXA_ERROR_UNRECOGNIZABLE_SPEECH,
    ALEXA_ERROR_UNSUPPORTED_AREA,
    ALEXA_ERROR_IOS_DEVICE_NOT_SUPPORT,
    ALEXA_ERROR_ANDROID_DEVICE_NOT_SUPPORT,
    ALEXA_ERROR_PLAY_NOT_SUPPORT,
    ALEXA_TEMPLATE_GENERAL,
    ALEXA_TEMPLATE_WEATHER,
    ALEXA_TEMPLATE_LISTS,
    ALEXA_ALERTS_SETALERT,
    ALEXA_ALERTS_DELETEALERTS,
    ALEXA_SPEECHSYNTHESIZER_SPEAK,
    ALEXA_SPEECHRECOGNIZER_EXPECTSPEECH,
    ALEXA_NOTIFICATIONS_SETINDICATOR,
    ALEXA_NOTIFICATIONS_CLEARINDICATOR,
  ];

  static final $core.Map<$core.int, AlexaResultType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AlexaResultType? valueOf($core.int value) => _byValue[value];

  const AlexaResultType._(super.value, super.name);
}

class AlexaAlertType extends $pb.ProtobufEnum {
  static const AlexaAlertType ALEXA_AlertType_UNKNOWN =
      AlexaAlertType._(-1, _omitEnumNames ? '' : 'ALEXA_AlertType_UNKNOWN');
  static const AlexaAlertType ALEXA_ALARM =
      AlexaAlertType._(0, _omitEnumNames ? '' : 'ALEXA_ALARM');
  static const AlexaAlertType ALEXA_REMINDER =
      AlexaAlertType._(1, _omitEnumNames ? '' : 'ALEXA_REMINDER');
  static const AlexaAlertType ALEXA_TIMER =
      AlexaAlertType._(2, _omitEnumNames ? '' : 'ALEXA_TIMER');

  static const $core.List<AlexaAlertType> values = <AlexaAlertType>[
    ALEXA_AlertType_UNKNOWN,
    ALEXA_ALARM,
    ALEXA_REMINDER,
    ALEXA_TIMER,
  ];

  static final $core.Map<$core.int, AlexaAlertType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AlexaAlertType? valueOf($core.int value) => _byValue[value];

  const AlexaAlertType._(super.value, super.name);
}

class AlexaAuthStatus extends $pb.ProtobufEnum {
  static const AlexaAuthStatus ALEXA_AUTH =
      AlexaAuthStatus._(0, _omitEnumNames ? '' : 'ALEXA_AUTH');
  static const AlexaAuthStatus ALEXA_NO_AUTH =
      AlexaAuthStatus._(1, _omitEnumNames ? '' : 'ALEXA_NO_AUTH');

  static const $core.List<AlexaAuthStatus> values = <AlexaAuthStatus>[
    ALEXA_AUTH,
    ALEXA_NO_AUTH,
  ];

  static final $core.List<AlexaAuthStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static AlexaAuthStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AlexaAuthStatus._(super.value, super.name);
}

class Alexa_AlexaID extends $pb.ProtobufEnum {
  static const Alexa_AlexaID SYNC_INSTRUCTION_LIST =
      Alexa_AlexaID._(0, _omitEnumNames ? '' : 'SYNC_INSTRUCTION_LIST');
  static const Alexa_AlexaID SET_CONFIG =
      Alexa_AlexaID._(1, _omitEnumNames ? '' : 'SET_CONFIG');
  static const Alexa_AlexaID GET_CONFIG =
      Alexa_AlexaID._(2, _omitEnumNames ? '' : 'GET_CONFIG');
  static const Alexa_AlexaID REPORT_QUIET_MODE =
      Alexa_AlexaID._(3, _omitEnumNames ? '' : 'REPORT_QUIET_MODE');

  static const $core.List<Alexa_AlexaID> values = <Alexa_AlexaID>[
    SYNC_INSTRUCTION_LIST,
    SET_CONFIG,
    GET_CONFIG,
    REPORT_QUIET_MODE,
  ];

  static final $core.List<Alexa_AlexaID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Alexa_AlexaID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Alexa_AlexaID._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
