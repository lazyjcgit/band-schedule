// This is a generated file - do not edit.
//
// Generated from wear_interconnection.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DeviceType extends $pb.ProtobufEnum {
  static const DeviceType ANDROID_PHONE =
      DeviceType._(1, _omitEnumNames ? '' : 'ANDROID_PHONE');
  static const DeviceType ANDROID_PAD =
      DeviceType._(2, _omitEnumNames ? '' : 'ANDROID_PAD');
  static const DeviceType ANDROID_TV =
      DeviceType._(3, _omitEnumNames ? '' : 'ANDROID_TV');
  static const DeviceType WINDOWS_PC =
      DeviceType._(4, _omitEnumNames ? '' : 'WINDOWS_PC');
  static const DeviceType SOUNDBOX =
      DeviceType._(5, _omitEnumNames ? '' : 'SOUNDBOX');
  static const DeviceType SOUNDBOX_SCREEN =
      DeviceType._(6, _omitEnumNames ? '' : 'SOUNDBOX_SCREEN');
  static const DeviceType HEADSET =
      DeviceType._(7, _omitEnumNames ? '' : 'HEADSET');

  static const $core.List<DeviceType> values = <DeviceType>[
    ANDROID_PHONE,
    ANDROID_PAD,
    ANDROID_TV,
    WINDOWS_PC,
    SOUNDBOX,
    SOUNDBOX_SCREEN,
    HEADSET,
  ];

  static final $core.List<DeviceType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static DeviceType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DeviceType._(super.value, super.name);
}

class Interconnection_InterconnectionID extends $pb.ProtobufEnum {
  static const Interconnection_InterconnectionID REQUEST_PHONE_STATUS =
      Interconnection_InterconnectionID._(
          0, _omitEnumNames ? '' : 'REQUEST_PHONE_STATUS');
  static const Interconnection_InterconnectionID SYNC_PHONE_STATUS =
      Interconnection_InterconnectionID._(
          1, _omitEnumNames ? '' : 'SYNC_PHONE_STATUS');
  static const Interconnection_InterconnectionID REGISTER_PHONE_USAGE =
      Interconnection_InterconnectionID._(
          17, _omitEnumNames ? '' : 'REGISTER_PHONE_USAGE');
  static const Interconnection_InterconnectionID UNREGISTER_PHONE_USAGE =
      Interconnection_InterconnectionID._(
          18, _omitEnumNames ? '' : 'UNREGISTER_PHONE_USAGE');
  static const Interconnection_InterconnectionID SEND_PHONE_USAGE =
      Interconnection_InterconnectionID._(
          19, _omitEnumNames ? '' : 'SEND_PHONE_USAGE');
  static const Interconnection_InterconnectionID START_PHONE_TRACE =
      Interconnection_InterconnectionID._(
          20, _omitEnumNames ? '' : 'START_PHONE_TRACE');
  static const Interconnection_InterconnectionID FINISH_PHONE_TRACE =
      Interconnection_InterconnectionID._(
          21, _omitEnumNames ? '' : 'FINISH_PHONE_TRACE');
  static const Interconnection_InterconnectionID SEND_PHONE_TRACE =
      Interconnection_InterconnectionID._(
          22, _omitEnumNames ? '' : 'SEND_PHONE_TRACE');
  static const Interconnection_InterconnectionID REQEUST_SHARE_DEVICES =
      Interconnection_InterconnectionID._(
          2, _omitEnumNames ? '' : 'REQEUST_SHARE_DEVICES');
  static const Interconnection_InterconnectionID SYNC_SHARE_DEVICES =
      Interconnection_InterconnectionID._(
          3, _omitEnumNames ? '' : 'SYNC_SHARE_DEVICES');
  static const Interconnection_InterconnectionID UPDATE_SHARE_DEVICE =
      Interconnection_InterconnectionID._(
          4, _omitEnumNames ? '' : 'UPDATE_SHARE_DEVICE');
  static const Interconnection_InterconnectionID CONTROL_AUDIO =
      Interconnection_InterconnectionID._(
          5, _omitEnumNames ? '' : 'CONTROL_AUDIO');
  static const Interconnection_InterconnectionID CONTROL_TV =
      Interconnection_InterconnectionID._(
          6, _omitEnumNames ? '' : 'CONTROL_TV');
  static const Interconnection_InterconnectionID CONTROL_HEADSET =
      Interconnection_InterconnectionID._(
          7, _omitEnumNames ? '' : 'CONTROL_HEADSET');
  static const Interconnection_InterconnectionID SEND_CONTROL_RESULT =
      Interconnection_InterconnectionID._(
          8, _omitEnumNames ? '' : 'SEND_CONTROL_RESULT');
  static const Interconnection_InterconnectionID REQUEST_PROJECTION_DEVICES =
      Interconnection_InterconnectionID._(
          9, _omitEnumNames ? '' : 'REQUEST_PROJECTION_DEVICES');
  static const Interconnection_InterconnectionID SYNC_PROJECTION_DEVICES =
      Interconnection_InterconnectionID._(
          10, _omitEnumNames ? '' : 'SYNC_PROJECTION_DEVICES');
  static const Interconnection_InterconnectionID REQUEST_PROJECTION =
      Interconnection_InterconnectionID._(
          11, _omitEnumNames ? '' : 'REQUEST_PROJECTION');
  static const Interconnection_InterconnectionID SEND_PROJECTION_RESPONSE =
      Interconnection_InterconnectionID._(
          12, _omitEnumNames ? '' : 'SEND_PROJECTION_RESPONSE');
  static const Interconnection_InterconnectionID REPORT_PROJECTION_DATA =
      Interconnection_InterconnectionID._(
          13, _omitEnumNames ? '' : 'REPORT_PROJECTION_DATA');
  static const Interconnection_InterconnectionID REPORT_PROJECTION_REPORT =
      Interconnection_InterconnectionID._(
          14, _omitEnumNames ? '' : 'REPORT_PROJECTION_REPORT');
  static const Interconnection_InterconnectionID NOTIFY_PROJECTION_MEMBERS =
      Interconnection_InterconnectionID._(
          15, _omitEnumNames ? '' : 'NOTIFY_PROJECTION_MEMBERS');
  static const Interconnection_InterconnectionID ENTER_COURSE_ZONE =
      Interconnection_InterconnectionID._(
          16, _omitEnumNames ? '' : 'ENTER_COURSE_ZONE');
  static const Interconnection_InterconnectionID START_SLIDE_SHOW =
      Interconnection_InterconnectionID._(
          23, _omitEnumNames ? '' : 'START_SLIDE_SHOW');
  static const Interconnection_InterconnectionID STOP_SLIDE_SHOW =
      Interconnection_InterconnectionID._(
          24, _omitEnumNames ? '' : 'STOP_SLIDE_SHOW');
  static const Interconnection_InterconnectionID START_DEMO_SHOW =
      Interconnection_InterconnectionID._(
          25, _omitEnumNames ? '' : 'START_DEMO_SHOW');
  static const Interconnection_InterconnectionID STOP_DEMO_SHOW =
      Interconnection_InterconnectionID._(
          26, _omitEnumNames ? '' : 'STOP_DEMO_SHOW');
  static const Interconnection_InterconnectionID SUBSCRIBE_MIS_DEVICE =
      Interconnection_InterconnectionID._(
          27, _omitEnumNames ? '' : 'SUBSCRIBE_MIS_DEVICE');
  static const Interconnection_InterconnectionID UNSUBSCRIBE_MIS_DEVICE =
      Interconnection_InterconnectionID._(
          28, _omitEnumNames ? '' : 'UNSUBSCRIBE_MIS_DEVICE');
  static const Interconnection_InterconnectionID SYNC_MIS_DEVICE =
      Interconnection_InterconnectionID._(
          29, _omitEnumNames ? '' : 'SYNC_MIS_DEVICE');
  static const Interconnection_InterconnectionID PUBLISH_MIS_SPEC =
      Interconnection_InterconnectionID._(
          30, _omitEnumNames ? '' : 'PUBLISH_MIS_SPEC');
  static const Interconnection_InterconnectionID REPORT_MIS_SPEC =
      Interconnection_InterconnectionID._(
          31, _omitEnumNames ? '' : 'REPORT_MIS_SPEC');
  static const Interconnection_InterconnectionID GET_WEAR_SPEC_BASIC =
      Interconnection_InterconnectionID._(
          32, _omitEnumNames ? '' : 'GET_WEAR_SPEC_BASIC');
  static const Interconnection_InterconnectionID SEND_MIS_PACKET =
      Interconnection_InterconnectionID._(
          33, _omitEnumNames ? '' : 'SEND_MIS_PACKET');
  static const Interconnection_InterconnectionID REQUEST_SERVER_CERT =
      Interconnection_InterconnectionID._(
          34, _omitEnumNames ? '' : 'REQUEST_SERVER_CERT');
  static const Interconnection_InterconnectionID RESPONSE_SERVER_CERT =
      Interconnection_InterconnectionID._(
          35, _omitEnumNames ? '' : 'RESPONSE_SERVER_CERT');
  static const Interconnection_InterconnectionID REQUEST_DEVICE_CERT =
      Interconnection_InterconnectionID._(
          36, _omitEnumNames ? '' : 'REQUEST_DEVICE_CERT');
  static const Interconnection_InterconnectionID RESPONSE_DEVICE_CERT =
      Interconnection_InterconnectionID._(
          37, _omitEnumNames ? '' : 'RESPONSE_DEVICE_CERT');
  static const Interconnection_InterconnectionID REQUEST_PROPS =
      Interconnection_InterconnectionID._(
          38, _omitEnumNames ? '' : 'REQUEST_PROPS');
  static const Interconnection_InterconnectionID RESPONSE_PROPS =
      Interconnection_InterconnectionID._(
          39, _omitEnumNames ? '' : 'RESPONSE_PROPS');

  static const $core.List<Interconnection_InterconnectionID> values =
      <Interconnection_InterconnectionID>[
    REQUEST_PHONE_STATUS,
    SYNC_PHONE_STATUS,
    REGISTER_PHONE_USAGE,
    UNREGISTER_PHONE_USAGE,
    SEND_PHONE_USAGE,
    START_PHONE_TRACE,
    FINISH_PHONE_TRACE,
    SEND_PHONE_TRACE,
    REQEUST_SHARE_DEVICES,
    SYNC_SHARE_DEVICES,
    UPDATE_SHARE_DEVICE,
    CONTROL_AUDIO,
    CONTROL_TV,
    CONTROL_HEADSET,
    SEND_CONTROL_RESULT,
    REQUEST_PROJECTION_DEVICES,
    SYNC_PROJECTION_DEVICES,
    REQUEST_PROJECTION,
    SEND_PROJECTION_RESPONSE,
    REPORT_PROJECTION_DATA,
    REPORT_PROJECTION_REPORT,
    NOTIFY_PROJECTION_MEMBERS,
    ENTER_COURSE_ZONE,
    START_SLIDE_SHOW,
    STOP_SLIDE_SHOW,
    START_DEMO_SHOW,
    STOP_DEMO_SHOW,
    SUBSCRIBE_MIS_DEVICE,
    UNSUBSCRIBE_MIS_DEVICE,
    SYNC_MIS_DEVICE,
    PUBLISH_MIS_SPEC,
    REPORT_MIS_SPEC,
    GET_WEAR_SPEC_BASIC,
    SEND_MIS_PACKET,
    REQUEST_SERVER_CERT,
    RESPONSE_SERVER_CERT,
    REQUEST_DEVICE_CERT,
    RESPONSE_DEVICE_CERT,
    REQUEST_PROPS,
    RESPONSE_PROPS,
  ];

  static final $core.List<Interconnection_InterconnectionID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 39);
  static Interconnection_InterconnectionID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Interconnection_InterconnectionID._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
