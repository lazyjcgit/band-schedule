// This is a generated file - do not edit.
//
// Generated from wear_lpa.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TelecomOperator extends $pb.ProtobufEnum {
  static const TelecomOperator CHINA_MOBILE =
      TelecomOperator._(1, _omitEnumNames ? '' : 'CHINA_MOBILE');
  static const TelecomOperator CHINA_UNICOM =
      TelecomOperator._(2, _omitEnumNames ? '' : 'CHINA_UNICOM');
  static const TelecomOperator CHINA_TELECOM =
      TelecomOperator._(3, _omitEnumNames ? '' : 'CHINA_TELECOM');

  static const $core.List<TelecomOperator> values = <TelecomOperator>[
    CHINA_MOBILE,
    CHINA_UNICOM,
    CHINA_TELECOM,
  ];

  static final $core.List<TelecomOperator?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TelecomOperator? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TelecomOperator._(super.value, super.name);
}

class Lpa_LpaID extends $pb.ProtobufEnum {
  static const Lpa_LpaID COMMAND =
      Lpa_LpaID._(0, _omitEnumNames ? '' : 'COMMAND');
  static const Lpa_LpaID GET_EUICC_INFO =
      Lpa_LpaID._(1, _omitEnumNames ? '' : 'GET_EUICC_INFO');
  static const Lpa_LpaID GET_PROFILE_LIST =
      Lpa_LpaID._(2, _omitEnumNames ? '' : 'GET_PROFILE_LIST');
  static const Lpa_LpaID OPERATE_PROFILE =
      Lpa_LpaID._(3, _omitEnumNames ? '' : 'OPERATE_PROFILE');
  static const Lpa_LpaID REPORT_OPERATE_RESULT =
      Lpa_LpaID._(4, _omitEnumNames ? '' : 'REPORT_OPERATE_RESULT');
  static const Lpa_LpaID PREPARE_DOWNLOAD_PROFILE =
      Lpa_LpaID._(5, _omitEnumNames ? '' : 'PREPARE_DOWNLOAD_PROFILE');
  static const Lpa_LpaID DOWNLOAD_PROFILE =
      Lpa_LpaID._(6, _omitEnumNames ? '' : 'DOWNLOAD_PROFILE');
  static const Lpa_LpaID REPORT_DOWNLOAD_PROGRESS =
      Lpa_LpaID._(7, _omitEnumNames ? '' : 'REPORT_DOWNLOAD_PROGRESS');
  static const Lpa_LpaID REQUEST_HTTP =
      Lpa_LpaID._(8, _omitEnumNames ? '' : 'REQUEST_HTTP');
  static const Lpa_LpaID RESPONSE_HTTP =
      Lpa_LpaID._(9, _omitEnumNames ? '' : 'RESPONSE_HTTP');

  static const $core.List<Lpa_LpaID> values = <Lpa_LpaID>[
    COMMAND,
    GET_EUICC_INFO,
    GET_PROFILE_LIST,
    OPERATE_PROFILE,
    REPORT_OPERATE_RESULT,
    PREPARE_DOWNLOAD_PROFILE,
    DOWNLOAD_PROFILE,
    REPORT_DOWNLOAD_PROGRESS,
    REQUEST_HTTP,
    RESPONSE_HTTP,
  ];

  static final $core.List<Lpa_LpaID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static Lpa_LpaID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Lpa_LpaID._(super.value, super.name);
}

class ProfileOperator_Cmd extends $pb.ProtobufEnum {
  static const ProfileOperator_Cmd ENABLE =
      ProfileOperator_Cmd._(0, _omitEnumNames ? '' : 'ENABLE');
  static const ProfileOperator_Cmd DISABLE =
      ProfileOperator_Cmd._(1, _omitEnumNames ? '' : 'DISABLE');
  static const ProfileOperator_Cmd DELETE =
      ProfileOperator_Cmd._(2, _omitEnumNames ? '' : 'DELETE');

  static const $core.List<ProfileOperator_Cmd> values = <ProfileOperator_Cmd>[
    ENABLE,
    DISABLE,
    DELETE,
  ];

  static final $core.List<ProfileOperator_Cmd?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ProfileOperator_Cmd? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ProfileOperator_Cmd._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
