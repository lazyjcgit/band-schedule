// This is a generated file - do not edit.
//
// Generated from wear_mass.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Mass_MassID extends $pb.ProtobufEnum {
  static const Mass_MassID PREPARE =
      Mass_MassID._(0, _omitEnumNames ? '' : 'PREPARE');
  static const Mass_MassID CONTROL =
      Mass_MassID._(1, _omitEnumNames ? '' : 'CONTROL');

  static const $core.List<Mass_MassID> values = <Mass_MassID>[
    PREPARE,
    CONTROL,
  ];

  static final $core.List<Mass_MassID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static Mass_MassID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Mass_MassID._(super.value, super.name);
}

class MassControl_Op extends $pb.ProtobufEnum {
  static const MassControl_Op PAUSE =
      MassControl_Op._(1, _omitEnumNames ? '' : 'PAUSE');
  static const MassControl_Op CANCEL =
      MassControl_Op._(2, _omitEnumNames ? '' : 'CANCEL');
  static const MassControl_Op ERROR =
      MassControl_Op._(3, _omitEnumNames ? '' : 'ERROR');

  static const $core.List<MassControl_Op> values = <MassControl_Op>[
    PAUSE,
    CANCEL,
    ERROR,
  ];

  static final $core.List<MassControl_Op?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static MassControl_Op? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MassControl_Op._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
