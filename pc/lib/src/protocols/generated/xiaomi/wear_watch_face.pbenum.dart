// This is a generated file - do not edit.
//
// Generated from wear_watch_face.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class WatchFace_WatchFaceID extends $pb.ProtobufEnum {
  static const WatchFace_WatchFaceID GET_INSTALLED_LIST =
      WatchFace_WatchFaceID._(0, _omitEnumNames ? '' : 'GET_INSTALLED_LIST');
  static const WatchFace_WatchFaceID SET_WATCH_FACE =
      WatchFace_WatchFaceID._(1, _omitEnumNames ? '' : 'SET_WATCH_FACE');
  static const WatchFace_WatchFaceID REMOVE_WATCH_FACE =
      WatchFace_WatchFaceID._(2, _omitEnumNames ? '' : 'REMOVE_WATCH_FACE');
  static const WatchFace_WatchFaceID REMOVE_WATCH_FACE_PHOTO =
      WatchFace_WatchFaceID._(
          3, _omitEnumNames ? '' : 'REMOVE_WATCH_FACE_PHOTO');
  static const WatchFace_WatchFaceID PREPARE_INSTALL_WATCH_FACE =
      WatchFace_WatchFaceID._(
          4, _omitEnumNames ? '' : 'PREPARE_INSTALL_WATCH_FACE');
  static const WatchFace_WatchFaceID REPORT_INSTALL_RESULT =
      WatchFace_WatchFaceID._(5, _omitEnumNames ? '' : 'REPORT_INSTALL_RESULT');
  static const WatchFace_WatchFaceID REMOVE_MULTI_WATCH_FACE =
      WatchFace_WatchFaceID._(
          6, _omitEnumNames ? '' : 'REMOVE_MULTI_WATCH_FACE');
  static const WatchFace_WatchFaceID GET_SUPPORT_DATA =
      WatchFace_WatchFaceID._(10, _omitEnumNames ? '' : 'GET_SUPPORT_DATA');
  static const WatchFace_WatchFaceID EDIT_WATCH_FACE =
      WatchFace_WatchFaceID._(11, _omitEnumNames ? '' : 'EDIT_WATCH_FACE');
  static const WatchFace_WatchFaceID BG_IMAGE_RESULT =
      WatchFace_WatchFaceID._(12, _omitEnumNames ? '' : 'BG_IMAGE_RESULT');
  static const WatchFace_WatchFaceID FONT_RESULT =
      WatchFace_WatchFaceID._(13, _omitEnumNames ? '' : 'FONT_RESULT');

  static const $core.List<WatchFace_WatchFaceID> values =
      <WatchFace_WatchFaceID>[
    GET_INSTALLED_LIST,
    SET_WATCH_FACE,
    REMOVE_WATCH_FACE,
    REMOVE_WATCH_FACE_PHOTO,
    PREPARE_INSTALL_WATCH_FACE,
    REPORT_INSTALL_RESULT,
    REMOVE_MULTI_WATCH_FACE,
    GET_SUPPORT_DATA,
    EDIT_WATCH_FACE,
    BG_IMAGE_RESULT,
    FONT_RESULT,
  ];

  static final $core.List<WatchFace_WatchFaceID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 13);
  static WatchFace_WatchFaceID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WatchFace_WatchFaceID._(super.value, super.name);
}

class WatchFaceSlot_Data extends $pb.ProtobufEnum {
  static const WatchFaceSlot_Data EMPTY =
      WatchFaceSlot_Data._(0, _omitEnumNames ? '' : 'EMPTY');
  static const WatchFaceSlot_Data HEART_RATE =
      WatchFaceSlot_Data._(1, _omitEnumNames ? '' : 'HEART_RATE');
  static const WatchFaceSlot_Data PRESSURE =
      WatchFaceSlot_Data._(2, _omitEnumNames ? '' : 'PRESSURE');
  static const WatchFaceSlot_Data SLEEP =
      WatchFaceSlot_Data._(3, _omitEnumNames ? '' : 'SLEEP');
  static const WatchFaceSlot_Data ENERGY =
      WatchFaceSlot_Data._(4, _omitEnumNames ? '' : 'ENERGY');
  static const WatchFaceSlot_Data STEP =
      WatchFaceSlot_Data._(5, _omitEnumNames ? '' : 'STEP');
  static const WatchFaceSlot_Data CALORIE =
      WatchFaceSlot_Data._(6, _omitEnumNames ? '' : 'CALORIE');
  static const WatchFaceSlot_Data VALID_STAND =
      WatchFaceSlot_Data._(7, _omitEnumNames ? '' : 'VALID_STAND');
  static const WatchFaceSlot_Data BATTERY =
      WatchFaceSlot_Data._(8, _omitEnumNames ? '' : 'BATTERY');
  static const WatchFaceSlot_Data DATE =
      WatchFaceSlot_Data._(9, _omitEnumNames ? '' : 'DATE');
  static const WatchFaceSlot_Data WEATHER =
      WatchFaceSlot_Data._(10, _omitEnumNames ? '' : 'WEATHER');
  static const WatchFaceSlot_Data AIR_PRESSURE =
      WatchFaceSlot_Data._(11, _omitEnumNames ? '' : 'AIR_PRESSURE');
  static const WatchFaceSlot_Data ALTITUDE =
      WatchFaceSlot_Data._(12, _omitEnumNames ? '' : 'ALTITUDE');
  static const WatchFaceSlot_Data TIMER =
      WatchFaceSlot_Data._(13, _omitEnumNames ? '' : 'TIMER');
  static const WatchFaceSlot_Data CLOCK =
      WatchFaceSlot_Data._(14, _omitEnumNames ? '' : 'CLOCK');
  static const WatchFaceSlot_Data AQI =
      WatchFaceSlot_Data._(15, _omitEnumNames ? '' : 'AQI');
  static const WatchFaceSlot_Data HUMIDITY =
      WatchFaceSlot_Data._(16, _omitEnumNames ? '' : 'HUMIDITY');
  static const WatchFaceSlot_Data SPORT_MODE =
      WatchFaceSlot_Data._(17, _omitEnumNames ? '' : 'SPORT_MODE');
  static const WatchFaceSlot_Data UVI =
      WatchFaceSlot_Data._(18, _omitEnumNames ? '' : 'UVI');
  static const WatchFaceSlot_Data SUNRISE_SUNSET =
      WatchFaceSlot_Data._(19, _omitEnumNames ? '' : 'SUNRISE_SUNSET');
  static const WatchFaceSlot_Data WIND_DIRECTION =
      WatchFaceSlot_Data._(20, _omitEnumNames ? '' : 'WIND_DIRECTION');

  static const $core.List<WatchFaceSlot_Data> values = <WatchFaceSlot_Data>[
    EMPTY,
    HEART_RATE,
    PRESSURE,
    SLEEP,
    ENERGY,
    STEP,
    CALORIE,
    VALID_STAND,
    BATTERY,
    DATE,
    WEATHER,
    AIR_PRESSURE,
    ALTITUDE,
    TIMER,
    CLOCK,
    AQI,
    HUMIDITY,
    SPORT_MODE,
    UVI,
    SUNRISE_SUNSET,
    WIND_DIRECTION,
  ];

  static final $core.List<WatchFaceSlot_Data?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 20);
  static WatchFaceSlot_Data? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WatchFaceSlot_Data._(super.value, super.name);
}

class InstallResult_Code extends $pb.ProtobufEnum {
  static const InstallResult_Code VERIFY_FAILED =
      InstallResult_Code._(0, _omitEnumNames ? '' : 'VERIFY_FAILED');
  static const InstallResult_Code INSTALL_FAILED =
      InstallResult_Code._(1, _omitEnumNames ? '' : 'INSTALL_FAILED');
  static const InstallResult_Code INSTALL_SUCCESS =
      InstallResult_Code._(2, _omitEnumNames ? '' : 'INSTALL_SUCCESS');
  static const InstallResult_Code INSTALL_USED =
      InstallResult_Code._(3, _omitEnumNames ? '' : 'INSTALL_USED');

  static const $core.List<InstallResult_Code> values = <InstallResult_Code>[
    VERIFY_FAILED,
    INSTALL_FAILED,
    INSTALL_SUCCESS,
    INSTALL_USED,
  ];

  static final $core.List<InstallResult_Code?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static InstallResult_Code? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const InstallResult_Code._(super.value, super.name);
}

class EditResponse_Code extends $pb.ProtobufEnum {
  static const EditResponse_Code SUCCESS =
      EditResponse_Code._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const EditResponse_Code SUCCESS_BUT_LOW_STORAGE =
      EditResponse_Code._(1, _omitEnumNames ? '' : 'SUCCESS_BUT_LOW_STORAGE');
  static const EditResponse_Code FAIL_FOR_LOW_STORAGE =
      EditResponse_Code._(2, _omitEnumNames ? '' : 'FAIL_FOR_LOW_STORAGE');
  static const EditResponse_Code FAIL_FOR_INVALID_PARAM =
      EditResponse_Code._(3, _omitEnumNames ? '' : 'FAIL_FOR_INVALID_PARAM');
  static const EditResponse_Code FAIL =
      EditResponse_Code._(4, _omitEnumNames ? '' : 'FAIL');

  static const $core.List<EditResponse_Code> values = <EditResponse_Code>[
    SUCCESS,
    SUCCESS_BUT_LOW_STORAGE,
    FAIL_FOR_LOW_STORAGE,
    FAIL_FOR_INVALID_PARAM,
    FAIL,
  ];

  static final $core.List<EditResponse_Code?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static EditResponse_Code? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EditResponse_Code._(super.value, super.name);
}

class BgImageResult_Code extends $pb.ProtobufEnum {
  static const BgImageResult_Code SUCCESS =
      BgImageResult_Code._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const BgImageResult_Code IMAGE_SAVE_FAILED =
      BgImageResult_Code._(1, _omitEnumNames ? '' : 'IMAGE_SAVE_FAILED');
  static const BgImageResult_Code IMAGE_RESOLVE_FAILED =
      BgImageResult_Code._(2, _omitEnumNames ? '' : 'IMAGE_RESOLVE_FAILED');
  static const BgImageResult_Code NO_WATCH_FACE_MATCHED =
      BgImageResult_Code._(3, _omitEnumNames ? '' : 'NO_WATCH_FACE_MATCHED');

  static const $core.List<BgImageResult_Code> values = <BgImageResult_Code>[
    SUCCESS,
    IMAGE_SAVE_FAILED,
    IMAGE_RESOLVE_FAILED,
    NO_WATCH_FACE_MATCHED,
  ];

  static final $core.List<BgImageResult_Code?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static BgImageResult_Code? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BgImageResult_Code._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
