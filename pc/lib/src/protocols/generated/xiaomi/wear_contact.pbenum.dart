// This is a generated file - do not edit.
//
// Generated from wear_contact.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Contact_ContactID extends $pb.ProtobufEnum {
  static const Contact_ContactID GET_EMERGENCY_CONTACT =
      Contact_ContactID._(0, _omitEnumNames ? '' : 'GET_EMERGENCY_CONTACT');
  static const Contact_ContactID SET_EMERGENCY_CONTACT =
      Contact_ContactID._(1, _omitEnumNames ? '' : 'SET_EMERGENCY_CONTACT');
  static const Contact_ContactID REQUEST_MIUI_SOS =
      Contact_ContactID._(8, _omitEnumNames ? '' : 'REQUEST_MIUI_SOS');
  static const Contact_ContactID RESPONSE_MIUI_SOS =
      Contact_ContactID._(9, _omitEnumNames ? '' : 'RESPONSE_MIUI_SOS');
  static const Contact_ContactID APPLY_FALL_HELP =
      Contact_ContactID._(10, _omitEnumNames ? '' : 'APPLY_FALL_HELP');
  static const Contact_ContactID END_FALL_HELP =
      Contact_ContactID._(11, _omitEnumNames ? '' : 'END_FALL_HELP');
  static const Contact_ContactID QUERY_CONTACT_INFO =
      Contact_ContactID._(2, _omitEnumNames ? '' : 'QUERY_CONTACT_INFO');
  static const Contact_ContactID SEND_CONTACT_INFO =
      Contact_ContactID._(3, _omitEnumNames ? '' : 'SEND_CONTACT_INFO');
  static const Contact_ContactID GET_CONTACT_LIST =
      Contact_ContactID._(4, _omitEnumNames ? '' : 'GET_CONTACT_LIST');
  static const Contact_ContactID ADD_CONTACT_LIST =
      Contact_ContactID._(5, _omitEnumNames ? '' : 'ADD_CONTACT_LIST');
  static const Contact_ContactID REMOVE_CONTACT_LIST =
      Contact_ContactID._(6, _omitEnumNames ? '' : 'REMOVE_CONTACT_LIST');
  static const Contact_ContactID SYNC_CONTACT_LIST =
      Contact_ContactID._(7, _omitEnumNames ? '' : 'SYNC_CONTACT_LIST');

  static const $core.List<Contact_ContactID> values = <Contact_ContactID>[
    GET_EMERGENCY_CONTACT,
    SET_EMERGENCY_CONTACT,
    REQUEST_MIUI_SOS,
    RESPONSE_MIUI_SOS,
    APPLY_FALL_HELP,
    END_FALL_HELP,
    QUERY_CONTACT_INFO,
    SEND_CONTACT_INFO,
    GET_CONTACT_LIST,
    ADD_CONTACT_LIST,
    REMOVE_CONTACT_LIST,
    SYNC_CONTACT_LIST,
  ];

  static final $core.List<Contact_ContactID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 11);
  static Contact_ContactID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Contact_ContactID._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
