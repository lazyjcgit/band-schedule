// This is a generated file - do not edit.
//
// Generated from wear.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class WearPacket_Type extends $pb.ProtobufEnum {
  static const WearPacket_Type OTHER =
      WearPacket_Type._(0, _omitEnumNames ? '' : 'OTHER');
  static const WearPacket_Type ACCOUNT =
      WearPacket_Type._(1, _omitEnumNames ? '' : 'ACCOUNT');
  static const WearPacket_Type SYSTEM =
      WearPacket_Type._(2, _omitEnumNames ? '' : 'SYSTEM');
  static const WearPacket_Type WATCH_FACE =
      WearPacket_Type._(4, _omitEnumNames ? '' : 'WATCH_FACE');
  static const WearPacket_Type NFC =
      WearPacket_Type._(5, _omitEnumNames ? '' : 'NFC');
  static const WearPacket_Type NOTIFICATION =
      WearPacket_Type._(7, _omitEnumNames ? '' : 'NOTIFICATION');
  static const WearPacket_Type FITNESS =
      WearPacket_Type._(8, _omitEnumNames ? '' : 'FITNESS');
  static const WearPacket_Type LPA =
      WearPacket_Type._(9, _omitEnumNames ? '' : 'LPA');
  static const WearPacket_Type WEATHER =
      WearPacket_Type._(10, _omitEnumNames ? '' : 'WEATHER');
  static const WearPacket_Type STOCK =
      WearPacket_Type._(11, _omitEnumNames ? '' : 'STOCK');
  static const WearPacket_Type CALENDAR =
      WearPacket_Type._(12, _omitEnumNames ? '' : 'CALENDAR');
  static const WearPacket_Type FACTORY =
      WearPacket_Type._(13, _omitEnumNames ? '' : 'FACTORY');
  static const WearPacket_Type AIVS =
      WearPacket_Type._(14, _omitEnumNames ? '' : 'AIVS');
  static const WearPacket_Type MARKET =
      WearPacket_Type._(15, _omitEnumNames ? '' : 'MARKET');
  static const WearPacket_Type GNSS =
      WearPacket_Type._(16, _omitEnumNames ? '' : 'GNSS');
  static const WearPacket_Type CLOCK =
      WearPacket_Type._(17, _omitEnumNames ? '' : 'CLOCK');
  static const WearPacket_Type MEDIA =
      WearPacket_Type._(18, _omitEnumNames ? '' : 'MEDIA');
  static const WearPacket_Type ALEXA =
      WearPacket_Type._(19, _omitEnumNames ? '' : 'ALEXA');
  static const WearPacket_Type THIRDPARTY_APP =
      WearPacket_Type._(20, _omitEnumNames ? '' : 'THIRDPARTY_APP');
  static const WearPacket_Type CONTACT =
      WearPacket_Type._(21, _omitEnumNames ? '' : 'CONTACT');
  static const WearPacket_Type MASS =
      WearPacket_Type._(22, _omitEnumNames ? '' : 'MASS');
  static const WearPacket_Type INTERCONNECTION =
      WearPacket_Type._(23, _omitEnumNames ? '' : 'INTERCONNECTION');

  static const $core.List<WearPacket_Type> values = <WearPacket_Type>[
    OTHER,
    ACCOUNT,
    SYSTEM,
    WATCH_FACE,
    NFC,
    NOTIFICATION,
    FITNESS,
    LPA,
    WEATHER,
    STOCK,
    CALENDAR,
    FACTORY,
    AIVS,
    MARKET,
    GNSS,
    CLOCK,
    MEDIA,
    ALEXA,
    THIRDPARTY_APP,
    CONTACT,
    MASS,
    INTERCONNECTION,
  ];

  static final $core.List<WearPacket_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 23);
  static WearPacket_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WearPacket_Type._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
