// This is a generated file - do not edit.
//
// Generated from wear_factory.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FactoryMode extends $pb.ProtobufEnum {
  static const FactoryMode USER =
      FactoryMode._(0, _omitEnumNames ? '' : 'USER');
  static const FactoryMode USERDEBUG =
      FactoryMode._(1, _omitEnumNames ? '' : 'USERDEBUG');
  static const FactoryMode ENG = FactoryMode._(2, _omitEnumNames ? '' : 'ENG');
  static const FactoryMode SELE_CHECKING =
      FactoryMode._(3, _omitEnumNames ? '' : 'SELE_CHECKING');
  static const FactoryMode MEDICAL_METER =
      FactoryMode._(4, _omitEnumNames ? '' : 'MEDICAL_METER');

  static const $core.List<FactoryMode> values = <FactoryMode>[
    USER,
    USERDEBUG,
    ENG,
    SELE_CHECKING,
    MEDICAL_METER,
  ];

  static final $core.List<FactoryMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static FactoryMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FactoryMode._(super.value, super.name);
}

class Factory_FactoryID extends $pb.ProtobufEnum {
  static const Factory_FactoryID SET_MODE =
      Factory_FactoryID._(0, _omitEnumNames ? '' : 'SET_MODE');
  static const Factory_FactoryID GET_MODE =
      Factory_FactoryID._(6, _omitEnumNames ? '' : 'GET_MODE');
  static const Factory_FactoryID CONFIG_NFC =
      Factory_FactoryID._(1, _omitEnumNames ? '' : 'CONFIG_NFC');
  static const Factory_FactoryID DUMP_FILE =
      Factory_FactoryID._(2, _omitEnumNames ? '' : 'DUMP_FILE');
  static const Factory_FactoryID PREVIEW_IMAGE =
      Factory_FactoryID._(3, _omitEnumNames ? '' : 'PREVIEW_IMAGE');
  static const Factory_FactoryID DUMP_MEDIA =
      Factory_FactoryID._(4, _omitEnumNames ? '' : 'DUMP_MEDIA');
  static const Factory_FactoryID SET_BRIGHTNESS =
      Factory_FactoryID._(5, _omitEnumNames ? '' : 'SET_BRIGHTNESS');
  static const Factory_FactoryID SELF_CHECKING_REQUEST =
      Factory_FactoryID._(7, _omitEnumNames ? '' : 'SELF_CHECKING_REQUEST');
  static const Factory_FactoryID REPORT_SELF_CHECKING_RESULT =
      Factory_FactoryID._(
          8, _omitEnumNames ? '' : 'REPORT_SELF_CHECKING_RESULT');
  static const Factory_FactoryID SELF_CHECKING_STEP_REQUEST =
      Factory_FactoryID._(
          16, _omitEnumNames ? '' : 'SELF_CHECKING_STEP_REQUEST');
  static const Factory_FactoryID REPORT_SELF_CHECKING_STEP_RESULT =
      Factory_FactoryID._(
          17, _omitEnumNames ? '' : 'REPORT_SELF_CHECKING_STEP_RESULT');
  static const Factory_FactoryID SENSOR_CAPTURE_REQUEST =
      Factory_FactoryID._(10, _omitEnumNames ? '' : 'SENSOR_CAPTURE_REQUEST');
  static const Factory_FactoryID SENSOR_CONFIRM_REQUEST =
      Factory_FactoryID._(11, _omitEnumNames ? '' : 'SENSOR_CONFIRM_REQUEST');
  static const Factory_FactoryID SENSOR_REPLAY_REQUEST =
      Factory_FactoryID._(15, _omitEnumNames ? '' : 'SENSOR_REPLAY_REQUEST');
  static const Factory_FactoryID GET_APP_INFO_LIST =
      Factory_FactoryID._(9, _omitEnumNames ? '' : 'GET_APP_INFO_LIST');
  static const Factory_FactoryID SUBSCRIBE_APP_BEHAVIOR =
      Factory_FactoryID._(12, _omitEnumNames ? '' : 'SUBSCRIBE_APP_BEHAVIOR');
  static const Factory_FactoryID UNSUBSCRIBE_APP_BEHAVIOR =
      Factory_FactoryID._(13, _omitEnumNames ? '' : 'UNSUBSCRIBE_APP_BEHAVIOR');
  static const Factory_FactoryID REPORT_APP_BEHAVIOR =
      Factory_FactoryID._(14, _omitEnumNames ? '' : 'REPORT_APP_BEHAVIOR');
  static const Factory_FactoryID SET_ATTP =
      Factory_FactoryID._(128, _omitEnumNames ? '' : 'SET_ATTP');

  static const $core.List<Factory_FactoryID> values = <Factory_FactoryID>[
    SET_MODE,
    GET_MODE,
    CONFIG_NFC,
    DUMP_FILE,
    PREVIEW_IMAGE,
    DUMP_MEDIA,
    SET_BRIGHTNESS,
    SELF_CHECKING_REQUEST,
    REPORT_SELF_CHECKING_RESULT,
    SELF_CHECKING_STEP_REQUEST,
    REPORT_SELF_CHECKING_STEP_RESULT,
    SENSOR_CAPTURE_REQUEST,
    SENSOR_CONFIRM_REQUEST,
    SENSOR_REPLAY_REQUEST,
    GET_APP_INFO_LIST,
    SUBSCRIBE_APP_BEHAVIOR,
    UNSUBSCRIBE_APP_BEHAVIOR,
    REPORT_APP_BEHAVIOR,
    SET_ATTP,
  ];

  static final $core.Map<$core.int, Factory_FactoryID> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Factory_FactoryID? valueOf($core.int value) => _byValue[value];

  const Factory_FactoryID._(super.value, super.name);
}

class SensorCaptureRequest_State extends $pb.ProtobufEnum {
  static const SensorCaptureRequest_State START_CAPTURE =
      SensorCaptureRequest_State._(1, _omitEnumNames ? '' : 'START_CAPTURE');
  static const SensorCaptureRequest_State STOP_CAPTURE =
      SensorCaptureRequest_State._(2, _omitEnumNames ? '' : 'STOP_CAPTURE');
  static const SensorCaptureRequest_State SYNC_CAPTURE =
      SensorCaptureRequest_State._(3, _omitEnumNames ? '' : 'SYNC_CAPTURE');
  static const SensorCaptureRequest_State SET_CAPTURE =
      SensorCaptureRequest_State._(4, _omitEnumNames ? '' : 'SET_CAPTURE');

  static const $core.List<SensorCaptureRequest_State> values =
      <SensorCaptureRequest_State>[
    START_CAPTURE,
    STOP_CAPTURE,
    SYNC_CAPTURE,
    SET_CAPTURE,
  ];

  static final $core.List<SensorCaptureRequest_State?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static SensorCaptureRequest_State? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SensorCaptureRequest_State._(super.value, super.name);
}

class SensorCaptureRequest_Mode extends $pb.ProtobufEnum {
  static const SensorCaptureRequest_Mode ONLINE_CAPTURE =
      SensorCaptureRequest_Mode._(1, _omitEnumNames ? '' : 'ONLINE_CAPTURE');
  static const SensorCaptureRequest_Mode OFFLINE_CAPTURE =
      SensorCaptureRequest_Mode._(2, _omitEnumNames ? '' : 'OFFLINE_CAPTURE');
  static const SensorCaptureRequest_Mode REALTIME_CAPTURE =
      SensorCaptureRequest_Mode._(3, _omitEnumNames ? '' : 'REALTIME_CAPTURE');

  static const $core.List<SensorCaptureRequest_Mode> values =
      <SensorCaptureRequest_Mode>[
    ONLINE_CAPTURE,
    OFFLINE_CAPTURE,
    REALTIME_CAPTURE,
  ];

  static final $core.List<SensorCaptureRequest_Mode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static SensorCaptureRequest_Mode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SensorCaptureRequest_Mode._(super.value, super.name);
}

class SelfChecking_Cmd extends $pb.ProtobufEnum {
  static const SelfChecking_Cmd ENTER =
      SelfChecking_Cmd._(0, _omitEnumNames ? '' : 'ENTER');
  static const SelfChecking_Cmd START =
      SelfChecking_Cmd._(1, _omitEnumNames ? '' : 'START');
  static const SelfChecking_Cmd EXIT =
      SelfChecking_Cmd._(2, _omitEnumNames ? '' : 'EXIT');

  static const $core.List<SelfChecking_Cmd> values = <SelfChecking_Cmd>[
    ENTER,
    START,
    EXIT,
  ];

  static final $core.List<SelfChecking_Cmd?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static SelfChecking_Cmd? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SelfChecking_Cmd._(super.value, super.name);
}

class SelfChecking_Status extends $pb.ProtobufEnum {
  static const SelfChecking_Status OK =
      SelfChecking_Status._(0, _omitEnumNames ? '' : 'OK');
  static const SelfChecking_Status WILL_REBOOT =
      SelfChecking_Status._(1, _omitEnumNames ? '' : 'WILL_REBOOT');
  static const SelfChecking_Status FAIL =
      SelfChecking_Status._(2, _omitEnumNames ? '' : 'FAIL');

  static const $core.List<SelfChecking_Status> values = <SelfChecking_Status>[
    OK,
    WILL_REBOOT,
    FAIL,
  ];

  static final $core.List<SelfChecking_Status?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static SelfChecking_Status? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SelfChecking_Status._(super.value, super.name);
}

class SelfChecking_Func extends $pb.ProtobufEnum {
  static const SelfChecking_Func BLUETOOTH =
      SelfChecking_Func._(1, _omitEnumNames ? '' : 'BLUETOOTH');
  static const SelfChecking_Func GNSS =
      SelfChecking_Func._(2, _omitEnumNames ? '' : 'GNSS');
  static const SelfChecking_Func NFC =
      SelfChecking_Func._(3, _omitEnumNames ? '' : 'NFC');
  static const SelfChecking_Func WIFI =
      SelfChecking_Func._(4, _omitEnumNames ? '' : 'WIFI');
  static const SelfChecking_Func ESIM =
      SelfChecking_Func._(5, _omitEnumNames ? '' : 'ESIM');
  static const SelfChecking_Func ACC =
      SelfChecking_Func._(6, _omitEnumNames ? '' : 'ACC');
  static const SelfChecking_Func GYRO =
      SelfChecking_Func._(7, _omitEnumNames ? '' : 'GYRO');
  static const SelfChecking_Func MAG =
      SelfChecking_Func._(8, _omitEnumNames ? '' : 'MAG');
  static const SelfChecking_Func BARO =
      SelfChecking_Func._(9, _omitEnumNames ? '' : 'BARO');
  static const SelfChecking_Func LIGHT =
      SelfChecking_Func._(10, _omitEnumNames ? '' : 'LIGHT');
  static const SelfChecking_Func PPG =
      SelfChecking_Func._(11, _omitEnumNames ? '' : 'PPG');
  static const SelfChecking_Func CAP =
      SelfChecking_Func._(12, _omitEnumNames ? '' : 'CAP');
  static const SelfChecking_Func TEMP =
      SelfChecking_Func._(13, _omitEnumNames ? '' : 'TEMP');
  static const SelfChecking_Func CHARGE =
      SelfChecking_Func._(14, _omitEnumNames ? '' : 'CHARGE');
  static const SelfChecking_Func BATTERY =
      SelfChecking_Func._(15, _omitEnumNames ? '' : 'BATTERY');
  static const SelfChecking_Func DP =
      SelfChecking_Func._(16, _omitEnumNames ? '' : 'DP');
  static const SelfChecking_Func TP =
      SelfChecking_Func._(17, _omitEnumNames ? '' : 'TP');
  static const SelfChecking_Func KEY =
      SelfChecking_Func._(18, _omitEnumNames ? '' : 'KEY');
  static const SelfChecking_Func ROTARY =
      SelfChecking_Func._(19, _omitEnumNames ? '' : 'ROTARY');
  static const SelfChecking_Func MOTOR =
      SelfChecking_Func._(20, _omitEnumNames ? '' : 'MOTOR');
  static const SelfChecking_Func STORAGE =
      SelfChecking_Func._(21, _omitEnumNames ? '' : 'STORAGE');
  static const SelfChecking_Func AUDIO =
      SelfChecking_Func._(22, _omitEnumNames ? '' : 'AUDIO');
  static const SelfChecking_Func DOU =
      SelfChecking_Func._(23, _omitEnumNames ? '' : 'DOU');
  static const SelfChecking_Func MIC =
      SelfChecking_Func._(24, _omitEnumNames ? '' : 'MIC');
  static const SelfChecking_Func PA =
      SelfChecking_Func._(25, _omitEnumNames ? '' : 'PA');
  static const SelfChecking_Func CAMERA =
      SelfChecking_Func._(26, _omitEnumNames ? '' : 'CAMERA');
  static const SelfChecking_Func IMU =
      SelfChecking_Func._(27, _omitEnumNames ? '' : 'IMU');
  static const SelfChecking_Func INDICATOR_LIGHT =
      SelfChecking_Func._(28, _omitEnumNames ? '' : 'INDICATOR_LIGHT');
  static const SelfChecking_Func PRIVACY_LIGHT =
      SelfChecking_Func._(29, _omitEnumNames ? '' : 'PRIVACY_LIGHT');
  static const SelfChecking_Func RANGE =
      SelfChecking_Func._(30, _omitEnumNames ? '' : 'RANGE');
  static const SelfChecking_Func HEART_RATE =
      SelfChecking_Func._(31, _omitEnumNames ? '' : 'HEART_RATE');
  static const SelfChecking_Func BLOOD_OXYGEN =
      SelfChecking_Func._(32, _omitEnumNames ? '' : 'BLOOD_OXYGEN');
  static const SelfChecking_Func ECG =
      SelfChecking_Func._(33, _omitEnumNames ? '' : 'ECG');

  static const $core.List<SelfChecking_Func> values = <SelfChecking_Func>[
    BLUETOOTH,
    GNSS,
    NFC,
    WIFI,
    ESIM,
    ACC,
    GYRO,
    MAG,
    BARO,
    LIGHT,
    PPG,
    CAP,
    TEMP,
    CHARGE,
    BATTERY,
    DP,
    TP,
    KEY,
    ROTARY,
    MOTOR,
    STORAGE,
    AUDIO,
    DOU,
    MIC,
    PA,
    CAMERA,
    IMU,
    INDICATOR_LIGHT,
    PRIVACY_LIGHT,
    RANGE,
    HEART_RATE,
    BLOOD_OXYGEN,
    ECG,
  ];

  static final $core.List<SelfChecking_Func?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 33);
  static SelfChecking_Func? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SelfChecking_Func._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
