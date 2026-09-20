// This is a generated file - do not edit.
//
// Generated from wear_gnss.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Gnss_GnssID extends $pb.ProtobufEnum {
  static const Gnss_GnssID REQUEST_ONLINE =
      Gnss_GnssID._(0, _omitEnumNames ? '' : 'REQUEST_ONLINE');
  static const Gnss_GnssID REQUEST_OFFLINE =
      Gnss_GnssID._(1, _omitEnumNames ? '' : 'REQUEST_OFFLINE');
  static const Gnss_GnssID REQUEST_GPS_INFO =
      Gnss_GnssID._(3, _omitEnumNames ? '' : 'REQUEST_GPS_INFO');
  static const Gnss_GnssID SEND_GPS_INFO =
      Gnss_GnssID._(2, _omitEnumNames ? '' : 'SEND_GPS_INFO');

  static const $core.List<Gnss_GnssID> values = <Gnss_GnssID>[
    REQUEST_ONLINE,
    REQUEST_OFFLINE,
    REQUEST_GPS_INFO,
    SEND_GPS_INFO,
  ];

  static final $core.List<Gnss_GnssID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Gnss_GnssID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Gnss_GnssID._(super.value, super.name);
}

class Data_Type extends $pb.ProtobufEnum {
  static const Data_Type AGPS = Data_Type._(1, _omitEnumNames ? '' : 'AGPS');
  static const Data_Type BEIDOU =
      Data_Type._(2, _omitEnumNames ? '' : 'BEIDOU');
  static const Data_Type GALILEO =
      Data_Type._(3, _omitEnumNames ? '' : 'GALILEO');

  static const $core.List<Data_Type> values = <Data_Type>[
    AGPS,
    BEIDOU,
    GALILEO,
  ];

  static final $core.List<Data_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Data_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Data_Type._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
