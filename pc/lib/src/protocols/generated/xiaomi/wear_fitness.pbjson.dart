// This is a generated file - do not edit.
//
// Generated from wear_fitness.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:typed_data';
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gpsAccuracyDescriptor instead')
const GpsAccuracy$json = {
  '1': 'GpsAccuracy',
  '2': [
    {'1': 'GPS_LOW', '2': 0},
    {'1': 'GPS_MEDIUM', '2': 1},
    {'1': 'GPS_HIGH', '2': 2},
    {'1': 'GPS_UNKNOWN', '2': 10},
  ],
};

/// Descriptor for `GpsAccuracy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gpsAccuracyDescriptor = $convert.base64Decode(
    'CgtHcHNBY2N1cmFjeRILCgdHUFNfTE9XEAASDgoKR1BTX01FRElVTRABEgwKCEdQU19ISUdIEA'
    'ISDwoLR1BTX1VOS05PV04QCg==');

@$core.Deprecated('Use gYMCapabilityDescriptor instead')
const GYMCapability$json = {
  '1': 'GYMCapability',
  '2': [
    {'1': 'GYM_SAVE_DATA', '2': 1},
    {'1': 'GYM_RECEIVE_ASSIST', '2': 2},
  ],
};

/// Descriptor for `GYMCapability`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gYMCapabilityDescriptor = $convert.base64Decode(
    'Cg1HWU1DYXBhYmlsaXR5EhEKDUdZTV9TQVZFX0RBVEEQARIWChJHWU1fUkVDRUlWRV9BU1NJU1'
    'QQAg==');

@$core.Deprecated('Use fitnessDescriptor instead')
const Fitness$json = {
  '1': 'Fitness',
  '2': [
    {
      '1': 'user_profile',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.UserProfile',
      '9': 0,
      '10': 'userProfile'
    },
    {'1': 'ids', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'ids'},
    {'1': 'id', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'id'},
    {
      '1': 'remaining_sport_data_list',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.RemainingSportData.List',
      '9': 0,
      '10': 'remainingSportDataList'
    },
    {
      '1': 'sync_param',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.SyncParam',
      '9': 0,
      '10': 'syncParam'
    },
    {
      '1': 'blood_oxygen_monitor',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.BloodOxygenMonitor',
      '9': 0,
      '10': 'bloodOxygenMonitor'
    },
    {
      '1': 'heart_rate_monitor',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.HeartRateMonitor',
      '9': 0,
      '10': 'heartRateMonitor'
    },
    {
      '1': 'sedentary_reminder',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.SedentaryReminder',
      '9': 0,
      '10': 'sedentaryReminder'
    },
    {
      '1': 'pressure_monitor',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.PressureMonitor',
      '9': 0,
      '10': 'pressureMonitor'
    },
    {
      '1': 'measure_reminder',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.MeasureReminder',
      '9': 0,
      '10': 'measureReminder'
    },
    {
      '1': 'section_list',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.WomenHealth.Section.List',
      '9': 0,
      '10': 'sectionList'
    },
    {
      '1': 'vitality_reminder',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.VitalityReminder',
      '9': 0,
      '10': 'vitalityReminder'
    },
    {
      '1': 'activity_reminder',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.ActivityReminder',
      '9': 0,
      '10': 'activityReminder'
    },
    {
      '1': 'wear_sensor_data',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.WearSensorData',
      '9': 0,
      '10': 'wearSensorData'
    },
    {
      '1': 'pressur_calibrate_response',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.PressureCalibrate.Response',
      '9': 0,
      '10': 'pressurCalibrateResponse'
    },
    {
      '1': 'evaluation_result',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.PressureCalibrate.EvaluationResult',
      '9': 0,
      '10': 'evaluationResult'
    },
    {
      '1': 'calibration_result',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.PressureCalibrate.CalibrationResult',
      '9': 0,
      '10': 'calibrationResult'
    },
    {
      '1': 'sport_request',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportRequest',
      '9': 0,
      '10': 'sportRequest'
    },
    {
      '1': 'sport_response',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportResponse',
      '9': 0,
      '10': 'sportResponse'
    },
    {
      '1': 'phone_sport_data',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneSportData',
      '9': 0,
      '10': 'phoneSportData'
    },
    {
      '1': 'wear_sport_data',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.protocol.WearSportData',
      '9': 0,
      '10': 'wearSportData'
    },
    {
      '1': 'sport_status',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportStatus',
      '9': 0,
      '10': 'sportStatus'
    },
    {
      '1': 'sport_pre_request',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportPreRequest',
      '9': 0,
      '10': 'sportPreRequest'
    },
    {
      '1': 'sport_pre_response',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportPreResponse',
      '9': 0,
      '10': 'sportPreResponse'
    },
    {
      '1': 'ecg_request',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.protocol.ECGRequest',
      '9': 0,
      '10': 'ecgRequest'
    },
    {
      '1': 'ecg_response',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.protocol.ECGResponse',
      '9': 0,
      '10': 'ecgResponse'
    },
    {
      '1': 'ecg_data',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.protocol.ECGData',
      '9': 0,
      '10': 'ecgData'
    },
    {
      '1': 'ecg_status',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.protocol.ECGStatus',
      '9': 0,
      '10': 'ecgStatus'
    },
    {
      '1': 'women_health',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.protocol.WomenHealth',
      '9': 0,
      '10': 'womenHealth'
    },
    {'1': 'forcast_on', '3': 35, '4': 1, '5': 8, '9': 0, '10': 'forcastOn'},
    {
      '1': 'reminder_list',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.protocol.WomenHealth.Reminder.List',
      '9': 0,
      '10': 'reminderList'
    },
    {
      '1': 'sleep_result',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.protocol.SleepResult',
      '9': 0,
      '10': 'sleepResult'
    },
    {
      '1': 'goal_status',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.protocol.Goal.Status',
      '9': 0,
      '10': 'goalStatus'
    },
    {
      '1': 'basic_data',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.protocol.BasicData',
      '9': 0,
      '10': 'basicData'
    },
    {
      '1': 'phone_sport_data_v2d',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneSportDataV2D',
      '9': 0,
      '10': 'phoneSportDataV2d'
    },
    {
      '1': 'phone_sport_data_v2a',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneSportDataV2A',
      '9': 0,
      '10': 'phoneSportDataV2a'
    },
    {
      '1': 'wear_sport_data_v2a',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.protocol.WearSportDataV2A',
      '9': 0,
      '10': 'wearSportDataV2a'
    },
    {
      '1': 'vitality_data_list',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.protocol.VitalityData.List',
      '9': 0,
      '10': 'vitalityDataList'
    },
    {
      '1': 'sport_data_list',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.protocol.BestSportData.List',
      '9': 0,
      '10': 'sportDataList'
    },
    {
      '1': 'ecg_activation',
      '3': 45,
      '4': 1,
      '5': 11,
      '6': '.protocol.ECGActivation',
      '9': 0,
      '10': 'ecgActivation'
    },
    {
      '1': 'motion_interact',
      '3': 46,
      '4': 1,
      '5': 11,
      '6': '.protocol.MotionInteract',
      '9': 0,
      '10': 'motionInteract'
    },
    {
      '1': 'navi_route_list',
      '3': 47,
      '4': 1,
      '5': 11,
      '6': '.protocol.NaviRoute.List',
      '9': 0,
      '10': 'naviRouteList'
    },
    {
      '1': 'navi_route_add_reqeust',
      '3': 48,
      '4': 1,
      '5': 11,
      '6': '.protocol.NaviRoute.AddRequest',
      '9': 0,
      '10': 'naviRouteAddReqeust'
    },
    {
      '1': 'navi_route_add_response',
      '3': 49,
      '4': 1,
      '5': 11,
      '6': '.protocol.NaviRoute.AddResponse',
      '9': 0,
      '10': 'naviRouteAddResponse'
    },
    {
      '1': 'gym_request',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.protocol.GYMRequest',
      '9': 0,
      '10': 'gymRequest'
    },
    {
      '1': 'gym_response',
      '3': 51,
      '4': 1,
      '5': 11,
      '6': '.protocol.GYMResponse',
      '9': 0,
      '10': 'gymResponse'
    },
    {
      '1': 'gym_assist',
      '3': 52,
      '4': 1,
      '5': 11,
      '6': '.protocol.GYMAssist',
      '9': 0,
      '10': 'gymAssist'
    },
    {
      '1': 'gym_data',
      '3': 53,
      '4': 1,
      '5': 11,
      '6': '.protocol.GYMData',
      '9': 0,
      '10': 'gymData'
    },
    {
      '1': 'gym_setting_list',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.protocol.GYMSetting.List',
      '9': 0,
      '10': 'gymSettingList'
    },
    {
      '1': 'navi_route_add_result',
      '3': 55,
      '4': 1,
      '5': 11,
      '6': '.protocol.NaviRoute.AddResult',
      '9': 0,
      '10': 'naviRouteAddResult'
    },
    {
      '1': 'navi_route_remove_reqeust',
      '3': 56,
      '4': 1,
      '5': 11,
      '6': '.protocol.NaviRoute.RemoveRequest',
      '9': 0,
      '10': 'naviRouteRemoveReqeust'
    },
    {
      '1': 'navi_route_remove_response',
      '3': 57,
      '4': 1,
      '5': 11,
      '6': '.protocol.NaviRoute.RemoveResponse',
      '9': 0,
      '10': 'naviRouteRemoveResponse'
    },
    {
      '1': 'sleep_regularity',
      '3': 58,
      '4': 1,
      '5': 11,
      '6': '.protocol.SleepRegularity',
      '9': 0,
      '10': 'sleepRegularity'
    },
    {
      '1': 'sleep_disorder',
      '3': 59,
      '4': 1,
      '5': 11,
      '6': '.protocol.SleepDisorder',
      '9': 0,
      '10': 'sleepDisorder'
    },
    {
      '1': 'research_app',
      '3': 60,
      '4': 1,
      '5': 11,
      '6': '.protocol.Research.App',
      '9': 0,
      '10': 'researchApp'
    },
    {
      '1': 'research_app_list',
      '3': 61,
      '4': 1,
      '5': 11,
      '6': '.protocol.Research.App.List',
      '9': 0,
      '10': 'researchAppList'
    },
    {
      '1': 'research_device_list',
      '3': 62,
      '4': 1,
      '5': 11,
      '6': '.protocol.Research.Device.List',
      '9': 0,
      '10': 'researchDeviceList'
    },
    {
      '1': 'research_cali_request',
      '3': 63,
      '4': 1,
      '5': 11,
      '6': '.protocol.Research.CalibrationRequest',
      '9': 0,
      '10': 'researchCaliRequest'
    },
    {
      '1': 'research_cali_response',
      '3': 64,
      '4': 1,
      '5': 11,
      '6': '.protocol.Research.CalibrationResponse',
      '9': 0,
      '10': 'researchCaliResponse'
    },
    {
      '1': 'research_bp_setting',
      '3': 65,
      '4': 1,
      '5': 11,
      '6': '.protocol.Research.BpSetting',
      '9': 0,
      '10': 'researchBpSetting'
    },
    {
      '1': 'phone_control_data',
      '3': 66,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneControlData',
      '9': 0,
      '10': 'phoneControlData'
    },
    {
      '1': 'wear_control_data',
      '3': 67,
      '4': 1,
      '5': 11,
      '6': '.protocol.WearControlData',
      '9': 0,
      '10': 'wearControlData'
    },
    {
      '1': 'training',
      '3': 68,
      '4': 1,
      '5': 11,
      '6': '.protocol.Training',
      '9': 0,
      '10': 'training'
    },
    {
      '1': 'bpg_cali_request',
      '3': 69,
      '4': 1,
      '5': 11,
      '6': '.protocol.Research.BPGCalibrationRequest',
      '9': 0,
      '10': 'bpgCaliRequest'
    },
    {
      '1': 'bpg_cali_status',
      '3': 70,
      '4': 1,
      '5': 11,
      '6': '.protocol.Research.BPGCalibrationStatus',
      '9': 0,
      '10': 'bpgCaliStatus'
    },
  ],
  '4': [Fitness_FitnessID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use fitnessDescriptor instead')
const Fitness_FitnessID$json = {
  '1': 'FitnessID',
  '2': [
    {'1': 'SET_USER_PROFILE', '2': 0},
    {'1': 'REQUEST_USER_PROFILE', '2': 7},
    {'1': 'GET_TODAY_FITNESS_IDS', '2': 1},
    {'1': 'GET_HISTORY_FITNESS_IDS', '2': 2},
    {'1': 'REQUEST_FITNESS_IDS', '2': 3},
    {'1': 'REQUEST_FITNESS_ID', '2': 4},
    {'1': 'CONFIRM_FITNESS_ID', '2': 5},
    {'1': 'GET_REMAINING_SPORT_DATA', '2': 6},
    {'1': 'GET_BLOOD_OXYGEN_MONITOR', '2': 8},
    {'1': 'SET_BLOOD_OXYGEN_MONITOR', '2': 9},
    {'1': 'GET_HEART_RATE_MONITOR', '2': 10},
    {'1': 'SET_HEART_RATE_MONITOR', '2': 11},
    {'1': 'GET_SEDENTARY_REMINDER', '2': 12},
    {'1': 'SET_SEDENTARY_REMINDER', '2': 13},
    {'1': 'GET_PRESSURE_MONITOR', '2': 14},
    {'1': 'SET_PRESSURE_MONITOR', '2': 15},
    {'1': 'GET_BLOOD_PRESSURE_REMINDER', '2': 16},
    {'1': 'SET_BLOOD_PRESSURE_REMINDER', '2': 17},
    {'1': 'GET_ECG_REMINDER', '2': 18},
    {'1': 'SET_ECG_REMINDER', '2': 19},
    {'1': 'CHECK_ECG_ACTIVATION', '2': 54},
    {'1': 'ACTIVATE_ECG', '2': 55},
    {'1': 'DEACTIVATE_ECG', '2': 85},
    {'1': 'START_PRESSURE_CALIBRATE', '2': 23},
    {'1': 'STOP_PRESSURE_CALIBRATE', '2': 24},
    {'1': 'COMPLETE_PRESSURE_CALIBRATE', '2': 25},
    {'1': 'SPORT_REQUEST', '2': 26},
    {'1': 'PHONE_SPORT_DATA', '2': 27},
    {'1': 'WEAR_SPORT_DATA', '2': 28},
    {'1': 'GET_SPORT_STATUS', '2': 29},
    {'1': 'SPORT_PRE_REQUEST', '2': 30},
    {'1': 'ECG_REQUEST', '2': 32},
    {'1': 'REPORT_ECG_DATA', '2': 33},
    {'1': 'REPORT_ECG_STATUS', '2': 34},
    {'1': 'GET_WOMEN_HEALTH', '2': 20},
    {'1': 'REQUEST_WOMEN_HEALTH', '2': 37},
    {'1': 'SYNC_WOMEN_HEALTH', '2': 38},
    {'1': 'SET_WOMEN_HEALTH_FORCAST', '2': 39},
    {'1': 'SET_WOMEN_HEALTH_REMINDER', '2': 40},
    {'1': 'SYNC_SLEEP_RESULT', '2': 41},
    {'1': 'GET_GOAL_STATUS', '2': 42},
    {'1': 'SET_GOAL_STATUS', '2': 43},
    {'1': 'GET_BASIC_DATA', '2': 44},
    {'1': 'REGISTER_BASIC_DATA_REPORT', '2': 45},
    {'1': 'UNREGISTER_BASIC_DATA_REPORT', '2': 46},
    {'1': 'REPORT_BASIC_DATA', '2': 47},
    {'1': 'SYNC_VITALITY_DATA', '2': 51},
    {'1': 'SYNC_BEST_SPORT_DATA', '2': 52},
    {'1': 'GET_VITALITY_REMINDER', '2': 21},
    {'1': 'SET_VITALITY_REMINDER', '2': 22},
    {'1': 'GET_ACTIVITY_REMINDER', '2': 35},
    {'1': 'SET_ACTIVITY_REMINDER', '2': 36},
    {'1': 'PHONE_SPORT_DATA_V2D', '2': 48},
    {'1': 'PHONE_SPORT_DATA_V2A', '2': 49},
    {'1': 'WEAR_SPORT_DATA_V2A', '2': 50},
    {'1': 'WEAR_SENSOR_DATA', '2': 53},
    {'1': 'MOTION_INTERACT', '2': 56},
    {'1': 'PHONE_CONTROL_DATA', '2': 83},
    {'1': 'WEAR_CONTROL_DATA', '2': 84},
    {'1': 'GYM_REQUEST', '2': 64},
    {'1': 'GYM_ASSIST', '2': 65},
    {'1': 'GYM_DATA', '2': 66},
    {'1': 'GET_GYM_SETTINGS', '2': 67},
    {'1': 'SET_GYM_SETTINGS', '2': 68},
    {'1': 'GET_NAVI_ROUTES', '2': 57},
    {'1': 'ADD_NAVI_ROUTE', '2': 58},
    {'1': 'REPORT_ADD_ROUTE_RESULT', '2': 59},
    {'1': 'REMOVE_NAVE_ROUTES', '2': 60},
    {'1': 'GET_SLEEP_REGULARITY', '2': 61},
    {'1': 'SET_SLEEP_REGULARITY', '2': 62},
    {'1': 'GET_SLEEP_DISORDER', '2': 63},
    {'1': 'SET_SLEEP_DISORDER', '2': 69},
    {'1': 'SET_RESEARCH_USER_PROFILE', '2': 70},
    {'1': 'GET_TODAY_RESEARCH_IDS', '2': 71},
    {'1': 'GET_HISTORY_RESEARCH_IDS', '2': 72},
    {'1': 'REQUEST_RESEARCH_IDS', '2': 73},
    {'1': 'REQUEST_RESEARCH_ID', '2': 74},
    {'1': 'CONFIRM_RESEARCH_ID', '2': 75},
    {'1': 'UPDATE_APP_RESEARCH', '2': 76},
    {'1': 'SYNC_APP_RESEARCH_LIST', '2': 77},
    {'1': 'GET_DEVICE_RESEARCH_LIST', '2': 78},
    {'1': 'REQUEST_RESEARCH_CALIBRATION', '2': 79},
    {'1': 'REPORT_RESEARCH_CALIBRATION_STEP1', '2': 80},
    {'1': 'REPORT_RESEARCH_CALIBRATION_STEP2', '2': 81},
    {'1': 'REPORT_RESEARCH_CALIBRATION', '2': 89},
    {'1': 'SET_BP_RESEARCH', '2': 82},
    {'1': 'REQUEST_BPG_CALIBRATION', '2': 90},
    {'1': 'GET_BPG_CALIB_STATUS', '2': 91},
    {'1': 'GET_TRAINING_STATUS', '2': 86},
    {'1': 'SYNC_TRAINING_PLAN', '2': 87},
    {'1': 'STOP_TRAINING_PLAN', '2': 88},
  ],
};

/// Descriptor for `Fitness`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fitnessDescriptor = $convert.base64Decode(
    'CgdGaXRuZXNzEjoKDHVzZXJfcHJvZmlsZRgBIAEoCzIVLnByb3RvY29sLlVzZXJQcm9maWxlSA'
    'BSC3VzZXJQcm9maWxlEhIKA2lkcxgCIAEoDEgAUgNpZHMSEAoCaWQYAyABKAxIAFICaWQSXgoZ'
    'cmVtYWluaW5nX3Nwb3J0X2RhdGFfbGlzdBgEIAEoCzIhLnByb3RvY29sLlJlbWFpbmluZ1Nwb3'
    'J0RGF0YS5MaXN0SABSFnJlbWFpbmluZ1Nwb3J0RGF0YUxpc3QSNAoKc3luY19wYXJhbRgFIAEo'
    'CzITLnByb3RvY29sLlN5bmNQYXJhbUgAUglzeW5jUGFyYW0SUAoUYmxvb2Rfb3h5Z2VuX21vbm'
    'l0b3IYByABKAsyHC5wcm90b2NvbC5CbG9vZE94eWdlbk1vbml0b3JIAFISYmxvb2RPeHlnZW5N'
    'b25pdG9yEkoKEmhlYXJ0X3JhdGVfbW9uaXRvchgIIAEoCzIaLnByb3RvY29sLkhlYXJ0UmF0ZU'
    '1vbml0b3JIAFIQaGVhcnRSYXRlTW9uaXRvchJMChJzZWRlbnRhcnlfcmVtaW5kZXIYCSABKAsy'
    'Gy5wcm90b2NvbC5TZWRlbnRhcnlSZW1pbmRlckgAUhFzZWRlbnRhcnlSZW1pbmRlchJGChBwcm'
    'Vzc3VyZV9tb25pdG9yGAogASgLMhkucHJvdG9jb2wuUHJlc3N1cmVNb25pdG9ySABSD3ByZXNz'
    'dXJlTW9uaXRvchJGChBtZWFzdXJlX3JlbWluZGVyGAsgASgLMhkucHJvdG9jb2wuTWVhc3VyZV'
    'JlbWluZGVySABSD21lYXN1cmVSZW1pbmRlchJHCgxzZWN0aW9uX2xpc3QYDCABKAsyIi5wcm90'
    'b2NvbC5Xb21lbkhlYWx0aC5TZWN0aW9uLkxpc3RIAFILc2VjdGlvbkxpc3QSSQoRdml0YWxpdH'
    'lfcmVtaW5kZXIYDSABKAsyGi5wcm90b2NvbC5WaXRhbGl0eVJlbWluZGVySABSEHZpdGFsaXR5'
    'UmVtaW5kZXISSQoRYWN0aXZpdHlfcmVtaW5kZXIYDiABKAsyGi5wcm90b2NvbC5BY3Rpdml0eV'
    'JlbWluZGVySABSEGFjdGl2aXR5UmVtaW5kZXISRAoQd2Vhcl9zZW5zb3JfZGF0YRgPIAEoCzIY'
    'LnByb3RvY29sLldlYXJTZW5zb3JEYXRhSABSDndlYXJTZW5zb3JEYXRhEmQKGnByZXNzdXJfY2'
    'FsaWJyYXRlX3Jlc3BvbnNlGBEgASgLMiQucHJvdG9jb2wuUHJlc3N1cmVDYWxpYnJhdGUuUmVz'
    'cG9uc2VIAFIYcHJlc3N1ckNhbGlicmF0ZVJlc3BvbnNlElsKEWV2YWx1YXRpb25fcmVzdWx0GB'
    'IgASgLMiwucHJvdG9jb2wuUHJlc3N1cmVDYWxpYnJhdGUuRXZhbHVhdGlvblJlc3VsdEgAUhBl'
    'dmFsdWF0aW9uUmVzdWx0El4KEmNhbGlicmF0aW9uX3Jlc3VsdBgTIAEoCzItLnByb3RvY29sLl'
    'ByZXNzdXJlQ2FsaWJyYXRlLkNhbGlicmF0aW9uUmVzdWx0SABSEWNhbGlicmF0aW9uUmVzdWx0'
    'Ej0KDXNwb3J0X3JlcXVlc3QYFCABKAsyFi5wcm90b2NvbC5TcG9ydFJlcXVlc3RIAFIMc3Bvcn'
    'RSZXF1ZXN0EkAKDnNwb3J0X3Jlc3BvbnNlGBUgASgLMhcucHJvdG9jb2wuU3BvcnRSZXNwb25z'
    'ZUgAUg1zcG9ydFJlc3BvbnNlEkQKEHBob25lX3Nwb3J0X2RhdGEYFiABKAsyGC5wcm90b2NvbC'
    '5QaG9uZVNwb3J0RGF0YUgAUg5waG9uZVNwb3J0RGF0YRJBCg93ZWFyX3Nwb3J0X2RhdGEYFyAB'
    'KAsyFy5wcm90b2NvbC5XZWFyU3BvcnREYXRhSABSDXdlYXJTcG9ydERhdGESOgoMc3BvcnRfc3'
    'RhdHVzGBggASgLMhUucHJvdG9jb2wuU3BvcnRTdGF0dXNIAFILc3BvcnRTdGF0dXMSRwoRc3Bv'
    'cnRfcHJlX3JlcXVlc3QYGSABKAsyGS5wcm90b2NvbC5TcG9ydFByZVJlcXVlc3RIAFIPc3Bvcn'
    'RQcmVSZXF1ZXN0EkoKEnNwb3J0X3ByZV9yZXNwb25zZRgaIAEoCzIaLnByb3RvY29sLlNwb3J0'
    'UHJlUmVzcG9uc2VIAFIQc3BvcnRQcmVSZXNwb25zZRI3CgtlY2dfcmVxdWVzdBgbIAEoCzIULn'
    'Byb3RvY29sLkVDR1JlcXVlc3RIAFIKZWNnUmVxdWVzdBI6CgxlY2dfcmVzcG9uc2UYHCABKAsy'
    'FS5wcm90b2NvbC5FQ0dSZXNwb25zZUgAUgtlY2dSZXNwb25zZRIuCghlY2dfZGF0YRgdIAEoCz'
    'IRLnByb3RvY29sLkVDR0RhdGFIAFIHZWNnRGF0YRI0CgplY2dfc3RhdHVzGB4gASgLMhMucHJv'
    'dG9jb2wuRUNHU3RhdHVzSABSCWVjZ1N0YXR1cxI6Cgx3b21lbl9oZWFsdGgYIiABKAsyFS5wcm'
    '90b2NvbC5Xb21lbkhlYWx0aEgAUgt3b21lbkhlYWx0aBIfCgpmb3JjYXN0X29uGCMgASgISABS'
    'CWZvcmNhc3RPbhJKCg1yZW1pbmRlcl9saXN0GCQgASgLMiMucHJvdG9jb2wuV29tZW5IZWFsdG'
    'guUmVtaW5kZXIuTGlzdEgAUgxyZW1pbmRlckxpc3QSOgoMc2xlZXBfcmVzdWx0GCUgASgLMhUu'
    'cHJvdG9jb2wuU2xlZXBSZXN1bHRIAFILc2xlZXBSZXN1bHQSOAoLZ29hbF9zdGF0dXMYJiABKA'
    'syFS5wcm90b2NvbC5Hb2FsLlN0YXR1c0gAUgpnb2FsU3RhdHVzEjQKCmJhc2ljX2RhdGEYJyAB'
    'KAsyEy5wcm90b2NvbC5CYXNpY0RhdGFIAFIJYmFzaWNEYXRhEk4KFHBob25lX3Nwb3J0X2RhdG'
    'FfdjJkGCggASgLMhsucHJvdG9jb2wuUGhvbmVTcG9ydERhdGFWMkRIAFIRcGhvbmVTcG9ydERh'
    'dGFWMmQSTgoUcGhvbmVfc3BvcnRfZGF0YV92MmEYKSABKAsyGy5wcm90b2NvbC5QaG9uZVNwb3'
    'J0RGF0YVYyQUgAUhFwaG9uZVNwb3J0RGF0YVYyYRJLChN3ZWFyX3Nwb3J0X2RhdGFfdjJhGCog'
    'ASgLMhoucHJvdG9jb2wuV2VhclNwb3J0RGF0YVYyQUgAUhB3ZWFyU3BvcnREYXRhVjJhEksKEn'
    'ZpdGFsaXR5X2RhdGFfbGlzdBgrIAEoCzIbLnByb3RvY29sLlZpdGFsaXR5RGF0YS5MaXN0SABS'
    'EHZpdGFsaXR5RGF0YUxpc3QSRgoPc3BvcnRfZGF0YV9saXN0GCwgASgLMhwucHJvdG9jb2wuQm'
    'VzdFNwb3J0RGF0YS5MaXN0SABSDXNwb3J0RGF0YUxpc3QSQAoOZWNnX2FjdGl2YXRpb24YLSAB'
    'KAsyFy5wcm90b2NvbC5FQ0dBY3RpdmF0aW9uSABSDWVjZ0FjdGl2YXRpb24SQwoPbW90aW9uX2'
    'ludGVyYWN0GC4gASgLMhgucHJvdG9jb2wuTW90aW9uSW50ZXJhY3RIAFIObW90aW9uSW50ZXJh'
    'Y3QSQgoPbmF2aV9yb3V0ZV9saXN0GC8gASgLMhgucHJvdG9jb2wuTmF2aVJvdXRlLkxpc3RIAF'
    'INbmF2aVJvdXRlTGlzdBJVChZuYXZpX3JvdXRlX2FkZF9yZXFldXN0GDAgASgLMh4ucHJvdG9j'
    'b2wuTmF2aVJvdXRlLkFkZFJlcXVlc3RIAFITbmF2aVJvdXRlQWRkUmVxZXVzdBJYChduYXZpX3'
    'JvdXRlX2FkZF9yZXNwb25zZRgxIAEoCzIfLnByb3RvY29sLk5hdmlSb3V0ZS5BZGRSZXNwb25z'
    'ZUgAUhRuYXZpUm91dGVBZGRSZXNwb25zZRI3CgtneW1fcmVxdWVzdBgyIAEoCzIULnByb3RvY2'
    '9sLkdZTVJlcXVlc3RIAFIKZ3ltUmVxdWVzdBI6CgxneW1fcmVzcG9uc2UYMyABKAsyFS5wcm90'
    'b2NvbC5HWU1SZXNwb25zZUgAUgtneW1SZXNwb25zZRI0CgpneW1fYXNzaXN0GDQgASgLMhMucH'
    'JvdG9jb2wuR1lNQXNzaXN0SABSCWd5bUFzc2lzdBIuCghneW1fZGF0YRg1IAEoCzIRLnByb3Rv'
    'Y29sLkdZTURhdGFIAFIHZ3ltRGF0YRJFChBneW1fc2V0dGluZ19saXN0GDYgASgLMhkucHJvdG'
    '9jb2wuR1lNU2V0dGluZy5MaXN0SABSDmd5bVNldHRpbmdMaXN0ElIKFW5hdmlfcm91dGVfYWRk'
    'X3Jlc3VsdBg3IAEoCzIdLnByb3RvY29sLk5hdmlSb3V0ZS5BZGRSZXN1bHRIAFISbmF2aVJvdX'
    'RlQWRkUmVzdWx0El4KGW5hdmlfcm91dGVfcmVtb3ZlX3JlcWV1c3QYOCABKAsyIS5wcm90b2Nv'
    'bC5OYXZpUm91dGUuUmVtb3ZlUmVxdWVzdEgAUhZuYXZpUm91dGVSZW1vdmVSZXFldXN0EmEKGm'
    '5hdmlfcm91dGVfcmVtb3ZlX3Jlc3BvbnNlGDkgASgLMiIucHJvdG9jb2wuTmF2aVJvdXRlLlJl'
    'bW92ZVJlc3BvbnNlSABSF25hdmlSb3V0ZVJlbW92ZVJlc3BvbnNlEkYKEHNsZWVwX3JlZ3VsYX'
    'JpdHkYOiABKAsyGS5wcm90b2NvbC5TbGVlcFJlZ3VsYXJpdHlIAFIPc2xlZXBSZWd1bGFyaXR5'
    'EkAKDnNsZWVwX2Rpc29yZGVyGDsgASgLMhcucHJvdG9jb2wuU2xlZXBEaXNvcmRlckgAUg1zbG'
    'VlcERpc29yZGVyEjsKDHJlc2VhcmNoX2FwcBg8IAEoCzIWLnByb3RvY29sLlJlc2VhcmNoLkFw'
    'cEgAUgtyZXNlYXJjaEFwcBJJChFyZXNlYXJjaF9hcHBfbGlzdBg9IAEoCzIbLnByb3RvY29sLl'
    'Jlc2VhcmNoLkFwcC5MaXN0SABSD3Jlc2VhcmNoQXBwTGlzdBJSChRyZXNlYXJjaF9kZXZpY2Vf'
    'bGlzdBg+IAEoCzIeLnByb3RvY29sLlJlc2VhcmNoLkRldmljZS5MaXN0SABSEnJlc2VhcmNoRG'
    'V2aWNlTGlzdBJbChVyZXNlYXJjaF9jYWxpX3JlcXVlc3QYPyABKAsyJS5wcm90b2NvbC5SZXNl'
    'YXJjaC5DYWxpYnJhdGlvblJlcXVlc3RIAFITcmVzZWFyY2hDYWxpUmVxdWVzdBJeChZyZXNlYX'
    'JjaF9jYWxpX3Jlc3BvbnNlGEAgASgLMiYucHJvdG9jb2wuUmVzZWFyY2guQ2FsaWJyYXRpb25S'
    'ZXNwb25zZUgAUhRyZXNlYXJjaENhbGlSZXNwb25zZRJOChNyZXNlYXJjaF9icF9zZXR0aW5nGE'
    'EgASgLMhwucHJvdG9jb2wuUmVzZWFyY2guQnBTZXR0aW5nSABSEXJlc2VhcmNoQnBTZXR0aW5n'
    'EkoKEnBob25lX2NvbnRyb2xfZGF0YRhCIAEoCzIaLnByb3RvY29sLlBob25lQ29udHJvbERhdG'
    'FIAFIQcGhvbmVDb250cm9sRGF0YRJHChF3ZWFyX2NvbnRyb2xfZGF0YRhDIAEoCzIZLnByb3Rv'
    'Y29sLldlYXJDb250cm9sRGF0YUgAUg93ZWFyQ29udHJvbERhdGESMAoIdHJhaW5pbmcYRCABKA'
    'syEi5wcm90b2NvbC5UcmFpbmluZ0gAUgh0cmFpbmluZxJUChBicGdfY2FsaV9yZXF1ZXN0GEUg'
    'ASgLMigucHJvdG9jb2wuUmVzZWFyY2guQlBHQ2FsaWJyYXRpb25SZXF1ZXN0SABSDmJwZ0NhbG'
    'lSZXF1ZXN0ElEKD2JwZ19jYWxpX3N0YXR1cxhGIAEoCzInLnByb3RvY29sLlJlc2VhcmNoLkJQ'
    'R0NhbGlicmF0aW9uU3RhdHVzSABSDWJwZ0NhbGlTdGF0dXMinhIKCUZpdG5lc3NJRBIUChBTRV'
    'RfVVNFUl9QUk9GSUxFEAASGAoUUkVRVUVTVF9VU0VSX1BST0ZJTEUQBxIZChVHRVRfVE9EQVlf'
    'RklUTkVTU19JRFMQARIbChdHRVRfSElTVE9SWV9GSVRORVNTX0lEUxACEhcKE1JFUVVFU1RfRk'
    'lUTkVTU19JRFMQAxIWChJSRVFVRVNUX0ZJVE5FU1NfSUQQBBIWChJDT05GSVJNX0ZJVE5FU1Nf'
    'SUQQBRIcChhHRVRfUkVNQUlOSU5HX1NQT1JUX0RBVEEQBhIcChhHRVRfQkxPT0RfT1hZR0VOX0'
    '1PTklUT1IQCBIcChhTRVRfQkxPT0RfT1hZR0VOX01PTklUT1IQCRIaChZHRVRfSEVBUlRfUkFU'
    'RV9NT05JVE9SEAoSGgoWU0VUX0hFQVJUX1JBVEVfTU9OSVRPUhALEhoKFkdFVF9TRURFTlRBUl'
    'lfUkVNSU5ERVIQDBIaChZTRVRfU0VERU5UQVJZX1JFTUlOREVSEA0SGAoUR0VUX1BSRVNTVVJF'
    'X01PTklUT1IQDhIYChRTRVRfUFJFU1NVUkVfTU9OSVRPUhAPEh8KG0dFVF9CTE9PRF9QUkVTU1'
    'VSRV9SRU1JTkRFUhAQEh8KG1NFVF9CTE9PRF9QUkVTU1VSRV9SRU1JTkRFUhAREhQKEEdFVF9F'
    'Q0dfUkVNSU5ERVIQEhIUChBTRVRfRUNHX1JFTUlOREVSEBMSGAoUQ0hFQ0tfRUNHX0FDVElWQV'
    'RJT04QNhIQCgxBQ1RJVkFURV9FQ0cQNxISCg5ERUFDVElWQVRFX0VDRxBVEhwKGFNUQVJUX1BS'
    'RVNTVVJFX0NBTElCUkFURRAXEhsKF1NUT1BfUFJFU1NVUkVfQ0FMSUJSQVRFEBgSHwobQ09NUE'
    'xFVEVfUFJFU1NVUkVfQ0FMSUJSQVRFEBkSEQoNU1BPUlRfUkVRVUVTVBAaEhQKEFBIT05FX1NQ'
    'T1JUX0RBVEEQGxITCg9XRUFSX1NQT1JUX0RBVEEQHBIUChBHRVRfU1BPUlRfU1RBVFVTEB0SFQ'
    'oRU1BPUlRfUFJFX1JFUVVFU1QQHhIPCgtFQ0dfUkVRVUVTVBAgEhMKD1JFUE9SVF9FQ0dfREFU'
    'QRAhEhUKEVJFUE9SVF9FQ0dfU1RBVFVTECISFAoQR0VUX1dPTUVOX0hFQUxUSBAUEhgKFFJFUV'
    'VFU1RfV09NRU5fSEVBTFRIECUSFQoRU1lOQ19XT01FTl9IRUFMVEgQJhIcChhTRVRfV09NRU5f'
    'SEVBTFRIX0ZPUkNBU1QQJxIdChlTRVRfV09NRU5fSEVBTFRIX1JFTUlOREVSECgSFQoRU1lOQ1'
    '9TTEVFUF9SRVNVTFQQKRITCg9HRVRfR09BTF9TVEFUVVMQKhITCg9TRVRfR09BTF9TVEFUVVMQ'
    'KxISCg5HRVRfQkFTSUNfREFUQRAsEh4KGlJFR0lTVEVSX0JBU0lDX0RBVEFfUkVQT1JUEC0SIA'
    'ocVU5SRUdJU1RFUl9CQVNJQ19EQVRBX1JFUE9SVBAuEhUKEVJFUE9SVF9CQVNJQ19EQVRBEC8S'
    'FgoSU1lOQ19WSVRBTElUWV9EQVRBEDMSGAoUU1lOQ19CRVNUX1NQT1JUX0RBVEEQNBIZChVHRV'
    'RfVklUQUxJVFlfUkVNSU5ERVIQFRIZChVTRVRfVklUQUxJVFlfUkVNSU5ERVIQFhIZChVHRVRf'
    'QUNUSVZJVFlfUkVNSU5ERVIQIxIZChVTRVRfQUNUSVZJVFlfUkVNSU5ERVIQJBIYChRQSE9ORV'
    '9TUE9SVF9EQVRBX1YyRBAwEhgKFFBIT05FX1NQT1JUX0RBVEFfVjJBEDESFwoTV0VBUl9TUE9S'
    'VF9EQVRBX1YyQRAyEhQKEFdFQVJfU0VOU09SX0RBVEEQNRITCg9NT1RJT05fSU5URVJBQ1QQOB'
    'IWChJQSE9ORV9DT05UUk9MX0RBVEEQUxIVChFXRUFSX0NPTlRST0xfREFUQRBUEg8KC0dZTV9S'
    'RVFVRVNUEEASDgoKR1lNX0FTU0lTVBBBEgwKCEdZTV9EQVRBEEISFAoQR0VUX0dZTV9TRVRUSU'
    '5HUxBDEhQKEFNFVF9HWU1fU0VUVElOR1MQRBITCg9HRVRfTkFWSV9ST1VURVMQORISCg5BRERf'
    'TkFWSV9ST1VURRA6EhsKF1JFUE9SVF9BRERfUk9VVEVfUkVTVUxUEDsSFgoSUkVNT1ZFX05BVk'
    'VfUk9VVEVTEDwSGAoUR0VUX1NMRUVQX1JFR1VMQVJJVFkQPRIYChRTRVRfU0xFRVBfUkVHVUxB'
    'UklUWRA+EhYKEkdFVF9TTEVFUF9ESVNPUkRFUhA/EhYKElNFVF9TTEVFUF9ESVNPUkRFUhBFEh'
    '0KGVNFVF9SRVNFQVJDSF9VU0VSX1BST0ZJTEUQRhIaChZHRVRfVE9EQVlfUkVTRUFSQ0hfSURT'
    'EEcSHAoYR0VUX0hJU1RPUllfUkVTRUFSQ0hfSURTEEgSGAoUUkVRVUVTVF9SRVNFQVJDSF9JRF'
    'MQSRIXChNSRVFVRVNUX1JFU0VBUkNIX0lEEEoSFwoTQ09ORklSTV9SRVNFQVJDSF9JRBBLEhcK'
    'E1VQREFURV9BUFBfUkVTRUFSQ0gQTBIaChZTWU5DX0FQUF9SRVNFQVJDSF9MSVNUEE0SHAoYR0'
    'VUX0RFVklDRV9SRVNFQVJDSF9MSVNUEE4SIAocUkVRVUVTVF9SRVNFQVJDSF9DQUxJQlJBVElP'
    'ThBPEiUKIVJFUE9SVF9SRVNFQVJDSF9DQUxJQlJBVElPTl9TVEVQMRBQEiUKIVJFUE9SVF9SRV'
    'NFQVJDSF9DQUxJQlJBVElPTl9TVEVQMhBREh8KG1JFUE9SVF9SRVNFQVJDSF9DQUxJQlJBVElP'
    'ThBZEhMKD1NFVF9CUF9SRVNFQVJDSBBSEhsKF1JFUVVFU1RfQlBHX0NBTElCUkFUSU9OEFoSGA'
    'oUR0VUX0JQR19DQUxJQl9TVEFUVVMQWxIXChNHRVRfVFJBSU5JTkdfU1RBVFVTEFYSFgoSU1lO'
    'Q19UUkFJTklOR19QTEFOEFcSFgoSU1RPUF9UUkFJTklOR19QTEFOEFhCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use userProfileDescriptor instead')
const UserProfile$json = {
  '1': 'UserProfile',
  '2': [
    {'1': 'height', '3': 1, '4': 1, '5': 13, '10': 'height'},
    {'1': 'weight', '3': 2, '4': 1, '5': 2, '10': 'weight'},
    {'1': 'birth', '3': 3, '4': 1, '5': 13, '10': 'birth'},
    {'1': 'sex', '3': 4, '4': 1, '5': 14, '6': '.protocol.Sex', '10': 'sex'},
    {'1': 'max_hr', '3': 5, '4': 1, '5': 13, '10': 'maxHr'},
    {'1': 'goal_calorie', '3': 6, '4': 1, '5': 13, '10': 'goalCalorie'},
    {'1': 'goal_step', '3': 7, '4': 1, '5': 13, '10': 'goalStep'},
    {'1': 'maximal_met', '3': 8, '4': 1, '5': 2, '10': 'maximalMet'},
    {'1': 'goal_valid_stand', '3': 9, '4': 1, '5': 13, '10': 'goalValidStand'},
    {'1': 'goal_sleep', '3': 10, '4': 1, '5': 13, '10': 'goalSleep'},
    {'1': 'goal_intensity', '3': 11, '4': 1, '5': 13, '10': 'goalIntensity'},
    {'1': 'default_height', '3': 12, '4': 1, '5': 13, '10': 'defaultHeight'},
    {'1': 'default_weight', '3': 13, '4': 1, '5': 13, '10': 'defaultWeight'},
    {'1': 'default_birth', '3': 14, '4': 1, '5': 13, '10': 'defaultBirth'},
    {'1': 'default_sex', '3': 15, '4': 1, '5': 13, '10': 'defaultSex'},
    {'1': 'name', '3': 16, '4': 2, '5': 9, '10': 'name'},
    {'1': 'blood_type', '3': 17, '4': 1, '5': 13, '10': 'bloodType'},
    {'1': 'rh_blood_type', '3': 18, '4': 1, '5': 13, '10': 'rhBloodType'},
    {
      '1': 'organ_donation_volunteer',
      '3': 19,
      '4': 1,
      '5': 13,
      '10': 'organDonationVolunteer'
    },
    {
      '1': 'contact',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.protocol.UserProfile.Contact',
      '10': 'contact'
    },
    {'1': 'allergy_medicine', '3': 21, '4': 2, '5': 9, '10': 'allergyMedicine'},
    {'1': 'chronic_disease', '3': 22, '4': 2, '5': 9, '10': 'chronicDisease'},
    {'1': 'medical_program', '3': 23, '4': 2, '5': 9, '10': 'medicalProgram'},
  ],
  '3': [UserProfile_Contact$json],
};

@$core.Deprecated('Use userProfileDescriptor instead')
const UserProfile_Contact$json = {
  '1': 'Contact',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {'1': 'number', '3': 2, '4': 2, '5': 9, '10': 'number'},
    {'1': 'relation', '3': 3, '4': 2, '5': 13, '10': 'relation'},
  ],
};

/// Descriptor for `UserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileDescriptor = $convert.base64Decode(
    'CgtVc2VyUHJvZmlsZRIWCgZoZWlnaHQYASABKA1SBmhlaWdodBIWCgZ3ZWlnaHQYAiABKAJSBn'
    'dlaWdodBIUCgViaXJ0aBgDIAEoDVIFYmlydGgSHwoDc2V4GAQgASgOMg0ucHJvdG9jb2wuU2V4'
    'UgNzZXgSFQoGbWF4X2hyGAUgASgNUgVtYXhIchIhCgxnb2FsX2NhbG9yaWUYBiABKA1SC2dvYW'
    'xDYWxvcmllEhsKCWdvYWxfc3RlcBgHIAEoDVIIZ29hbFN0ZXASHwoLbWF4aW1hbF9tZXQYCCAB'
    'KAJSCm1heGltYWxNZXQSKAoQZ29hbF92YWxpZF9zdGFuZBgJIAEoDVIOZ29hbFZhbGlkU3Rhbm'
    'QSHQoKZ29hbF9zbGVlcBgKIAEoDVIJZ29hbFNsZWVwEiUKDmdvYWxfaW50ZW5zaXR5GAsgASgN'
    'Ug1nb2FsSW50ZW5zaXR5EiUKDmRlZmF1bHRfaGVpZ2h0GAwgASgNUg1kZWZhdWx0SGVpZ2h0Ei'
    'UKDmRlZmF1bHRfd2VpZ2h0GA0gASgNUg1kZWZhdWx0V2VpZ2h0EiMKDWRlZmF1bHRfYmlydGgY'
    'DiABKA1SDGRlZmF1bHRCaXJ0aBIfCgtkZWZhdWx0X3NleBgPIAEoDVIKZGVmYXVsdFNleBISCg'
    'RuYW1lGBAgAigJUgRuYW1lEh0KCmJsb29kX3R5cGUYESABKA1SCWJsb29kVHlwZRIiCg1yaF9i'
    'bG9vZF90eXBlGBIgASgNUgtyaEJsb29kVHlwZRI4Chhvcmdhbl9kb25hdGlvbl92b2x1bnRlZX'
    'IYEyABKA1SFm9yZ2FuRG9uYXRpb25Wb2x1bnRlZXISNwoHY29udGFjdBgUIAEoCzIdLnByb3Rv'
    'Y29sLlVzZXJQcm9maWxlLkNvbnRhY3RSB2NvbnRhY3QSKQoQYWxsZXJneV9tZWRpY2luZRgVIA'
    'IoCVIPYWxsZXJneU1lZGljaW5lEicKD2Nocm9uaWNfZGlzZWFzZRgWIAIoCVIOY2hyb25pY0Rp'
    'c2Vhc2USJwoPbWVkaWNhbF9wcm9ncmFtGBcgAigJUg5tZWRpY2FsUHJvZ3JhbRpRCgdDb250YW'
    'N0EhIKBG5hbWUYASACKAlSBG5hbWUSFgoGbnVtYmVyGAIgAigJUgZudW1iZXISGgoIcmVsYXRp'
    'b24YAyACKA1SCHJlbGF0aW9u');

@$core.Deprecated('Use syncParamDescriptor instead')
const SyncParam$json = {
  '1': 'SyncParam',
  '2': [
    {'1': 'reason', '3': 1, '4': 2, '5': 13, '10': 'reason'},
  ],
};

/// Descriptor for `SyncParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncParamDescriptor =
    $convert.base64Decode('CglTeW5jUGFyYW0SFgoGcmVhc29uGAEgAigNUgZyZWFzb24=');

@$core.Deprecated('Use remainingSportDataDescriptor instead')
const RemainingSportData$json = {
  '1': 'RemainingSportData',
  '2': [
    {'1': 'ids', '3': 1, '4': 2, '5': 12, '10': 'ids'},
    {
      '1': 'sport_course_type',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'sportCourseType'
    },
    {'1': 'cloud_course_id', '3': 3, '4': 1, '5': 4, '10': 'cloudCourseId'},
    {'1': 'duration', '3': 4, '4': 1, '5': 13, '10': 'duration'},
    {'1': 'distance', '3': 5, '4': 1, '5': 13, '10': 'distance'},
  ],
  '3': [RemainingSportData_List$json],
};

@$core.Deprecated('Use remainingSportDataDescriptor instead')
const RemainingSportData_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.RemainingSportData',
      '10': 'list'
    },
  ],
};

/// Descriptor for `RemainingSportData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remainingSportDataDescriptor = $convert.base64Decode(
    'ChJSZW1haW5pbmdTcG9ydERhdGESEAoDaWRzGAEgAigMUgNpZHMSKgoRc3BvcnRfY291cnNlX3'
    'R5cGUYAiABKA1SD3Nwb3J0Q291cnNlVHlwZRImCg9jbG91ZF9jb3Vyc2VfaWQYAyABKARSDWNs'
    'b3VkQ291cnNlSWQSGgoIZHVyYXRpb24YBCABKA1SCGR1cmF0aW9uEhoKCGRpc3RhbmNlGAUgAS'
    'gNUghkaXN0YW5jZRo4CgRMaXN0EjAKBGxpc3QYASADKAsyHC5wcm90b2NvbC5SZW1haW5pbmdT'
    'cG9ydERhdGFSBGxpc3Q=');

@$core.Deprecated('Use warningOptionDescriptor instead')
const WarningOption$json = {
  '1': 'WarningOption',
  '2': [
    {'1': 'warning', '3': 1, '4': 2, '5': 8, '10': 'warning'},
    {'1': 'warning_value', '3': 2, '4': 2, '5': 13, '10': 'warningValue'},
  ],
};

/// Descriptor for `WarningOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List warningOptionDescriptor = $convert.base64Decode(
    'Cg1XYXJuaW5nT3B0aW9uEhgKB3dhcm5pbmcYASACKAhSB3dhcm5pbmcSIwoNd2FybmluZ192YW'
    'x1ZRgCIAIoDVIMd2FybmluZ1ZhbHVl');

@$core.Deprecated('Use bloodOxygenMonitorDescriptor instead')
const BloodOxygenMonitor$json = {
  '1': 'BloodOxygenMonitor',
  '2': [
    {'1': 'support_all_day', '3': 1, '4': 2, '5': 8, '10': 'supportAllDay'},
    {
      '1': 'mode',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.BloodOxygenMonitor.Mode',
      '10': 'mode'
    },
    {'1': 'frequency', '3': 3, '4': 1, '5': 13, '10': 'frequency'},
    {
      '1': 'warning_non_sleep',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.WarningOption',
      '10': 'warningNonSleep'
    },
  ],
  '4': [BloodOxygenMonitor_Mode$json],
};

@$core.Deprecated('Use bloodOxygenMonitorDescriptor instead')
const BloodOxygenMonitor_Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'OFF', '2': 0},
    {'1': 'SLEEP_ON', '2': 1},
    {'1': 'ALL_DAY_ON', '2': 2},
  ],
};

/// Descriptor for `BloodOxygenMonitor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bloodOxygenMonitorDescriptor = $convert.base64Decode(
    'ChJCbG9vZE94eWdlbk1vbml0b3ISJgoPc3VwcG9ydF9hbGxfZGF5GAEgAigIUg1zdXBwb3J0QW'
    'xsRGF5EjUKBG1vZGUYAiACKA4yIS5wcm90b2NvbC5CbG9vZE94eWdlbk1vbml0b3IuTW9kZVIE'
    'bW9kZRIcCglmcmVxdWVuY3kYAyABKA1SCWZyZXF1ZW5jeRJDChF3YXJuaW5nX25vbl9zbGVlcB'
    'gEIAEoCzIXLnByb3RvY29sLldhcm5pbmdPcHRpb25SD3dhcm5pbmdOb25TbGVlcCItCgRNb2Rl'
    'EgcKA09GRhAAEgwKCFNMRUVQX09OEAESDgoKQUxMX0RBWV9PThAC');

@$core.Deprecated('Use heartRateMonitorDescriptor instead')
const HeartRateMonitor$json = {
  '1': 'HeartRateMonitor',
  '2': [
    {
      '1': 'mode',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.HeartRateMonitor.Mode',
      '10': 'mode'
    },
    {'1': 'frequency', '3': 2, '4': 2, '5': 13, '10': 'frequency'},
    {
      '1': 'support_intelligent_monitor',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'supportIntelligentMonitor'
    },
    {'1': 'warning', '3': 3, '4': 2, '5': 8, '10': 'warning'},
    {'1': 'warning_value', '3': 4, '4': 2, '5': 13, '10': 'warningValue'},
    {
      '1': 'warning_low',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.WarningOption',
      '10': 'warningLow'
    },
    {
      '1': 'abnormal_cardiac',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.protocol.OptionalSwitcher',
      '10': 'abnormalCardiac'
    },
    {
      '1': 'assit_sleep',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.HeartRateMonitor.AssistSleep',
      '10': 'assitSleep'
    },
    {
      '1': 'sleep_breathe_quality',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.protocol.OptionalSwitcher',
      '10': 'sleepBreatheQuality'
    },
    {
      '1': 'warning_sport',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.WarningOption',
      '10': 'warningSport'
    },
    {
      '1': 'sleep_breathe_rate',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.protocol.OptionalSwitcher',
      '10': 'sleepBreatheRate'
    },
  ],
  '3': [HeartRateMonitor_AssistSleep$json],
  '4': [HeartRateMonitor_Mode$json],
};

@$core.Deprecated('Use heartRateMonitorDescriptor instead')
const HeartRateMonitor_AssistSleep$json = {
  '1': 'AssistSleep',
  '2': [
    {'1': 'on', '3': 1, '4': 2, '5': 8, '10': 'on'},
  ],
};

@$core.Deprecated('Use heartRateMonitorDescriptor instead')
const HeartRateMonitor_Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'AUTO', '2': 0},
    {'1': 'OFF', '2': 1},
  ],
};

/// Descriptor for `HeartRateMonitor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heartRateMonitorDescriptor = $convert.base64Decode(
    'ChBIZWFydFJhdGVNb25pdG9yEjMKBG1vZGUYASACKA4yHy5wcm90b2NvbC5IZWFydFJhdGVNb2'
    '5pdG9yLk1vZGVSBG1vZGUSHAoJZnJlcXVlbmN5GAIgAigNUglmcmVxdWVuY3kSPgobc3VwcG9y'
    'dF9pbnRlbGxpZ2VudF9tb25pdG9yGAcgASgIUhlzdXBwb3J0SW50ZWxsaWdlbnRNb25pdG9yEh'
    'gKB3dhcm5pbmcYAyACKAhSB3dhcm5pbmcSIwoNd2FybmluZ192YWx1ZRgEIAIoDVIMd2Fybmlu'
    'Z1ZhbHVlEjgKC3dhcm5pbmdfbG93GAggASgLMhcucHJvdG9jb2wuV2FybmluZ09wdGlvblIKd2'
    'FybmluZ0xvdxJFChBhYm5vcm1hbF9jYXJkaWFjGAogASgOMhoucHJvdG9jb2wuT3B0aW9uYWxT'
    'd2l0Y2hlclIPYWJub3JtYWxDYXJkaWFjEkcKC2Fzc2l0X3NsZWVwGAUgASgLMiYucHJvdG9jb2'
    'wuSGVhcnRSYXRlTW9uaXRvci5Bc3Npc3RTbGVlcFIKYXNzaXRTbGVlcBJOChVzbGVlcF9icmVh'
    'dGhlX3F1YWxpdHkYCSABKA4yGi5wcm90b2NvbC5PcHRpb25hbFN3aXRjaGVyUhNzbGVlcEJyZW'
    'F0aGVRdWFsaXR5EjwKDXdhcm5pbmdfc3BvcnQYBiABKAsyFy5wcm90b2NvbC5XYXJuaW5nT3B0'
    'aW9uUgx3YXJuaW5nU3BvcnQSSAoSc2xlZXBfYnJlYXRoZV9yYXRlGAsgASgOMhoucHJvdG9jb2'
    'wuT3B0aW9uYWxTd2l0Y2hlclIQc2xlZXBCcmVhdGhlUmF0ZRodCgtBc3Npc3RTbGVlcBIOCgJv'
    'bhgBIAIoCFICb24iGQoETW9kZRIICgRBVVRPEAASBwoDT0ZGEAE=');

@$core.Deprecated('Use sedentaryReminderDescriptor instead')
const SedentaryReminder$json = {
  '1': 'SedentaryReminder',
  '2': [
    {'1': 'on', '3': 1, '4': 2, '5': 8, '10': 'on'},
    {
      '1': 'start_time',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'startTime'
    },
    {
      '1': 'end_time',
      '3': 3,
      '4': 2,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'endTime'
    },
    {
      '1': 'no_disturb_in_launch_break',
      '3': 4,
      '4': 2,
      '5': 8,
      '10': 'noDisturbInLaunchBreak'
    },
    {
      '1': 'launch_break_start_time',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'launchBreakStartTime'
    },
    {
      '1': 'launch_break_end_time',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'launchBreakEndTime'
    },
    {
      '1': 'stretch_guide',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.protocol.OptionalSwitcher',
      '10': 'stretchGuide'
    },
  ],
};

/// Descriptor for `SedentaryReminder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sedentaryReminderDescriptor = $convert.base64Decode(
    'ChFTZWRlbnRhcnlSZW1pbmRlchIOCgJvbhgBIAIoCFICb24SLQoKc3RhcnRfdGltZRgCIAIoCz'
    'IOLnByb3RvY29sLlRpbWVSCXN0YXJ0VGltZRIpCghlbmRfdGltZRgDIAIoCzIOLnByb3RvY29s'
    'LlRpbWVSB2VuZFRpbWUSOgoabm9fZGlzdHVyYl9pbl9sYXVuY2hfYnJlYWsYBCACKAhSFm5vRG'
    'lzdHVyYkluTGF1bmNoQnJlYWsSRQoXbGF1bmNoX2JyZWFrX3N0YXJ0X3RpbWUYBiABKAsyDi5w'
    'cm90b2NvbC5UaW1lUhRsYXVuY2hCcmVha1N0YXJ0VGltZRJBChVsYXVuY2hfYnJlYWtfZW5kX3'
    'RpbWUYByABKAsyDi5wcm90b2NvbC5UaW1lUhJsYXVuY2hCcmVha0VuZFRpbWUSPwoNc3RyZXRj'
    'aF9ndWlkZRgFIAEoDjIaLnByb3RvY29sLk9wdGlvbmFsU3dpdGNoZXJSDHN0cmV0Y2hHdWlkZQ'
    '==');

@$core.Deprecated('Use pressureMonitorDescriptor instead')
const PressureMonitor$json = {
  '1': 'PressureMonitor',
  '2': [
    {'1': 'on', '3': 1, '4': 2, '5': 8, '10': 'on'},
    {
      '1': 'warning_non_sleep',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.WarningOption',
      '10': 'warningNonSleep'
    },
  ],
};

/// Descriptor for `PressureMonitor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pressureMonitorDescriptor = $convert.base64Decode(
    'Cg9QcmVzc3VyZU1vbml0b3ISDgoCb24YASACKAhSAm9uEkMKEXdhcm5pbmdfbm9uX3NsZWVwGA'
    'IgASgLMhcucHJvdG9jb2wuV2FybmluZ09wdGlvblIPd2FybmluZ05vblNsZWVw');

@$core.Deprecated('Use pressureCalibrateDescriptor instead')
const PressureCalibrate$json = {
  '1': 'PressureCalibrate',
  '3': [
    PressureCalibrate_Response$json,
    PressureCalibrate_EvaluationResult$json,
    PressureCalibrate_CalibrationResult$json
  ],
  '4': [PressureCalibrate_Code$json],
};

@$core.Deprecated('Use pressureCalibrateDescriptor instead')
const PressureCalibrate_Response$json = {
  '1': 'Response',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.PressureCalibrate.Code',
      '10': 'code'
    },
    {
      '1': 'need_collect_time',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'needCollectTime'
    },
  ],
};

@$core.Deprecated('Use pressureCalibrateDescriptor instead')
const PressureCalibrate_EvaluationResult$json = {
  '1': 'EvaluationResult',
  '2': [
    {'1': 'value', '3': 1, '4': 2, '5': 13, '10': 'value'},
  ],
};

@$core.Deprecated('Use pressureCalibrateDescriptor instead')
const PressureCalibrate_CalibrationResult$json = {
  '1': 'CalibrationResult',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.PressureCalibrate.Code',
      '10': 'code'
    },
    {'1': 'current_pressure', '3': 2, '4': 1, '5': 13, '10': 'currentPressure'},
  ],
};

@$core.Deprecated('Use pressureCalibrateDescriptor instead')
const PressureCalibrate_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'NOT_WEARING', '2': 1},
    {'1': 'IN_SPORT', '2': 2},
    {'1': 'NOT_IN_CALIBRATING', '2': 3},
    {'1': 'UNKNOWN', '2': 10},
  ],
};

/// Descriptor for `PressureCalibrate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pressureCalibrateDescriptor = $convert.base64Decode(
    'ChFQcmVzc3VyZUNhbGlicmF0ZRpsCghSZXNwb25zZRI0CgRjb2RlGAEgAigOMiAucHJvdG9jb2'
    'wuUHJlc3N1cmVDYWxpYnJhdGUuQ29kZVIEY29kZRIqChFuZWVkX2NvbGxlY3RfdGltZRgCIAEo'
    'DVIPbmVlZENvbGxlY3RUaW1lGigKEEV2YWx1YXRpb25SZXN1bHQSFAoFdmFsdWUYASACKA1SBX'
    'ZhbHVlGnQKEUNhbGlicmF0aW9uUmVzdWx0EjQKBGNvZGUYASACKA4yIC5wcm90b2NvbC5QcmVz'
    'c3VyZUNhbGlicmF0ZS5Db2RlUgRjb2RlEikKEGN1cnJlbnRfcHJlc3N1cmUYAiABKA1SD2N1cn'
    'JlbnRQcmVzc3VyZSJSCgRDb2RlEgYKAk9LEAASDwoLTk9UX1dFQVJJTkcQARIMCghJTl9TUE9S'
    'VBACEhYKEk5PVF9JTl9DQUxJQlJBVElORxADEgsKB1VOS05PV04QCg==');

@$core.Deprecated('Use sleepResultDescriptor instead')
const SleepResult$json = {
  '1': 'SleepResult',
  '2': [
    {
      '1': 'section_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.SleepResult.Section',
      '10': 'sectionList'
    },
    {
      '1': 'animal',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.SleepResult.Animal',
      '10': 'animal'
    },
  ],
  '3': [
    SleepResult_Animal$json,
    SleepResult_ExtraData$json,
    SleepResult_Section$json
  ],
};

@$core.Deprecated('Use sleepResultDescriptor instead')
const SleepResult_Animal$json = {
  '1': 'Animal',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    {'1': 'current_progress', '3': 2, '4': 1, '5': 13, '10': 'currentProgress'},
    {'1': 'total_progress', '3': 3, '4': 1, '5': 13, '10': 'totalProgress'},
  ],
};

@$core.Deprecated('Use sleepResultDescriptor instead')
const SleepResult_ExtraData$json = {
  '1': 'ExtraData',
  '2': [
    {'1': 'bedtime', '3': 1, '4': 2, '5': 13, '10': 'bedtime'},
    {'1': 'sleep_time', '3': 2, '4': 2, '5': 13, '10': 'sleepTime'},
    {'1': 'sleep_quality', '3': 3, '4': 2, '5': 13, '10': 'sleepQuality'},
    {'1': 'sleep_efficiency', '3': 4, '4': 2, '5': 13, '10': 'sleepEfficiency'},
    {'1': 'breathing', '3': 5, '4': 2, '5': 13, '10': 'breathing'},
  ],
};

@$core.Deprecated('Use sleepResultDescriptor instead')
const SleepResult_Section$json = {
  '1': 'Section',
  '2': [
    {
      '1': 'timezone',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Timezone',
      '10': 'timezone'
    },
    {'1': 'valid_sleep_time', '3': 2, '4': 2, '5': 13, '10': 'validSleepTime'},
    {'1': 'sleep_timestamp', '3': 3, '4': 2, '5': 13, '10': 'sleepTimestamp'},
    {'1': 'wakeup_timestamp', '3': 4, '4': 2, '5': 13, '10': 'wakeupTimestamp'},
    {
      '1': 'average_heart_rate',
      '3': 5,
      '4': 2,
      '5': 13,
      '10': 'averageHeartRate'
    },
    {
      '1': 'average_blood_oxygen',
      '3': 6,
      '4': 2,
      '5': 13,
      '10': 'averageBloodOxygen'
    },
    {
      '1': 'extra_data',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.SleepResult.ExtraData',
      '10': 'extraData'
    },
  ],
};

/// Descriptor for `SleepResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sleepResultDescriptor = $convert.base64Decode(
    'CgtTbGVlcFJlc3VsdBJACgxzZWN0aW9uX2xpc3QYASADKAsyHS5wcm90b2NvbC5TbGVlcFJlc3'
    'VsdC5TZWN0aW9uUgtzZWN0aW9uTGlzdBI0CgZhbmltYWwYAiABKAsyHC5wcm90b2NvbC5TbGVl'
    'cFJlc3VsdC5BbmltYWxSBmFuaW1hbBpuCgZBbmltYWwSEgoEdHlwZRgBIAIoDVIEdHlwZRIpCh'
    'BjdXJyZW50X3Byb2dyZXNzGAIgASgNUg9jdXJyZW50UHJvZ3Jlc3MSJQoOdG90YWxfcHJvZ3Jl'
    'c3MYAyABKA1SDXRvdGFsUHJvZ3Jlc3MasgEKCUV4dHJhRGF0YRIYCgdiZWR0aW1lGAEgAigNUg'
    'diZWR0aW1lEh0KCnNsZWVwX3RpbWUYAiACKA1SCXNsZWVwVGltZRIjCg1zbGVlcF9xdWFsaXR5'
    'GAMgAigNUgxzbGVlcFF1YWxpdHkSKQoQc2xlZXBfZWZmaWNpZW5jeRgEIAIoDVIPc2xlZXBFZm'
    'ZpY2llbmN5EhwKCWJyZWF0aGluZxgFIAIoDVIJYnJlYXRoaW5nGtcCCgdTZWN0aW9uEi4KCHRp'
    'bWV6b25lGAEgAigLMhIucHJvdG9jb2wuVGltZXpvbmVSCHRpbWV6b25lEigKEHZhbGlkX3NsZW'
    'VwX3RpbWUYAiACKA1SDnZhbGlkU2xlZXBUaW1lEicKD3NsZWVwX3RpbWVzdGFtcBgDIAIoDVIO'
    'c2xlZXBUaW1lc3RhbXASKQoQd2FrZXVwX3RpbWVzdGFtcBgEIAIoDVIPd2FrZXVwVGltZXN0YW'
    '1wEiwKEmF2ZXJhZ2VfaGVhcnRfcmF0ZRgFIAIoDVIQYXZlcmFnZUhlYXJ0UmF0ZRIwChRhdmVy'
    'YWdlX2Jsb29kX294eWdlbhgGIAIoDVISYXZlcmFnZUJsb29kT3h5Z2VuEj4KCmV4dHJhX2RhdG'
    'EYByABKAsyHy5wcm90b2NvbC5TbGVlcFJlc3VsdC5FeHRyYURhdGFSCWV4dHJhRGF0YQ==');

@$core.Deprecated('Use goalDescriptor instead')
const Goal$json = {
  '1': 'Goal',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.Goal.Type',
      '10': 'type'
    },
  ],
  '3': [Goal_Status$json],
  '4': [Goal_Type$json],
};

@$core.Deprecated('Use goalDescriptor instead')
const Goal_Status$json = {
  '1': 'Status',
  '2': [
    {
      '1': 'current_goals',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.Goal',
      '10': 'currentGoals'
    },
    {
      '1': 'supported_goals',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.Goal',
      '10': 'supportedGoals'
    },
  ],
};

@$core.Deprecated('Use goalDescriptor instead')
const Goal_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'STEP', '2': 1},
    {'1': 'CALORIE', '2': 2},
    {'1': 'INTENSITY', '2': 3},
    {'1': 'STAND', '2': 4},
  ],
};

/// Descriptor for `Goal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goalDescriptor = $convert.base64Decode(
    'CgRHb2FsEicKBHR5cGUYASACKA4yEy5wcm90b2NvbC5Hb2FsLlR5cGVSBHR5cGUadgoGU3RhdH'
    'VzEjMKDWN1cnJlbnRfZ29hbHMYASADKAsyDi5wcm90b2NvbC5Hb2FsUgxjdXJyZW50R29hbHMS'
    'NwoPc3VwcG9ydGVkX2dvYWxzGAIgAygLMg4ucHJvdG9jb2wuR29hbFIOc3VwcG9ydGVkR29hbH'
    'MiNwoEVHlwZRIICgRTVEVQEAESCwoHQ0FMT1JJRRACEg0KCUlOVEVOU0lUWRADEgkKBVNUQU5E'
    'EAQ=');

@$core.Deprecated('Use basicDataDescriptor instead')
const BasicData$json = {
  '1': 'BasicData',
  '2': [
    {'1': 'steps', '3': 1, '4': 2, '5': 13, '10': 'steps'},
    {'1': 'calories', '3': 2, '4': 2, '5': 13, '10': 'calories'},
    {'1': 'distance', '3': 3, '4': 1, '5': 13, '10': 'distance'},
    {'1': 'heart_rate', '3': 4, '4': 1, '5': 13, '10': 'heartRate'},
    {'1': 'intensity', '3': 5, '4': 1, '5': 13, '10': 'intensity'},
    {'1': 'valid_stand', '3': 6, '4': 1, '5': 13, '10': 'validStand'},
  ],
};

/// Descriptor for `BasicData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicDataDescriptor = $convert.base64Decode(
    'CglCYXNpY0RhdGESFAoFc3RlcHMYASACKA1SBXN0ZXBzEhoKCGNhbG9yaWVzGAIgAigNUghjYW'
    'xvcmllcxIaCghkaXN0YW5jZRgDIAEoDVIIZGlzdGFuY2USHQoKaGVhcnRfcmF0ZRgEIAEoDVIJ'
    'aGVhcnRSYXRlEhwKCWludGVuc2l0eRgFIAEoDVIJaW50ZW5zaXR5Eh8KC3ZhbGlkX3N0YW5kGA'
    'YgASgNUgp2YWxpZFN0YW5k');

@$core.Deprecated('Use vitalityDataDescriptor instead')
const VitalityData$json = {
  '1': 'VitalityData',
  '3': [VitalityData_Item$json, VitalityData_List$json],
};

@$core.Deprecated('Use vitalityDataDescriptor instead')
const VitalityData_Item$json = {
  '1': 'Item',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.Goal.Type',
      '10': 'type'
    },
    {'1': 'total', '3': 2, '4': 2, '5': 13, '10': 'total'},
    {'1': 'interval', '3': 3, '4': 1, '5': 13, '10': 'interval'},
    {'1': 'detail', '3': 4, '4': 3, '5': 13, '10': 'detail'},
  ],
};

@$core.Deprecated('Use vitalityDataDescriptor instead')
const VitalityData_List$json = {
  '1': 'List',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 13, '10': 'timestamp'},
    {
      '1': 'list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.VitalityData.Item',
      '10': 'list'
    },
  ],
};

/// Descriptor for `VitalityData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vitalityDataDescriptor = $convert.base64Decode(
    'CgxWaXRhbGl0eURhdGEaeQoESXRlbRInCgR0eXBlGAEgAigOMhMucHJvdG9jb2wuR29hbC5UeX'
    'BlUgR0eXBlEhQKBXRvdGFsGAIgAigNUgV0b3RhbBIaCghpbnRlcnZhbBgDIAEoDVIIaW50ZXJ2'
    'YWwSFgoGZGV0YWlsGAQgAygNUgZkZXRhaWwaVQoETGlzdBIcCgl0aW1lc3RhbXAYASABKA1SCX'
    'RpbWVzdGFtcBIvCgRsaXN0GAIgAygLMhsucHJvdG9jb2wuVml0YWxpdHlEYXRhLkl0ZW1SBGxp'
    'c3Q=');

@$core.Deprecated('Use bestSportDataDescriptor instead')
const BestSportData$json = {
  '1': 'BestSportData',
  '2': [
    {
      '1': 'sport_type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'sportType'
    },
    {'1': 'duration', '3': 2, '4': 2, '5': 13, '10': 'duration'},
    {'1': 'distance', '3': 3, '4': 1, '5': 13, '10': 'distance'},
  ],
  '3': [BestSportData_List$json],
};

@$core.Deprecated('Use bestSportDataDescriptor instead')
const BestSportData_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'sport_data_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.BestSportData',
      '10': 'sportDataList'
    },
  ],
};

/// Descriptor for `BestSportData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bestSportDataDescriptor = $convert.base64Decode(
    'Cg1CZXN0U3BvcnREYXRhEjIKCnNwb3J0X3R5cGUYASACKA4yEy5wcm90b2NvbC5TcG9ydFR5cG'
    'VSCXNwb3J0VHlwZRIaCghkdXJhdGlvbhgCIAIoDVIIZHVyYXRpb24SGgoIZGlzdGFuY2UYAyAB'
    'KA1SCGRpc3RhbmNlGkcKBExpc3QSPwoPc3BvcnRfZGF0YV9saXN0GAEgAygLMhcucHJvdG9jb2'
    'wuQmVzdFNwb3J0RGF0YVINc3BvcnREYXRhTGlzdA==');

@$core.Deprecated('Use sportTargetDescriptor instead')
const SportTarget$json = {
  '1': 'SportTarget',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportTargetType',
      '10': 'type'
    },
    {'1': 'value', '3': 2, '4': 2, '5': 13, '10': 'value'},
  ],
};

/// Descriptor for `SportTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sportTargetDescriptor = $convert.base64Decode(
    'CgtTcG9ydFRhcmdldBItCgR0eXBlGAEgAigOMhkucHJvdG9jb2wuU3BvcnRUYXJnZXRUeXBlUg'
    'R0eXBlEhQKBXZhbHVlGAIgAigNUgV2YWx1ZQ==');

@$core.Deprecated('Use sportCourseDescriptor instead')
const SportCourse$json = {
  '1': 'SportCourse',
  '2': [
    {
      '1': 'sport_course_type',
      '3': 1,
      '4': 2,
      '5': 13,
      '10': 'sportCourseType'
    },
    {'1': 'cloud_course_id', '3': 2, '4': 1, '5': 4, '10': 'cloudCourseId'},
    {'1': 'course_name', '3': 3, '4': 2, '5': 9, '10': 'courseName'},
  ],
};

/// Descriptor for `SportCourse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sportCourseDescriptor = $convert.base64Decode(
    'CgtTcG9ydENvdXJzZRIqChFzcG9ydF9jb3Vyc2VfdHlwZRgBIAIoDVIPc3BvcnRDb3Vyc2VUeX'
    'BlEiYKD2Nsb3VkX2NvdXJzZV9pZBgCIAEoBFINY2xvdWRDb3Vyc2VJZBIfCgtjb3Vyc2VfbmFt'
    'ZRgDIAIoCVIKY291cnNlTmFtZQ==');

@$core.Deprecated('Use sportStatusDescriptor instead')
const SportStatus$json = {
  '1': 'SportStatus',
  '2': [
    {
      '1': 'sport_type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'sportType'
    },
    {
      '1': 'main_sport_type',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'mainSportType'
    },
    {'1': 'timestamp', '3': 2, '4': 1, '5': 13, '10': 'timestamp'},
    {
      '1': 'timezone',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Timezone',
      '10': 'timezone'
    },
    {'1': 'duration', '3': 4, '4': 1, '5': 13, '10': 'duration'},
    {'1': 'paused', '3': 5, '4': 1, '5': 8, '10': 'paused'},
    {'1': 'standalone', '3': 6, '4': 1, '5': 8, '10': 'standalone'},
    {'1': 'select_version', '3': 7, '4': 1, '5': 13, '10': 'selectVersion'},
    {'1': 'app_launched', '3': 8, '4': 1, '5': 8, '10': 'appLaunched'},
    {
      '1': 'sport_target_list',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.protocol.SportTarget',
      '10': 'sportTargetList'
    },
    {
      '1': 'sport_course',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportCourse',
      '10': 'sportCourse'
    },
    {
      '1': 'wear_mode',
      '3': 12,
      '4': 1,
      '5': 14,
      '6': '.protocol.WearMode',
      '10': 'wearMode'
    },
  ],
};

/// Descriptor for `SportStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sportStatusDescriptor = $convert.base64Decode(
    'CgtTcG9ydFN0YXR1cxIyCgpzcG9ydF90eXBlGAEgAigOMhMucHJvdG9jb2wuU3BvcnRUeXBlUg'
    'lzcG9ydFR5cGUSOwoPbWFpbl9zcG9ydF90eXBlGAsgASgOMhMucHJvdG9jb2wuU3BvcnRUeXBl'
    'Ug1tYWluU3BvcnRUeXBlEhwKCXRpbWVzdGFtcBgCIAEoDVIJdGltZXN0YW1wEi4KCHRpbWV6b2'
    '5lGAMgASgLMhIucHJvdG9jb2wuVGltZXpvbmVSCHRpbWV6b25lEhoKCGR1cmF0aW9uGAQgASgN'
    'UghkdXJhdGlvbhIWCgZwYXVzZWQYBSABKAhSBnBhdXNlZBIeCgpzdGFuZGFsb25lGAYgASgIUg'
    'pzdGFuZGFsb25lEiUKDnNlbGVjdF92ZXJzaW9uGAcgASgNUg1zZWxlY3RWZXJzaW9uEiEKDGFw'
    'cF9sYXVuY2hlZBgIIAEoCFILYXBwTGF1bmNoZWQSQQoRc3BvcnRfdGFyZ2V0X2xpc3QYCSADKA'
    'syFS5wcm90b2NvbC5TcG9ydFRhcmdldFIPc3BvcnRUYXJnZXRMaXN0EjgKDHNwb3J0X2NvdXJz'
    'ZRgKIAEoCzIVLnByb3RvY29sLlNwb3J0Q291cnNlUgtzcG9ydENvdXJzZRIvCgl3ZWFyX21vZG'
    'UYDCABKA4yEi5wcm90b2NvbC5XZWFyTW9kZVIId2Vhck1vZGU=');

@$core.Deprecated('Use sportPreRequestDescriptor instead')
const SportPreRequest$json = {
  '1': 'SportPreRequest',
  '2': [
    {
      '1': 'sport_type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'sportType'
    },
    {
      '1': 'main_sport_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'mainSportType'
    },
    {'1': 'support_versions', '3': 2, '4': 2, '5': 13, '10': 'supportVersions'},
  ],
};

/// Descriptor for `SportPreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sportPreRequestDescriptor = $convert.base64Decode(
    'Cg9TcG9ydFByZVJlcXVlc3QSMgoKc3BvcnRfdHlwZRgBIAIoDjITLnByb3RvY29sLlNwb3J0VH'
    'lwZVIJc3BvcnRUeXBlEjsKD21haW5fc3BvcnRfdHlwZRgDIAEoDjITLnByb3RvY29sLlNwb3J0'
    'VHlwZVINbWFpblNwb3J0VHlwZRIpChBzdXBwb3J0X3ZlcnNpb25zGAIgAigNUg9zdXBwb3J0Vm'
    'Vyc2lvbnM=');

@$core.Deprecated('Use sportPreResponseDescriptor instead')
const SportPreResponse$json = {
  '1': 'SportPreResponse',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportResponse.Code',
      '10': 'code'
    },
    {'1': 'select_version', '3': 2, '4': 2, '5': 13, '10': 'selectVersion'},
    {
      '1': 'gps_accuracy',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.protocol.GpsAccuracy',
      '10': 'gpsAccuracy'
    },
  ],
};

/// Descriptor for `SportPreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sportPreResponseDescriptor = $convert.base64Decode(
    'ChBTcG9ydFByZVJlc3BvbnNlEjAKBGNvZGUYASACKA4yHC5wcm90b2NvbC5TcG9ydFJlc3Bvbn'
    'NlLkNvZGVSBGNvZGUSJQoOc2VsZWN0X3ZlcnNpb24YAiACKA1SDXNlbGVjdFZlcnNpb24SOAoM'
    'Z3BzX2FjY3VyYWN5GAMgASgOMhUucHJvdG9jb2wuR3BzQWNjdXJhY3lSC2dwc0FjY3VyYWN5');

@$core.Deprecated('Use sportRequestDescriptor instead')
const SportRequest$json = {
  '1': 'SportRequest',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 13, '10': 'timestamp'},
    {
      '1': 'timezone',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.Timezone',
      '10': 'timezone'
    },
    {
      '1': 'sport_type',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'sportType'
    },
    {
      '1': 'main_sport_type',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'mainSportType'
    },
    {
      '1': 'state',
      '3': 4,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportState',
      '10': 'state'
    },
    {'1': 'ids', '3': 5, '4': 2, '5': 12, '10': 'ids'},
    {'1': 'support_versions', '3': 6, '4': 1, '5': 13, '10': 'supportVersions'},
    {
      '1': 'sport_target_list',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.protocol.SportTarget',
      '10': 'sportTargetList'
    },
    {
      '1': 'sport_course',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportCourse',
      '10': 'sportCourse'
    },
    {
      '1': 'wear_mode',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.protocol.WearMode',
      '10': 'wearMode'
    },
    {
      '1': 'extra_data',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportExtraData',
      '10': 'extraData'
    },
  ],
};

/// Descriptor for `SportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sportRequestDescriptor = $convert.base64Decode(
    'CgxTcG9ydFJlcXVlc3QSHAoJdGltZXN0YW1wGAEgAigNUgl0aW1lc3RhbXASLgoIdGltZXpvbm'
    'UYAiACKAsyEi5wcm90b2NvbC5UaW1lem9uZVIIdGltZXpvbmUSMgoKc3BvcnRfdHlwZRgDIAIo'
    'DjITLnByb3RvY29sLlNwb3J0VHlwZVIJc3BvcnRUeXBlEjsKD21haW5fc3BvcnRfdHlwZRgJIA'
    'EoDjITLnByb3RvY29sLlNwb3J0VHlwZVINbWFpblNwb3J0VHlwZRIqCgVzdGF0ZRgEIAIoDjIU'
    'LnByb3RvY29sLlNwb3J0U3RhdGVSBXN0YXRlEhAKA2lkcxgFIAIoDFIDaWRzEikKEHN1cHBvcn'
    'RfdmVyc2lvbnMYBiABKA1SD3N1cHBvcnRWZXJzaW9ucxJBChFzcG9ydF90YXJnZXRfbGlzdBgH'
    'IAMoCzIVLnByb3RvY29sLlNwb3J0VGFyZ2V0Ug9zcG9ydFRhcmdldExpc3QSOAoMc3BvcnRfY2'
    '91cnNlGAggASgLMhUucHJvdG9jb2wuU3BvcnRDb3Vyc2VSC3Nwb3J0Q291cnNlEi8KCXdlYXJf'
    'bW9kZRgKIAEoDjISLnByb3RvY29sLldlYXJNb2RlUgh3ZWFyTW9kZRI3CgpleHRyYV9kYXRhGA'
    'sgASgLMhgucHJvdG9jb2wuU3BvcnRFeHRyYURhdGFSCWV4dHJhRGF0YQ==');

@$core.Deprecated('Use sportResponseDescriptor instead')
const SportResponse$json = {
  '1': 'SportResponse',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportResponse.Code',
      '10': 'code'
    },
    {'1': 'ids', '3': 2, '4': 2, '5': 12, '10': 'ids'},
    {
      '1': 'sport_status',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportStatus',
      '10': 'sportStatus'
    },
    {
      '1': 'gps_accuracy',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.protocol.GpsAccuracy',
      '10': 'gpsAccuracy'
    },
    {'1': 'select_version', '3': 5, '4': 1, '5': 13, '10': 'selectVersion'},
    {
      '1': 'current_wear_mode',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.protocol.WearMode',
      '10': 'currentWearMode'
    },
    {
      '1': 'extra_data',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportExtraData',
      '10': 'extraData'
    },
  ],
  '4': [SportResponse_Code$json],
};

@$core.Deprecated('Use sportResponseDescriptor instead')
const SportResponse_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'BUSY', '2': 1},
    {'1': 'TYPE_NOT_MATCH', '2': 2},
    {'1': 'NO_PERMISSION', '2': 3},
    {'1': 'SPORT_NOT_SUPPORT', '2': 4},
    {'1': 'LACK_OF_ACCURACY', '2': 5},
    {'1': 'CHARGING', '2': 6},
    {'1': 'LOW_BATTERY', '2': 7},
    {'1': 'VERSION_NOT_SUPPORT', '2': 8},
    {'1': 'MODE_NOT_MATCH', '2': 9},
    {'1': 'UNKNOWN', '2': 10},
  ],
};

/// Descriptor for `SportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sportResponseDescriptor = $convert.base64Decode(
    'Cg1TcG9ydFJlc3BvbnNlEjAKBGNvZGUYASACKA4yHC5wcm90b2NvbC5TcG9ydFJlc3BvbnNlLk'
    'NvZGVSBGNvZGUSEAoDaWRzGAIgAigMUgNpZHMSOAoMc3BvcnRfc3RhdHVzGAMgASgLMhUucHJv'
    'dG9jb2wuU3BvcnRTdGF0dXNSC3Nwb3J0U3RhdHVzEjgKDGdwc19hY2N1cmFjeRgEIAEoDjIVLn'
    'Byb3RvY29sLkdwc0FjY3VyYWN5UgtncHNBY2N1cmFjeRIlCg5zZWxlY3RfdmVyc2lvbhgFIAEo'
    'DVINc2VsZWN0VmVyc2lvbhI+ChFjdXJyZW50X3dlYXJfbW9kZRgGIAEoDjISLnByb3RvY29sLl'
    'dlYXJNb2RlUg9jdXJyZW50V2Vhck1vZGUSNwoKZXh0cmFfZGF0YRgHIAEoCzIYLnByb3RvY29s'
    'LlNwb3J0RXh0cmFEYXRhUglleHRyYURhdGEixQEKBENvZGUSBgoCT0sQABIICgRCVVNZEAESEg'
    'oOVFlQRV9OT1RfTUFUQ0gQAhIRCg1OT19QRVJNSVNTSU9OEAMSFQoRU1BPUlRfTk9UX1NVUFBP'
    'UlQQBBIUChBMQUNLX09GX0FDQ1VSQUNZEAUSDAoIQ0hBUkdJTkcQBhIPCgtMT1dfQkFUVEVSWR'
    'AHEhcKE1ZFUlNJT05fTk9UX1NVUFBPUlQQCBISCg5NT0RFX05PVF9NQVRDSBAJEgsKB1VOS05P'
    'V04QCg==');

@$core.Deprecated('Use phoneSportDataDescriptor instead')
const PhoneSportData$json = {
  '1': 'PhoneSportData',
  '2': [
    {'1': 'distance', '3': 1, '4': 2, '5': 13, '10': 'distance'},
    {'1': 'pace', '3': 2, '4': 2, '5': 13, '10': 'pace'},
    {
      '1': 'gps_accuracy',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.GpsAccuracy',
      '10': 'gpsAccuracy'
    },
  ],
};

/// Descriptor for `PhoneSportData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneSportDataDescriptor = $convert.base64Decode(
    'Cg5QaG9uZVNwb3J0RGF0YRIaCghkaXN0YW5jZRgBIAIoDVIIZGlzdGFuY2USEgoEcGFjZRgCIA'
    'IoDVIEcGFjZRI4CgxncHNfYWNjdXJhY3kYAyACKA4yFS5wcm90b2NvbC5HcHNBY2N1cmFjeVIL'
    'Z3BzQWNjdXJhY3k=');

@$core.Deprecated('Use wearSportDataDescriptor instead')
const WearSportData$json = {
  '1': 'WearSportData',
  '2': [
    {'1': 'steps', '3': 1, '4': 2, '5': 13, '10': 'steps'},
    {'1': 'calories', '3': 2, '4': 2, '5': 13, '10': 'calories'},
    {'1': 'heart_rate', '3': 3, '4': 2, '5': 13, '10': 'heartRate'},
    {'1': 'max_heart_rate', '3': 4, '4': 1, '5': 13, '10': 'maxHeartRate'},
    {'1': 'min_heart_rate', '3': 5, '4': 1, '5': 13, '10': 'minHeartRate'},
  ],
};

/// Descriptor for `WearSportData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearSportDataDescriptor = $convert.base64Decode(
    'Cg1XZWFyU3BvcnREYXRhEhQKBXN0ZXBzGAEgAigNUgVzdGVwcxIaCghjYWxvcmllcxgCIAIoDV'
    'IIY2Fsb3JpZXMSHQoKaGVhcnRfcmF0ZRgDIAIoDVIJaGVhcnRSYXRlEiQKDm1heF9oZWFydF9y'
    'YXRlGAQgASgNUgxtYXhIZWFydFJhdGUSJAoObWluX2hlYXJ0X3JhdGUYBSABKA1SDG1pbkhlYX'
    'J0UmF0ZQ==');

@$core.Deprecated('Use phoneSportDataV2DDescriptor instead')
const PhoneSportDataV2D$json = {
  '1': 'PhoneSportDataV2D',
  '2': [
    {
      '1': 'gps_accuracy',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.GpsAccuracy',
      '10': 'gpsAccuracy'
    },
    {'1': 'timestamp', '3': 2, '4': 2, '5': 13, '10': 'timestamp'},
    {'1': 'longitude', '3': 3, '4': 2, '5': 1, '10': 'longitude'},
    {'1': 'latitude', '3': 4, '4': 2, '5': 1, '10': 'latitude'},
    {'1': 'altitude', '3': 5, '4': 1, '5': 1, '10': 'altitude'},
    {'1': 'speed', '3': 6, '4': 1, '5': 2, '10': 'speed'},
    {'1': 'bearing', '3': 7, '4': 1, '5': 2, '10': 'bearing'},
    {
      '1': 'horizontal_accuracy',
      '3': 8,
      '4': 1,
      '5': 2,
      '10': 'horizontalAccuracy'
    },
    {
      '1': 'vertical_accuracy',
      '3': 9,
      '4': 1,
      '5': 2,
      '10': 'verticalAccuracy'
    },
  ],
};

/// Descriptor for `PhoneSportDataV2D`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneSportDataV2DDescriptor = $convert.base64Decode(
    'ChFQaG9uZVNwb3J0RGF0YVYyRBI4CgxncHNfYWNjdXJhY3kYASACKA4yFS5wcm90b2NvbC5HcH'
    'NBY2N1cmFjeVILZ3BzQWNjdXJhY3kSHAoJdGltZXN0YW1wGAIgAigNUgl0aW1lc3RhbXASHAoJ'
    'bG9uZ2l0dWRlGAMgAigBUglsb25naXR1ZGUSGgoIbGF0aXR1ZGUYBCACKAFSCGxhdGl0dWRlEh'
    'oKCGFsdGl0dWRlGAUgASgBUghhbHRpdHVkZRIUCgVzcGVlZBgGIAEoAlIFc3BlZWQSGAoHYmVh'
    'cmluZxgHIAEoAlIHYmVhcmluZxIvChNob3Jpem9udGFsX2FjY3VyYWN5GAggASgCUhJob3Jpem'
    '9udGFsQWNjdXJhY3kSKwoRdmVydGljYWxfYWNjdXJhY3kYCSABKAJSEHZlcnRpY2FsQWNjdXJh'
    'Y3k=');

@$core.Deprecated('Use phoneSportDataV2ADescriptor instead')
const PhoneSportDataV2A$json = {
  '1': 'PhoneSportDataV2A',
  '2': [
    {'1': 'duration', '3': 1, '4': 2, '5': 13, '10': 'duration'},
    {'1': 'heart_rate', '3': 2, '4': 2, '5': 13, '10': 'heartRate'},
    {'1': 'calories', '3': 3, '4': 2, '5': 13, '10': 'calories'},
    {'1': 'distance', '3': 4, '4': 1, '5': 13, '10': 'distance'},
    {'1': 'current_pace', '3': 5, '4': 1, '5': 13, '10': 'currentPace'},
    {'1': 'average_pace', '3': 6, '4': 1, '5': 13, '10': 'averagePace'},
    {'1': 'steps', '3': 7, '4': 1, '5': 13, '10': 'steps'},
    {'1': 'stride', '3': 8, '4': 1, '5': 13, '10': 'stride'},
    {'1': 'stride_frequency', '3': 9, '4': 1, '5': 13, '10': 'strideFrequency'},
    {'1': 'rise', '3': 10, '4': 1, '5': 2, '10': 'rise'},
    {'1': 'decline', '3': 11, '4': 1, '5': 2, '10': 'decline'},
    {
      '1': 'reminder_kilometre_duration',
      '3': 12,
      '4': 1,
      '5': 13,
      '10': 'reminderKilometreDuration'
    },
    {
      '1': 'reminder_kilometre_pace',
      '3': 13,
      '4': 1,
      '5': 13,
      '10': 'reminderKilometrePace'
    },
    {'1': 'reminder_pace', '3': 14, '4': 1, '5': 13, '10': 'reminderPace'},
    {
      '1': 'reminder_heart_rate',
      '3': 15,
      '4': 1,
      '5': 13,
      '10': 'reminderHeartRate'
    },
    {
      '1': 'target_type',
      '3': 16,
      '4': 1,
      '5': 14,
      '6': '.protocol.SportTargetType',
      '10': 'targetType'
    },
    {'1': 'target_value', '3': 17, '4': 1, '5': 13, '10': 'targetValue'},
    {'1': 'current_value', '3': 18, '4': 1, '5': 13, '10': 'currentValue'},
    {
      '1': 'heart_rate_section',
      '3': 19,
      '4': 1,
      '5': 14,
      '6': '.protocol.HeartRateSection',
      '10': 'heartRateSection'
    },
  ],
};

/// Descriptor for `PhoneSportDataV2A`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneSportDataV2ADescriptor = $convert.base64Decode(
    'ChFQaG9uZVNwb3J0RGF0YVYyQRIaCghkdXJhdGlvbhgBIAIoDVIIZHVyYXRpb24SHQoKaGVhcn'
    'RfcmF0ZRgCIAIoDVIJaGVhcnRSYXRlEhoKCGNhbG9yaWVzGAMgAigNUghjYWxvcmllcxIaCghk'
    'aXN0YW5jZRgEIAEoDVIIZGlzdGFuY2USIQoMY3VycmVudF9wYWNlGAUgASgNUgtjdXJyZW50UG'
    'FjZRIhCgxhdmVyYWdlX3BhY2UYBiABKA1SC2F2ZXJhZ2VQYWNlEhQKBXN0ZXBzGAcgASgNUgVz'
    'dGVwcxIWCgZzdHJpZGUYCCABKA1SBnN0cmlkZRIpChBzdHJpZGVfZnJlcXVlbmN5GAkgASgNUg'
    '9zdHJpZGVGcmVxdWVuY3kSEgoEcmlzZRgKIAEoAlIEcmlzZRIYCgdkZWNsaW5lGAsgASgCUgdk'
    'ZWNsaW5lEj4KG3JlbWluZGVyX2tpbG9tZXRyZV9kdXJhdGlvbhgMIAEoDVIZcmVtaW5kZXJLaW'
    'xvbWV0cmVEdXJhdGlvbhI2ChdyZW1pbmRlcl9raWxvbWV0cmVfcGFjZRgNIAEoDVIVcmVtaW5k'
    'ZXJLaWxvbWV0cmVQYWNlEiMKDXJlbWluZGVyX3BhY2UYDiABKA1SDHJlbWluZGVyUGFjZRIuCh'
    'NyZW1pbmRlcl9oZWFydF9yYXRlGA8gASgNUhFyZW1pbmRlckhlYXJ0UmF0ZRI6Cgt0YXJnZXRf'
    'dHlwZRgQIAEoDjIZLnByb3RvY29sLlNwb3J0VGFyZ2V0VHlwZVIKdGFyZ2V0VHlwZRIhCgx0YX'
    'JnZXRfdmFsdWUYESABKA1SC3RhcmdldFZhbHVlEiMKDWN1cnJlbnRfdmFsdWUYEiABKA1SDGN1'
    'cnJlbnRWYWx1ZRJIChJoZWFydF9yYXRlX3NlY3Rpb24YEyABKA4yGi5wcm90b2NvbC5IZWFydF'
    'JhdGVTZWN0aW9uUhBoZWFydFJhdGVTZWN0aW9u');

@$core.Deprecated('Use wearSportDataV2ADescriptor instead')
const WearSportDataV2A$json = {
  '1': 'WearSportDataV2A',
  '2': [
    {'1': 'heart_rate', '3': 1, '4': 2, '5': 13, '10': 'heartRate'},
    {'1': 'calories', '3': 2, '4': 2, '5': 13, '10': 'calories'},
    {'1': 'steps', '3': 3, '4': 1, '5': 13, '10': 'steps'},
    {'1': 'distance', '3': 4, '4': 1, '5': 13, '10': 'distance'},
    {
      '1': 'error_state',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.WearSportDataV2A.ErrorState',
      '10': 'errorState'
    },
    {'1': 'stride', '3': 6, '4': 1, '5': 13, '10': 'stride'},
    {'1': 'revolution_count', '3': 7, '4': 1, '5': 13, '10': 'revolutionCount'},
    {'1': 'frequency', '3': 8, '4': 1, '5': 13, '10': 'frequency'},
    {'1': 'run_style', '3': 9, '4': 1, '5': 13, '10': 'runStyle'},
    {'1': 'impact', '3': 10, '4': 1, '5': 13, '10': 'impact'},
    {'1': 'on_ground', '3': 11, '4': 1, '5': 13, '10': 'onGround'},
    {'1': 'off_ground', '3': 12, '4': 1, '5': 13, '10': 'offGround'},
    {'1': 'on_off_ratio', '3': 13, '4': 1, '5': 13, '10': 'onOffRatio'},
    {'1': 'current_pace', '3': 14, '4': 1, '5': 13, '10': 'currentPace'},
    {'1': 'current_speed', '3': 15, '4': 1, '5': 2, '10': 'currentSpeed'},
    {
      '1': 'vertical_stride_ratio',
      '3': 16,
      '4': 1,
      '5': 13,
      '10': 'verticalStrideRatio'
    },
    {
      '1': 'vertical_amplitude',
      '3': 17,
      '4': 1,
      '5': 13,
      '10': 'verticalAmplitude'
    },
  ],
  '3': [WearSportDataV2A_ErrorState$json],
};

@$core.Deprecated('Use wearSportDataV2ADescriptor instead')
const WearSportDataV2A_ErrorState$json = {
  '1': 'ErrorState',
  '2': [
    {'1': 'mode_changed', '3': 1, '4': 1, '5': 8, '10': 'modeChanged'},
    {'1': 'low_battery', '3': 2, '4': 1, '5': 13, '10': 'lowBattery'},
  ],
};

/// Descriptor for `WearSportDataV2A`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearSportDataV2ADescriptor = $convert.base64Decode(
    'ChBXZWFyU3BvcnREYXRhVjJBEh0KCmhlYXJ0X3JhdGUYASACKA1SCWhlYXJ0UmF0ZRIaCghjYW'
    'xvcmllcxgCIAIoDVIIY2Fsb3JpZXMSFAoFc3RlcHMYAyABKA1SBXN0ZXBzEhoKCGRpc3RhbmNl'
    'GAQgASgNUghkaXN0YW5jZRJGCgtlcnJvcl9zdGF0ZRgFIAEoCzIlLnByb3RvY29sLldlYXJTcG'
    '9ydERhdGFWMkEuRXJyb3JTdGF0ZVIKZXJyb3JTdGF0ZRIWCgZzdHJpZGUYBiABKA1SBnN0cmlk'
    'ZRIpChByZXZvbHV0aW9uX2NvdW50GAcgASgNUg9yZXZvbHV0aW9uQ291bnQSHAoJZnJlcXVlbm'
    'N5GAggASgNUglmcmVxdWVuY3kSGwoJcnVuX3N0eWxlGAkgASgNUghydW5TdHlsZRIWCgZpbXBh'
    'Y3QYCiABKA1SBmltcGFjdBIbCglvbl9ncm91bmQYCyABKA1SCG9uR3JvdW5kEh0KCm9mZl9ncm'
    '91bmQYDCABKA1SCW9mZkdyb3VuZBIgCgxvbl9vZmZfcmF0aW8YDSABKA1SCm9uT2ZmUmF0aW8S'
    'IQoMY3VycmVudF9wYWNlGA4gASgNUgtjdXJyZW50UGFjZRIjCg1jdXJyZW50X3NwZWVkGA8gAS'
    'gCUgxjdXJyZW50U3BlZWQSMgoVdmVydGljYWxfc3RyaWRlX3JhdGlvGBAgASgNUhN2ZXJ0aWNh'
    'bFN0cmlkZVJhdGlvEi0KEnZlcnRpY2FsX2FtcGxpdHVkZRgRIAEoDVIRdmVydGljYWxBbXBsaX'
    'R1ZGUaUAoKRXJyb3JTdGF0ZRIhCgxtb2RlX2NoYW5nZWQYASABKAhSC21vZGVDaGFuZ2VkEh8K'
    'C2xvd19iYXR0ZXJ5GAIgASgNUgpsb3dCYXR0ZXJ5');

@$core.Deprecated('Use gYMSettingDescriptor instead')
const GYMSetting$json = {
  '1': 'GYMSetting',
  '2': [
    {
      '1': 'key',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.GYMSetting.Key',
      '10': 'key'
    },
    {'1': 'value', '3': 2, '4': 2, '5': 17, '10': 'value'},
  ],
  '3': [GYMSetting_List$json],
  '4': [GYMSetting_Key$json],
};

@$core.Deprecated('Use gYMSettingDescriptor instead')
const GYMSetting_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.GYMSetting',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use gYMSettingDescriptor instead')
const GYMSetting_Key$json = {
  '1': 'Key',
  '2': [
    {'1': 'CHILD_LOCK', '2': 0},
    {'1': 'SAFETY_LOCK', '2': 1},
    {'1': 'DEVICE_LOCK', '2': 2},
    {'1': 'DEVICE_IN_DEBUG_MODE', '2': 3},
    {'1': 'SPEED_UP_LIMIT', '2': 4},
  ],
};

/// Descriptor for `GYMSetting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gYMSettingDescriptor = $convert.base64Decode(
    'CgpHWU1TZXR0aW5nEioKA2tleRgBIAIoDjIYLnByb3RvY29sLkdZTVNldHRpbmcuS2V5UgNrZX'
    'kSFAoFdmFsdWUYAiACKBFSBXZhbHVlGjAKBExpc3QSKAoEbGlzdBgBIAMoCzIULnByb3RvY29s'
    'LkdZTVNldHRpbmdSBGxpc3QiZQoDS2V5Eg4KCkNISUxEX0xPQ0sQABIPCgtTQUZFVFlfTE9DSx'
    'ABEg8KC0RFVklDRV9MT0NLEAISGAoUREVWSUNFX0lOX0RFQlVHX01PREUQAxISCg5TUEVFRF9V'
    'UF9MSU1JVBAE');

@$core.Deprecated('Use gYMRequestDescriptor instead')
const GYMRequest$json = {
  '1': 'GYMRequest',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 13, '10': 'timestamp'},
    {
      '1': 'timezone',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.Timezone',
      '10': 'timezone'
    },
    {
      '1': 'sport_type',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'sportType'
    },
    {
      '1': 'main_sport_type',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'mainSportType'
    },
    {
      '1': 'state',
      '3': 4,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportState',
      '10': 'state'
    },
    {
      '1': 'sport_target_list',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.protocol.SportTarget',
      '10': 'sportTargetList'
    },
    {
      '1': 'sport_course',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportCourse',
      '10': 'sportCourse'
    },
    {'1': 'gym_capability', '3': 7, '4': 1, '5': 13, '10': 'gymCapability'},
    {'1': 'ids', '3': 8, '4': 2, '5': 12, '10': 'ids'},
  ],
};

/// Descriptor for `GYMRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gYMRequestDescriptor = $convert.base64Decode(
    'CgpHWU1SZXF1ZXN0EhwKCXRpbWVzdGFtcBgBIAIoDVIJdGltZXN0YW1wEi4KCHRpbWV6b25lGA'
    'IgAigLMhIucHJvdG9jb2wuVGltZXpvbmVSCHRpbWV6b25lEjIKCnNwb3J0X3R5cGUYAyACKA4y'
    'Ey5wcm90b2NvbC5TcG9ydFR5cGVSCXNwb3J0VHlwZRI7Cg9tYWluX3Nwb3J0X3R5cGUYCSABKA'
    '4yEy5wcm90b2NvbC5TcG9ydFR5cGVSDW1haW5TcG9ydFR5cGUSKgoFc3RhdGUYBCACKA4yFC5w'
    'cm90b2NvbC5TcG9ydFN0YXRlUgVzdGF0ZRJBChFzcG9ydF90YXJnZXRfbGlzdBgFIAMoCzIVLn'
    'Byb3RvY29sLlNwb3J0VGFyZ2V0Ug9zcG9ydFRhcmdldExpc3QSOAoMc3BvcnRfY291cnNlGAYg'
    'ASgLMhUucHJvdG9jb2wuU3BvcnRDb3Vyc2VSC3Nwb3J0Q291cnNlEiUKDmd5bV9jYXBhYmlsaX'
    'R5GAcgASgNUg1neW1DYXBhYmlsaXR5EhAKA2lkcxgIIAIoDFIDaWRz');

@$core.Deprecated('Use gYMResponseDescriptor instead')
const GYMResponse$json = {
  '1': 'GYMResponse',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.GYMResponse.Code',
      '10': 'code'
    },
    {'1': 'gym_capability', '3': 2, '4': 1, '5': 13, '10': 'gymCapability'},
    {'1': 'ids', '3': 3, '4': 2, '5': 12, '10': 'ids'},
    {
      '1': 'sport_status',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportStatus',
      '10': 'sportStatus'
    },
  ],
  '4': [GYMResponse_Code$json],
};

@$core.Deprecated('Use gYMResponseDescriptor instead')
const GYMResponse_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'BUSY', '2': 1},
    {'1': 'TYPE_NOT_MATCH', '2': 2},
    {'1': 'SPORT_NOT_SUPPORT', '2': 3},
    {'1': 'LOW_BATTERY', '2': 4},
    {'1': 'CHILD_LOCK', '2': 5},
    {'1': 'SAFETY_LOCK', '2': 6},
    {'1': 'DEVICE_LOCK', '2': 7},
    {'1': 'DEVICE_IN_DEBUG_MODE', '2': 8},
    {'1': 'DEVICE_IN_OTA', '2': 9},
    {'1': 'UNKNOWN', '2': 16},
  ],
};

/// Descriptor for `GYMResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gYMResponseDescriptor = $convert.base64Decode(
    'CgtHWU1SZXNwb25zZRIuCgRjb2RlGAEgAigOMhoucHJvdG9jb2wuR1lNUmVzcG9uc2UuQ29kZV'
    'IEY29kZRIlCg5neW1fY2FwYWJpbGl0eRgCIAEoDVINZ3ltQ2FwYWJpbGl0eRIQCgNpZHMYAyAC'
    'KAxSA2lkcxI4CgxzcG9ydF9zdGF0dXMYBCABKAsyFS5wcm90b2NvbC5TcG9ydFN0YXR1c1ILc3'
    'BvcnRTdGF0dXMiwAEKBENvZGUSBgoCT0sQABIICgRCVVNZEAESEgoOVFlQRV9OT1RfTUFUQ0gQ'
    'AhIVChFTUE9SVF9OT1RfU1VQUE9SVBADEg8KC0xPV19CQVRURVJZEAQSDgoKQ0hJTERfTE9DSx'
    'AFEg8KC1NBRkVUWV9MT0NLEAYSDwoLREVWSUNFX0xPQ0sQBxIYChRERVZJQ0VfSU5fREVCVUdf'
    'TU9ERRAIEhEKDURFVklDRV9JTl9PVEEQCRILCgdVTktOT1dOEBA=');

@$core.Deprecated('Use gYMAssistDescriptor instead')
const GYMAssist$json = {
  '1': 'GYMAssist',
  '2': [
    {'1': 'heart_rate', '3': 1, '4': 1, '5': 13, '10': 'heartRate'},
    {'1': 'adjust_speed', '3': 2, '4': 1, '5': 2, '10': 'adjustSpeed'},
    {'1': 'adjust_pace', '3': 3, '4': 1, '5': 13, '10': 'adjustPace'},
    {
      '1': 'adjust_resistance_level',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'adjustResistanceLevel'
    },
  ],
};

/// Descriptor for `GYMAssist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gYMAssistDescriptor = $convert.base64Decode(
    'CglHWU1Bc3Npc3QSHQoKaGVhcnRfcmF0ZRgBIAEoDVIJaGVhcnRSYXRlEiEKDGFkanVzdF9zcG'
    'VlZBgCIAEoAlILYWRqdXN0U3BlZWQSHwoLYWRqdXN0X3BhY2UYAyABKA1SCmFkanVzdFBhY2US'
    'NgoXYWRqdXN0X3Jlc2lzdGFuY2VfbGV2ZWwYBCABKA1SFWFkanVzdFJlc2lzdGFuY2VMZXZlbA'
    '==');

@$core.Deprecated('Use gYMDataDescriptor instead')
const GYMData$json = {
  '1': 'GYMData',
  '2': [
    {'1': 'duration', '3': 1, '4': 2, '5': 13, '10': 'duration'},
    {'1': 'calories', '3': 2, '4': 1, '5': 13, '10': 'calories'},
    {'1': 'heart_rate', '3': 3, '4': 1, '5': 13, '10': 'heartRate'},
    {'1': 'distance', '3': 4, '4': 1, '5': 13, '10': 'distance'},
    {'1': 'steps', '3': 5, '4': 1, '5': 13, '10': 'steps'},
    {'1': 'step_frequency', '3': 6, '4': 1, '5': 13, '10': 'stepFrequency'},
    {'1': 'current_pace', '3': 7, '4': 1, '5': 13, '10': 'currentPace'},
    {'1': 'speed', '3': 8, '4': 1, '5': 2, '10': 'speed'},
    {'1': 'current_rpm', '3': 9, '4': 1, '5': 13, '10': 'currentRpm'},
    {
      '1': 'revolution_count',
      '3': 10,
      '4': 1,
      '5': 13,
      '10': 'revolutionCount'
    },
    {'1': 'current_power', '3': 11, '4': 1, '5': 13, '10': 'currentPower'},
    {
      '1': 'current_resistance_level',
      '3': 12,
      '4': 1,
      '5': 13,
      '10': 'currentResistanceLevel'
    },
    {'1': 'jump_count', '3': 13, '4': 1, '5': 13, '10': 'jumpCount'},
    {'1': 'jump_height', '3': 14, '4': 1, '5': 13, '10': 'jumpHeight'},
    {'1': 'stumble_count', '3': 15, '4': 1, '5': 13, '10': 'stumbleCount'},
  ],
};

/// Descriptor for `GYMData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gYMDataDescriptor = $convert.base64Decode(
    'CgdHWU1EYXRhEhoKCGR1cmF0aW9uGAEgAigNUghkdXJhdGlvbhIaCghjYWxvcmllcxgCIAEoDV'
    'IIY2Fsb3JpZXMSHQoKaGVhcnRfcmF0ZRgDIAEoDVIJaGVhcnRSYXRlEhoKCGRpc3RhbmNlGAQg'
    'ASgNUghkaXN0YW5jZRIUCgVzdGVwcxgFIAEoDVIFc3RlcHMSJQoOc3RlcF9mcmVxdWVuY3kYBi'
    'ABKA1SDXN0ZXBGcmVxdWVuY3kSIQoMY3VycmVudF9wYWNlGAcgASgNUgtjdXJyZW50UGFjZRIU'
    'CgVzcGVlZBgIIAEoAlIFc3BlZWQSHwoLY3VycmVudF9ycG0YCSABKA1SCmN1cnJlbnRScG0SKQ'
    'oQcmV2b2x1dGlvbl9jb3VudBgKIAEoDVIPcmV2b2x1dGlvbkNvdW50EiMKDWN1cnJlbnRfcG93'
    'ZXIYCyABKA1SDGN1cnJlbnRQb3dlchI4ChhjdXJyZW50X3Jlc2lzdGFuY2VfbGV2ZWwYDCABKA'
    '1SFmN1cnJlbnRSZXNpc3RhbmNlTGV2ZWwSHQoKanVtcF9jb3VudBgNIAEoDVIJanVtcENvdW50'
    'Eh8KC2p1bXBfaGVpZ2h0GA4gASgNUgpqdW1wSGVpZ2h0EiMKDXN0dW1ibGVfY291bnQYDyABKA'
    '1SDHN0dW1ibGVDb3VudA==');

@$core.Deprecated('Use eCGRequestDescriptor instead')
const ECGRequest$json = {
  '1': 'ECGRequest',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ECGRequest.Type',
      '10': 'type'
    },
    {
      '1': 'state',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.ECGRequest.State',
      '10': 'state'
    },
    {
      '1': 'expected_duration',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'expectedDuration'
    },
  ],
  '4': [ECGRequest_Type$json, ECGRequest_State$json],
};

@$core.Deprecated('Use eCGRequestDescriptor instead')
const ECGRequest_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'HANDHELD', '2': 0},
    {'1': 'FITTING', '2': 1},
  ],
};

@$core.Deprecated('Use eCGRequestDescriptor instead')
const ECGRequest_State$json = {
  '1': 'State',
  '2': [
    {'1': 'START', '2': 0},
    {'1': 'STOP', '2': 1},
  ],
};

/// Descriptor for `ECGRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eCGRequestDescriptor = $convert.base64Decode(
    'CgpFQ0dSZXF1ZXN0Ei0KBHR5cGUYASACKA4yGS5wcm90b2NvbC5FQ0dSZXF1ZXN0LlR5cGVSBH'
    'R5cGUSMAoFc3RhdGUYAiACKA4yGi5wcm90b2NvbC5FQ0dSZXF1ZXN0LlN0YXRlUgVzdGF0ZRIr'
    'ChFleHBlY3RlZF9kdXJhdGlvbhgDIAEoDVIQZXhwZWN0ZWREdXJhdGlvbiIhCgRUeXBlEgwKCE'
    'hBTkRIRUxEEAASCwoHRklUVElORxABIhwKBVN0YXRlEgkKBVNUQVJUEAASCAoEU1RPUBAB');

@$core.Deprecated('Use eCGResponseDescriptor instead')
const ECGResponse$json = {
  '1': 'ECGResponse',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ECGResponse.Code',
      '10': 'code'
    },
  ],
  '4': [ECGResponse_Code$json],
};

@$core.Deprecated('Use eCGResponseDescriptor instead')
const ECGResponse_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'READY', '2': 0},
    {'1': 'BUSY', '2': 1},
    {'1': 'FALL_OFF', '2': 2},
    {'1': 'IN_SPORT', '2': 3},
    {'1': 'CHARGING', '2': 4},
    {'1': 'FAIL', '2': 10},
  ],
};

/// Descriptor for `ECGResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eCGResponseDescriptor = $convert.base64Decode(
    'CgtFQ0dSZXNwb25zZRIuCgRjb2RlGAEgAigOMhoucHJvdG9jb2wuRUNHUmVzcG9uc2UuQ29kZV'
    'IEY29kZSJPCgRDb2RlEgkKBVJFQURZEAASCAoEQlVTWRABEgwKCEZBTExfT0ZGEAISDAoISU5f'
    'U1BPUlQQAxIMCghDSEFSR0lORxAEEggKBEZBSUwQCg==');

@$core.Deprecated('Use eCGDataDescriptor instead')
const ECGData$json = {
  '1': 'ECGData',
  '2': [
    {'1': 'sampling_data', '3': 1, '4': 2, '5': 12, '10': 'samplingData'},
    {'1': 'heart_rate', '3': 2, '4': 1, '5': 13, '10': 'heartRate'},
  ],
};

/// Descriptor for `ECGData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eCGDataDescriptor = $convert.base64Decode(
    'CgdFQ0dEYXRhEiMKDXNhbXBsaW5nX2RhdGEYASACKAxSDHNhbXBsaW5nRGF0YRIdCgpoZWFydF'
    '9yYXRlGAIgASgNUgloZWFydFJhdGU=');

@$core.Deprecated('Use eCGStatusDescriptor instead')
const ECGStatus$json = {
  '1': 'ECGStatus',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ECGStatus.Status',
      '10': 'status'
    },
  ],
  '4': [ECGStatus_Status$json],
};

@$core.Deprecated('Use eCGStatusDescriptor instead')
const ECGStatus_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'FALL_OFF', '2': 0},
    {'1': 'WEAR_ON', '2': 1},
  ],
};

/// Descriptor for `ECGStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eCGStatusDescriptor = $convert.base64Decode(
    'CglFQ0dTdGF0dXMSMgoGc3RhdHVzGAEgAigOMhoucHJvdG9jb2wuRUNHU3RhdHVzLlN0YXR1c1'
    'IGc3RhdHVzIiMKBlN0YXR1cxIMCghGQUxMX09GRhAAEgsKB1dFQVJfT04QAQ==');

@$core.Deprecated('Use womenHealthDescriptor instead')
const WomenHealth$json = {
  '1': 'WomenHealth',
  '2': [
    {'1': 'enabled', '3': 1, '4': 2, '5': 8, '10': 'enabled'},
    {'1': 'forcast_on', '3': 2, '4': 1, '5': 8, '10': 'forcastOn'},
    {
      '1': 'reminder_list',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.WomenHealth.Reminder.List',
      '10': 'reminderList'
    },
    {
      '1': 'data_list',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.WomenHealth.Data.List',
      '10': 'dataList'
    },
    {
      '1': 'menstruation_days',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'menstruationDays'
    },
    {
      '1': 'menstruation_peroid',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'menstruationPeroid'
    },
    {'1': 'init_timestamp', '3': 7, '4': 1, '5': 13, '10': 'initTimestamp'},
    {
      '1': 'sections',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.WomenHealth.Section.List',
      '10': 'sections'
    },
  ],
  '3': [
    WomenHealth_Reminder$json,
    WomenHealth_Data$json,
    WomenHealth_Section$json
  ],
  '4': [WomenHealth_Type$json],
};

@$core.Deprecated('Use womenHealthDescriptor instead')
const WomenHealth_Reminder$json = {
  '1': 'Reminder',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.WomenHealth.Type',
      '10': 'type'
    },
    {'1': 'advanced_days', '3': 2, '4': 2, '5': 13, '10': 'advancedDays'},
  ],
  '3': [WomenHealth_Reminder_List$json],
};

@$core.Deprecated('Use womenHealthDescriptor instead')
const WomenHealth_Reminder_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WomenHealth.Reminder',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use womenHealthDescriptor instead')
const WomenHealth_Data$json = {
  '1': 'Data',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.WomenHealth.Type',
      '10': 'type'
    },
    {'1': 'forcast', '3': 2, '4': 2, '5': 8, '10': 'forcast'},
  ],
  '3': [WomenHealth_Data_List$json],
};

@$core.Deprecated('Use womenHealthDescriptor instead')
const WomenHealth_Data_List$json = {
  '1': 'List',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 13, '10': 'timestamp'},
    {
      '1': 'timezone',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.Timezone',
      '10': 'timezone'
    },
    {
      '1': 'list',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.protocol.WomenHealth.Data',
      '10': 'list'
    },
    {'1': 'last_timestamp', '3': 4, '4': 1, '5': 13, '10': 'lastTimestamp'},
    {'1': 'last_days', '3': 5, '4': 1, '5': 13, '10': 'lastDays'},
    {'1': 'next_timestamp', '3': 6, '4': 1, '5': 13, '10': 'nextTimestamp'},
    {
      '1': 'next_type',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.protocol.WomenHealth.Type',
      '10': 'nextType'
    },
  ],
};

@$core.Deprecated('Use womenHealthDescriptor instead')
const WomenHealth_Section$json = {
  '1': 'Section',
  '2': [
    {'1': 'start_timestamp', '3': 1, '4': 2, '5': 13, '10': 'startTimestamp'},
    {'1': 'end_timestamp', '3': 2, '4': 2, '5': 13, '10': 'endTimestamp'},
    {'1': 'update_timestamp', '3': 3, '4': 2, '5': 13, '10': 'updateTimestamp'},
    {'1': 'is_deleted', '3': 4, '4': 1, '5': 8, '10': 'isDeleted'},
  ],
  '3': [WomenHealth_Section_List$json],
};

@$core.Deprecated('Use womenHealthDescriptor instead')
const WomenHealth_Section_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WomenHealth.Section',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use womenHealthDescriptor instead')
const WomenHealth_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'NORMAL', '2': 0},
    {'1': 'MENSTRUATION', '2': 1},
    {'1': 'OVULATION', '2': 2},
    {'1': 'EASY_PREGNANCY', '2': 3},
  ],
};

/// Descriptor for `WomenHealth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List womenHealthDescriptor = $convert.base64Decode(
    'CgtXb21lbkhlYWx0aBIYCgdlbmFibGVkGAEgAigIUgdlbmFibGVkEh0KCmZvcmNhc3Rfb24YAi'
    'ABKAhSCWZvcmNhc3RPbhJICg1yZW1pbmRlcl9saXN0GAMgASgLMiMucHJvdG9jb2wuV29tZW5I'
    'ZWFsdGguUmVtaW5kZXIuTGlzdFIMcmVtaW5kZXJMaXN0EjwKCWRhdGFfbGlzdBgEIAEoCzIfLn'
    'Byb3RvY29sLldvbWVuSGVhbHRoLkRhdGEuTGlzdFIIZGF0YUxpc3QSKwoRbWVuc3RydWF0aW9u'
    'X2RheXMYBSABKA1SEG1lbnN0cnVhdGlvbkRheXMSLwoTbWVuc3RydWF0aW9uX3Blcm9pZBgGIA'
    'EoDVISbWVuc3RydWF0aW9uUGVyb2lkEiUKDmluaXRfdGltZXN0YW1wGAcgASgNUg1pbml0VGlt'
    'ZXN0YW1wEj4KCHNlY3Rpb25zGAggASgLMiIucHJvdG9jb2wuV29tZW5IZWFsdGguU2VjdGlvbi'
    '5MaXN0UghzZWN0aW9ucxqbAQoIUmVtaW5kZXISLgoEdHlwZRgBIAIoDjIaLnByb3RvY29sLldv'
    'bWVuSGVhbHRoLlR5cGVSBHR5cGUSIwoNYWR2YW5jZWRfZGF5cxgCIAIoDVIMYWR2YW5jZWREYX'
    'lzGjoKBExpc3QSMgoEbGlzdBgBIAMoCzIeLnByb3RvY29sLldvbWVuSGVhbHRoLlJlbWluZGVy'
    'UgRsaXN0GvsCCgREYXRhEi4KBHR5cGUYASACKA4yGi5wcm90b2NvbC5Xb21lbkhlYWx0aC5UeX'
    'BlUgR0eXBlEhgKB2ZvcmNhc3QYAiACKAhSB2ZvcmNhc3QaqAIKBExpc3QSHAoJdGltZXN0YW1w'
    'GAEgAigNUgl0aW1lc3RhbXASLgoIdGltZXpvbmUYAiACKAsyEi5wcm90b2NvbC5UaW1lem9uZV'
    'IIdGltZXpvbmUSLgoEbGlzdBgDIAMoCzIaLnByb3RvY29sLldvbWVuSGVhbHRoLkRhdGFSBGxp'
    'c3QSJQoObGFzdF90aW1lc3RhbXAYBCABKA1SDWxhc3RUaW1lc3RhbXASGwoJbGFzdF9kYXlzGA'
    'UgASgNUghsYXN0RGF5cxIlCg5uZXh0X3RpbWVzdGFtcBgGIAEoDVINbmV4dFRpbWVzdGFtcBI3'
    'CgluZXh0X3R5cGUYByABKA4yGi5wcm90b2NvbC5Xb21lbkhlYWx0aC5UeXBlUghuZXh0VHlwZR'
    'rcAQoHU2VjdGlvbhInCg9zdGFydF90aW1lc3RhbXAYASACKA1SDnN0YXJ0VGltZXN0YW1wEiMK'
    'DWVuZF90aW1lc3RhbXAYAiACKA1SDGVuZFRpbWVzdGFtcBIpChB1cGRhdGVfdGltZXN0YW1wGA'
    'MgAigNUg91cGRhdGVUaW1lc3RhbXASHQoKaXNfZGVsZXRlZBgEIAEoCFIJaXNEZWxldGVkGjkK'
    'BExpc3QSMQoEbGlzdBgBIAMoCzIdLnByb3RvY29sLldvbWVuSGVhbHRoLlNlY3Rpb25SBGxpc3'
    'QiRwoEVHlwZRIKCgZOT1JNQUwQABIQCgxNRU5TVFJVQVRJT04QARINCglPVlVMQVRJT04QAhIS'
    'Cg5FQVNZX1BSRUdOQU5DWRAD');

@$core.Deprecated('Use measureReminderDescriptor instead')
const MeasureReminder$json = {
  '1': 'MeasureReminder',
  '2': [
    {'1': 'enable', '3': 1, '4': 2, '5': 8, '10': 'enable'},
    {
      '1': 'category',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protocol.MeasureReminder.Category',
      '10': 'category'
    },
    {
      '1': 'clock_mode',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.protocol.ClockMode',
      '10': 'clockMode'
    },
    {'1': 'week_days', '3': 4, '4': 1, '5': 13, '10': 'weekDays'},
    {
      '1': 'times',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'times'
    },
  ],
  '4': [MeasureReminder_Category$json],
};

@$core.Deprecated('Use measureReminderDescriptor instead')
const MeasureReminder_Category$json = {
  '1': 'Category',
  '2': [
    {'1': 'NORMAL', '2': 0},
    {'1': 'MILD', '2': 1},
    {'1': 'SERIOUS', '2': 2},
    {'1': 'UNKNOWN', '2': 3},
  ],
};

/// Descriptor for `MeasureReminder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List measureReminderDescriptor = $convert.base64Decode(
    'Cg9NZWFzdXJlUmVtaW5kZXISFgoGZW5hYmxlGAEgAigIUgZlbmFibGUSPgoIY2F0ZWdvcnkYAi'
    'ABKA4yIi5wcm90b2NvbC5NZWFzdXJlUmVtaW5kZXIuQ2F0ZWdvcnlSCGNhdGVnb3J5EjIKCmNs'
    'b2NrX21vZGUYAyABKA4yEy5wcm90b2NvbC5DbG9ja01vZGVSCWNsb2NrTW9kZRIbCgl3ZWVrX2'
    'RheXMYBCABKA1SCHdlZWtEYXlzEiQKBXRpbWVzGAUgAygLMg4ucHJvdG9jb2wuVGltZVIFdGlt'
    'ZXMiOgoIQ2F0ZWdvcnkSCgoGTk9STUFMEAASCAoETUlMRBABEgsKB1NFUklPVVMQAhILCgdVTk'
    'tOT1dOEAM=');

@$core.Deprecated('Use vitalityReminderDescriptor instead')
const VitalityReminder$json = {
  '1': 'VitalityReminder',
  '2': [
    {'1': 'reach_goal', '3': 1, '4': 2, '5': 8, '10': 'reachGoal'},
    {'1': 'reach_help', '3': 2, '4': 2, '5': 8, '10': 'reachHelp'},
  ],
};

/// Descriptor for `VitalityReminder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vitalityReminderDescriptor = $convert.base64Decode(
    'ChBWaXRhbGl0eVJlbWluZGVyEh0KCnJlYWNoX2dvYWwYASACKAhSCXJlYWNoR29hbBIdCgpyZW'
    'FjaF9oZWxwGAIgAigIUglyZWFjaEhlbHA=');

@$core.Deprecated('Use activityReminderDescriptor instead')
const ActivityReminder$json = {
  '1': 'ActivityReminder',
  '2': [
    {'1': 'seven_day_stage', '3': 1, '4': 2, '5': 8, '10': 'sevenDayStage'},
    {'1': 'day_upper_limit', '3': 2, '4': 2, '5': 8, '10': 'dayUpperLimit'},
  ],
};

/// Descriptor for `ActivityReminder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityReminderDescriptor = $convert.base64Decode(
    'ChBBY3Rpdml0eVJlbWluZGVyEiYKD3NldmVuX2RheV9zdGFnZRgBIAIoCFINc2V2ZW5EYXlTdG'
    'FnZRImCg9kYXlfdXBwZXJfbGltaXQYAiACKAhSDWRheVVwcGVyTGltaXQ=');

@$core.Deprecated('Use axisSensorDescriptor instead')
const AxisSensor$json = {
  '1': 'AxisSensor',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 4, '10': 'timestamp'},
    {'1': 'x', '3': 2, '4': 2, '5': 2, '10': 'x'},
    {'1': 'y', '3': 3, '4': 2, '5': 2, '10': 'y'},
    {'1': 'z', '3': 4, '4': 2, '5': 2, '10': 'z'},
  ],
};

/// Descriptor for `AxisSensor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List axisSensorDescriptor = $convert.base64Decode(
    'CgpBeGlzU2Vuc29yEhwKCXRpbWVzdGFtcBgBIAIoBFIJdGltZXN0YW1wEgwKAXgYAiACKAJSAX'
    'gSDAoBeRgDIAIoAlIBeRIMCgF6GAQgAigCUgF6');

@$core.Deprecated('Use wearSensorDataDescriptor instead')
const WearSensorData$json = {
  '1': 'WearSensorData',
  '2': [
    {
      '1': 'accel',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AxisSensor',
      '10': 'accel'
    },
    {
      '1': 'gyro',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.AxisSensor',
      '10': 'gyro'
    },
  ],
};

/// Descriptor for `WearSensorData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearSensorDataDescriptor = $convert.base64Decode(
    'Cg5XZWFyU2Vuc29yRGF0YRIqCgVhY2NlbBgBIAMoCzIULnByb3RvY29sLkF4aXNTZW5zb3JSBW'
    'FjY2VsEigKBGd5cm8YAiADKAsyFC5wcm90b2NvbC5BeGlzU2Vuc29yUgRneXJv');

@$core.Deprecated('Use eCGActivationDescriptor instead')
const ECGActivation$json = {
  '1': 'ECGActivation',
  '2': [
    {'1': 'status', '3': 1, '4': 2, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ECGActivation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eCGActivationDescriptor = $convert
    .base64Decode('Cg1FQ0dBY3RpdmF0aW9uEhYKBnN0YXR1cxgBIAIoCFIGc3RhdHVz');

@$core.Deprecated('Use motionInteractDescriptor instead')
const MotionInteract$json = {
  '1': 'MotionInteract',
  '2': [
    {'1': 'vibrate_level', '3': 1, '4': 2, '5': 13, '10': 'vibrateLevel'},
  ],
};

/// Descriptor for `MotionInteract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List motionInteractDescriptor = $convert.base64Decode(
    'Cg5Nb3Rpb25JbnRlcmFjdBIjCg12aWJyYXRlX2xldmVsGAEgAigNUgx2aWJyYXRlTGV2ZWw=');

@$core.Deprecated('Use naviRouteDescriptor instead')
const NaviRoute$json = {
  '1': 'NaviRoute',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    {'1': 'distance', '3': 3, '4': 2, '5': 13, '10': 'distance'},
  ],
  '3': [
    NaviRoute_List$json,
    NaviRoute_AddRequest$json,
    NaviRoute_AddResponse$json,
    NaviRoute_AddResult$json,
    NaviRoute_RemoveRequest$json,
    NaviRoute_RemoveResponse$json
  ],
};

@$core.Deprecated('Use naviRouteDescriptor instead')
const NaviRoute_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.NaviRoute',
      '10': 'list'
    },
    {
      '1': 'supported_max_number',
      '3': 2,
      '4': 2,
      '5': 13,
      '10': 'supportedMaxNumber'
    },
  ],
};

@$core.Deprecated('Use naviRouteDescriptor instead')
const NaviRoute_AddRequest$json = {
  '1': 'AddRequest',
  '2': [
    {
      '1': 'navi_route',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.NaviRoute',
      '10': 'naviRoute'
    },
    {'1': 'route_size', '3': 2, '4': 2, '5': 13, '10': 'routeSize'},
  ],
};

@$core.Deprecated('Use naviRouteDescriptor instead')
const NaviRoute_AddResponse$json = {
  '1': 'AddResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {
      '1': 'prepare_status',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.PrepareStatus',
      '10': 'prepareStatus'
    },
    {
      '1': 'expected_slice_length',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'expectedSliceLength'
    },
  ],
};

@$core.Deprecated('Use naviRouteDescriptor instead')
const NaviRoute_AddResult$json = {
  '1': 'AddResult',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'code', '3': 2, '4': 2, '5': 13, '10': 'code'},
  ],
};

@$core.Deprecated('Use naviRouteDescriptor instead')
const NaviRoute_RemoveRequest$json = {
  '1': 'RemoveRequest',
  '2': [
    {'1': 'router_id_list', '3': 1, '4': 3, '5': 9, '10': 'routerIdList'},
  ],
};

@$core.Deprecated('Use naviRouteDescriptor instead')
const NaviRoute_RemoveResponse$json = {
  '1': 'RemoveResponse',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 13, '10': 'code'},
  ],
};

/// Descriptor for `NaviRoute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List naviRouteDescriptor = $convert.base64Decode(
    'CglOYXZpUm91dGUSDgoCaWQYASACKAlSAmlkEhIKBG5hbWUYAiACKAlSBG5hbWUSGgoIZGlzdG'
    'FuY2UYAyACKA1SCGRpc3RhbmNlGmEKBExpc3QSJwoEbGlzdBgBIAMoCzITLnByb3RvY29sLk5h'
    'dmlSb3V0ZVIEbGlzdBIwChRzdXBwb3J0ZWRfbWF4X251bWJlchgCIAIoDVISc3VwcG9ydGVkTW'
    'F4TnVtYmVyGl8KCkFkZFJlcXVlc3QSMgoKbmF2aV9yb3V0ZRgBIAIoCzITLnByb3RvY29sLk5h'
    'dmlSb3V0ZVIJbmF2aVJvdXRlEh0KCnJvdXRlX3NpemUYAiACKA1SCXJvdXRlU2l6ZRqRAQoLQW'
    'RkUmVzcG9uc2USDgoCaWQYASACKAlSAmlkEj4KDnByZXBhcmVfc3RhdHVzGAIgAigOMhcucHJv'
    'dG9jb2wuUHJlcGFyZVN0YXR1c1INcHJlcGFyZVN0YXR1cxIyChVleHBlY3RlZF9zbGljZV9sZW'
    '5ndGgYAyABKA1SE2V4cGVjdGVkU2xpY2VMZW5ndGgaLwoJQWRkUmVzdWx0Eg4KAmlkGAEgAigJ'
    'UgJpZBISCgRjb2RlGAIgAigNUgRjb2RlGjUKDVJlbW92ZVJlcXVlc3QSJAoOcm91dGVyX2lkX2'
    'xpc3QYASADKAlSDHJvdXRlcklkTGlzdBokCg5SZW1vdmVSZXNwb25zZRISCgRjb2RlGAEgAigN'
    'UgRjb2Rl');

@$core.Deprecated('Use sleepRegularityDescriptor instead')
const SleepRegularity$json = {
  '1': 'SleepRegularity',
  '2': [
    {'1': 'on', '3': 1, '4': 2, '5': 8, '10': 'on'},
    {'1': 'measure_period', '3': 2, '4': 2, '5': 13, '10': 'measurePeriod'},
  ],
};

/// Descriptor for `SleepRegularity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sleepRegularityDescriptor = $convert.base64Decode(
    'Cg9TbGVlcFJlZ3VsYXJpdHkSDgoCb24YASACKAhSAm9uEiUKDm1lYXN1cmVfcGVyaW9kGAIgAi'
    'gNUg1tZWFzdXJlUGVyaW9k');

@$core.Deprecated('Use sleepDisorderDescriptor instead')
const SleepDisorder$json = {
  '1': 'SleepDisorder',
  '2': [
    {'1': 'reminder', '3': 1, '4': 2, '5': 8, '10': 'reminder'},
    {
      '1': 'times',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'times'
    },
  ],
};

/// Descriptor for `SleepDisorder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sleepDisorderDescriptor = $convert.base64Decode(
    'Cg1TbGVlcERpc29yZGVyEhoKCHJlbWluZGVyGAEgAigIUghyZW1pbmRlchIkCgV0aW1lcxgCIA'
    'MoCzIOLnByb3RvY29sLlRpbWVSBXRpbWVz');

@$core.Deprecated('Use researchDescriptor instead')
const Research$json = {
  '1': 'Research',
  '3': [
    Research_App$json,
    Research_Device$json,
    Research_CalibrationRequest$json,
    Research_CalibrationResponse$json,
    Research_BpSetting$json,
    Research_BPGCalibrationRequest$json,
    Research_BPGCalibrationStatus$json
  ],
};

@$core.Deprecated('Use researchDescriptor instead')
const Research_App$json = {
  '1': 'App',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {'1': 'type', '3': 2, '4': 2, '5': 13, '10': 'type'},
    {'1': 'enable', '3': 3, '4': 2, '5': 8, '10': 'enable'},
    {'1': 'timestamp', '3': 4, '4': 2, '5': 13, '10': 'timestamp'},
  ],
  '3': [Research_App_List$json],
};

@$core.Deprecated('Use researchDescriptor instead')
const Research_App_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.Research.App',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use researchDescriptor instead')
const Research_Device$json = {
  '1': 'Device',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    {'1': 'enable', '3': 2, '4': 2, '5': 8, '10': 'enable'},
  ],
  '3': [Research_Device_List$json],
};

@$core.Deprecated('Use researchDescriptor instead')
const Research_Device_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.Research.Device',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use researchDescriptor instead')
const Research_CalibrationRequest$json = {
  '1': 'CalibrationRequest',
  '2': [
    {'1': 'research_id', '3': 1, '4': 2, '5': 13, '10': 'researchId'},
    {'1': 'type', '3': 2, '4': 2, '5': 13, '10': 'type'},
  ],
};

@$core.Deprecated('Use researchDescriptor instead')
const Research_CalibrationResponse$json = {
  '1': 'CalibrationResponse',
  '2': [
    {'1': 'research_id', '3': 1, '4': 2, '5': 13, '10': 'researchId'},
    {'1': 'code', '3': 2, '4': 2, '5': 13, '10': 'code'},
  ],
};

@$core.Deprecated('Use researchDescriptor instead')
const Research_BpSetting$json = {
  '1': 'BpSetting',
  '2': [
    {'1': 'research_id', '3': 1, '4': 2, '5': 13, '10': 'researchId'},
    {
      '1': 'cali_morning',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'caliMorning'
    },
    {
      '1': 'cali_afternoon',
      '3': 3,
      '4': 2,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'caliAfternoon'
    },
    {
      '1': 'reminder_frequence',
      '3': 4,
      '4': 2,
      '5': 13,
      '10': 'reminderFrequence'
    },
  ],
};

@$core.Deprecated('Use researchDescriptor instead')
const Research_BPGCalibrationRequest$json = {
  '1': 'BPGCalibrationRequest',
  '2': [
    {'1': 'research_id', '3': 1, '4': 2, '5': 13, '10': 'researchId'},
    {'1': 'need_calib_times', '3': 2, '4': 2, '5': 13, '10': 'needCalibTimes'},
    {
      '1': 'current_calib_times',
      '3': 3,
      '4': 2,
      '5': 13,
      '10': 'currentCalibTimes'
    },
    {'1': 'systolic_bp', '3': 4, '4': 2, '5': 13, '10': 'systolicBp'},
    {'1': 'diastolic_bp', '3': 5, '4': 2, '5': 13, '10': 'diastolicBp'},
  ],
};

@$core.Deprecated('Use researchDescriptor instead')
const Research_BPGCalibrationStatus$json = {
  '1': 'BPGCalibrationStatus',
  '2': [
    {
      '1': 'calib_success_times',
      '3': 1,
      '4': 2,
      '5': 13,
      '10': 'calibSuccessTimes'
    },
    {'1': 'calib_success_ts', '3': 2, '4': 2, '5': 13, '10': 'calibSuccessTs'},
  ],
};

/// Descriptor for `Research`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List researchDescriptor = $convert.base64Decode(
    'CghSZXNlYXJjaBqTAQoDQXBwEg4KAmlkGAEgAigNUgJpZBISCgR0eXBlGAIgAigNUgR0eXBlEh'
    'YKBmVuYWJsZRgDIAIoCFIGZW5hYmxlEhwKCXRpbWVzdGFtcBgEIAIoDVIJdGltZXN0YW1wGjIK'
    'BExpc3QSKgoEbGlzdBgBIAMoCzIWLnByb3RvY29sLlJlc2VhcmNoLkFwcFIEbGlzdBprCgZEZX'
    'ZpY2USEgoEdHlwZRgBIAIoDVIEdHlwZRIWCgZlbmFibGUYAiACKAhSBmVuYWJsZRo1CgRMaXN0'
    'Ei0KBGxpc3QYASADKAsyGS5wcm90b2NvbC5SZXNlYXJjaC5EZXZpY2VSBGxpc3QaSQoSQ2FsaW'
    'JyYXRpb25SZXF1ZXN0Eh8KC3Jlc2VhcmNoX2lkGAEgAigNUgpyZXNlYXJjaElkEhIKBHR5cGUY'
    'AiACKA1SBHR5cGUaSgoTQ2FsaWJyYXRpb25SZXNwb25zZRIfCgtyZXNlYXJjaF9pZBgBIAIoDV'
    'IKcmVzZWFyY2hJZBISCgRjb2RlGAIgAigNUgRjb2RlGsUBCglCcFNldHRpbmcSHwoLcmVzZWFy'
    'Y2hfaWQYASACKA1SCnJlc2VhcmNoSWQSMQoMY2FsaV9tb3JuaW5nGAIgAigLMg4ucHJvdG9jb2'
    'wuVGltZVILY2FsaU1vcm5pbmcSNQoOY2FsaV9hZnRlcm5vb24YAyACKAsyDi5wcm90b2NvbC5U'
    'aW1lUg1jYWxpQWZ0ZXJub29uEi0KEnJlbWluZGVyX2ZyZXF1ZW5jZRgEIAIoDVIRcmVtaW5kZX'
    'JGcmVxdWVuY2Ua1gEKFUJQR0NhbGlicmF0aW9uUmVxdWVzdBIfCgtyZXNlYXJjaF9pZBgBIAIo'
    'DVIKcmVzZWFyY2hJZBIoChBuZWVkX2NhbGliX3RpbWVzGAIgAigNUg5uZWVkQ2FsaWJUaW1lcx'
    'IuChNjdXJyZW50X2NhbGliX3RpbWVzGAMgAigNUhFjdXJyZW50Q2FsaWJUaW1lcxIfCgtzeXN0'
    'b2xpY19icBgEIAIoDVIKc3lzdG9saWNCcBIhCgxkaWFzdG9saWNfYnAYBSACKA1SC2RpYXN0b2'
    'xpY0JwGnAKFEJQR0NhbGlicmF0aW9uU3RhdHVzEi4KE2NhbGliX3N1Y2Nlc3NfdGltZXMYASAC'
    'KA1SEWNhbGliU3VjY2Vzc1RpbWVzEigKEGNhbGliX3N1Y2Nlc3NfdHMYAiACKA1SDmNhbGliU3'
    'VjY2Vzc1Rz');

@$core.Deprecated('Use phoneControlDataDescriptor instead')
const PhoneControlData$json = {
  '1': 'PhoneControlData',
  '2': [
    {'1': 'user_role', '3': 1, '4': 1, '5': 13, '10': 'userRole'},
    {'1': 'remote_control', '3': 2, '4': 1, '5': 13, '10': 'remoteControl'},
    {'1': 'vibrate_level', '3': 3, '4': 1, '5': 13, '10': 'vibrateLevel'},
  ],
};

/// Descriptor for `PhoneControlData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneControlDataDescriptor = $convert.base64Decode(
    'ChBQaG9uZUNvbnRyb2xEYXRhEhsKCXVzZXJfcm9sZRgBIAEoDVIIdXNlclJvbGUSJQoOcmVtb3'
    'RlX2NvbnRyb2wYAiABKA1SDXJlbW90ZUNvbnRyb2wSIwoNdmlicmF0ZV9sZXZlbBgDIAEoDVIM'
    'dmlicmF0ZUxldmVs');

@$core.Deprecated('Use wearControlDataDescriptor instead')
const WearControlData$json = {
  '1': 'WearControlData',
  '2': [
    {'1': 'key_event', '3': 1, '4': 1, '5': 13, '10': 'keyEvent'},
  ],
};

/// Descriptor for `WearControlData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearControlDataDescriptor = $convert.base64Decode(
    'Cg9XZWFyQ29udHJvbERhdGESGwoJa2V5X2V2ZW50GAEgASgNUghrZXlFdmVudA==');

@$core.Deprecated('Use courseDescriptor instead')
const Course$json = {
  '1': 'Course',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    {'1': 'id', '3': 2, '4': 2, '5': 4, '10': 'id'},
    {
      '1': 'detail',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Course.Detail',
      '10': 'detail'
    },
  ],
  '3': [Course_Target$json, Course_Part$json, Course_Detail$json],
};

@$core.Deprecated('Use courseDescriptor instead')
const Course_Target$json = {
  '1': 'Target',
  '2': [
    {
      '1': 'target_type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportTargetType',
      '10': 'targetType'
    },
    {'1': 'value1', '3': 2, '4': 2, '5': 13, '10': 'value1'},
    {'1': 'value2', '3': 3, '4': 1, '5': 13, '10': 'value2'},
  ],
};

@$core.Deprecated('Use courseDescriptor instead')
const Course_Part$json = {
  '1': 'Part',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    {'1': 'duration', '3': 2, '4': 2, '5': 13, '10': 'duration'},
    {
      '1': 'target',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Course.Target',
      '10': 'target'
    },
  ],
};

@$core.Deprecated('Use courseDescriptor instead')
const Course_Detail$json = {
  '1': 'Detail',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {'1': 'duration', '3': 2, '4': 1, '5': 13, '10': 'duration'},
    {'1': 'distance', '3': 3, '4': 1, '5': 13, '10': 'distance'},
    {'1': 'description', '3': 4, '4': 2, '5': 9, '10': 'description'},
    {
      '1': 'parts',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.protocol.Course.Part',
      '10': 'parts'
    },
  ],
};

/// Descriptor for `Course`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courseDescriptor = $convert.base64Decode(
    'CgZDb3Vyc2USEgoEdHlwZRgBIAIoDVIEdHlwZRIOCgJpZBgCIAIoBFICaWQSLwoGZGV0YWlsGA'
    'MgASgLMhcucHJvdG9jb2wuQ291cnNlLkRldGFpbFIGZGV0YWlsGnQKBlRhcmdldBI6Cgt0YXJn'
    'ZXRfdHlwZRgBIAIoDjIZLnByb3RvY29sLlNwb3J0VGFyZ2V0VHlwZVIKdGFyZ2V0VHlwZRIWCg'
    'Z2YWx1ZTEYAiACKA1SBnZhbHVlMRIWCgZ2YWx1ZTIYAyABKA1SBnZhbHVlMhpnCgRQYXJ0EhIK'
    'BHR5cGUYASACKA1SBHR5cGUSGgoIZHVyYXRpb24YAiACKA1SCGR1cmF0aW9uEi8KBnRhcmdldB'
    'gDIAEoCzIXLnByb3RvY29sLkNvdXJzZS5UYXJnZXRSBnRhcmdldBqjAQoGRGV0YWlsEhIKBG5h'
    'bWUYASACKAlSBG5hbWUSGgoIZHVyYXRpb24YAiABKA1SCGR1cmF0aW9uEhoKCGRpc3RhbmNlGA'
    'MgASgNUghkaXN0YW5jZRIgCgtkZXNjcmlwdGlvbhgEIAIoCVILZGVzY3JpcHRpb24SKwoFcGFy'
    'dHMYBSADKAsyFS5wcm90b2NvbC5Db3Vyc2UuUGFydFIFcGFydHM=');

@$core.Deprecated('Use trainingDescriptor instead')
const Training$json = {
  '1': 'Training',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    {'1': 'id', '3': 2, '4': 2, '5': 4, '10': 'id'},
  ],
  '3': [Training_Item$json, Training_Plan$json],
};

@$core.Deprecated('Use trainingDescriptor instead')
const Training_Item$json = {
  '1': 'Item',
  '2': [
    {
      '1': 'course',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Course',
      '10': 'course'
    },
    {'1': 'finished', '3': 2, '4': 2, '5': 8, '10': 'finished'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 13, '10': 'timestamp'},
  ],
};

@$core.Deprecated('Use trainingDescriptor instead')
const Training_Plan$json = {
  '1': 'Plan',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 13, '10': 'timestamp'},
    {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.Training.Item',
      '10': 'items'
    },
  ],
};

/// Descriptor for `Training`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trainingDescriptor = $convert.base64Decode(
    'CghUcmFpbmluZxISCgR0eXBlGAEgAigNUgR0eXBlEg4KAmlkGAIgAigEUgJpZBpqCgRJdGVtEi'
    'gKBmNvdXJzZRgBIAIoCzIQLnByb3RvY29sLkNvdXJzZVIGY291cnNlEhoKCGZpbmlzaGVkGAIg'
    'AigIUghmaW5pc2hlZBIcCgl0aW1lc3RhbXAYAyABKA1SCXRpbWVzdGFtcBpTCgRQbGFuEhwKCX'
    'RpbWVzdGFtcBgBIAIoDVIJdGltZXN0YW1wEi0KBWl0ZW1zGAIgAygLMhcucHJvdG9jb2wuVHJh'
    'aW5pbmcuSXRlbVIFaXRlbXM=');

@$core.Deprecated('Use sportExtraDataDescriptor instead')
const SportExtraData$json = {
  '1': 'SportExtraData',
  '2': [
    {'1': 'avg_pace', '3': 1, '4': 1, '5': 13, '10': 'avgPace'},
    {'1': 'max_pace', '3': 2, '4': 1, '5': 13, '10': 'maxPace'},
    {'1': 'avg_speed', '3': 3, '4': 1, '5': 2, '10': 'avgSpeed'},
    {'1': 'max_speed', '3': 4, '4': 1, '5': 2, '10': 'maxSpeed'},
    {'1': 'avg_frequency', '3': 5, '4': 1, '5': 13, '10': 'avgFrequency'},
    {'1': 'max_frequency', '3': 6, '4': 1, '5': 13, '10': 'maxFrequency'},
    {'1': 'avg_stride', '3': 7, '4': 1, '5': 13, '10': 'avgStride'},
    {'1': 'degree', '3': 8, '4': 1, '5': 5, '10': 'degree'},
    {'1': 'main_run_style', '3': 9, '4': 1, '5': 13, '10': 'mainRunStyle'},
    {'1': 'forefoot_ratio', '3': 10, '4': 1, '5': 13, '10': 'forefootRatio'},
    {'1': 'heel_ratio', '3': 11, '4': 1, '5': 13, '10': 'heelRatio'},
    {'1': 'avg_impact', '3': 12, '4': 1, '5': 13, '10': 'avgImpact'},
    {'1': 'max_impact', '3': 13, '4': 1, '5': 13, '10': 'maxImpact'},
    {'1': 'avg_on_ground', '3': 14, '4': 1, '5': 13, '10': 'avgOnGround'},
    {'1': 'min_on_ground', '3': 15, '4': 1, '5': 13, '10': 'minOnGround'},
    {'1': 'avg_off_ground', '3': 16, '4': 1, '5': 13, '10': 'avgOffGround'},
    {'1': 'max_off_ground', '3': 17, '4': 1, '5': 13, '10': 'maxOffGround'},
    {'1': 'avg_on_off_ratio', '3': 18, '4': 1, '5': 13, '10': 'avgOnOffRatio'},
    {'1': 'min_on_off_ratio', '3': 19, '4': 1, '5': 13, '10': 'minOnOffRatio'},
    {'1': 'max_on_ground', '3': 20, '4': 1, '5': 13, '10': 'maxOnGround'},
    {
      '1': 'avg_vertical_stride_ratio',
      '3': 21,
      '4': 1,
      '5': 13,
      '10': 'avgVerticalStrideRatio'
    },
    {
      '1': 'min_vertical_stride_ratio',
      '3': 22,
      '4': 1,
      '5': 13,
      '10': 'minVerticalStrideRatio'
    },
    {
      '1': 'max_vertical_stride_ratio',
      '3': 23,
      '4': 1,
      '5': 13,
      '10': 'maxVerticalStrideRatio'
    },
    {
      '1': 'avg_vertical_amplitude',
      '3': 24,
      '4': 1,
      '5': 13,
      '10': 'avgVerticalAmplitude'
    },
    {
      '1': 'min_vertical_amplitude',
      '3': 25,
      '4': 1,
      '5': 13,
      '10': 'minVerticalAmplitude'
    },
    {
      '1': 'max_vertical_amplitude',
      '3': 26,
      '4': 1,
      '5': 13,
      '10': 'maxVerticalAmplitude'
    },
  ],
};

/// Descriptor for `SportExtraData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sportExtraDataDescriptor = $convert.base64Decode(
    'Cg5TcG9ydEV4dHJhRGF0YRIZCghhdmdfcGFjZRgBIAEoDVIHYXZnUGFjZRIZCghtYXhfcGFjZR'
    'gCIAEoDVIHbWF4UGFjZRIbCglhdmdfc3BlZWQYAyABKAJSCGF2Z1NwZWVkEhsKCW1heF9zcGVl'
    'ZBgEIAEoAlIIbWF4U3BlZWQSIwoNYXZnX2ZyZXF1ZW5jeRgFIAEoDVIMYXZnRnJlcXVlbmN5Ei'
    'MKDW1heF9mcmVxdWVuY3kYBiABKA1SDG1heEZyZXF1ZW5jeRIdCgphdmdfc3RyaWRlGAcgASgN'
    'UglhdmdTdHJpZGUSFgoGZGVncmVlGAggASgFUgZkZWdyZWUSJAoObWFpbl9ydW5fc3R5bGUYCS'
    'ABKA1SDG1haW5SdW5TdHlsZRIlCg5mb3JlZm9vdF9yYXRpbxgKIAEoDVINZm9yZWZvb3RSYXRp'
    'bxIdCgpoZWVsX3JhdGlvGAsgASgNUgloZWVsUmF0aW8SHQoKYXZnX2ltcGFjdBgMIAEoDVIJYX'
    'ZnSW1wYWN0Eh0KCm1heF9pbXBhY3QYDSABKA1SCW1heEltcGFjdBIiCg1hdmdfb25fZ3JvdW5k'
    'GA4gASgNUgthdmdPbkdyb3VuZBIiCg1taW5fb25fZ3JvdW5kGA8gASgNUgttaW5Pbkdyb3VuZB'
    'IkCg5hdmdfb2ZmX2dyb3VuZBgQIAEoDVIMYXZnT2ZmR3JvdW5kEiQKDm1heF9vZmZfZ3JvdW5k'
    'GBEgASgNUgxtYXhPZmZHcm91bmQSJwoQYXZnX29uX29mZl9yYXRpbxgSIAEoDVINYXZnT25PZm'
    'ZSYXRpbxInChBtaW5fb25fb2ZmX3JhdGlvGBMgASgNUg1taW5Pbk9mZlJhdGlvEiIKDW1heF9v'
    'bl9ncm91bmQYFCABKA1SC21heE9uR3JvdW5kEjkKGWF2Z192ZXJ0aWNhbF9zdHJpZGVfcmF0aW'
    '8YFSABKA1SFmF2Z1ZlcnRpY2FsU3RyaWRlUmF0aW8SOQoZbWluX3ZlcnRpY2FsX3N0cmlkZV9y'
    'YXRpbxgWIAEoDVIWbWluVmVydGljYWxTdHJpZGVSYXRpbxI5ChltYXhfdmVydGljYWxfc3RyaW'
    'RlX3JhdGlvGBcgASgNUhZtYXhWZXJ0aWNhbFN0cmlkZVJhdGlvEjQKFmF2Z192ZXJ0aWNhbF9h'
    'bXBsaXR1ZGUYGCABKA1SFGF2Z1ZlcnRpY2FsQW1wbGl0dWRlEjQKFm1pbl92ZXJ0aWNhbF9hbX'
    'BsaXR1ZGUYGSABKA1SFG1pblZlcnRpY2FsQW1wbGl0dWRlEjQKFm1heF92ZXJ0aWNhbF9hbXBs'
    'aXR1ZGUYGiABKA1SFG1heFZlcnRpY2FsQW1wbGl0dWRl');
