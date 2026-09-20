// This is a generated file - do not edit.
//
// Generated from wear_thirdparty_app.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ThirdpartyApp_ThirdpartyAppID extends $pb.ProtobufEnum {
  static const ThirdpartyApp_ThirdpartyAppID GET_INSTALLED_LIST =
      ThirdpartyApp_ThirdpartyAppID._(
          0, _omitEnumNames ? '' : 'GET_INSTALLED_LIST');
  static const ThirdpartyApp_ThirdpartyAppID PREPARE_INSTALL_APP =
      ThirdpartyApp_ThirdpartyAppID._(
          1, _omitEnumNames ? '' : 'PREPARE_INSTALL_APP');
  static const ThirdpartyApp_ThirdpartyAppID REPORT_INSTALL_RESULT =
      ThirdpartyApp_ThirdpartyAppID._(
          2, _omitEnumNames ? '' : 'REPORT_INSTALL_RESULT');
  static const ThirdpartyApp_ThirdpartyAppID REMOVE_APP =
      ThirdpartyApp_ThirdpartyAppID._(3, _omitEnumNames ? '' : 'REMOVE_APP');
  static const ThirdpartyApp_ThirdpartyAppID LAUNCH_APP =
      ThirdpartyApp_ThirdpartyAppID._(4, _omitEnumNames ? '' : 'LAUNCH_APP');
  static const ThirdpartyApp_ThirdpartyAppID SYNC_PERMISSION_INFO =
      ThirdpartyApp_ThirdpartyAppID._(
          5, _omitEnumNames ? '' : 'SYNC_PERMISSION_INFO');
  static const ThirdpartyApp_ThirdpartyAppID REQUEST_PHONE_APP_STATUS =
      ThirdpartyApp_ThirdpartyAppID._(
          6, _omitEnumNames ? '' : 'REQUEST_PHONE_APP_STATUS');
  static const ThirdpartyApp_ThirdpartyAppID SYNC_PHONE_APP_STATUS =
      ThirdpartyApp_ThirdpartyAppID._(
          7, _omitEnumNames ? '' : 'SYNC_PHONE_APP_STATUS');
  static const ThirdpartyApp_ThirdpartyAppID SEND_PHONE_MESSAGE =
      ThirdpartyApp_ThirdpartyAppID._(
          8, _omitEnumNames ? '' : 'SEND_PHONE_MESSAGE');
  static const ThirdpartyApp_ThirdpartyAppID SEND_WEAR_MESSAGE =
      ThirdpartyApp_ThirdpartyAppID._(
          9, _omitEnumNames ? '' : 'SEND_WEAR_MESSAGE');
  static const ThirdpartyApp_ThirdpartyAppID REQUEST_WECHAT_LICENSE =
      ThirdpartyApp_ThirdpartyAppID._(
          10, _omitEnumNames ? '' : 'REQUEST_WECHAT_LICENSE');
  static const ThirdpartyApp_ThirdpartyAppID RESPONSE_WECHAT_LICENSE =
      ThirdpartyApp_ThirdpartyAppID._(
          11, _omitEnumNames ? '' : 'RESPONSE_WECHAT_LICENSE');
  static const ThirdpartyApp_ThirdpartyAppID REQUEST_MIHOME =
      ThirdpartyApp_ThirdpartyAppID._(
          12, _omitEnumNames ? '' : 'REQUEST_MIHOME');
  static const ThirdpartyApp_ThirdpartyAppID RESPONSE_MIHOME =
      ThirdpartyApp_ThirdpartyAppID._(
          13, _omitEnumNames ? '' : 'RESPONSE_MIHOME');
  static const ThirdpartyApp_ThirdpartyAppID REQUEST_SCENE =
      ThirdpartyApp_ThirdpartyAppID._(
          14, _omitEnumNames ? '' : 'REQUEST_SCENE');
  static const ThirdpartyApp_ThirdpartyAppID RESPONSE_SCENE =
      ThirdpartyApp_ThirdpartyAppID._(
          15, _omitEnumNames ? '' : 'RESPONSE_SCENE');
  static const ThirdpartyApp_ThirdpartyAppID EXECUTE_SCENE =
      ThirdpartyApp_ThirdpartyAppID._(
          16, _omitEnumNames ? '' : 'EXECUTE_SCENE');
  static const ThirdpartyApp_ThirdpartyAppID RESULT_SCENE =
      ThirdpartyApp_ThirdpartyAppID._(17, _omitEnumNames ? '' : 'RESULT_SCENE');
  static const ThirdpartyApp_ThirdpartyAppID REQUEST_COURSE_TABLE =
      ThirdpartyApp_ThirdpartyAppID._(
          18, _omitEnumNames ? '' : 'REQUEST_COURSE_TABLE');
  static const ThirdpartyApp_ThirdpartyAppID SYNC_COURSE_TABLE =
      ThirdpartyApp_ThirdpartyAppID._(
          19, _omitEnumNames ? '' : 'SYNC_COURSE_TABLE');
  static const ThirdpartyApp_ThirdpartyAppID SYNC_CURRENT_BLOOD_GLUCOSE =
      ThirdpartyApp_ThirdpartyAppID._(
          20, _omitEnumNames ? '' : 'SYNC_CURRENT_BLOOD_GLUCOSE');

  static const $core.List<ThirdpartyApp_ThirdpartyAppID> values =
      <ThirdpartyApp_ThirdpartyAppID>[
    GET_INSTALLED_LIST,
    PREPARE_INSTALL_APP,
    REPORT_INSTALL_RESULT,
    REMOVE_APP,
    LAUNCH_APP,
    SYNC_PERMISSION_INFO,
    REQUEST_PHONE_APP_STATUS,
    SYNC_PHONE_APP_STATUS,
    SEND_PHONE_MESSAGE,
    SEND_WEAR_MESSAGE,
    REQUEST_WECHAT_LICENSE,
    RESPONSE_WECHAT_LICENSE,
    REQUEST_MIHOME,
    RESPONSE_MIHOME,
    REQUEST_SCENE,
    RESPONSE_SCENE,
    EXECUTE_SCENE,
    RESULT_SCENE,
    REQUEST_COURSE_TABLE,
    SYNC_COURSE_TABLE,
    SYNC_CURRENT_BLOOD_GLUCOSE,
  ];

  static final $core.List<ThirdpartyApp_ThirdpartyAppID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 20);
  static ThirdpartyApp_ThirdpartyAppID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ThirdpartyApp_ThirdpartyAppID._(super.value, super.name);
}

class AppInstaller_Result_Code extends $pb.ProtobufEnum {
  static const AppInstaller_Result_Code INSTALL_SUCCESS =
      AppInstaller_Result_Code._(0, _omitEnumNames ? '' : 'INSTALL_SUCCESS');
  static const AppInstaller_Result_Code INSTALL_FAILED =
      AppInstaller_Result_Code._(1, _omitEnumNames ? '' : 'INSTALL_FAILED');
  static const AppInstaller_Result_Code VERIFY_FAILED =
      AppInstaller_Result_Code._(2, _omitEnumNames ? '' : 'VERIFY_FAILED');

  static const $core.List<AppInstaller_Result_Code> values =
      <AppInstaller_Result_Code>[
    INSTALL_SUCCESS,
    INSTALL_FAILED,
    VERIFY_FAILED,
  ];

  static final $core.List<AppInstaller_Result_Code?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static AppInstaller_Result_Code? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AppInstaller_Result_Code._(super.value, super.name);
}

class PermissionInfo_Permission extends $pb.ProtobufEnum {
  static const PermissionInfo_Permission DEVICE_STATUS =
      PermissionInfo_Permission._(1, _omitEnumNames ? '' : 'DEVICE_STATUS');
  static const PermissionInfo_Permission USER_STATUS =
      PermissionInfo_Permission._(2, _omitEnumNames ? '' : 'USER_STATUS');
  static const PermissionInfo_Permission BODY_SENSOR =
      PermissionInfo_Permission._(3, _omitEnumNames ? '' : 'BODY_SENSOR');
  static const PermissionInfo_Permission MOTION_SENSOR =
      PermissionInfo_Permission._(4, _omitEnumNames ? '' : 'MOTION_SENSOR');
  static const PermissionInfo_Permission NOTIFY =
      PermissionInfo_Permission._(5, _omitEnumNames ? '' : 'NOTIFY');

  static const $core.List<PermissionInfo_Permission> values =
      <PermissionInfo_Permission>[
    DEVICE_STATUS,
    USER_STATUS,
    BODY_SENSOR,
    MOTION_SENSOR,
    NOTIFY,
  ];

  static final $core.List<PermissionInfo_Permission?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static PermissionInfo_Permission? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PermissionInfo_Permission._(super.value, super.name);
}

class PhoneAppStatus_Status extends $pb.ProtobufEnum {
  static const PhoneAppStatus_Status CONNECTED =
      PhoneAppStatus_Status._(1, _omitEnumNames ? '' : 'CONNECTED');
  static const PhoneAppStatus_Status DISCONNECTED =
      PhoneAppStatus_Status._(2, _omitEnumNames ? '' : 'DISCONNECTED');
  static const PhoneAppStatus_Status UNINSTALLED =
      PhoneAppStatus_Status._(3, _omitEnumNames ? '' : 'UNINSTALLED');

  static const $core.List<PhoneAppStatus_Status> values =
      <PhoneAppStatus_Status>[
    CONNECTED,
    DISCONNECTED,
    UNINSTALLED,
  ];

  static final $core.List<PhoneAppStatus_Status?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static PhoneAppStatus_Status? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PhoneAppStatus_Status._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
