// This is a generated file - do not edit.
//
// Generated from wear_fitness.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GpsAccuracy extends $pb.ProtobufEnum {
  static const GpsAccuracy GPS_LOW =
      GpsAccuracy._(0, _omitEnumNames ? '' : 'GPS_LOW');
  static const GpsAccuracy GPS_MEDIUM =
      GpsAccuracy._(1, _omitEnumNames ? '' : 'GPS_MEDIUM');
  static const GpsAccuracy GPS_HIGH =
      GpsAccuracy._(2, _omitEnumNames ? '' : 'GPS_HIGH');
  static const GpsAccuracy GPS_UNKNOWN =
      GpsAccuracy._(10, _omitEnumNames ? '' : 'GPS_UNKNOWN');

  static const $core.List<GpsAccuracy> values = <GpsAccuracy>[
    GPS_LOW,
    GPS_MEDIUM,
    GPS_HIGH,
    GPS_UNKNOWN,
  ];

  static final $core.Map<$core.int, GpsAccuracy> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GpsAccuracy? valueOf($core.int value) => _byValue[value];

  const GpsAccuracy._(super.value, super.name);
}

class GYMCapability extends $pb.ProtobufEnum {
  static const GYMCapability GYM_SAVE_DATA =
      GYMCapability._(1, _omitEnumNames ? '' : 'GYM_SAVE_DATA');
  static const GYMCapability GYM_RECEIVE_ASSIST =
      GYMCapability._(2, _omitEnumNames ? '' : 'GYM_RECEIVE_ASSIST');

  static const $core.List<GYMCapability> values = <GYMCapability>[
    GYM_SAVE_DATA,
    GYM_RECEIVE_ASSIST,
  ];

  static final $core.Map<$core.int, GYMCapability> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GYMCapability? valueOf($core.int value) => _byValue[value];

  const GYMCapability._(super.value, super.name);
}

class Fitness_FitnessID extends $pb.ProtobufEnum {
  static const Fitness_FitnessID SET_USER_PROFILE =
      Fitness_FitnessID._(0, _omitEnumNames ? '' : 'SET_USER_PROFILE');
  static const Fitness_FitnessID REQUEST_USER_PROFILE =
      Fitness_FitnessID._(7, _omitEnumNames ? '' : 'REQUEST_USER_PROFILE');
  static const Fitness_FitnessID GET_TODAY_FITNESS_IDS =
      Fitness_FitnessID._(1, _omitEnumNames ? '' : 'GET_TODAY_FITNESS_IDS');
  static const Fitness_FitnessID GET_HISTORY_FITNESS_IDS =
      Fitness_FitnessID._(2, _omitEnumNames ? '' : 'GET_HISTORY_FITNESS_IDS');
  static const Fitness_FitnessID REQUEST_FITNESS_IDS =
      Fitness_FitnessID._(3, _omitEnumNames ? '' : 'REQUEST_FITNESS_IDS');
  static const Fitness_FitnessID REQUEST_FITNESS_ID =
      Fitness_FitnessID._(4, _omitEnumNames ? '' : 'REQUEST_FITNESS_ID');
  static const Fitness_FitnessID CONFIRM_FITNESS_ID =
      Fitness_FitnessID._(5, _omitEnumNames ? '' : 'CONFIRM_FITNESS_ID');
  static const Fitness_FitnessID GET_REMAINING_SPORT_DATA =
      Fitness_FitnessID._(6, _omitEnumNames ? '' : 'GET_REMAINING_SPORT_DATA');
  static const Fitness_FitnessID GET_BLOOD_OXYGEN_MONITOR =
      Fitness_FitnessID._(8, _omitEnumNames ? '' : 'GET_BLOOD_OXYGEN_MONITOR');
  static const Fitness_FitnessID SET_BLOOD_OXYGEN_MONITOR =
      Fitness_FitnessID._(9, _omitEnumNames ? '' : 'SET_BLOOD_OXYGEN_MONITOR');
  static const Fitness_FitnessID GET_HEART_RATE_MONITOR =
      Fitness_FitnessID._(10, _omitEnumNames ? '' : 'GET_HEART_RATE_MONITOR');
  static const Fitness_FitnessID SET_HEART_RATE_MONITOR =
      Fitness_FitnessID._(11, _omitEnumNames ? '' : 'SET_HEART_RATE_MONITOR');
  static const Fitness_FitnessID GET_SEDENTARY_REMINDER =
      Fitness_FitnessID._(12, _omitEnumNames ? '' : 'GET_SEDENTARY_REMINDER');
  static const Fitness_FitnessID SET_SEDENTARY_REMINDER =
      Fitness_FitnessID._(13, _omitEnumNames ? '' : 'SET_SEDENTARY_REMINDER');
  static const Fitness_FitnessID GET_PRESSURE_MONITOR =
      Fitness_FitnessID._(14, _omitEnumNames ? '' : 'GET_PRESSURE_MONITOR');
  static const Fitness_FitnessID SET_PRESSURE_MONITOR =
      Fitness_FitnessID._(15, _omitEnumNames ? '' : 'SET_PRESSURE_MONITOR');
  static const Fitness_FitnessID GET_BLOOD_PRESSURE_REMINDER =
      Fitness_FitnessID._(
          16, _omitEnumNames ? '' : 'GET_BLOOD_PRESSURE_REMINDER');
  static const Fitness_FitnessID SET_BLOOD_PRESSURE_REMINDER =
      Fitness_FitnessID._(
          17, _omitEnumNames ? '' : 'SET_BLOOD_PRESSURE_REMINDER');
  static const Fitness_FitnessID GET_ECG_REMINDER =
      Fitness_FitnessID._(18, _omitEnumNames ? '' : 'GET_ECG_REMINDER');
  static const Fitness_FitnessID SET_ECG_REMINDER =
      Fitness_FitnessID._(19, _omitEnumNames ? '' : 'SET_ECG_REMINDER');
  static const Fitness_FitnessID CHECK_ECG_ACTIVATION =
      Fitness_FitnessID._(54, _omitEnumNames ? '' : 'CHECK_ECG_ACTIVATION');
  static const Fitness_FitnessID ACTIVATE_ECG =
      Fitness_FitnessID._(55, _omitEnumNames ? '' : 'ACTIVATE_ECG');
  static const Fitness_FitnessID DEACTIVATE_ECG =
      Fitness_FitnessID._(85, _omitEnumNames ? '' : 'DEACTIVATE_ECG');
  static const Fitness_FitnessID START_PRESSURE_CALIBRATE =
      Fitness_FitnessID._(23, _omitEnumNames ? '' : 'START_PRESSURE_CALIBRATE');
  static const Fitness_FitnessID STOP_PRESSURE_CALIBRATE =
      Fitness_FitnessID._(24, _omitEnumNames ? '' : 'STOP_PRESSURE_CALIBRATE');
  static const Fitness_FitnessID COMPLETE_PRESSURE_CALIBRATE =
      Fitness_FitnessID._(
          25, _omitEnumNames ? '' : 'COMPLETE_PRESSURE_CALIBRATE');
  static const Fitness_FitnessID SPORT_REQUEST =
      Fitness_FitnessID._(26, _omitEnumNames ? '' : 'SPORT_REQUEST');
  static const Fitness_FitnessID PHONE_SPORT_DATA =
      Fitness_FitnessID._(27, _omitEnumNames ? '' : 'PHONE_SPORT_DATA');
  static const Fitness_FitnessID WEAR_SPORT_DATA =
      Fitness_FitnessID._(28, _omitEnumNames ? '' : 'WEAR_SPORT_DATA');
  static const Fitness_FitnessID GET_SPORT_STATUS =
      Fitness_FitnessID._(29, _omitEnumNames ? '' : 'GET_SPORT_STATUS');
  static const Fitness_FitnessID SPORT_PRE_REQUEST =
      Fitness_FitnessID._(30, _omitEnumNames ? '' : 'SPORT_PRE_REQUEST');
  static const Fitness_FitnessID ECG_REQUEST =
      Fitness_FitnessID._(32, _omitEnumNames ? '' : 'ECG_REQUEST');
  static const Fitness_FitnessID REPORT_ECG_DATA =
      Fitness_FitnessID._(33, _omitEnumNames ? '' : 'REPORT_ECG_DATA');
  static const Fitness_FitnessID REPORT_ECG_STATUS =
      Fitness_FitnessID._(34, _omitEnumNames ? '' : 'REPORT_ECG_STATUS');
  static const Fitness_FitnessID GET_WOMEN_HEALTH =
      Fitness_FitnessID._(20, _omitEnumNames ? '' : 'GET_WOMEN_HEALTH');
  static const Fitness_FitnessID REQUEST_WOMEN_HEALTH =
      Fitness_FitnessID._(37, _omitEnumNames ? '' : 'REQUEST_WOMEN_HEALTH');
  static const Fitness_FitnessID SYNC_WOMEN_HEALTH =
      Fitness_FitnessID._(38, _omitEnumNames ? '' : 'SYNC_WOMEN_HEALTH');
  static const Fitness_FitnessID SET_WOMEN_HEALTH_FORCAST =
      Fitness_FitnessID._(39, _omitEnumNames ? '' : 'SET_WOMEN_HEALTH_FORCAST');
  static const Fitness_FitnessID SET_WOMEN_HEALTH_REMINDER =
      Fitness_FitnessID._(
          40, _omitEnumNames ? '' : 'SET_WOMEN_HEALTH_REMINDER');
  static const Fitness_FitnessID SYNC_SLEEP_RESULT =
      Fitness_FitnessID._(41, _omitEnumNames ? '' : 'SYNC_SLEEP_RESULT');
  static const Fitness_FitnessID GET_GOAL_STATUS =
      Fitness_FitnessID._(42, _omitEnumNames ? '' : 'GET_GOAL_STATUS');
  static const Fitness_FitnessID SET_GOAL_STATUS =
      Fitness_FitnessID._(43, _omitEnumNames ? '' : 'SET_GOAL_STATUS');
  static const Fitness_FitnessID GET_BASIC_DATA =
      Fitness_FitnessID._(44, _omitEnumNames ? '' : 'GET_BASIC_DATA');
  static const Fitness_FitnessID REGISTER_BASIC_DATA_REPORT =
      Fitness_FitnessID._(
          45, _omitEnumNames ? '' : 'REGISTER_BASIC_DATA_REPORT');
  static const Fitness_FitnessID UNREGISTER_BASIC_DATA_REPORT =
      Fitness_FitnessID._(
          46, _omitEnumNames ? '' : 'UNREGISTER_BASIC_DATA_REPORT');
  static const Fitness_FitnessID REPORT_BASIC_DATA =
      Fitness_FitnessID._(47, _omitEnumNames ? '' : 'REPORT_BASIC_DATA');
  static const Fitness_FitnessID SYNC_VITALITY_DATA =
      Fitness_FitnessID._(51, _omitEnumNames ? '' : 'SYNC_VITALITY_DATA');
  static const Fitness_FitnessID SYNC_BEST_SPORT_DATA =
      Fitness_FitnessID._(52, _omitEnumNames ? '' : 'SYNC_BEST_SPORT_DATA');
  static const Fitness_FitnessID GET_VITALITY_REMINDER =
      Fitness_FitnessID._(21, _omitEnumNames ? '' : 'GET_VITALITY_REMINDER');
  static const Fitness_FitnessID SET_VITALITY_REMINDER =
      Fitness_FitnessID._(22, _omitEnumNames ? '' : 'SET_VITALITY_REMINDER');
  static const Fitness_FitnessID GET_ACTIVITY_REMINDER =
      Fitness_FitnessID._(35, _omitEnumNames ? '' : 'GET_ACTIVITY_REMINDER');
  static const Fitness_FitnessID SET_ACTIVITY_REMINDER =
      Fitness_FitnessID._(36, _omitEnumNames ? '' : 'SET_ACTIVITY_REMINDER');
  static const Fitness_FitnessID PHONE_SPORT_DATA_V2D =
      Fitness_FitnessID._(48, _omitEnumNames ? '' : 'PHONE_SPORT_DATA_V2D');
  static const Fitness_FitnessID PHONE_SPORT_DATA_V2A =
      Fitness_FitnessID._(49, _omitEnumNames ? '' : 'PHONE_SPORT_DATA_V2A');
  static const Fitness_FitnessID WEAR_SPORT_DATA_V2A =
      Fitness_FitnessID._(50, _omitEnumNames ? '' : 'WEAR_SPORT_DATA_V2A');
  static const Fitness_FitnessID WEAR_SENSOR_DATA =
      Fitness_FitnessID._(53, _omitEnumNames ? '' : 'WEAR_SENSOR_DATA');
  static const Fitness_FitnessID MOTION_INTERACT =
      Fitness_FitnessID._(56, _omitEnumNames ? '' : 'MOTION_INTERACT');
  static const Fitness_FitnessID PHONE_CONTROL_DATA =
      Fitness_FitnessID._(83, _omitEnumNames ? '' : 'PHONE_CONTROL_DATA');
  static const Fitness_FitnessID WEAR_CONTROL_DATA =
      Fitness_FitnessID._(84, _omitEnumNames ? '' : 'WEAR_CONTROL_DATA');
  static const Fitness_FitnessID GYM_REQUEST =
      Fitness_FitnessID._(64, _omitEnumNames ? '' : 'GYM_REQUEST');
  static const Fitness_FitnessID GYM_ASSIST =
      Fitness_FitnessID._(65, _omitEnumNames ? '' : 'GYM_ASSIST');
  static const Fitness_FitnessID GYM_DATA =
      Fitness_FitnessID._(66, _omitEnumNames ? '' : 'GYM_DATA');
  static const Fitness_FitnessID GET_GYM_SETTINGS =
      Fitness_FitnessID._(67, _omitEnumNames ? '' : 'GET_GYM_SETTINGS');
  static const Fitness_FitnessID SET_GYM_SETTINGS =
      Fitness_FitnessID._(68, _omitEnumNames ? '' : 'SET_GYM_SETTINGS');
  static const Fitness_FitnessID GET_NAVI_ROUTES =
      Fitness_FitnessID._(57, _omitEnumNames ? '' : 'GET_NAVI_ROUTES');
  static const Fitness_FitnessID ADD_NAVI_ROUTE =
      Fitness_FitnessID._(58, _omitEnumNames ? '' : 'ADD_NAVI_ROUTE');
  static const Fitness_FitnessID REPORT_ADD_ROUTE_RESULT =
      Fitness_FitnessID._(59, _omitEnumNames ? '' : 'REPORT_ADD_ROUTE_RESULT');
  static const Fitness_FitnessID REMOVE_NAVE_ROUTES =
      Fitness_FitnessID._(60, _omitEnumNames ? '' : 'REMOVE_NAVE_ROUTES');
  static const Fitness_FitnessID GET_SLEEP_REGULARITY =
      Fitness_FitnessID._(61, _omitEnumNames ? '' : 'GET_SLEEP_REGULARITY');
  static const Fitness_FitnessID SET_SLEEP_REGULARITY =
      Fitness_FitnessID._(62, _omitEnumNames ? '' : 'SET_SLEEP_REGULARITY');
  static const Fitness_FitnessID GET_SLEEP_DISORDER =
      Fitness_FitnessID._(63, _omitEnumNames ? '' : 'GET_SLEEP_DISORDER');
  static const Fitness_FitnessID SET_SLEEP_DISORDER =
      Fitness_FitnessID._(69, _omitEnumNames ? '' : 'SET_SLEEP_DISORDER');
  static const Fitness_FitnessID SET_RESEARCH_USER_PROFILE =
      Fitness_FitnessID._(
          70, _omitEnumNames ? '' : 'SET_RESEARCH_USER_PROFILE');
  static const Fitness_FitnessID GET_TODAY_RESEARCH_IDS =
      Fitness_FitnessID._(71, _omitEnumNames ? '' : 'GET_TODAY_RESEARCH_IDS');
  static const Fitness_FitnessID GET_HISTORY_RESEARCH_IDS =
      Fitness_FitnessID._(72, _omitEnumNames ? '' : 'GET_HISTORY_RESEARCH_IDS');
  static const Fitness_FitnessID REQUEST_RESEARCH_IDS =
      Fitness_FitnessID._(73, _omitEnumNames ? '' : 'REQUEST_RESEARCH_IDS');
  static const Fitness_FitnessID REQUEST_RESEARCH_ID =
      Fitness_FitnessID._(74, _omitEnumNames ? '' : 'REQUEST_RESEARCH_ID');
  static const Fitness_FitnessID CONFIRM_RESEARCH_ID =
      Fitness_FitnessID._(75, _omitEnumNames ? '' : 'CONFIRM_RESEARCH_ID');
  static const Fitness_FitnessID UPDATE_APP_RESEARCH =
      Fitness_FitnessID._(76, _omitEnumNames ? '' : 'UPDATE_APP_RESEARCH');
  static const Fitness_FitnessID SYNC_APP_RESEARCH_LIST =
      Fitness_FitnessID._(77, _omitEnumNames ? '' : 'SYNC_APP_RESEARCH_LIST');
  static const Fitness_FitnessID GET_DEVICE_RESEARCH_LIST =
      Fitness_FitnessID._(78, _omitEnumNames ? '' : 'GET_DEVICE_RESEARCH_LIST');
  static const Fitness_FitnessID REQUEST_RESEARCH_CALIBRATION =
      Fitness_FitnessID._(
          79, _omitEnumNames ? '' : 'REQUEST_RESEARCH_CALIBRATION');
  static const Fitness_FitnessID REPORT_RESEARCH_CALIBRATION_STEP1 =
      Fitness_FitnessID._(
          80, _omitEnumNames ? '' : 'REPORT_RESEARCH_CALIBRATION_STEP1');
  static const Fitness_FitnessID REPORT_RESEARCH_CALIBRATION_STEP2 =
      Fitness_FitnessID._(
          81, _omitEnumNames ? '' : 'REPORT_RESEARCH_CALIBRATION_STEP2');
  static const Fitness_FitnessID REPORT_RESEARCH_CALIBRATION =
      Fitness_FitnessID._(
          89, _omitEnumNames ? '' : 'REPORT_RESEARCH_CALIBRATION');
  static const Fitness_FitnessID SET_BP_RESEARCH =
      Fitness_FitnessID._(82, _omitEnumNames ? '' : 'SET_BP_RESEARCH');
  static const Fitness_FitnessID REQUEST_BPG_CALIBRATION =
      Fitness_FitnessID._(90, _omitEnumNames ? '' : 'REQUEST_BPG_CALIBRATION');
  static const Fitness_FitnessID GET_BPG_CALIB_STATUS =
      Fitness_FitnessID._(91, _omitEnumNames ? '' : 'GET_BPG_CALIB_STATUS');
  static const Fitness_FitnessID GET_TRAINING_STATUS =
      Fitness_FitnessID._(86, _omitEnumNames ? '' : 'GET_TRAINING_STATUS');
  static const Fitness_FitnessID SYNC_TRAINING_PLAN =
      Fitness_FitnessID._(87, _omitEnumNames ? '' : 'SYNC_TRAINING_PLAN');
  static const Fitness_FitnessID STOP_TRAINING_PLAN =
      Fitness_FitnessID._(88, _omitEnumNames ? '' : 'STOP_TRAINING_PLAN');

  static const $core.List<Fitness_FitnessID> values = <Fitness_FitnessID>[
    SET_USER_PROFILE,
    REQUEST_USER_PROFILE,
    GET_TODAY_FITNESS_IDS,
    GET_HISTORY_FITNESS_IDS,
    REQUEST_FITNESS_IDS,
    REQUEST_FITNESS_ID,
    CONFIRM_FITNESS_ID,
    GET_REMAINING_SPORT_DATA,
    GET_BLOOD_OXYGEN_MONITOR,
    SET_BLOOD_OXYGEN_MONITOR,
    GET_HEART_RATE_MONITOR,
    SET_HEART_RATE_MONITOR,
    GET_SEDENTARY_REMINDER,
    SET_SEDENTARY_REMINDER,
    GET_PRESSURE_MONITOR,
    SET_PRESSURE_MONITOR,
    GET_BLOOD_PRESSURE_REMINDER,
    SET_BLOOD_PRESSURE_REMINDER,
    GET_ECG_REMINDER,
    SET_ECG_REMINDER,
    CHECK_ECG_ACTIVATION,
    ACTIVATE_ECG,
    DEACTIVATE_ECG,
    START_PRESSURE_CALIBRATE,
    STOP_PRESSURE_CALIBRATE,
    COMPLETE_PRESSURE_CALIBRATE,
    SPORT_REQUEST,
    PHONE_SPORT_DATA,
    WEAR_SPORT_DATA,
    GET_SPORT_STATUS,
    SPORT_PRE_REQUEST,
    ECG_REQUEST,
    REPORT_ECG_DATA,
    REPORT_ECG_STATUS,
    GET_WOMEN_HEALTH,
    REQUEST_WOMEN_HEALTH,
    SYNC_WOMEN_HEALTH,
    SET_WOMEN_HEALTH_FORCAST,
    SET_WOMEN_HEALTH_REMINDER,
    SYNC_SLEEP_RESULT,
    GET_GOAL_STATUS,
    SET_GOAL_STATUS,
    GET_BASIC_DATA,
    REGISTER_BASIC_DATA_REPORT,
    UNREGISTER_BASIC_DATA_REPORT,
    REPORT_BASIC_DATA,
    SYNC_VITALITY_DATA,
    SYNC_BEST_SPORT_DATA,
    GET_VITALITY_REMINDER,
    SET_VITALITY_REMINDER,
    GET_ACTIVITY_REMINDER,
    SET_ACTIVITY_REMINDER,
    PHONE_SPORT_DATA_V2D,
    PHONE_SPORT_DATA_V2A,
    WEAR_SPORT_DATA_V2A,
    WEAR_SENSOR_DATA,
    MOTION_INTERACT,
    PHONE_CONTROL_DATA,
    WEAR_CONTROL_DATA,
    GYM_REQUEST,
    GYM_ASSIST,
    GYM_DATA,
    GET_GYM_SETTINGS,
    SET_GYM_SETTINGS,
    GET_NAVI_ROUTES,
    ADD_NAVI_ROUTE,
    REPORT_ADD_ROUTE_RESULT,
    REMOVE_NAVE_ROUTES,
    GET_SLEEP_REGULARITY,
    SET_SLEEP_REGULARITY,
    GET_SLEEP_DISORDER,
    SET_SLEEP_DISORDER,
    SET_RESEARCH_USER_PROFILE,
    GET_TODAY_RESEARCH_IDS,
    GET_HISTORY_RESEARCH_IDS,
    REQUEST_RESEARCH_IDS,
    REQUEST_RESEARCH_ID,
    CONFIRM_RESEARCH_ID,
    UPDATE_APP_RESEARCH,
    SYNC_APP_RESEARCH_LIST,
    GET_DEVICE_RESEARCH_LIST,
    REQUEST_RESEARCH_CALIBRATION,
    REPORT_RESEARCH_CALIBRATION_STEP1,
    REPORT_RESEARCH_CALIBRATION_STEP2,
    REPORT_RESEARCH_CALIBRATION,
    SET_BP_RESEARCH,
    REQUEST_BPG_CALIBRATION,
    GET_BPG_CALIB_STATUS,
    GET_TRAINING_STATUS,
    SYNC_TRAINING_PLAN,
    STOP_TRAINING_PLAN,
  ];

  static final $core.List<Fitness_FitnessID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 91);
  static Fitness_FitnessID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Fitness_FitnessID._(super.value, super.name);
}

class BloodOxygenMonitor_Mode extends $pb.ProtobufEnum {
  static const BloodOxygenMonitor_Mode OFF =
      BloodOxygenMonitor_Mode._(0, _omitEnumNames ? '' : 'OFF');
  static const BloodOxygenMonitor_Mode SLEEP_ON =
      BloodOxygenMonitor_Mode._(1, _omitEnumNames ? '' : 'SLEEP_ON');
  static const BloodOxygenMonitor_Mode ALL_DAY_ON =
      BloodOxygenMonitor_Mode._(2, _omitEnumNames ? '' : 'ALL_DAY_ON');

  static const $core.List<BloodOxygenMonitor_Mode> values =
      <BloodOxygenMonitor_Mode>[
    OFF,
    SLEEP_ON,
    ALL_DAY_ON,
  ];

  static final $core.List<BloodOxygenMonitor_Mode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BloodOxygenMonitor_Mode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BloodOxygenMonitor_Mode._(super.value, super.name);
}

class HeartRateMonitor_Mode extends $pb.ProtobufEnum {
  static const HeartRateMonitor_Mode AUTO =
      HeartRateMonitor_Mode._(0, _omitEnumNames ? '' : 'AUTO');
  static const HeartRateMonitor_Mode OFF =
      HeartRateMonitor_Mode._(1, _omitEnumNames ? '' : 'OFF');

  static const $core.List<HeartRateMonitor_Mode> values =
      <HeartRateMonitor_Mode>[
    AUTO,
    OFF,
  ];

  static final $core.List<HeartRateMonitor_Mode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static HeartRateMonitor_Mode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeartRateMonitor_Mode._(super.value, super.name);
}

class PressureCalibrate_Code extends $pb.ProtobufEnum {
  static const PressureCalibrate_Code OK =
      PressureCalibrate_Code._(0, _omitEnumNames ? '' : 'OK');
  static const PressureCalibrate_Code NOT_WEARING =
      PressureCalibrate_Code._(1, _omitEnumNames ? '' : 'NOT_WEARING');
  static const PressureCalibrate_Code IN_SPORT =
      PressureCalibrate_Code._(2, _omitEnumNames ? '' : 'IN_SPORT');
  static const PressureCalibrate_Code NOT_IN_CALIBRATING =
      PressureCalibrate_Code._(3, _omitEnumNames ? '' : 'NOT_IN_CALIBRATING');
  static const PressureCalibrate_Code UNKNOWN =
      PressureCalibrate_Code._(10, _omitEnumNames ? '' : 'UNKNOWN');

  static const $core.List<PressureCalibrate_Code> values =
      <PressureCalibrate_Code>[
    OK,
    NOT_WEARING,
    IN_SPORT,
    NOT_IN_CALIBRATING,
    UNKNOWN,
  ];

  static final $core.Map<$core.int, PressureCalibrate_Code> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PressureCalibrate_Code? valueOf($core.int value) => _byValue[value];

  const PressureCalibrate_Code._(super.value, super.name);
}

class Goal_Type extends $pb.ProtobufEnum {
  static const Goal_Type STEP = Goal_Type._(1, _omitEnumNames ? '' : 'STEP');
  static const Goal_Type CALORIE =
      Goal_Type._(2, _omitEnumNames ? '' : 'CALORIE');
  static const Goal_Type INTENSITY =
      Goal_Type._(3, _omitEnumNames ? '' : 'INTENSITY');
  static const Goal_Type STAND = Goal_Type._(4, _omitEnumNames ? '' : 'STAND');

  static const $core.List<Goal_Type> values = <Goal_Type>[
    STEP,
    CALORIE,
    INTENSITY,
    STAND,
  ];

  static final $core.List<Goal_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static Goal_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Goal_Type._(super.value, super.name);
}

class SportResponse_Code extends $pb.ProtobufEnum {
  static const SportResponse_Code OK =
      SportResponse_Code._(0, _omitEnumNames ? '' : 'OK');
  static const SportResponse_Code BUSY =
      SportResponse_Code._(1, _omitEnumNames ? '' : 'BUSY');
  static const SportResponse_Code TYPE_NOT_MATCH =
      SportResponse_Code._(2, _omitEnumNames ? '' : 'TYPE_NOT_MATCH');
  static const SportResponse_Code NO_PERMISSION =
      SportResponse_Code._(3, _omitEnumNames ? '' : 'NO_PERMISSION');
  static const SportResponse_Code SPORT_NOT_SUPPORT =
      SportResponse_Code._(4, _omitEnumNames ? '' : 'SPORT_NOT_SUPPORT');
  static const SportResponse_Code LACK_OF_ACCURACY =
      SportResponse_Code._(5, _omitEnumNames ? '' : 'LACK_OF_ACCURACY');
  static const SportResponse_Code CHARGING =
      SportResponse_Code._(6, _omitEnumNames ? '' : 'CHARGING');
  static const SportResponse_Code LOW_BATTERY =
      SportResponse_Code._(7, _omitEnumNames ? '' : 'LOW_BATTERY');
  static const SportResponse_Code VERSION_NOT_SUPPORT =
      SportResponse_Code._(8, _omitEnumNames ? '' : 'VERSION_NOT_SUPPORT');
  static const SportResponse_Code MODE_NOT_MATCH =
      SportResponse_Code._(9, _omitEnumNames ? '' : 'MODE_NOT_MATCH');
  static const SportResponse_Code UNKNOWN =
      SportResponse_Code._(10, _omitEnumNames ? '' : 'UNKNOWN');

  static const $core.List<SportResponse_Code> values = <SportResponse_Code>[
    OK,
    BUSY,
    TYPE_NOT_MATCH,
    NO_PERMISSION,
    SPORT_NOT_SUPPORT,
    LACK_OF_ACCURACY,
    CHARGING,
    LOW_BATTERY,
    VERSION_NOT_SUPPORT,
    MODE_NOT_MATCH,
    UNKNOWN,
  ];

  static final $core.List<SportResponse_Code?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 10);
  static SportResponse_Code? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SportResponse_Code._(super.value, super.name);
}

class GYMSetting_Key extends $pb.ProtobufEnum {
  static const GYMSetting_Key CHILD_LOCK =
      GYMSetting_Key._(0, _omitEnumNames ? '' : 'CHILD_LOCK');
  static const GYMSetting_Key SAFETY_LOCK =
      GYMSetting_Key._(1, _omitEnumNames ? '' : 'SAFETY_LOCK');
  static const GYMSetting_Key DEVICE_LOCK =
      GYMSetting_Key._(2, _omitEnumNames ? '' : 'DEVICE_LOCK');
  static const GYMSetting_Key DEVICE_IN_DEBUG_MODE =
      GYMSetting_Key._(3, _omitEnumNames ? '' : 'DEVICE_IN_DEBUG_MODE');
  static const GYMSetting_Key SPEED_UP_LIMIT =
      GYMSetting_Key._(4, _omitEnumNames ? '' : 'SPEED_UP_LIMIT');

  static const $core.List<GYMSetting_Key> values = <GYMSetting_Key>[
    CHILD_LOCK,
    SAFETY_LOCK,
    DEVICE_LOCK,
    DEVICE_IN_DEBUG_MODE,
    SPEED_UP_LIMIT,
  ];

  static final $core.List<GYMSetting_Key?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static GYMSetting_Key? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GYMSetting_Key._(super.value, super.name);
}

class GYMResponse_Code extends $pb.ProtobufEnum {
  static const GYMResponse_Code OK =
      GYMResponse_Code._(0, _omitEnumNames ? '' : 'OK');
  static const GYMResponse_Code BUSY =
      GYMResponse_Code._(1, _omitEnumNames ? '' : 'BUSY');
  static const GYMResponse_Code TYPE_NOT_MATCH =
      GYMResponse_Code._(2, _omitEnumNames ? '' : 'TYPE_NOT_MATCH');
  static const GYMResponse_Code SPORT_NOT_SUPPORT =
      GYMResponse_Code._(3, _omitEnumNames ? '' : 'SPORT_NOT_SUPPORT');
  static const GYMResponse_Code LOW_BATTERY =
      GYMResponse_Code._(4, _omitEnumNames ? '' : 'LOW_BATTERY');
  static const GYMResponse_Code CHILD_LOCK =
      GYMResponse_Code._(5, _omitEnumNames ? '' : 'CHILD_LOCK');
  static const GYMResponse_Code SAFETY_LOCK =
      GYMResponse_Code._(6, _omitEnumNames ? '' : 'SAFETY_LOCK');
  static const GYMResponse_Code DEVICE_LOCK =
      GYMResponse_Code._(7, _omitEnumNames ? '' : 'DEVICE_LOCK');
  static const GYMResponse_Code DEVICE_IN_DEBUG_MODE =
      GYMResponse_Code._(8, _omitEnumNames ? '' : 'DEVICE_IN_DEBUG_MODE');
  static const GYMResponse_Code DEVICE_IN_OTA =
      GYMResponse_Code._(9, _omitEnumNames ? '' : 'DEVICE_IN_OTA');
  static const GYMResponse_Code UNKNOWN =
      GYMResponse_Code._(16, _omitEnumNames ? '' : 'UNKNOWN');

  static const $core.List<GYMResponse_Code> values = <GYMResponse_Code>[
    OK,
    BUSY,
    TYPE_NOT_MATCH,
    SPORT_NOT_SUPPORT,
    LOW_BATTERY,
    CHILD_LOCK,
    SAFETY_LOCK,
    DEVICE_LOCK,
    DEVICE_IN_DEBUG_MODE,
    DEVICE_IN_OTA,
    UNKNOWN,
  ];

  static final $core.Map<$core.int, GYMResponse_Code> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GYMResponse_Code? valueOf($core.int value) => _byValue[value];

  const GYMResponse_Code._(super.value, super.name);
}

class ECGRequest_Type extends $pb.ProtobufEnum {
  static const ECGRequest_Type HANDHELD =
      ECGRequest_Type._(0, _omitEnumNames ? '' : 'HANDHELD');
  static const ECGRequest_Type FITTING =
      ECGRequest_Type._(1, _omitEnumNames ? '' : 'FITTING');

  static const $core.List<ECGRequest_Type> values = <ECGRequest_Type>[
    HANDHELD,
    FITTING,
  ];

  static final $core.List<ECGRequest_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ECGRequest_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ECGRequest_Type._(super.value, super.name);
}

class ECGRequest_State extends $pb.ProtobufEnum {
  static const ECGRequest_State START =
      ECGRequest_State._(0, _omitEnumNames ? '' : 'START');
  static const ECGRequest_State STOP =
      ECGRequest_State._(1, _omitEnumNames ? '' : 'STOP');

  static const $core.List<ECGRequest_State> values = <ECGRequest_State>[
    START,
    STOP,
  ];

  static final $core.List<ECGRequest_State?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ECGRequest_State? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ECGRequest_State._(super.value, super.name);
}

class ECGResponse_Code extends $pb.ProtobufEnum {
  static const ECGResponse_Code READY =
      ECGResponse_Code._(0, _omitEnumNames ? '' : 'READY');
  static const ECGResponse_Code BUSY =
      ECGResponse_Code._(1, _omitEnumNames ? '' : 'BUSY');
  static const ECGResponse_Code FALL_OFF =
      ECGResponse_Code._(2, _omitEnumNames ? '' : 'FALL_OFF');
  static const ECGResponse_Code IN_SPORT =
      ECGResponse_Code._(3, _omitEnumNames ? '' : 'IN_SPORT');
  static const ECGResponse_Code CHARGING =
      ECGResponse_Code._(4, _omitEnumNames ? '' : 'CHARGING');
  static const ECGResponse_Code FAIL =
      ECGResponse_Code._(10, _omitEnumNames ? '' : 'FAIL');

  static const $core.List<ECGResponse_Code> values = <ECGResponse_Code>[
    READY,
    BUSY,
    FALL_OFF,
    IN_SPORT,
    CHARGING,
    FAIL,
  ];

  static final $core.Map<$core.int, ECGResponse_Code> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ECGResponse_Code? valueOf($core.int value) => _byValue[value];

  const ECGResponse_Code._(super.value, super.name);
}

class ECGStatus_Status extends $pb.ProtobufEnum {
  static const ECGStatus_Status FALL_OFF =
      ECGStatus_Status._(0, _omitEnumNames ? '' : 'FALL_OFF');
  static const ECGStatus_Status WEAR_ON =
      ECGStatus_Status._(1, _omitEnumNames ? '' : 'WEAR_ON');

  static const $core.List<ECGStatus_Status> values = <ECGStatus_Status>[
    FALL_OFF,
    WEAR_ON,
  ];

  static final $core.List<ECGStatus_Status?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ECGStatus_Status? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ECGStatus_Status._(super.value, super.name);
}

class WomenHealth_Type extends $pb.ProtobufEnum {
  static const WomenHealth_Type NORMAL =
      WomenHealth_Type._(0, _omitEnumNames ? '' : 'NORMAL');
  static const WomenHealth_Type MENSTRUATION =
      WomenHealth_Type._(1, _omitEnumNames ? '' : 'MENSTRUATION');
  static const WomenHealth_Type OVULATION =
      WomenHealth_Type._(2, _omitEnumNames ? '' : 'OVULATION');
  static const WomenHealth_Type EASY_PREGNANCY =
      WomenHealth_Type._(3, _omitEnumNames ? '' : 'EASY_PREGNANCY');

  static const $core.List<WomenHealth_Type> values = <WomenHealth_Type>[
    NORMAL,
    MENSTRUATION,
    OVULATION,
    EASY_PREGNANCY,
  ];

  static final $core.List<WomenHealth_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static WomenHealth_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WomenHealth_Type._(super.value, super.name);
}

class MeasureReminder_Category extends $pb.ProtobufEnum {
  static const MeasureReminder_Category NORMAL =
      MeasureReminder_Category._(0, _omitEnumNames ? '' : 'NORMAL');
  static const MeasureReminder_Category MILD =
      MeasureReminder_Category._(1, _omitEnumNames ? '' : 'MILD');
  static const MeasureReminder_Category SERIOUS =
      MeasureReminder_Category._(2, _omitEnumNames ? '' : 'SERIOUS');
  static const MeasureReminder_Category UNKNOWN =
      MeasureReminder_Category._(3, _omitEnumNames ? '' : 'UNKNOWN');

  static const $core.List<MeasureReminder_Category> values =
      <MeasureReminder_Category>[
    NORMAL,
    MILD,
    SERIOUS,
    UNKNOWN,
  ];

  static final $core.List<MeasureReminder_Category?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static MeasureReminder_Category? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MeasureReminder_Category._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
