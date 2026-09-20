// This is a generated file - do not edit.
//
// Generated from wear_system.proto.

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

@$core.Deprecated('Use powerModeDescriptor instead')
const PowerMode$json = {
  '1': 'PowerMode',
  '2': [
    {'1': 'PERFORMANCE', '2': 0},
    {'1': 'POWER_SAVE', '2': 1},
    {'1': 'SUPER_POWER_SAVE', '2': 2},
  ],
};

/// Descriptor for `PowerMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List powerModeDescriptor = $convert.base64Decode(
    'CglQb3dlck1vZGUSDwoLUEVSRk9STUFOQ0UQABIOCgpQT1dFUl9TQVZFEAESFAoQU1VQRVJfUE'
    '9XRVJfU0FWRRAC');

@$core.Deprecated('Use resetModeDescriptor instead')
const ResetMode$json = {
  '1': 'ResetMode',
  '2': [
    {'1': 'NO_ERASE', '2': 0},
    {'1': 'ERASE_ALL', '2': 1},
  ],
};

/// Descriptor for `ResetMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resetModeDescriptor = $convert
    .base64Decode('CglSZXNldE1vZGUSDAoITk9fRVJBU0UQABINCglFUkFTRV9BTEwQAQ==');

@$core.Deprecated('Use findModeDescriptor instead')
const FindMode$json = {
  '1': 'FindMode',
  '2': [
    {'1': 'FIND_START', '2': 0},
    {'1': 'FIND_STOP', '2': 1},
  ],
};

/// Descriptor for `FindMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List findModeDescriptor = $convert
    .base64Decode('CghGaW5kTW9kZRIOCgpGSU5EX1NUQVJUEAASDQoJRklORF9TVE9QEAE=');

@$core.Deprecated('Use timingModeDescriptor instead')
const TimingMode$json = {
  '1': 'TimingMode',
  '2': [
    {'1': 'ALL_DAY_ON', '2': 0},
    {'1': 'TIMED_ON', '2': 1},
    {'1': 'ALL_DAY_OFF', '2': 2},
    {'1': 'SMART_ON', '2': 3},
  ],
};

/// Descriptor for `TimingMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List timingModeDescriptor = $convert.base64Decode(
    'CgpUaW1pbmdNb2RlEg4KCkFMTF9EQVlfT04QABIMCghUSU1FRF9PThABEg8KC0FMTF9EQVlfT0'
    'ZGEAISDAoIU01BUlRfT04QAw==');

@$core.Deprecated('Use orderDescriptor instead')
const Order$json = {
  '1': 'Order',
  '2': [
    {'1': 'HEAD_RESIDENT', '2': 0},
    {'1': 'HIGHEST', '2': 10},
    {'1': 'LOWEST', '2': 99},
    {'1': 'RESIDENT', '2': 100},
  ],
};

/// Descriptor for `Order`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List orderDescriptor = $convert.base64Decode(
    'CgVPcmRlchIRCg1IRUFEX1JFU0lERU5UEAASCwoHSElHSEVTVBAKEgoKBkxPV0VTVBBjEgwKCF'
    'JFU0lERU5UEGQ=');

@$core.Deprecated('Use systemDescriptor instead')
const System$json = {
  '1': 'System',
  '2': [
    {
      '1': 'reset_mode',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.protocol.ResetMode',
      '9': 0,
      '10': 'resetMode'
    },
    {
      '1': 'device_status',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.DeviceStatus',
      '9': 0,
      '10': 'deviceStatus'
    },
    {
      '1': 'device_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.DeviceInfo',
      '9': 0,
      '10': 'deviceInfo'
    },
    {
      '1': 'system_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemTime',
      '9': 0,
      '10': 'systemTime'
    },
    {
      '1': 'find_mode',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.protocol.FindMode',
      '9': 0,
      '10': 'findMode'
    },
    {
      '1': 'force_upgrade',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.ForceUpgrade',
      '9': 0,
      '10': 'forceUpgrade'
    },
    {
      '1': 'wrist_screen',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.WristScreen',
      '9': 0,
      '10': 'wristScreen'
    },
    {
      '1': 'widget',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.Widget',
      '9': 0,
      '10': 'widget'
    },
    {
      '1': 'widget_list',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.Widget.List',
      '9': 0,
      '10': 'widgetList'
    },
    {
      '1': 'app_list',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.App.List',
      '9': 0,
      '10': 'appList'
    },
    {
      '1': 'timing_setting',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.TimingSetting',
      '9': 0,
      '10': 'timingSetting'
    },
    {
      '1': 'shortcut',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.Shortcut',
      '9': 0,
      '10': 'shortcut'
    },
    {
      '1': 'shortcut_list',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.Shortcut.List',
      '9': 0,
      '10': 'shortcutList'
    },
    {
      '1': 'sport_option_list',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.SportOption.List',
      '9': 0,
      '10': 'sportOptionList'
    },
    {
      '1': 'hid_status',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.HidStatus',
      '9': 0,
      '10': 'hidStatus'
    },
    {
      '1': 'prepare_ota_request',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareOta.Request',
      '9': 0,
      '10': 'prepareOtaRequest'
    },
    {
      '1': 'prepare_ota_response',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareOta.Response',
      '9': 0,
      '10': 'prepareOtaResponse'
    },
    {
      '1': 'app_layout',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.AppLayout',
      '9': 0,
      '10': 'appLayout'
    },
    {
      '1': 'lock_screen',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.LockScreen',
      '9': 0,
      '10': 'lockScreen'
    },
    {
      '1': 'language',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.protocol.Language',
      '9': 0,
      '10': 'language'
    },
    {
      '1': 'authorize_unlock_list',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.protocol.AuthorizeUnlock.List',
      '9': 0,
      '10': 'authorizeUnlockList'
    },
    {
      '1': 'authorize_unlock',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.protocol.AuthorizeUnlock',
      '9': 0,
      '10': 'authorizeUnlock'
    },
    {
      '1': 'night_mode',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.protocol.NightMode',
      '9': 0,
      '10': 'nightMode'
    },
    {
      '1': 'small_habit',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.protocol.SmallHabit',
      '9': 0,
      '10': 'smallHabit'
    },
    {
      '1': 'small_habit_list',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.protocol.SmallHabit.List',
      '9': 0,
      '10': 'smallHabitList'
    },
    {
      '1': 'small_habit_type',
      '3': 26,
      '4': 1,
      '5': 14,
      '6': '.protocol.SmallHabit.Type',
      '9': 0,
      '10': 'smallHabitType'
    },
    {
      '1': 'small_habit_type_list',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.protocol.SmallHabit.TypeList',
      '9': 0,
      '10': 'smallHabitTypeList'
    },
    {
      '1': 'widget_group_list',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.protocol.WidgetGroup.List',
      '9': 0,
      '10': 'widgetGroupList'
    },
    {
      '1': 'widget_v2_list',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.protocol.WidgetV2.List',
      '9': 0,
      '10': 'widgetV2List'
    },
    {
      '1': 'wifi_capability',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiConfig.Capability',
      '9': 0,
      '10': 'wifiCapability'
    },
    {
      '1': 'wifi_basic_info',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiConfig.BasicInfo',
      '9': 0,
      '10': 'wifiBasicInfo'
    },
    {
      '1': 'wifi_config',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiConfig',
      '9': 0,
      '10': 'wifiConfig'
    },
    {
      '1': 'wifi_config_list',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiConfig.List',
      '9': 0,
      '10': 'wifiConfigList'
    },
    {
      '1': 'system_setting_request',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.Request',
      '9': 0,
      '10': 'systemSettingRequest'
    },
    {
      '1': 'system_setting',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting',
      '9': 0,
      '10': 'systemSetting'
    },
    {
      '1': 'phone_setting_request',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneSetting.Request',
      '9': 0,
      '10': 'phoneSettingRequest'
    },
    {
      '1': 'phone_setting',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneSetting',
      '9': 0,
      '10': 'phoneSetting'
    },
    {
      '1': 'vibrator_setting',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.protocol.VibratorSetting',
      '9': 0,
      '10': 'vibratorSetting'
    },
    {
      '1': 'Vibrator_item',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.protocol.VibratorItem',
      '9': 0,
      '10': 'VibratorItem'
    },
    {
      '1': 'Vibrator',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.protocol.Vibrator',
      '9': 0,
      '10': 'Vibrator'
    },
    {
      '1': 'vibrator_effect',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.protocol.VibratorEffect',
      '9': 0,
      '10': 'vibratorEffect'
    },
    {
      '1': 'vibrator_removal',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.protocol.Vibrator.Removal',
      '9': 0,
      '10': 'vibratorRemoval'
    },
    {
      '1': 'vibrator_error',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.protocol.VibratorError',
      '9': 0,
      '10': 'vibratorError'
    },
    {
      '1': 'storage_info',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.protocol.StorageInfo',
      '9': 0,
      '10': 'storageInfo'
    },
    {
      '1': 'phone_permission',
      '3': 45,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhonePermission',
      '9': 0,
      '10': 'phonePermission'
    },
    {
      '1': 'low_latency',
      '3': 46,
      '4': 1,
      '5': 11,
      '6': '.protocol.LowLatency',
      '9': 0,
      '10': 'lowLatency'
    },
    {
      '1': 'present_basic_status',
      '3': 48,
      '4': 1,
      '5': 11,
      '6': '.protocol.BasicStatus.Present',
      '9': 0,
      '10': 'presentBasicStatus'
    },
    {
      '1': 'report_basic_status',
      '3': 49,
      '4': 1,
      '5': 11,
      '6': '.protocol.BasicStatus.Report',
      '9': 0,
      '10': 'reportBasicStatus'
    },
    {
      '1': 'report_data',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReportData',
      '9': 0,
      '10': 'reportData'
    },
    {
      '1': 'report_data_result',
      '3': 51,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReportData.Result',
      '9': 0,
      '10': 'reportDataResult'
    },
    {
      '1': 'network_proxy_request',
      '3': 52,
      '4': 1,
      '5': 11,
      '6': '.protocol.NetworkProxy.Request',
      '9': 0,
      '10': 'networkProxyRequest'
    },
    {
      '1': 'widget_v3',
      '3': 53,
      '4': 1,
      '5': 11,
      '6': '.protocol.WidgetV3',
      '9': 0,
      '10': 'widgetV3'
    },
    {
      '1': 'widget_v3_supported_list',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.protocol.WidgetV3.SupportedList',
      '9': 0,
      '10': 'widgetV3SupportedList'
    },
    {
      '1': 'ota_progress',
      '3': 55,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareOta.Progress',
      '9': 0,
      '10': 'otaProgress'
    },
    {
      '1': 'wifi_ap_result',
      '3': 56,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiAP.Result',
      '9': 0,
      '10': 'wifiApResult'
    },
    {
      '1': 'wifi_ap',
      '3': 57,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiAP',
      '9': 0,
      '10': 'wifiAp'
    },
    {
      '1': 'alert_status',
      '3': 58,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertStatus',
      '9': 0,
      '10': 'alertStatus'
    },
    {
      '1': 'network_status',
      '3': 59,
      '4': 1,
      '5': 11,
      '6': '.protocol.NetworkStatus',
      '9': 0,
      '10': 'networkStatus'
    },
    {
      '1': 'wear_status',
      '3': 60,
      '4': 1,
      '5': 14,
      '6': '.protocol.BasicStatus.Wearing',
      '9': 0,
      '10': 'wearStatus'
    },
    {
      '1': 'usage_guide',
      '3': 61,
      '4': 1,
      '5': 11,
      '6': '.protocol.UsageGuide',
      '9': 0,
      '10': 'usageGuide'
    },
    {
      '1': 'guide_feedback',
      '3': 62,
      '4': 1,
      '5': 11,
      '6': '.protocol.UsageGuide.Feedback',
      '9': 0,
      '10': 'guideFeedback'
    },
    {
      '1': 'battery_status',
      '3': 63,
      '4': 1,
      '5': 11,
      '6': '.protocol.DeviceStatus.Battery',
      '9': 0,
      '10': 'batteryStatus'
    },
    {
      '1': 'wifi_config_result',
      '3': 64,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiConfig.Result',
      '9': 0,
      '10': 'wifiConfigResult'
    },
  ],
  '4': [System_SystemID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use systemDescriptor instead')
const System_SystemID$json = {
  '1': 'SystemID',
  '2': [
    {'1': 'RESET', '2': 0},
    {'1': 'APPLY_NEW_BIND', '2': 63},
    {'1': 'NOTIFY_NEW_BIND', '2': 12},
    {'1': 'NOTIFY_APP_DISCONNECTED', '2': 13},
    {'1': 'APPLY_LOW_LATENCY', '2': 67},
    {'1': 'GET_DEVICE_STATUS', '2': 1},
    {'1': 'GET_DEVICE_INFO', '2': 2},
    {'1': 'SET_SYSTEM_TIME', '2': 3},
    {'1': 'FORCE_UPGRADE', '2': 4},
    {'1': 'PREPARE_OTA', '2': 5},
    {'1': 'REPORT_OTA_PROGRESS', '2': 87},
    {'1': 'SET_LANGUAGE', '2': 6},
    {'1': 'GET_HID_STATUS', '2': 7},
    {'1': 'SET_HID_STATUS', '2': 8},
    {'1': 'GET_LOCK_SCREEN', '2': 9},
    {'1': 'SET_LOCK_SCREEN', '2': 21},
    {'1': 'GET_NIGHT_MODE', '2': 10},
    {'1': 'SET_NIGHT_MODE', '2': 11},
    {'1': 'UNLOCK_WATCH', '2': 16},
    {'1': 'FIND_PHONE', '2': 17},
    {'1': 'FIND_WEAR', '2': 18},
    {'1': 'GET_AUTHORIZE_UNLOCK', '2': 19},
    {'1': 'SET_AUTHORIZE_UNLOCK', '2': 20},
    {'1': 'GET_QUIET_MODE', '2': 22},
    {'1': 'SET_QUIET_MODE', '2': 23},
    {'1': 'GET_WRIST_SCREEN', '2': 24},
    {'1': 'SET_WRIST_SCREEN', '2': 25},
    {'1': 'SET_WIDGET', '2': 26},
    {'1': 'SET_WIDGET_LIST', '2': 27},
    {'1': 'GET_WIDGET_LIST', '2': 28},
    {'1': 'GET_ORDERED_APP_LIST', '2': 29},
    {'1': 'SET_ORDERED_APP_LIST', '2': 30},
    {'1': 'GET_APP_LAYOUT', '2': 31},
    {'1': 'SET_APP_LAYOUT', '2': 41},
    {'1': 'SET_SHORTCUT_1', '2': 32},
    {'1': 'SET_SHORTCUT_2', '2': 33},
    {'1': 'SET_SHORTCUT_3', '2': 34},
    {'1': 'GET_SHORTCUT_1', '2': 35},
    {'1': 'GET_SHORTCUT_2', '2': 36},
    {'1': 'GET_SHORTCUT_3', '2': 37},
    {'1': 'GET_SUPPORT_SHORTCUT_LIST', '2': 38},
    {'1': 'GET_SPORT_OPTION', '2': 39},
    {'1': 'SET_SPORT_OPTION', '2': 40},
    {'1': 'ADD_OR_UPDATE_SMALL_HABIT', '2': 48},
    {'1': 'SYNC_SMALL_HABIT', '2': 49},
    {'1': 'DELETE_SMALL_HABIT', '2': 50},
    {'1': 'GET_WIDGET_GROUP_LIST', '2': 51},
    {'1': 'SET_WIDGET_GROUP_LIST', '2': 52},
    {'1': 'GET_SUPPORT_WIDGET_LIST', '2': 53},
    {'1': 'GET_WIFI_CAPABILITY', '2': 54},
    {'1': 'REQUEST_WIFI_CONFIG', '2': 55},
    {'1': 'ADD_WIFI_CONFIG', '2': 56},
    {'1': 'NOTIFY_WIFI_CONFIG_RESULT', '2': 98},
    {'1': 'SYNC_WIFI_CONFIG_LIST', '2': 57},
    {'1': 'GET_WIFI_CONFIG_LIST', '2': 86},
    {'1': 'ENABLE_WIFI_AP', '2': 88},
    {'1': 'DISABLE_WIFI_AP', '2': 89},
    {'1': 'GET_SYSTEM_SETTING', '2': 14},
    {'1': 'SET_SYSTEM_SETTING', '2': 15},
    {'1': 'REPORT_SYSTEM_SETTING', '2': 42},
    {'1': 'REQUEST_PHONE_SETTING', '2': 43},
    {'1': 'SYNC_PHONE_SETTING', '2': 44},
    {'1': 'MODIFY_PHONE_SETTING', '2': 45},
    {'1': 'LACK_PHONE_PERMISSION', '2': 64},
    {'1': 'GET_AOD_SETTING', '2': 65},
    {'1': 'SET_AOD_SETTING', '2': 66},
    {'1': 'GET_VIBRATOR_SETTING', '2': 46},
    {'1': 'SET_VIBRATOR_ITEM', '2': 47},
    {'1': 'ADD_VIBRATOR', '2': 58},
    {'1': 'TEST_VIBRATOR', '2': 59},
    {'1': 'UPDATE_VIBRATOR', '2': 60},
    {'1': 'REMOVE_VIBRATORS', '2': 61},
    {'1': 'GET_STORAGE_INFO', '2': 62},
    {'1': 'GET_WEAR_STATUS', '2': 93},
    {'1': 'GET_BASIC_STATUS', '2': 78},
    {'1': 'REPORT_BASIC_STATUS', '2': 79},
    {'1': 'REPORT_BATTERY_STATUS', '2': 97},
    {'1': 'GET_ALERT_STATUS', '2': 90},
    {'1': 'REPORT_ALERT_STATUS', '2': 91},
    {'1': 'REPORT_DATA', '2': 80},
    {'1': 'REPORT_DATA_RESULT', '2': 81},
    {'1': 'REQUEST_NETWORK_PROXY', '2': 82},
    {'1': 'SYNC_NETWORK_STATUS', '2': 92},
    {'1': 'GET_WIDGET_V3', '2': 83},
    {'1': 'SET_WIDGET_V3', '2': 84},
    {'1': 'GET_SUPPORT_WIDGET_V3', '2': 85},
    {'1': 'START_USAGE_GUIDE', '2': 94},
    {'1': 'REPORT_USAGE_GUIDE_FEEDBACK', '2': 95},
    {'1': 'FINISH_USAGE_GUIDE', '2': 96},
  ],
};

/// Descriptor for `System`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemDescriptor = $convert.base64Decode(
    'CgZTeXN0ZW0SNAoKcmVzZXRfbW9kZRgBIAEoDjITLnByb3RvY29sLlJlc2V0TW9kZUgAUglyZX'
    'NldE1vZGUSPQoNZGV2aWNlX3N0YXR1cxgCIAEoCzIWLnByb3RvY29sLkRldmljZVN0YXR1c0gA'
    'UgxkZXZpY2VTdGF0dXMSNwoLZGV2aWNlX2luZm8YAyABKAsyFC5wcm90b2NvbC5EZXZpY2VJbm'
    'ZvSABSCmRldmljZUluZm8SNwoLc3lzdGVtX3RpbWUYBCABKAsyFC5wcm90b2NvbC5TeXN0ZW1U'
    'aW1lSABSCnN5c3RlbVRpbWUSMQoJZmluZF9tb2RlGAUgASgOMhIucHJvdG9jb2wuRmluZE1vZG'
    'VIAFIIZmluZE1vZGUSPQoNZm9yY2VfdXBncmFkZRgGIAEoCzIWLnByb3RvY29sLkZvcmNlVXBn'
    'cmFkZUgAUgxmb3JjZVVwZ3JhZGUSOgoMd3Jpc3Rfc2NyZWVuGAcgASgLMhUucHJvdG9jb2wuV3'
    'Jpc3RTY3JlZW5IAFILd3Jpc3RTY3JlZW4SKgoGd2lkZ2V0GAggASgLMhAucHJvdG9jb2wuV2lk'
    'Z2V0SABSBndpZGdldBI4Cgt3aWRnZXRfbGlzdBgJIAEoCzIVLnByb3RvY29sLldpZGdldC5MaX'
    'N0SABSCndpZGdldExpc3QSLwoIYXBwX2xpc3QYCiABKAsyEi5wcm90b2NvbC5BcHAuTGlzdEgA'
    'UgdhcHBMaXN0EkAKDnRpbWluZ19zZXR0aW5nGAsgASgLMhcucHJvdG9jb2wuVGltaW5nU2V0dG'
    'luZ0gAUg10aW1pbmdTZXR0aW5nEjAKCHNob3J0Y3V0GAwgASgLMhIucHJvdG9jb2wuU2hvcnRj'
    'dXRIAFIIc2hvcnRjdXQSPgoNc2hvcnRjdXRfbGlzdBgNIAEoCzIXLnByb3RvY29sLlNob3J0Y3'
    'V0Lkxpc3RIAFIMc2hvcnRjdXRMaXN0EkgKEXNwb3J0X29wdGlvbl9saXN0GA4gASgLMhoucHJv'
    'dG9jb2wuU3BvcnRPcHRpb24uTGlzdEgAUg9zcG9ydE9wdGlvbkxpc3QSNAoKaGlkX3N0YXR1cx'
    'gPIAEoCzITLnByb3RvY29sLkhpZFN0YXR1c0gAUgloaWRTdGF0dXMSTgoTcHJlcGFyZV9vdGFf'
    'cmVxdWVzdBgQIAEoCzIcLnByb3RvY29sLlByZXBhcmVPdGEuUmVxdWVzdEgAUhFwcmVwYXJlT3'
    'RhUmVxdWVzdBJRChRwcmVwYXJlX290YV9yZXNwb25zZRgRIAEoCzIdLnByb3RvY29sLlByZXBh'
    'cmVPdGEuUmVzcG9uc2VIAFIScHJlcGFyZU90YVJlc3BvbnNlEjQKCmFwcF9sYXlvdXQYEiABKA'
    'syEy5wcm90b2NvbC5BcHBMYXlvdXRIAFIJYXBwTGF5b3V0EjcKC2xvY2tfc2NyZWVuGBMgASgL'
    'MhQucHJvdG9jb2wuTG9ja1NjcmVlbkgAUgpsb2NrU2NyZWVuEjAKCGxhbmd1YWdlGBQgASgLMh'
    'IucHJvdG9jb2wuTGFuZ3VhZ2VIAFIIbGFuZ3VhZ2USVAoVYXV0aG9yaXplX3VubG9ja19saXN0'
    'GBUgASgLMh4ucHJvdG9jb2wuQXV0aG9yaXplVW5sb2NrLkxpc3RIAFITYXV0aG9yaXplVW5sb2'
    'NrTGlzdBJGChBhdXRob3JpemVfdW5sb2NrGBYgASgLMhkucHJvdG9jb2wuQXV0aG9yaXplVW5s'
    'b2NrSABSD2F1dGhvcml6ZVVubG9jaxI0CgpuaWdodF9tb2RlGBcgASgLMhMucHJvdG9jb2wuTm'
    'lnaHRNb2RlSABSCW5pZ2h0TW9kZRI3CgtzbWFsbF9oYWJpdBgYIAEoCzIULnByb3RvY29sLlNt'
    'YWxsSGFiaXRIAFIKc21hbGxIYWJpdBJFChBzbWFsbF9oYWJpdF9saXN0GBkgASgLMhkucHJvdG'
    '9jb2wuU21hbGxIYWJpdC5MaXN0SABSDnNtYWxsSGFiaXRMaXN0EkUKEHNtYWxsX2hhYml0X3R5'
    'cGUYGiABKA4yGS5wcm90b2NvbC5TbWFsbEhhYml0LlR5cGVIAFIOc21hbGxIYWJpdFR5cGUSUg'
    'oVc21hbGxfaGFiaXRfdHlwZV9saXN0GBsgASgLMh0ucHJvdG9jb2wuU21hbGxIYWJpdC5UeXBl'
    'TGlzdEgAUhJzbWFsbEhhYml0VHlwZUxpc3QSSAoRd2lkZ2V0X2dyb3VwX2xpc3QYHCABKAsyGi'
    '5wcm90b2NvbC5XaWRnZXRHcm91cC5MaXN0SABSD3dpZGdldEdyb3VwTGlzdBI/Cg53aWRnZXRf'
    'djJfbGlzdBgdIAEoCzIXLnByb3RvY29sLldpZGdldFYyLkxpc3RIAFIMd2lkZ2V0VjJMaXN0Ek'
    'oKD3dpZmlfY2FwYWJpbGl0eRgeIAEoCzIfLnByb3RvY29sLldpRmlDb25maWcuQ2FwYWJpbGl0'
    'eUgAUg53aWZpQ2FwYWJpbGl0eRJICg93aWZpX2Jhc2ljX2luZm8YHyABKAsyHi5wcm90b2NvbC'
    '5XaUZpQ29uZmlnLkJhc2ljSW5mb0gAUg13aWZpQmFzaWNJbmZvEjcKC3dpZmlfY29uZmlnGCAg'
    'ASgLMhQucHJvdG9jb2wuV2lGaUNvbmZpZ0gAUgp3aWZpQ29uZmlnEkUKEHdpZmlfY29uZmlnX2'
    'xpc3QYISABKAsyGS5wcm90b2NvbC5XaUZpQ29uZmlnLkxpc3RIAFIOd2lmaUNvbmZpZ0xpc3QS'
    'VwoWc3lzdGVtX3NldHRpbmdfcmVxdWVzdBgiIAEoCzIfLnByb3RvY29sLlN5c3RlbVNldHRpbm'
    'cuUmVxdWVzdEgAUhRzeXN0ZW1TZXR0aW5nUmVxdWVzdBJACg5zeXN0ZW1fc2V0dGluZxgjIAEo'
    'CzIXLnByb3RvY29sLlN5c3RlbVNldHRpbmdIAFINc3lzdGVtU2V0dGluZxJUChVwaG9uZV9zZX'
    'R0aW5nX3JlcXVlc3QYJCABKAsyHi5wcm90b2NvbC5QaG9uZVNldHRpbmcuUmVxdWVzdEgAUhNw'
    'aG9uZVNldHRpbmdSZXF1ZXN0Ej0KDXBob25lX3NldHRpbmcYJSABKAsyFi5wcm90b2NvbC5QaG'
    '9uZVNldHRpbmdIAFIMcGhvbmVTZXR0aW5nEkYKEHZpYnJhdG9yX3NldHRpbmcYJiABKAsyGS5w'
    'cm90b2NvbC5WaWJyYXRvclNldHRpbmdIAFIPdmlicmF0b3JTZXR0aW5nEj0KDVZpYnJhdG9yX2'
    'l0ZW0YJyABKAsyFi5wcm90b2NvbC5WaWJyYXRvckl0ZW1IAFIMVmlicmF0b3JJdGVtEjAKCFZp'
    'YnJhdG9yGCggASgLMhIucHJvdG9jb2wuVmlicmF0b3JIAFIIVmlicmF0b3ISQwoPdmlicmF0b3'
    'JfZWZmZWN0GCkgASgLMhgucHJvdG9jb2wuVmlicmF0b3JFZmZlY3RIAFIOdmlicmF0b3JFZmZl'
    'Y3QSRwoQdmlicmF0b3JfcmVtb3ZhbBgqIAEoCzIaLnByb3RvY29sLlZpYnJhdG9yLlJlbW92YW'
    'xIAFIPdmlicmF0b3JSZW1vdmFsEkAKDnZpYnJhdG9yX2Vycm9yGCsgASgLMhcucHJvdG9jb2wu'
    'VmlicmF0b3JFcnJvckgAUg12aWJyYXRvckVycm9yEjoKDHN0b3JhZ2VfaW5mbxgsIAEoCzIVLn'
    'Byb3RvY29sLlN0b3JhZ2VJbmZvSABSC3N0b3JhZ2VJbmZvEkYKEHBob25lX3Blcm1pc3Npb24Y'
    'LSABKAsyGS5wcm90b2NvbC5QaG9uZVBlcm1pc3Npb25IAFIPcGhvbmVQZXJtaXNzaW9uEjcKC2'
    'xvd19sYXRlbmN5GC4gASgLMhQucHJvdG9jb2wuTG93TGF0ZW5jeUgAUgpsb3dMYXRlbmN5ElEK'
    'FHByZXNlbnRfYmFzaWNfc3RhdHVzGDAgASgLMh0ucHJvdG9jb2wuQmFzaWNTdGF0dXMuUHJlc2'
    'VudEgAUhJwcmVzZW50QmFzaWNTdGF0dXMSTgoTcmVwb3J0X2Jhc2ljX3N0YXR1cxgxIAEoCzIc'
    'LnByb3RvY29sLkJhc2ljU3RhdHVzLlJlcG9ydEgAUhFyZXBvcnRCYXNpY1N0YXR1cxI3CgtyZX'
    'BvcnRfZGF0YRgyIAEoCzIULnByb3RvY29sLlJlcG9ydERhdGFIAFIKcmVwb3J0RGF0YRJLChJy'
    'ZXBvcnRfZGF0YV9yZXN1bHQYMyABKAsyGy5wcm90b2NvbC5SZXBvcnREYXRhLlJlc3VsdEgAUh'
    'ByZXBvcnREYXRhUmVzdWx0ElQKFW5ldHdvcmtfcHJveHlfcmVxdWVzdBg0IAEoCzIeLnByb3Rv'
    'Y29sLk5ldHdvcmtQcm94eS5SZXF1ZXN0SABSE25ldHdvcmtQcm94eVJlcXVlc3QSMQoJd2lkZ2'
    'V0X3YzGDUgASgLMhIucHJvdG9jb2wuV2lkZ2V0VjNIAFIId2lkZ2V0VjMSWwoYd2lkZ2V0X3Yz'
    'X3N1cHBvcnRlZF9saXN0GDYgASgLMiAucHJvdG9jb2wuV2lkZ2V0VjMuU3VwcG9ydGVkTGlzdE'
    'gAUhV3aWRnZXRWM1N1cHBvcnRlZExpc3QSQgoMb3RhX3Byb2dyZXNzGDcgASgLMh0ucHJvdG9j'
    'b2wuUHJlcGFyZU90YS5Qcm9ncmVzc0gAUgtvdGFQcm9ncmVzcxI/Cg53aWZpX2FwX3Jlc3VsdB'
    'g4IAEoCzIXLnByb3RvY29sLldpRmlBUC5SZXN1bHRIAFIMd2lmaUFwUmVzdWx0EisKB3dpZmlf'
    'YXAYOSABKAsyEC5wcm90b2NvbC5XaUZpQVBIAFIGd2lmaUFwEjoKDGFsZXJ0X3N0YXR1cxg6IA'
    'EoCzIVLnByb3RvY29sLkFsZXJ0U3RhdHVzSABSC2FsZXJ0U3RhdHVzEkAKDm5ldHdvcmtfc3Rh'
    'dHVzGDsgASgLMhcucHJvdG9jb2wuTmV0d29ya1N0YXR1c0gAUg1uZXR3b3JrU3RhdHVzEkAKC3'
    'dlYXJfc3RhdHVzGDwgASgOMh0ucHJvdG9jb2wuQmFzaWNTdGF0dXMuV2VhcmluZ0gAUgp3ZWFy'
    'U3RhdHVzEjcKC3VzYWdlX2d1aWRlGD0gASgLMhQucHJvdG9jb2wuVXNhZ2VHdWlkZUgAUgp1c2'
    'FnZUd1aWRlEkYKDmd1aWRlX2ZlZWRiYWNrGD4gASgLMh0ucHJvdG9jb2wuVXNhZ2VHdWlkZS5G'
    'ZWVkYmFja0gAUg1ndWlkZUZlZWRiYWNrEkcKDmJhdHRlcnlfc3RhdHVzGD8gASgLMh4ucHJvdG'
    '9jb2wuRGV2aWNlU3RhdHVzLkJhdHRlcnlIAFINYmF0dGVyeVN0YXR1cxJLChJ3aWZpX2NvbmZp'
    'Z19yZXN1bHQYQCABKAsyGy5wcm90b2NvbC5XaUZpQ29uZmlnLlJlc3VsdEgAUhB3aWZpQ29uZm'
    'lnUmVzdWx0IuIPCghTeXN0ZW1JRBIJCgVSRVNFVBAAEhIKDkFQUExZX05FV19CSU5EED8SEwoP'
    'Tk9USUZZX05FV19CSU5EEAwSGwoXTk9USUZZX0FQUF9ESVNDT05ORUNURUQQDRIVChFBUFBMWV'
    '9MT1dfTEFURU5DWRBDEhUKEUdFVF9ERVZJQ0VfU1RBVFVTEAESEwoPR0VUX0RFVklDRV9JTkZP'
    'EAISEwoPU0VUX1NZU1RFTV9USU1FEAMSEQoNRk9SQ0VfVVBHUkFERRAEEg8KC1BSRVBBUkVfT1'
    'RBEAUSFwoTUkVQT1JUX09UQV9QUk9HUkVTUxBXEhAKDFNFVF9MQU5HVUFHRRAGEhIKDkdFVF9I'
    'SURfU1RBVFVTEAcSEgoOU0VUX0hJRF9TVEFUVVMQCBITCg9HRVRfTE9DS19TQ1JFRU4QCRITCg'
    '9TRVRfTE9DS19TQ1JFRU4QFRISCg5HRVRfTklHSFRfTU9ERRAKEhIKDlNFVF9OSUdIVF9NT0RF'
    'EAsSEAoMVU5MT0NLX1dBVENIEBASDgoKRklORF9QSE9ORRAREg0KCUZJTkRfV0VBUhASEhgKFE'
    'dFVF9BVVRIT1JJWkVfVU5MT0NLEBMSGAoUU0VUX0FVVEhPUklaRV9VTkxPQ0sQFBISCg5HRVRf'
    'UVVJRVRfTU9ERRAWEhIKDlNFVF9RVUlFVF9NT0RFEBcSFAoQR0VUX1dSSVNUX1NDUkVFThAYEh'
    'QKEFNFVF9XUklTVF9TQ1JFRU4QGRIOCgpTRVRfV0lER0VUEBoSEwoPU0VUX1dJREdFVF9MSVNU'
    'EBsSEwoPR0VUX1dJREdFVF9MSVNUEBwSGAoUR0VUX09SREVSRURfQVBQX0xJU1QQHRIYChRTRV'
    'RfT1JERVJFRF9BUFBfTElTVBAeEhIKDkdFVF9BUFBfTEFZT1VUEB8SEgoOU0VUX0FQUF9MQVlP'
    'VVQQKRISCg5TRVRfU0hPUlRDVVRfMRAgEhIKDlNFVF9TSE9SVENVVF8yECESEgoOU0VUX1NIT1'
    'JUQ1VUXzMQIhISCg5HRVRfU0hPUlRDVVRfMRAjEhIKDkdFVF9TSE9SVENVVF8yECQSEgoOR0VU'
    'X1NIT1JUQ1VUXzMQJRIdChlHRVRfU1VQUE9SVF9TSE9SVENVVF9MSVNUECYSFAoQR0VUX1NQT1'
    'JUX09QVElPThAnEhQKEFNFVF9TUE9SVF9PUFRJT04QKBIdChlBRERfT1JfVVBEQVRFX1NNQUxM'
    'X0hBQklUEDASFAoQU1lOQ19TTUFMTF9IQUJJVBAxEhYKEkRFTEVURV9TTUFMTF9IQUJJVBAyEh'
    'kKFUdFVF9XSURHRVRfR1JPVVBfTElTVBAzEhkKFVNFVF9XSURHRVRfR1JPVVBfTElTVBA0EhsK'
    'F0dFVF9TVVBQT1JUX1dJREdFVF9MSVNUEDUSFwoTR0VUX1dJRklfQ0FQQUJJTElUWRA2EhcKE1'
    'JFUVVFU1RfV0lGSV9DT05GSUcQNxITCg9BRERfV0lGSV9DT05GSUcQOBIdChlOT1RJRllfV0lG'
    'SV9DT05GSUdfUkVTVUxUEGISGQoVU1lOQ19XSUZJX0NPTkZJR19MSVNUEDkSGAoUR0VUX1dJRk'
    'lfQ09ORklHX0xJU1QQVhISCg5FTkFCTEVfV0lGSV9BUBBYEhMKD0RJU0FCTEVfV0lGSV9BUBBZ'
    'EhYKEkdFVF9TWVNURU1fU0VUVElORxAOEhYKElNFVF9TWVNURU1fU0VUVElORxAPEhkKFVJFUE'
    '9SVF9TWVNURU1fU0VUVElORxAqEhkKFVJFUVVFU1RfUEhPTkVfU0VUVElORxArEhYKElNZTkNf'
    'UEhPTkVfU0VUVElORxAsEhgKFE1PRElGWV9QSE9ORV9TRVRUSU5HEC0SGQoVTEFDS19QSE9ORV'
    '9QRVJNSVNTSU9OEEASEwoPR0VUX0FPRF9TRVRUSU5HEEESEwoPU0VUX0FPRF9TRVRUSU5HEEIS'
    'GAoUR0VUX1ZJQlJBVE9SX1NFVFRJTkcQLhIVChFTRVRfVklCUkFUT1JfSVRFTRAvEhAKDEFERF'
    '9WSUJSQVRPUhA6EhEKDVRFU1RfVklCUkFUT1IQOxITCg9VUERBVEVfVklCUkFUT1IQPBIUChBS'
    'RU1PVkVfVklCUkFUT1JTED0SFAoQR0VUX1NUT1JBR0VfSU5GTxA+EhMKD0dFVF9XRUFSX1NUQV'
    'RVUxBdEhQKEEdFVF9CQVNJQ19TVEFUVVMQThIXChNSRVBPUlRfQkFTSUNfU1RBVFVTEE8SGQoV'
    'UkVQT1JUX0JBVFRFUllfU1RBVFVTEGESFAoQR0VUX0FMRVJUX1NUQVRVUxBaEhcKE1JFUE9SVF'
    '9BTEVSVF9TVEFUVVMQWxIPCgtSRVBPUlRfREFUQRBQEhYKElJFUE9SVF9EQVRBX1JFU1VMVBBR'
    'EhkKFVJFUVVFU1RfTkVUV09SS19QUk9YWRBSEhcKE1NZTkNfTkVUV09SS19TVEFUVVMQXBIRCg'
    '1HRVRfV0lER0VUX1YzEFMSEQoNU0VUX1dJREdFVF9WMxBUEhkKFUdFVF9TVVBQT1JUX1dJREdF'
    'VF9WMxBVEhUKEVNUQVJUX1VTQUdFX0dVSURFEF4SHwobUkVQT1JUX1VTQUdFX0dVSURFX0ZFRU'
    'RCQUNLEF8SFgoSRklOSVNIX1VTQUdFX0dVSURFEGBCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use deviceStatusDescriptor instead')
const DeviceStatus$json = {
  '1': 'DeviceStatus',
  '2': [
    {
      '1': 'battery',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.DeviceStatus.Battery',
      '10': 'battery'
    },
  ],
  '3': [DeviceStatus_Battery$json],
};

@$core.Deprecated('Use deviceStatusDescriptor instead')
const DeviceStatus_Battery$json = {
  '1': 'Battery',
  '2': [
    {'1': 'capacity', '3': 1, '4': 2, '5': 13, '10': 'capacity'},
    {
      '1': 'charge_status',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protocol.DeviceStatus.Battery.ChargeStatus',
      '10': 'chargeStatus'
    },
    {
      '1': 'charge_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.DeviceStatus.Battery.ChargeInfo',
      '10': 'chargeInfo'
    },
  ],
  '3': [DeviceStatus_Battery_ChargeInfo$json],
  '4': [DeviceStatus_Battery_ChargeStatus$json],
};

@$core.Deprecated('Use deviceStatusDescriptor instead')
const DeviceStatus_Battery_ChargeInfo$json = {
  '1': 'ChargeInfo',
  '2': [
    {'1': 'state', '3': 1, '4': 2, '5': 13, '10': 'state'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 13, '10': 'timestamp'},
  ],
};

@$core.Deprecated('Use deviceStatusDescriptor instead')
const DeviceStatus_Battery_ChargeStatus$json = {
  '1': 'ChargeStatus',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'CHARGING', '2': 1},
    {'1': 'NOT_CHARGING', '2': 2},
    {'1': 'FULL', '2': 3},
  ],
};

/// Descriptor for `DeviceStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceStatusDescriptor = $convert.base64Decode(
    'CgxEZXZpY2VTdGF0dXMSOAoHYmF0dGVyeRgBIAIoCzIeLnByb3RvY29sLkRldmljZVN0YXR1cy'
    '5CYXR0ZXJ5UgdiYXR0ZXJ5GswCCgdCYXR0ZXJ5EhoKCGNhcGFjaXR5GAEgAigNUghjYXBhY2l0'
    'eRJQCg1jaGFyZ2Vfc3RhdHVzGAIgASgOMisucHJvdG9jb2wuRGV2aWNlU3RhdHVzLkJhdHRlcn'
    'kuQ2hhcmdlU3RhdHVzUgxjaGFyZ2VTdGF0dXMSSgoLY2hhcmdlX2luZm8YAyABKAsyKS5wcm90'
    'b2NvbC5EZXZpY2VTdGF0dXMuQmF0dGVyeS5DaGFyZ2VJbmZvUgpjaGFyZ2VJbmZvGkAKCkNoYX'
    'JnZUluZm8SFAoFc3RhdGUYASACKA1SBXN0YXRlEhwKCXRpbWVzdGFtcBgCIAEoDVIJdGltZXN0'
    'YW1wIkUKDENoYXJnZVN0YXR1cxILCgdVTktOT1dOEAASDAoIQ0hBUkdJTkcQARIQCgxOT1RfQ0'
    'hBUkdJTkcQAhIICgRGVUxMEAM=');

@$core.Deprecated('Use deviceInfoDescriptor instead')
const DeviceInfo$json = {
  '1': 'DeviceInfo',
  '2': [
    {'1': 'serial_number', '3': 1, '4': 2, '5': 9, '10': 'serialNumber'},
    {'1': 'firmware_version', '3': 2, '4': 2, '5': 9, '10': 'firmwareVersion'},
    {'1': 'imei', '3': 3, '4': 2, '5': 9, '10': 'imei'},
    {'1': 'model', '3': 4, '4': 2, '5': 9, '10': 'model'},
    {'1': 'product_device', '3': 5, '4': 2, '5': 9, '10': 'productDevice'},
  ],
};

/// Descriptor for `DeviceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoDescriptor = $convert.base64Decode(
    'CgpEZXZpY2VJbmZvEiMKDXNlcmlhbF9udW1iZXIYASACKAlSDHNlcmlhbE51bWJlchIpChBmaX'
    'Jtd2FyZV92ZXJzaW9uGAIgAigJUg9maXJtd2FyZVZlcnNpb24SEgoEaW1laRgDIAIoCVIEaW1l'
    'aRIUCgVtb2RlbBgEIAIoCVIFbW9kZWwSJQoOcHJvZHVjdF9kZXZpY2UYBSACKAlSDXByb2R1Y3'
    'REZXZpY2U=');

@$core.Deprecated('Use systemTimeDescriptor instead')
const SystemTime$json = {
  '1': 'SystemTime',
  '2': [
    {'1': 'date', '3': 1, '4': 2, '5': 11, '6': '.protocol.Date', '10': 'date'},
    {'1': 'time', '3': 2, '4': 2, '5': 11, '6': '.protocol.Time', '10': 'time'},
    {
      '1': 'time_zone',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Timezone',
      '10': 'timeZone'
    },
    {'1': 'is_12_hours', '3': 4, '4': 1, '5': 8, '10': 'is12Hours'},
  ],
};

/// Descriptor for `SystemTime`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemTimeDescriptor = $convert.base64Decode(
    'CgpTeXN0ZW1UaW1lEiIKBGRhdGUYASACKAsyDi5wcm90b2NvbC5EYXRlUgRkYXRlEiIKBHRpbW'
    'UYAiACKAsyDi5wcm90b2NvbC5UaW1lUgR0aW1lEi8KCXRpbWVfem9uZRgDIAEoCzISLnByb3Rv'
    'Y29sLlRpbWV6b25lUgh0aW1lWm9uZRIeCgtpc18xMl9ob3VycxgEIAEoCFIJaXMxMkhvdXJz');

@$core.Deprecated('Use languageDescriptor instead')
const Language$json = {
  '1': 'Language',
  '2': [
    {'1': 'locale', '3': 1, '4': 2, '5': 9, '10': 'locale'},
  ],
};

/// Descriptor for `Language`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List languageDescriptor =
    $convert.base64Decode('CghMYW5ndWFnZRIWCgZsb2NhbGUYASACKAlSBmxvY2FsZQ==');

@$core.Deprecated('Use hidStatusDescriptor instead')
const HidStatus$json = {
  '1': 'HidStatus',
  '2': [
    {'1': 'enable', '3': 1, '4': 2, '5': 8, '10': 'enable'},
  ],
};

/// Descriptor for `HidStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hidStatusDescriptor =
    $convert.base64Decode('CglIaWRTdGF0dXMSFgoGZW5hYmxlGAEgAigIUgZlbmFibGU=');

@$core.Deprecated('Use lockScreenDescriptor instead')
const LockScreen$json = {
  '1': 'LockScreen',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.LockScreen.Status',
      '10': 'status'
    },
    {'1': 'pwd', '3': 2, '4': 2, '5': 9, '10': 'pwd'},
    {'1': 'locked', '3': 3, '4': 1, '5': 8, '10': 'locked'},
  ],
  '4': [LockScreen_Status$json],
};

@$core.Deprecated('Use lockScreenDescriptor instead')
const LockScreen_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'DISABLED', '2': 1},
    {'1': 'ENABLED', '2': 2},
    {'1': 'ENABLED_AND_REQUIRED', '2': 3},
  ],
};

/// Descriptor for `LockScreen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockScreenDescriptor = $convert.base64Decode(
    'CgpMb2NrU2NyZWVuEjMKBnN0YXR1cxgBIAIoDjIbLnByb3RvY29sLkxvY2tTY3JlZW4uU3RhdH'
    'VzUgZzdGF0dXMSEAoDcHdkGAIgAigJUgNwd2QSFgoGbG9ja2VkGAMgASgIUgZsb2NrZWQiPQoG'
    'U3RhdHVzEgwKCERJU0FCTEVEEAESCwoHRU5BQkxFRBACEhgKFEVOQUJMRURfQU5EX1JFUVVJUk'
    'VEEAM=');

@$core.Deprecated('Use nightModeDescriptor instead')
const NightMode$json = {
  '1': 'NightMode',
  '2': [
    {
      '1': 'mode',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.NightMode.Mode',
      '10': 'mode'
    },
    {
      '1': 'start_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'startTime'
    },
    {
      '1': 'end_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'endTime'
    },
  ],
  '4': [NightMode_Mode$json],
};

@$core.Deprecated('Use nightModeDescriptor instead')
const NightMode_Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'OFF', '2': 1},
    {'1': 'SUNSET_ON', '2': 2},
    {'1': 'TIMING_ON', '2': 3},
  ],
};

/// Descriptor for `NightMode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nightModeDescriptor = $convert.base64Decode(
    'CglOaWdodE1vZGUSLAoEbW9kZRgBIAIoDjIYLnByb3RvY29sLk5pZ2h0TW9kZS5Nb2RlUgRtb2'
    'RlEi0KCnN0YXJ0X3RpbWUYAiABKAsyDi5wcm90b2NvbC5UaW1lUglzdGFydFRpbWUSKQoIZW5k'
    'X3RpbWUYAyABKAsyDi5wcm90b2NvbC5UaW1lUgdlbmRUaW1lIi0KBE1vZGUSBwoDT0ZGEAESDQ'
    'oJU1VOU0VUX09OEAISDQoJVElNSU5HX09OEAM=');

@$core.Deprecated('Use authorizeUnlockDescriptor instead')
const AuthorizeUnlock$json = {
  '1': 'AuthorizeUnlock',
  '2': [
    {
      '1': 'device',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.AuthorizeUnlock.Device',
      '10': 'device'
    },
    {'1': 'enable', '3': 2, '4': 2, '5': 8, '10': 'enable'},
  ],
  '3': [AuthorizeUnlock_List$json],
  '4': [AuthorizeUnlock_Device$json],
};

@$core.Deprecated('Use authorizeUnlockDescriptor instead')
const AuthorizeUnlock_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AuthorizeUnlock',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use authorizeUnlockDescriptor instead')
const AuthorizeUnlock_Device$json = {
  '1': 'Device',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'LAPTOP', '2': 1},
    {'1': 'PHONE', '2': 2},
  ],
};

/// Descriptor for `AuthorizeUnlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizeUnlockDescriptor = $convert.base64Decode(
    'Cg9BdXRob3JpemVVbmxvY2sSOAoGZGV2aWNlGAEgAigOMiAucHJvdG9jb2wuQXV0aG9yaXplVW'
    '5sb2NrLkRldmljZVIGZGV2aWNlEhYKBmVuYWJsZRgCIAIoCFIGZW5hYmxlGjUKBExpc3QSLQoE'
    'bGlzdBgBIAMoCzIZLnByb3RvY29sLkF1dGhvcml6ZVVubG9ja1IEbGlzdCIsCgZEZXZpY2USCw'
    'oHVU5LTk9XThAAEgoKBkxBUFRPUBABEgkKBVBIT05FEAI=');

@$core.Deprecated('Use timingSettingDescriptor instead')
const TimingSetting$json = {
  '1': 'TimingSetting',
  '2': [
    {
      '1': 'timing_mode',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.TimingMode',
      '10': 'timingMode'
    },
    {
      '1': 'start_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'startTime'
    },
    {
      '1': 'end_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'endTime'
    },
    {'1': 'repeat_days', '3': 4, '4': 1, '5': 13, '10': 'repeatDays'},
    {'1': 'timestamp', '3': 5, '4': 1, '5': 13, '10': 'timestamp'},
  ],
};

/// Descriptor for `TimingSetting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timingSettingDescriptor = $convert.base64Decode(
    'Cg1UaW1pbmdTZXR0aW5nEjUKC3RpbWluZ19tb2RlGAEgAigOMhQucHJvdG9jb2wuVGltaW5nTW'
    '9kZVIKdGltaW5nTW9kZRItCgpzdGFydF90aW1lGAIgASgLMg4ucHJvdG9jb2wuVGltZVIJc3Rh'
    'cnRUaW1lEikKCGVuZF90aW1lGAMgASgLMg4ucHJvdG9jb2wuVGltZVIHZW5kVGltZRIfCgtyZX'
    'BlYXRfZGF5cxgEIAEoDVIKcmVwZWF0RGF5cxIcCgl0aW1lc3RhbXAYBSABKA1SCXRpbWVzdGFt'
    'cA==');

@$core.Deprecated('Use wristScreenDescriptor instead')
const WristScreen$json = {
  '1': 'WristScreen',
  '2': [
    {
      '1': 'timing_mode',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.TimingMode',
      '10': 'timingMode'
    },
    {
      '1': 'start_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'startTime'
    },
    {
      '1': 'end_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'endTime'
    },
    {
      '1': 'sensitivity',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.protocol.WristScreen.Sensitivity',
      '10': 'sensitivity'
    },
  ],
  '4': [WristScreen_Sensitivity$json],
};

@$core.Deprecated('Use wristScreenDescriptor instead')
const WristScreen_Sensitivity$json = {
  '1': 'Sensitivity',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'STANDARD', '2': 1},
    {'1': 'HIGH', '2': 2},
  ],
};

/// Descriptor for `WristScreen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wristScreenDescriptor = $convert.base64Decode(
    'CgtXcmlzdFNjcmVlbhI1Cgt0aW1pbmdfbW9kZRgBIAIoDjIULnByb3RvY29sLlRpbWluZ01vZG'
    'VSCnRpbWluZ01vZGUSLQoKc3RhcnRfdGltZRgCIAEoCzIOLnByb3RvY29sLlRpbWVSCXN0YXJ0'
    'VGltZRIpCghlbmRfdGltZRgDIAEoCzIOLnByb3RvY29sLlRpbWVSB2VuZFRpbWUSQwoLc2Vuc2'
    'l0aXZpdHkYBCABKA4yIS5wcm90b2NvbC5XcmlzdFNjcmVlbi5TZW5zaXRpdml0eVILc2Vuc2l0'
    'aXZpdHkiLwoLU2Vuc2l0aXZpdHkSCAoETk9ORRAAEgwKCFNUQU5EQVJEEAESCAoESElHSBAC');

@$core.Deprecated('Use widgetDescriptor instead')
const Widget$json = {
  '1': 'Widget',
  '2': [
    {'1': 'function', '3': 1, '4': 2, '5': 13, '10': 'function'},
    {'1': 'enable', '3': 2, '4': 2, '5': 8, '10': 'enable'},
    {'1': 'order', '3': 3, '4': 1, '5': 13, '10': 'order'},
  ],
  '3': [Widget_List$json],
};

@$core.Deprecated('Use widgetDescriptor instead')
const Widget_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.Widget',
      '10': 'list'
    },
    {
      '1': 'support_max_number',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'supportMaxNumber'
    },
    {
      '1': 'support_min_number',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'supportMinNumber'
    },
  ],
};

/// Descriptor for `Widget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List widgetDescriptor = $convert.base64Decode(
    'CgZXaWRnZXQSGgoIZnVuY3Rpb24YASACKA1SCGZ1bmN0aW9uEhYKBmVuYWJsZRgCIAIoCFIGZW'
    '5hYmxlEhQKBW9yZGVyGAMgASgNUgVvcmRlchqIAQoETGlzdBIkCgRsaXN0GAEgAygLMhAucHJv'
    'dG9jb2wuV2lkZ2V0UgRsaXN0EiwKEnN1cHBvcnRfbWF4X251bWJlchgCIAEoDVIQc3VwcG9ydE'
    '1heE51bWJlchIsChJzdXBwb3J0X21pbl9udW1iZXIYAyABKA1SEHN1cHBvcnRNaW5OdW1iZXI=');

@$core.Deprecated('Use widgetV2Descriptor instead')
const WidgetV2$json = {
  '1': 'WidgetV2',
  '2': [
    {
      '1': 'style',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.WidgetStyle',
      '10': 'style'
    },
    {'1': 'function', '3': 2, '4': 2, '5': 13, '10': 'function'},
    {'1': 'sub_type', '3': 3, '4': 2, '5': 13, '10': 'subType'},
    {'1': 'name', '3': 4, '4': 2, '5': 9, '10': 'name'},
    {
      '1': 'sport_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'sportType'
    },
    {'1': 'app_id', '3': 6, '4': 2, '5': 9, '10': 'appId'},
    {'1': 'app_name', '3': 7, '4': 2, '5': 9, '10': 'appName'},
    {'1': 'phone_type', '3': 8, '4': 1, '5': 13, '10': 'phoneType'},
  ],
  '3': [WidgetV2_List$json],
};

@$core.Deprecated('Use widgetV2Descriptor instead')
const WidgetV2_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'support_widgets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WidgetV2',
      '10': 'supportWidgets'
    },
  ],
};

/// Descriptor for `WidgetV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List widgetV2Descriptor = $convert.base64Decode(
    'CghXaWRnZXRWMhIrCgVzdHlsZRgBIAIoDjIVLnByb3RvY29sLldpZGdldFN0eWxlUgVzdHlsZR'
    'IaCghmdW5jdGlvbhgCIAIoDVIIZnVuY3Rpb24SGQoIc3ViX3R5cGUYAyACKA1SB3N1YlR5cGUS'
    'EgoEbmFtZRgEIAIoCVIEbmFtZRIyCgpzcG9ydF90eXBlGAUgASgOMhMucHJvdG9jb2wuU3Bvcn'
    'RUeXBlUglzcG9ydFR5cGUSFQoGYXBwX2lkGAYgAigJUgVhcHBJZBIZCghhcHBfbmFtZRgHIAIo'
    'CVIHYXBwTmFtZRIdCgpwaG9uZV90eXBlGAggASgNUglwaG9uZVR5cGUaQwoETGlzdBI7Cg9zdX'
    'Bwb3J0X3dpZGdldHMYASADKAsyEi5wcm90b2NvbC5XaWRnZXRWMlIOc3VwcG9ydFdpZGdldHM=');

@$core.Deprecated('Use widgetV3Descriptor instead')
const WidgetV3$json = {
  '1': 'WidgetV3',
  '2': [
    {
      '1': 'builtin_widgets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WidgetV3.NativeBuiltin',
      '10': 'builtinWidgets'
    },
    {'1': 'min_count', '3': 2, '4': 1, '5': 13, '10': 'minCount'},
    {'1': 'max_count', '3': 3, '4': 1, '5': 13, '10': 'maxCount'},
  ],
  '3': [
    WidgetV3_NativeBuiltin$json,
    WidgetV3_NativeBuiltinGroup$json,
    WidgetV3_SupportedList$json
  ],
};

@$core.Deprecated('Use widgetV3Descriptor instead')
const WidgetV3_NativeBuiltin$json = {
  '1': 'NativeBuiltin',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use widgetV3Descriptor instead')
const WidgetV3_NativeBuiltinGroup$json = {
  '1': 'NativeBuiltinGroup',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    {
      '1': 'builtin_widgets',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.protocol.WidgetV3.NativeBuiltin',
      '10': 'builtinWidgets'
    },
  ],
};

@$core.Deprecated('Use widgetV3Descriptor instead')
const WidgetV3_SupportedList$json = {
  '1': 'SupportedList',
  '2': [
    {
      '1': 'builtin_groups',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WidgetV3.NativeBuiltinGroup',
      '10': 'builtinGroups'
    },
  ],
};

/// Descriptor for `WidgetV3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List widgetV3Descriptor = $convert.base64Decode(
    'CghXaWRnZXRWMxJJCg9idWlsdGluX3dpZGdldHMYASADKAsyIC5wcm90b2NvbC5XaWRnZXRWMy'
    '5OYXRpdmVCdWlsdGluUg5idWlsdGluV2lkZ2V0cxIbCgltaW5fY291bnQYAiABKA1SCG1pbkNv'
    'dW50EhsKCW1heF9jb3VudBgDIAEoDVIIbWF4Q291bnQaMwoNTmF0aXZlQnVpbHRpbhIOCgJpZB'
    'gBIAIoDVICaWQSEgoEbmFtZRgCIAIoCVIEbmFtZRqDAQoSTmF0aXZlQnVpbHRpbkdyb3VwEg4K'
    'AmlkGAEgAigNUgJpZBISCgRuYW1lGAIgAigJUgRuYW1lEkkKD2J1aWx0aW5fd2lkZ2V0cxgDIA'
    'MoCzIgLnByb3RvY29sLldpZGdldFYzLk5hdGl2ZUJ1aWx0aW5SDmJ1aWx0aW5XaWRnZXRzGl0K'
    'DVN1cHBvcnRlZExpc3QSTAoOYnVpbHRpbl9ncm91cHMYASADKAsyJS5wcm90b2NvbC5XaWRnZX'
    'RWMy5OYXRpdmVCdWlsdGluR3JvdXBSDWJ1aWx0aW5Hcm91cHM=');

@$core.Deprecated('Use widgetGroupDescriptor instead')
const WidgetGroup$json = {
  '1': 'WidgetGroup',
  '2': [
    {'1': 'sequency', '3': 1, '4': 2, '5': 13, '10': 'sequency'},
    {
      '1': 'style',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.WidgetGroup.Style',
      '10': 'style'
    },
    {
      '1': 'widgets',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.protocol.WidgetV2',
      '10': 'widgets'
    },
  ],
  '3': [WidgetGroup_Config$json, WidgetGroup_List$json],
  '4': [WidgetGroup_Style$json],
};

@$core.Deprecated('Use widgetGroupDescriptor instead')
const WidgetGroup_Config$json = {
  '1': 'Config',
  '2': [
    {'1': 'min_group_number', '3': 1, '4': 2, '5': 13, '10': 'minGroupNumber'},
    {'1': 'max_group_number', '3': 2, '4': 2, '5': 13, '10': 'maxGroupNumber'},
    {
      '1': 'support_group_styles',
      '3': 3,
      '4': 2,
      '5': 13,
      '10': 'supportGroupStyles'
    },
  ],
};

@$core.Deprecated('Use widgetGroupDescriptor instead')
const WidgetGroup_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'groups',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WidgetGroup',
      '10': 'groups'
    },
    {'1': 'full', '3': 2, '4': 1, '5': 8, '10': 'full'},
    {
      '1': 'config',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.WidgetGroup.Config',
      '10': 'config'
    },
  ],
};

@$core.Deprecated('Use widgetGroupDescriptor instead')
const WidgetGroup_Style$json = {
  '1': 'Style',
  '2': [
    {'1': 'STYLE_1', '2': 1},
    {'1': 'STYLE_2', '2': 2},
    {'1': 'STYLE_3', '2': 4},
    {'1': 'STYLE_4', '2': 8},
    {'1': 'STYLE_5', '2': 16},
    {'1': 'STYLE_6', '2': 32},
    {'1': 'STYLE_7', '2': 64},
    {'1': 'STYLE_8', '2': 128},
    {'1': 'STYLE_9', '2': 256},
    {'1': 'STYLE_10', '2': 512},
    {'1': 'STYLE_11', '2': 1024},
    {'1': 'STYLE_12', '2': 2048},
    {'1': 'STYLE_13', '2': 4096},
    {'1': 'STYLE_14', '2': 8192},
    {'1': 'STYLE_15', '2': 16384},
  ],
};

/// Descriptor for `WidgetGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List widgetGroupDescriptor = $convert.base64Decode(
    'CgtXaWRnZXRHcm91cBIaCghzZXF1ZW5jeRgBIAIoDVIIc2VxdWVuY3kSMQoFc3R5bGUYAiACKA'
    '4yGy5wcm90b2NvbC5XaWRnZXRHcm91cC5TdHlsZVIFc3R5bGUSLAoHd2lkZ2V0cxgDIAMoCzIS'
    'LnByb3RvY29sLldpZGdldFYyUgd3aWRnZXRzGo4BCgZDb25maWcSKAoQbWluX2dyb3VwX251bW'
    'JlchgBIAIoDVIObWluR3JvdXBOdW1iZXISKAoQbWF4X2dyb3VwX251bWJlchgCIAIoDVIObWF4'
    'R3JvdXBOdW1iZXISMAoUc3VwcG9ydF9ncm91cF9zdHlsZXMYAyACKA1SEnN1cHBvcnRHcm91cF'
    'N0eWxlcxp/CgRMaXN0Ei0KBmdyb3VwcxgBIAMoCzIVLnByb3RvY29sLldpZGdldEdyb3VwUgZn'
    'cm91cHMSEgoEZnVsbBgCIAEoCFIEZnVsbBI0CgZjb25maWcYAyABKAsyHC5wcm90b2NvbC5XaW'
    'RnZXRHcm91cC5Db25maWdSBmNvbmZpZyLZAQoFU3R5bGUSCwoHU1RZTEVfMRABEgsKB1NUWUxF'
    'XzIQAhILCgdTVFlMRV8zEAQSCwoHU1RZTEVfNBAIEgsKB1NUWUxFXzUQEBILCgdTVFlMRV82EC'
    'ASCwoHU1RZTEVfNxBAEgwKB1NUWUxFXzgQgAESDAoHU1RZTEVfORCAAhINCghTVFlMRV8xMBCA'
    'BBINCghTVFlMRV8xMRCACBINCghTVFlMRV8xMhCAEBINCghTVFlMRV8xMxCAIBINCghTVFlMRV'
    '8xNBCAQBIOCghTVFlMRV8xNRCAgAE=');

@$core.Deprecated('Use appDescriptor instead')
const App$json = {
  '1': 'App',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    {'1': 'hidden', '3': 3, '4': 1, '5': 8, '10': 'hidden'},
    {'1': 'persist', '3': 4, '4': 1, '5': 8, '10': 'persist'},
    {'1': 'can_more', '3': 5, '4': 1, '5': 8, '10': 'canMore'},
    {'1': 'in_more', '3': 6, '4': 1, '5': 8, '10': 'inMore'},
  ],
  '3': [App_List$json],
};

@$core.Deprecated('Use appDescriptor instead')
const App_List$json = {
  '1': 'List',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.protocol.App', '10': 'list'},
  ],
};

/// Descriptor for `App`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appDescriptor = $convert.base64Decode(
    'CgNBcHASDgoCaWQYASACKAlSAmlkEhIKBG5hbWUYAiACKAlSBG5hbWUSFgoGaGlkZGVuGAMgAS'
    'gIUgZoaWRkZW4SGAoHcGVyc2lzdBgEIAEoCFIHcGVyc2lzdBIZCghjYW5fbW9yZRgFIAEoCFIH'
    'Y2FuTW9yZRIXCgdpbl9tb3JlGAYgASgIUgZpbk1vcmUaKQoETGlzdBIhCgRsaXN0GAEgAygLMg'
    '0ucHJvdG9jb2wuQXBwUgRsaXN0');

@$core.Deprecated('Use appLayoutDescriptor instead')
const AppLayout$json = {
  '1': 'AppLayout',
  '2': [
    {
      '1': 'layout',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.AppLayout.Layout',
      '10': 'layout'
    },
    {'1': 'support_layouts', '3': 2, '4': 1, '5': 13, '10': 'supportLayouts'},
  ],
  '4': [AppLayout_Layout$json],
};

@$core.Deprecated('Use appLayoutDescriptor instead')
const AppLayout_Layout$json = {
  '1': 'Layout',
  '2': [
    {'1': 'LIST', '2': 1},
    {'1': 'GRID', '2': 2},
    {'1': 'GRID_TEXT', '2': 4},
  ],
};

/// Descriptor for `AppLayout`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appLayoutDescriptor = $convert.base64Decode(
    'CglBcHBMYXlvdXQSMgoGbGF5b3V0GAEgAigOMhoucHJvdG9jb2wuQXBwTGF5b3V0LkxheW91dF'
    'IGbGF5b3V0EicKD3N1cHBvcnRfbGF5b3V0cxgCIAEoDVIOc3VwcG9ydExheW91dHMiKwoGTGF5'
    'b3V0EggKBExJU1QQARIICgRHUklEEAISDQoJR1JJRF9URVhUEAQ=');

@$core.Deprecated('Use shortcutDescriptor instead')
const Shortcut$json = {
  '1': 'Shortcut',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.Shortcut.Type',
      '10': 'type'
    },
    {'1': 'sub_type', '3': 2, '4': 1, '5': 13, '10': 'subType'},
  ],
  '3': [Shortcut_List$json],
  '4': [Shortcut_Type$json],
};

@$core.Deprecated('Use shortcutDescriptor instead')
const Shortcut_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.Shortcut',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use shortcutDescriptor instead')
const Shortcut_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'VOICE', '2': 1},
    {'1': 'FUNCTION', '2': 2},
    {'1': 'SPORT', '2': 3},
  ],
};

/// Descriptor for `Shortcut`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shortcutDescriptor = $convert.base64Decode(
    'CghTaG9ydGN1dBIrCgR0eXBlGAEgAigOMhcucHJvdG9jb2wuU2hvcnRjdXQuVHlwZVIEdHlwZR'
    'IZCghzdWJfdHlwZRgCIAEoDVIHc3ViVHlwZRouCgRMaXN0EiYKBGxpc3QYASADKAsyEi5wcm90'
    'b2NvbC5TaG9ydGN1dFIEbGlzdCI0CgRUeXBlEggKBE5PTkUQABIJCgVWT0lDRRABEgwKCEZVTk'
    'NUSU9OEAISCQoFU1BPUlQQAw==');

@$core.Deprecated('Use sportOptionDescriptor instead')
const SportOption$json = {
  '1': 'SportOption',
  '2': [
    {
      '1': 'sport_type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'sportType'
    },
    {'1': 'show', '3': 2, '4': 2, '5': 8, '10': 'show'},
  ],
  '3': [SportOption_List$json],
};

@$core.Deprecated('Use sportOptionDescriptor instead')
const SportOption_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.SportOption',
      '10': 'list'
    },
    {
      '1': 'shortcut_sport_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'shortcutSportType'
    },
  ],
};

/// Descriptor for `SportOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sportOptionDescriptor = $convert.base64Decode(
    'CgtTcG9ydE9wdGlvbhIyCgpzcG9ydF90eXBlGAEgAigOMhMucHJvdG9jb2wuU3BvcnRUeXBlUg'
    'lzcG9ydFR5cGUSEgoEc2hvdxgCIAIoCFIEc2hvdxp2CgRMaXN0EikKBGxpc3QYASADKAsyFS5w'
    'cm90b2NvbC5TcG9ydE9wdGlvblIEbGlzdBJDChNzaG9ydGN1dF9zcG9ydF90eXBlGAIgASgOMh'
    'MucHJvdG9jb2wuU3BvcnRUeXBlUhFzaG9ydGN1dFNwb3J0VHlwZQ==');

@$core.Deprecated('Use forceUpgradeDescriptor instead')
const ForceUpgrade$json = {
  '1': 'ForceUpgrade',
  '2': [
    {'1': 'force', '3': 1, '4': 2, '5': 8, '10': 'force'},
    {'1': 'firmware_version', '3': 2, '4': 2, '5': 9, '10': 'firmwareVersion'},
  ],
};

/// Descriptor for `ForceUpgrade`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forceUpgradeDescriptor = $convert.base64Decode(
    'CgxGb3JjZVVwZ3JhZGUSFAoFZm9yY2UYASACKAhSBWZvcmNlEikKEGZpcm13YXJlX3ZlcnNpb2'
    '4YAiACKAlSD2Zpcm13YXJlVmVyc2lvbg==');

@$core.Deprecated('Use prepareOtaDescriptor instead')
const PrepareOta$json = {
  '1': 'PrepareOta',
  '3': [
    PrepareOta_Progress$json,
    PrepareOta_Request$json,
    PrepareOta_Response$json
  ],
  '4': [PrepareOta_Type$json],
};

@$core.Deprecated('Use prepareOtaDescriptor instead')
const PrepareOta_Progress$json = {
  '1': 'Progress',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 13, '10': 'code'},
    {'1': 'percent', '3': 2, '4': 1, '5': 2, '10': 'percent'},
    {'1': 'min_battery', '3': 3, '4': 1, '5': 13, '10': 'minBattery'},
  ],
};

@$core.Deprecated('Use prepareOtaDescriptor instead')
const PrepareOta_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'force', '3': 1, '4': 2, '5': 8, '10': 'force'},
    {
      '1': 'type',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.PrepareOta.Type',
      '10': 'type'
    },
    {'1': 'firmware_version', '3': 3, '4': 2, '5': 9, '10': 'firmwareVersion'},
    {'1': 'file_md5', '3': 4, '4': 2, '5': 9, '10': 'fileMd5'},
    {'1': 'change_log', '3': 5, '4': 2, '5': 9, '10': 'changeLog'},
    {'1': 'file_url', '3': 6, '4': 2, '5': 9, '10': 'fileUrl'},
    {'1': 'file_size', '3': 7, '4': 1, '5': 13, '10': 'fileSize'},
  ],
};

@$core.Deprecated('Use prepareOtaDescriptor instead')
const PrepareOta_Response$json = {
  '1': 'Response',
  '2': [
    {
      '1': 'prepare_status',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.PrepareStatus',
      '10': 'prepareStatus'
    },
    {
      '1': 'expected_slice_length',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'expectedSliceLength'
    },
    {'1': 'min_battery', '3': 3, '4': 1, '5': 13, '10': 'minBattery'},
    {
      '1': 'progress',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareOta.Progress',
      '10': 'progress'
    },
  ],
};

@$core.Deprecated('Use prepareOtaDescriptor instead')
const PrepareOta_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'ALL', '2': 0},
    {'1': 'ROM', '2': 1},
    {'1': 'RES', '2': 2},
    {'1': 'SILENT', '2': 15},
  ],
};

/// Descriptor for `PrepareOta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareOtaDescriptor = $convert.base64Decode(
    'CgpQcmVwYXJlT3RhGlkKCFByb2dyZXNzEhIKBGNvZGUYASACKA1SBGNvZGUSGAoHcGVyY2VudB'
    'gCIAEoAlIHcGVyY2VudBIfCgttaW5fYmF0dGVyeRgDIAEoDVIKbWluQmF0dGVyeRrrAQoHUmVx'
    'dWVzdBIUCgVmb3JjZRgBIAIoCFIFZm9yY2USLQoEdHlwZRgCIAIoDjIZLnByb3RvY29sLlByZX'
    'BhcmVPdGEuVHlwZVIEdHlwZRIpChBmaXJtd2FyZV92ZXJzaW9uGAMgAigJUg9maXJtd2FyZVZl'
    'cnNpb24SGQoIZmlsZV9tZDUYBCACKAlSB2ZpbGVNZDUSHQoKY2hhbmdlX2xvZxgFIAIoCVIJY2'
    'hhbmdlTG9nEhkKCGZpbGVfdXJsGAYgAigJUgdmaWxlVXJsEhsKCWZpbGVfc2l6ZRgHIAEoDVII'
    'ZmlsZVNpemUa2gEKCFJlc3BvbnNlEj4KDnByZXBhcmVfc3RhdHVzGAEgAigOMhcucHJvdG9jb2'
    'wuUHJlcGFyZVN0YXR1c1INcHJlcGFyZVN0YXR1cxIyChVleHBlY3RlZF9zbGljZV9sZW5ndGgY'
    'AiABKA1SE2V4cGVjdGVkU2xpY2VMZW5ndGgSHwoLbWluX2JhdHRlcnkYAyABKA1SCm1pbkJhdH'
    'RlcnkSOQoIcHJvZ3Jlc3MYBCABKAsyHS5wcm90b2NvbC5QcmVwYXJlT3RhLlByb2dyZXNzUghw'
    'cm9ncmVzcyItCgRUeXBlEgcKA0FMTBAAEgcKA1JPTRABEgcKA1JFUxACEgoKBlNJTEVOVBAP');

@$core.Deprecated('Use smallHabitDescriptor instead')
const SmallHabit$json = {
  '1': 'SmallHabit',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SmallHabit.Type',
      '10': 'type'
    },
    {'1': 'time', '3': 2, '4': 3, '5': 11, '6': '.protocol.Time', '10': 'time'},
    {
      '1': 'clock_mode',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.ClockMode',
      '10': 'clockMode'
    },
    {'1': 'week_days', '3': 4, '4': 1, '5': 13, '10': 'weekDays'},
    {'1': 'enable', '3': 5, '4': 2, '5': 8, '10': 'enable'},
    {'1': 'label', '3': 6, '4': 2, '5': 9, '10': 'label'},
  ],
  '3': [SmallHabit_List$json, SmallHabit_TypeList$json],
  '4': [SmallHabit_Type$json],
};

@$core.Deprecated('Use smallHabitDescriptor instead')
const SmallHabit_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.SmallHabit',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use smallHabitDescriptor instead')
const SmallHabit_TypeList$json = {
  '1': 'TypeList',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.protocol.SmallHabit.Type',
      '10': 'type'
    },
  ],
};

@$core.Deprecated('Use smallHabitDescriptor instead')
const SmallHabit_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'GO_TO_BED_EARLY', '2': 0},
    {'1': 'DO_MORE_EXERCISE', '2': 1},
    {'1': 'DRINK_WATER', '2': 2},
    {'1': 'READING', '2': 3},
    {'1': 'EAT_BREAKFAST', '2': 4},
    {'1': 'CALL_PARENTS', '2': 5},
    {'1': 'EAT_FRUIT', '2': 6},
    {'1': 'ACTIVE_NECK', '2': 7},
    {'1': 'LEARN_TO_CHARGE', '2': 8},
    {'1': 'PRACTICE_A_SKILL', '2': 9},
    {'1': 'CONTACT_FRIEND', '2': 10},
    {'1': 'SITTING_UPRIGHT', '2': 11},
    {'1': 'EAT_VEGETABLE', '2': 12},
    {'1': 'CIVILIZED_LANGUAGE', '2': 13},
    {'1': 'MEDITATION', '2': 14},
    {'1': 'BOOK_KEEPING', '2': 15},
    {'1': 'RECITE_WORDS', '2': 16},
    {'1': 'WALK_AFTER_MEAL', '2': 17},
    {'1': 'GO_OUT_WITH_KEY', '2': 18},
    {'1': 'DAILY_SUMMARY', '2': 19},
    {'1': 'GARGLE_AFTER_MEAL', '2': 20},
    {'1': 'SMILE_MORE', '2': 21},
    {'1': 'TAKE_MEDICINE', '2': 22},
    {'1': 'NOT_HUMPBACK', '2': 23},
    {'1': 'CALLIGRAPHY', '2': 24},
    {'1': 'LUNCH_BREAK', '2': 25},
    {'1': 'DO_EYE_EXERCISES', '2': 26},
    {'1': 'DO_YOGA', '2': 27},
    {'1': 'APPLY_FACIAL_MASK', '2': 28},
    {'1': 'QUIT_SUGAR', '2': 29},
    {'1': 'SHOVEL_CAT_LITTER', '2': 30},
    {'1': 'ONLINE_LESSON', '2': 31},
    {'1': 'WATERING_FLOWERS', '2': 32},
    {'1': 'TAKE_A_PICTURE_ONE_DAY', '2': 33},
  ],
};

/// Descriptor for `SmallHabit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smallHabitDescriptor = $convert.base64Decode(
    'CgpTbWFsbEhhYml0Ei0KBHR5cGUYASACKA4yGS5wcm90b2NvbC5TbWFsbEhhYml0LlR5cGVSBH'
    'R5cGUSIgoEdGltZRgCIAMoCzIOLnByb3RvY29sLlRpbWVSBHRpbWUSMgoKY2xvY2tfbW9kZRgD'
    'IAIoDjITLnByb3RvY29sLkNsb2NrTW9kZVIJY2xvY2tNb2RlEhsKCXdlZWtfZGF5cxgEIAEoDV'
    'IId2Vla0RheXMSFgoGZW5hYmxlGAUgAigIUgZlbmFibGUSFAoFbGFiZWwYBiACKAlSBWxhYmVs'
    'GjAKBExpc3QSKAoEbGlzdBgBIAMoCzIULnByb3RvY29sLlNtYWxsSGFiaXRSBGxpc3QaOQoIVH'
    'lwZUxpc3QSLQoEdHlwZRgBIAMoDjIZLnByb3RvY29sLlNtYWxsSGFiaXQuVHlwZVIEdHlwZSKY'
    'BQoEVHlwZRITCg9HT19UT19CRURfRUFSTFkQABIUChBET19NT1JFX0VYRVJDSVNFEAESDwoLRF'
    'JJTktfV0FURVIQAhILCgdSRUFESU5HEAMSEQoNRUFUX0JSRUFLRkFTVBAEEhAKDENBTExfUEFS'
    'RU5UUxAFEg0KCUVBVF9GUlVJVBAGEg8KC0FDVElWRV9ORUNLEAcSEwoPTEVBUk5fVE9fQ0hBUk'
    'dFEAgSFAoQUFJBQ1RJQ0VfQV9TS0lMTBAJEhIKDkNPTlRBQ1RfRlJJRU5EEAoSEwoPU0lUVElO'
    'R19VUFJJR0hUEAsSEQoNRUFUX1ZFR0VUQUJMRRAMEhYKEkNJVklMSVpFRF9MQU5HVUFHRRANEg'
    '4KCk1FRElUQVRJT04QDhIQCgxCT09LX0tFRVBJTkcQDxIQCgxSRUNJVEVfV09SRFMQEBITCg9X'
    'QUxLX0FGVEVSX01FQUwQERITCg9HT19PVVRfV0lUSF9LRVkQEhIRCg1EQUlMWV9TVU1NQVJZEB'
    'MSFQoRR0FSR0xFX0FGVEVSX01FQUwQFBIOCgpTTUlMRV9NT1JFEBUSEQoNVEFLRV9NRURJQ0lO'
    'RRAWEhAKDE5PVF9IVU1QQkFDSxAXEg8KC0NBTExJR1JBUEhZEBgSDwoLTFVOQ0hfQlJFQUsQGR'
    'IUChBET19FWUVfRVhFUkNJU0VTEBoSCwoHRE9fWU9HQRAbEhUKEUFQUExZX0ZBQ0lBTF9NQVNL'
    'EBwSDgoKUVVJVF9TVUdBUhAdEhUKEVNIT1ZFTF9DQVRfTElUVEVSEB4SEQoNT05MSU5FX0xFU1'
    'NPThAfEhQKEFdBVEVSSU5HX0ZMT1dFUlMQIBIaChZUQUtFX0FfUElDVFVSRV9PTkVfREFZECE=');

@$core.Deprecated('Use wiFiConfigDescriptor instead')
const WiFiConfig$json = {
  '1': 'WiFiConfig',
  '2': [
    {
      '1': 'basic_info',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.WiFiConfig.BasicInfo',
      '10': 'basicInfo'
    },
    {
      '1': 'psk_info',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiConfig.PSKInfo',
      '9': 0,
      '10': 'pskInfo'
    },
    {
      '1': 'eap_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiConfig.EAPInfo',
      '9': 0,
      '10': 'eapInfo'
    },
  ],
  '3': [
    WiFiConfig_Capability$json,
    WiFiConfig_BasicInfo$json,
    WiFiConfig_PSKInfo$json,
    WiFiConfig_EAPInfo$json,
    WiFiConfig_Result$json,
    WiFiConfig_List$json
  ],
  '4': [WiFiConfig_AuthMode$json, WiFiConfig_Frequency$json],
  '8': [
    {'1': 'auth_info'},
  ],
};

@$core.Deprecated('Use wiFiConfigDescriptor instead')
const WiFiConfig_Capability$json = {
  '1': 'Capability',
  '2': [
    {
      '1': 'support_auth_mode',
      '3': 1,
      '4': 1,
      '5': 13,
      '10': 'supportAuthMode'
    },
    {
      '1': 'support_frequency',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'supportFrequency'
    },
  ],
};

@$core.Deprecated('Use wiFiConfigDescriptor instead')
const WiFiConfig_BasicInfo$json = {
  '1': 'BasicInfo',
  '2': [
    {'1': 'ssid', '3': 1, '4': 2, '5': 9, '10': 'ssid'},
    {
      '1': 'auth_mode',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.WiFiConfig.AuthMode',
      '10': 'authMode'
    },
    {
      '1': 'frequency',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.WiFiConfig.Frequency',
      '10': 'frequency'
    },
  ],
};

@$core.Deprecated('Use wiFiConfigDescriptor instead')
const WiFiConfig_PSKInfo$json = {
  '1': 'PSKInfo',
  '2': [
    {'1': 'password', '3': 1, '4': 2, '5': 9, '10': 'password'},
  ],
};

@$core.Deprecated('Use wiFiConfigDescriptor instead')
const WiFiConfig_EAPInfo$json = {
  '1': 'EAPInfo',
  '2': [
    {'1': 'identity', '3': 1, '4': 2, '5': 9, '10': 'identity'},
    {'1': 'password', '3': 2, '4': 2, '5': 9, '10': 'password'},
  ],
};

@$core.Deprecated('Use wiFiConfigDescriptor instead')
const WiFiConfig_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'ssid', '3': 1, '4': 2, '5': 9, '10': 'ssid'},
    {'1': 'code', '3': 2, '4': 2, '5': 13, '10': 'code'},
  ],
};

@$core.Deprecated('Use wiFiConfigDescriptor instead')
const WiFiConfig_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WiFiConfig',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use wiFiConfigDescriptor instead')
const WiFiConfig_AuthMode$json = {
  '1': 'AuthMode',
  '2': [
    {'1': 'WPA_NONE', '2': 1},
    {'1': 'WPA_PSK', '2': 2},
    {'1': 'WPA_EAP', '2': 4},
  ],
};

@$core.Deprecated('Use wiFiConfigDescriptor instead')
const WiFiConfig_Frequency$json = {
  '1': 'Frequency',
  '2': [
    {'1': 'F_24G', '2': 1},
    {'1': 'F_5G', '2': 2},
  ],
};

/// Descriptor for `WiFiConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wiFiConfigDescriptor = $convert.base64Decode(
    'CgpXaUZpQ29uZmlnEj0KCmJhc2ljX2luZm8YASACKAsyHi5wcm90b2NvbC5XaUZpQ29uZmlnLk'
    'Jhc2ljSW5mb1IJYmFzaWNJbmZvEjkKCHBza19pbmZvGAIgASgLMhwucHJvdG9jb2wuV2lGaUNv'
    'bmZpZy5QU0tJbmZvSABSB3Bza0luZm8SOQoIZWFwX2luZm8YAyABKAsyHC5wcm90b2NvbC5XaU'
    'ZpQ29uZmlnLkVBUEluZm9IAFIHZWFwSW5mbxplCgpDYXBhYmlsaXR5EioKEXN1cHBvcnRfYXV0'
    'aF9tb2RlGAEgASgNUg9zdXBwb3J0QXV0aE1vZGUSKwoRc3VwcG9ydF9mcmVxdWVuY3kYAiABKA'
    '1SEHN1cHBvcnRGcmVxdWVuY3kamQEKCUJhc2ljSW5mbxISCgRzc2lkGAEgAigJUgRzc2lkEjoK'
    'CWF1dGhfbW9kZRgCIAIoDjIdLnByb3RvY29sLldpRmlDb25maWcuQXV0aE1vZGVSCGF1dGhNb2'
    'RlEjwKCWZyZXF1ZW5jeRgDIAIoDjIeLnByb3RvY29sLldpRmlDb25maWcuRnJlcXVlbmN5Uglm'
    'cmVxdWVuY3kaJQoHUFNLSW5mbxIaCghwYXNzd29yZBgBIAIoCVIIcGFzc3dvcmQaQQoHRUFQSW'
    '5mbxIaCghpZGVudGl0eRgBIAIoCVIIaWRlbnRpdHkSGgoIcGFzc3dvcmQYAiACKAlSCHBhc3N3'
    'b3JkGjAKBlJlc3VsdBISCgRzc2lkGAEgAigJUgRzc2lkEhIKBGNvZGUYAiACKA1SBGNvZGUaMA'
    'oETGlzdBIoCgRsaXN0GAEgAygLMhQucHJvdG9jb2wuV2lGaUNvbmZpZ1IEbGlzdCIyCghBdXRo'
    'TW9kZRIMCghXUEFfTk9ORRABEgsKB1dQQV9QU0sQAhILCgdXUEFfRUFQEAQiIAoJRnJlcXVlbm'
    'N5EgkKBUZfMjRHEAESCAoERl81RxACQgsKCWF1dGhfaW5mbw==');

@$core.Deprecated('Use basicStatusDescriptor instead')
const BasicStatus$json = {
  '1': 'BasicStatus',
  '3': [
    BasicStatus_Sport$json,
    BasicStatus_Present$json,
    BasicStatus_Report$json
  ],
  '4': [
    BasicStatus_Charging$json,
    BasicStatus_Wearing$json,
    BasicStatus_Sleeping$json,
    BasicStatus_Warning$json
  ],
};

@$core.Deprecated('Use basicStatusDescriptor instead')
const BasicStatus_Sport$json = {
  '1': 'Sport',
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
      '1': 'sport_state',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protocol.SportState',
      '10': 'sportState'
    },
  ],
};

@$core.Deprecated('Use basicStatusDescriptor instead')
const BasicStatus_Present$json = {
  '1': 'Present',
  '2': [
    {'1': 'is_charging', '3': 1, '4': 2, '5': 8, '10': 'isCharging'},
    {'1': 'battery', '3': 2, '4': 1, '5': 13, '10': 'battery'},
    {'1': 'is_wearing', '3': 3, '4': 2, '5': 8, '10': 'isWearing'},
    {'1': 'is_sleeping', '3': 4, '4': 2, '5': 8, '10': 'isSleeping'},
    {
      '1': 'sport',
      '3': 5,
      '4': 2,
      '5': 11,
      '6': '.protocol.BasicStatus.Sport',
      '10': 'sport'
    },
  ],
};

@$core.Deprecated('Use basicStatusDescriptor instead')
const BasicStatus_Report$json = {
  '1': 'Report',
  '2': [
    {
      '1': 'charging',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.protocol.BasicStatus.Charging',
      '10': 'charging'
    },
    {
      '1': 'wearing',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protocol.BasicStatus.Wearing',
      '10': 'wearing'
    },
    {
      '1': 'sleeping',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.protocol.BasicStatus.Sleeping',
      '10': 'sleeping'
    },
    {
      '1': 'waring',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.protocol.BasicStatus.Warning',
      '10': 'waring'
    },
    {
      '1': 'sport',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.BasicStatus.Sport',
      '10': 'sport'
    },
  ],
};

@$core.Deprecated('Use basicStatusDescriptor instead')
const BasicStatus_Charging$json = {
  '1': 'Charging',
  '2': [
    {'1': 'START', '2': 1},
    {'1': 'QUIT', '2': 2},
    {'1': 'FINISH', '2': 3},
  ],
};

@$core.Deprecated('Use basicStatusDescriptor instead')
const BasicStatus_Wearing$json = {
  '1': 'Wearing',
  '2': [
    {'1': 'ON', '2': 1},
    {'1': 'OFF', '2': 2},
  ],
};

@$core.Deprecated('Use basicStatusDescriptor instead')
const BasicStatus_Sleeping$json = {
  '1': 'Sleeping',
  '2': [
    {'1': 'IN', '2': 1},
    {'1': 'OUT', '2': 2},
  ],
};

@$core.Deprecated('Use basicStatusDescriptor instead')
const BasicStatus_Warning$json = {
  '1': 'Warning',
  '2': [
    {'1': 'HEART_RATE_HIGH', '2': 1},
    {'1': 'HEART_RATE_LOW', '2': 2},
    {'1': 'ACTIVE_HEART_RATE_HIGH', '2': 3},
    {'1': 'ACTIVE_HEART_RATE_LOW', '2': 4},
  ],
};

/// Descriptor for `BasicStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicStatusDescriptor = $convert.base64Decode(
    'CgtCYXNpY1N0YXR1cxpyCgVTcG9ydBIyCgpzcG9ydF90eXBlGAEgAigOMhMucHJvdG9jb2wuU3'
    'BvcnRUeXBlUglzcG9ydFR5cGUSNQoLc3BvcnRfc3RhdGUYAiABKA4yFC5wcm90b2NvbC5TcG9y'
    'dFN0YXRlUgpzcG9ydFN0YXRlGrcBCgdQcmVzZW50Eh8KC2lzX2NoYXJnaW5nGAEgAigIUgppc0'
    'NoYXJnaW5nEhgKB2JhdHRlcnkYAiABKA1SB2JhdHRlcnkSHQoKaXNfd2VhcmluZxgDIAIoCFIJ'
    'aXNXZWFyaW5nEh8KC2lzX3NsZWVwaW5nGAQgAigIUgppc1NsZWVwaW5nEjEKBXNwb3J0GAUgAi'
    'gLMhsucHJvdG9jb2wuQmFzaWNTdGF0dXMuU3BvcnRSBXNwb3J0GqMCCgZSZXBvcnQSOgoIY2hh'
    'cmdpbmcYASABKA4yHi5wcm90b2NvbC5CYXNpY1N0YXR1cy5DaGFyZ2luZ1IIY2hhcmdpbmcSNw'
    'oHd2VhcmluZxgCIAEoDjIdLnByb3RvY29sLkJhc2ljU3RhdHVzLldlYXJpbmdSB3dlYXJpbmcS'
    'OgoIc2xlZXBpbmcYAyABKA4yHi5wcm90b2NvbC5CYXNpY1N0YXR1cy5TbGVlcGluZ1IIc2xlZX'
    'BpbmcSNQoGd2FyaW5nGAQgASgOMh0ucHJvdG9jb2wuQmFzaWNTdGF0dXMuV2FybmluZ1IGd2Fy'
    'aW5nEjEKBXNwb3J0GAUgASgLMhsucHJvdG9jb2wuQmFzaWNTdGF0dXMuU3BvcnRSBXNwb3J0Ii'
    'sKCENoYXJnaW5nEgkKBVNUQVJUEAESCAoEUVVJVBACEgoKBkZJTklTSBADIhoKB1dlYXJpbmcS'
    'BgoCT04QARIHCgNPRkYQAiIbCghTbGVlcGluZxIGCgJJThABEgcKA09VVBACImkKB1dhcm5pbm'
    'cSEwoPSEVBUlRfUkFURV9ISUdIEAESEgoOSEVBUlRfUkFURV9MT1cQAhIaChZBQ1RJVkVfSEVB'
    'UlRfUkFURV9ISUdIEAMSGQoVQUNUSVZFX0hFQVJUX1JBVEVfTE9XEAQ=');

@$core.Deprecated('Use reportDataDescriptor instead')
const ReportData$json = {
  '1': 'ReportData',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ReportData.Type',
      '10': 'type'
    },
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
  '3': [ReportData_Result$json],
  '4': [ReportData_Type$json, ReportData_Status$json],
};

@$core.Deprecated('Use reportDataDescriptor instead')
const ReportData_Result$json = {
  '1': 'Result',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ReportData.Type',
      '10': 'type'
    },
    {
      '1': 'status',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.ReportData.Status',
      '10': 'status'
    },
  ],
};

@$core.Deprecated('Use reportDataDescriptor instead')
const ReportData_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'DEVICE_LOG', '2': 1},
    {'1': 'STATISTICS', '2': 2},
    {'1': 'DUMP_LOG', '2': 3},
  ],
};

@$core.Deprecated('Use reportDataDescriptor instead')
const ReportData_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'NO_DATA', '2': 1},
    {'1': 'URL_DIRECT', '2': 2},
    {'1': 'BUSY', '2': 3},
    {'1': 'FAIL', '2': 10},
  ],
};

/// Descriptor for `ReportData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportDataDescriptor = $convert.base64Decode(
    'CgpSZXBvcnREYXRhEi0KBHR5cGUYASACKA4yGS5wcm90b2NvbC5SZXBvcnREYXRhLlR5cGVSBH'
    'R5cGUSDgoCaWQYAiABKAlSAmlkGmwKBlJlc3VsdBItCgR0eXBlGAEgAigOMhkucHJvdG9jb2wu'
    'UmVwb3J0RGF0YS5UeXBlUgR0eXBlEjMKBnN0YXR1cxgCIAIoDjIbLnByb3RvY29sLlJlcG9ydE'
    'RhdGEuU3RhdHVzUgZzdGF0dXMiNAoEVHlwZRIOCgpERVZJQ0VfTE9HEAESDgoKU1RBVElTVElD'
    'UxACEgwKCERVTVBfTE9HEAMiRgoGU3RhdHVzEgsKB1NVQ0NFU1MQABILCgdOT19EQVRBEAESDg'
    'oKVVJMX0RJUkVDVBACEggKBEJVU1kQAxIICgRGQUlMEAo=');

@$core.Deprecated('Use networkProxyDescriptor instead')
const NetworkProxy$json = {
  '1': 'NetworkProxy',
  '3': [NetworkProxy_Request$json],
  '4': [NetworkProxy_Type$json],
};

@$core.Deprecated('Use networkProxyDescriptor instead')
const NetworkProxy_Request$json = {
  '1': 'Request',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.NetworkProxy.Type',
      '10': 'type'
    },
  ],
};

@$core.Deprecated('Use networkProxyDescriptor instead')
const NetworkProxy_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'PAN', '2': 1},
  ],
};

/// Descriptor for `NetworkProxy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkProxyDescriptor = $convert.base64Decode(
    'CgxOZXR3b3JrUHJveHkaOgoHUmVxdWVzdBIvCgR0eXBlGAEgAigOMhsucHJvdG9jb2wuTmV0d2'
    '9ya1Byb3h5LlR5cGVSBHR5cGUiDwoEVHlwZRIHCgNQQU4QAQ==');

@$core.Deprecated('Use wiFiAPDescriptor instead')
const WiFiAP$json = {
  '1': 'WiFiAP',
  '2': [
    {'1': 'ssid', '3': 1, '4': 2, '5': 9, '10': 'ssid'},
    {'1': 'password', '3': 2, '4': 2, '5': 9, '10': 'password'},
    {'1': 'gateway', '3': 3, '4': 2, '5': 9, '10': 'gateway'},
  ],
  '3': [WiFiAP_Result$json],
};

@$core.Deprecated('Use wiFiAPDescriptor instead')
const WiFiAP_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 13, '10': 'code'},
    {
      '1': 'wifi_ap',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.WiFiAP',
      '10': 'wifiAp'
    },
  ],
};

/// Descriptor for `WiFiAP`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wiFiAPDescriptor = $convert.base64Decode(
    'CgZXaUZpQVASEgoEc3NpZBgBIAIoCVIEc3NpZBIaCghwYXNzd29yZBgCIAIoCVIIcGFzc3dvcm'
    'QSGAoHZ2F0ZXdheRgDIAIoCVIHZ2F0ZXdheRpHCgZSZXN1bHQSEgoEY29kZRgBIAIoDVIEY29k'
    'ZRIpCgd3aWZpX2FwGAIgASgLMhAucHJvdG9jb2wuV2lGaUFQUgZ3aWZpQXA=');

@$core.Deprecated('Use alertStatusDescriptor instead')
const AlertStatus$json = {
  '1': 'AlertStatus',
  '2': [
    {
      '1': 'battery',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertStatus.Battery',
      '10': 'battery'
    },
    {
      '1': 'temperature',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertStatus.Temperature',
      '10': 'temperature'
    },
    {
      '1': 'storage',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertStatus.Storage',
      '10': 'storage'
    },
    {
      '1': 'ota',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertStatus.Ota',
      '10': 'ota'
    },
    {
      '1': 'electrochromic',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertStatus.Electrochromic',
      '10': 'electrochromic'
    },
    {
      '1': 'camera',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertStatus.Camera',
      '10': 'camera'
    },
    {
      '1': 'wear',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertStatus.Wear',
      '10': 'wear'
    },
  ],
  '3': [
    AlertStatus_Battery$json,
    AlertStatus_Temperature$json,
    AlertStatus_Storage$json,
    AlertStatus_Ota$json,
    AlertStatus_Electrochromic$json,
    AlertStatus_Camera$json,
    AlertStatus_Wear$json
  ],
};

@$core.Deprecated('Use alertStatusDescriptor instead')
const AlertStatus_Battery$json = {
  '1': 'Battery',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    {'1': 'capacity', '3': 2, '4': 2, '5': 13, '10': 'capacity'},
  ],
};

@$core.Deprecated('Use alertStatusDescriptor instead')
const AlertStatus_Temperature$json = {
  '1': 'Temperature',
  '2': [
    {'1': 'high', '3': 1, '4': 2, '5': 8, '10': 'high'},
    {'1': 'temp', '3': 2, '4': 2, '5': 13, '10': 'temp'},
  ],
};

@$core.Deprecated('Use alertStatusDescriptor instead')
const AlertStatus_Storage$json = {
  '1': 'Storage',
  '2': [
    {'1': 'free_space', '3': 1, '4': 2, '5': 13, '10': 'freeSpace'},
  ],
};

@$core.Deprecated('Use alertStatusDescriptor instead')
const AlertStatus_Ota$json = {
  '1': 'Ota',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 13, '10': 'status'},
    {'1': 'error_code', '3': 2, '4': 1, '5': 13, '10': 'errorCode'},
  ],
};

@$core.Deprecated('Use alertStatusDescriptor instead')
const AlertStatus_Electrochromic$json = {
  '1': 'Electrochromic',
  '2': [
    {'1': 'color', '3': 1, '4': 2, '5': 13, '10': 'color'},
    {'1': 'level', '3': 2, '4': 2, '5': 13, '10': 'level'},
  ],
};

@$core.Deprecated('Use alertStatusDescriptor instead')
const AlertStatus_Camera$json = {
  '1': 'Camera',
  '2': [
    {'1': 'status', '3': 1, '4': 2, '5': 13, '10': 'status'},
  ],
};

@$core.Deprecated('Use alertStatusDescriptor instead')
const AlertStatus_Wear$json = {
  '1': 'Wear',
  '2': [
    {'1': 'mode', '3': 1, '4': 2, '5': 13, '10': 'mode'},
  ],
};

/// Descriptor for `AlertStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alertStatusDescriptor = $convert.base64Decode(
    'CgtBbGVydFN0YXR1cxI3CgdiYXR0ZXJ5GAEgASgLMh0ucHJvdG9jb2wuQWxlcnRTdGF0dXMuQm'
    'F0dGVyeVIHYmF0dGVyeRJDCgt0ZW1wZXJhdHVyZRgCIAEoCzIhLnByb3RvY29sLkFsZXJ0U3Rh'
    'dHVzLlRlbXBlcmF0dXJlUgt0ZW1wZXJhdHVyZRI3CgdzdG9yYWdlGAMgASgLMh0ucHJvdG9jb2'
    'wuQWxlcnRTdGF0dXMuU3RvcmFnZVIHc3RvcmFnZRIrCgNvdGEYBCABKAsyGS5wcm90b2NvbC5B'
    'bGVydFN0YXR1cy5PdGFSA290YRJMCg5lbGVjdHJvY2hyb21pYxgFIAEoCzIkLnByb3RvY29sLk'
    'FsZXJ0U3RhdHVzLkVsZWN0cm9jaHJvbWljUg5lbGVjdHJvY2hyb21pYxI0CgZjYW1lcmEYBiAB'
    'KAsyHC5wcm90b2NvbC5BbGVydFN0YXR1cy5DYW1lcmFSBmNhbWVyYRIuCgR3ZWFyGAcgASgLMh'
    'oucHJvdG9jb2wuQWxlcnRTdGF0dXMuV2VhclIEd2Vhcho5CgdCYXR0ZXJ5EhIKBHR5cGUYASAC'
    'KA1SBHR5cGUSGgoIY2FwYWNpdHkYAiACKA1SCGNhcGFjaXR5GjUKC1RlbXBlcmF0dXJlEhIKBG'
    'hpZ2gYASACKAhSBGhpZ2gSEgoEdGVtcBgCIAIoDVIEdGVtcBooCgdTdG9yYWdlEh0KCmZyZWVf'
    'c3BhY2UYASACKA1SCWZyZWVTcGFjZRo8CgNPdGESFgoGc3RhdHVzGAEgASgNUgZzdGF0dXMSHQ'
    'oKZXJyb3JfY29kZRgCIAEoDVIJZXJyb3JDb2RlGjwKDkVsZWN0cm9jaHJvbWljEhQKBWNvbG9y'
    'GAEgAigNUgVjb2xvchIUCgVsZXZlbBgCIAIoDVIFbGV2ZWwaIAoGQ2FtZXJhEhYKBnN0YXR1cx'
    'gBIAIoDVIGc3RhdHVzGhoKBFdlYXISEgoEbW9kZRgBIAIoDVIEbW9kZQ==');

@$core.Deprecated('Use networkStatusDescriptor instead')
const NetworkStatus$json = {
  '1': 'NetworkStatus',
  '2': [
    {'1': 'capability', '3': 1, '4': 2, '5': 13, '10': 'capability'},
  ],
};

/// Descriptor for `NetworkStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkStatusDescriptor = $convert.base64Decode(
    'Cg1OZXR3b3JrU3RhdHVzEh4KCmNhcGFiaWxpdHkYASACKA1SCmNhcGFiaWxpdHk=');

@$core.Deprecated('Use usageGuideDescriptor instead')
const UsageGuide$json = {
  '1': 'UsageGuide',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {'1': 'need_feedback', '3': 2, '4': 2, '5': 8, '10': 'needFeedback'},
  ],
  '3': [UsageGuide_Feedback$json],
};

@$core.Deprecated('Use usageGuideDescriptor instead')
const UsageGuide_Feedback$json = {
  '1': 'Feedback',
  '2': [
    {'1': 'guide_id', '3': 1, '4': 2, '5': 13, '10': 'guideId'},
    {'1': 'success', '3': 2, '4': 2, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UsageGuide`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usageGuideDescriptor = $convert.base64Decode(
    'CgpVc2FnZUd1aWRlEg4KAmlkGAEgAigNUgJpZBIjCg1uZWVkX2ZlZWRiYWNrGAIgAigIUgxuZW'
    'VkRmVlZGJhY2saPwoIRmVlZGJhY2sSGQoIZ3VpZGVfaWQYASACKA1SB2d1aWRlSWQSGAoHc3Vj'
    'Y2VzcxgCIAIoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting$json = {
  '1': 'SystemSetting',
  '2': [
    {
      '1': 'notificaton_setting',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.NotificationSetting',
      '10': 'notificatonSetting'
    },
    {
      '1': 'dnd_mode',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.DNDMode',
      '10': 'dndMode'
    },
    {
      '1': 'wear_setting',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.WearSetting',
      '10': 'wearSetting'
    },
    {
      '1': 'disconnect_reminder',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.DisconnectReminder',
      '10': 'disconnectReminder'
    },
    {
      '1': 'indicator_light',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.IndicatorLight',
      '10': 'indicatorLight'
    },
    {
      '1': 'ai_assistant',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.AIAssistant',
      '10': 'aiAssistant'
    },
    {
      '1': 'media_setting',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.MediaSetting',
      '10': 'mediaSetting'
    },
    {
      '1': 'headset',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.Headset',
      '10': 'headset'
    },
    {
      '1': 'ota_setting',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.OtaSetting',
      '10': 'otaSetting'
    },
  ],
  '3': [
    SystemSetting_NotificationSetting$json,
    SystemSetting_DNDMode$json,
    SystemSetting_WearSetting$json,
    SystemSetting_DisconnectReminder$json,
    SystemSetting_IndicatorLight$json,
    SystemSetting_AIAssistant$json,
    SystemSetting_MediaSetting$json,
    SystemSetting_Headset$json,
    SystemSetting_OtaSetting$json,
    SystemSetting_Request$json
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_NotificationSetting$json = {
  '1': 'NotificationSetting',
  '2': [
    {
      '1': 'auto_screen',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.OptionalSwitcher',
      '10': 'autoScreen'
    },
    {
      '1': 'only_lockscreen',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.OptionalSwitcher',
      '10': 'onlyLockscreen'
    },
    {
      '1': 'only_wear',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.protocol.OptionalSwitcher',
      '10': 'onlyWear'
    },
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_DNDMode$json = {
  '1': 'DNDMode',
  '2': [
    {'1': 'sync_with_phone', '3': 1, '4': 2, '5': 8, '10': 'syncWithPhone'},
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_WearSetting$json = {
  '1': 'WearSetting',
  '2': [
    {
      '1': 'wear_mode',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.WearMode',
      '10': 'wearMode'
    },
    {
      '1': 'hybrid_mode',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetting.WearSetting.HybridMode',
      '10': 'hybridMode'
    },
  ],
  '3': [SystemSetting_WearSetting_HybridMode$json],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_WearSetting_HybridMode$json = {
  '1': 'HybridMode',
  '2': [
    {
      '1': 'power_mode',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.PowerMode',
      '10': 'powerMode'
    },
    {'1': 'lack_feature', '3': 2, '4': 1, '5': 4, '10': 'lackFeature'},
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_DisconnectReminder$json = {
  '1': 'DisconnectReminder',
  '2': [
    {'1': 'alert', '3': 1, '4': 2, '5': 8, '10': 'alert'},
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_IndicatorLight$json = {
  '1': 'IndicatorLight',
  '2': [
    {'1': 'brightness', '3': 1, '4': 2, '5': 13, '10': 'brightness'},
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_AIAssistant$json = {
  '1': 'AIAssistant',
  '2': [
    {'1': 'voice_wakeup', '3': 1, '4': 2, '5': 8, '10': 'voiceWakeup'},
    {'1': 'camera_access', '3': 2, '4': 1, '5': 8, '10': 'cameraAccess'},
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_MediaSetting$json = {
  '1': 'MediaSetting',
  '2': [
    {'1': 'shooting_mode', '3': 1, '4': 2, '5': 13, '10': 'shootingMode'},
    {'1': 'video_duration', '3': 2, '4': 2, '5': 13, '10': 'videoDuration'},
    {'1': 'auto_sync', '3': 3, '4': 2, '5': 8, '10': 'autoSync'},
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_Headset$json = {
  '1': 'Headset',
  '2': [
    {'1': 'wear_detection', '3': 1, '4': 2, '5': 8, '10': 'wearDetection'},
    {'1': 'volume_adaptive', '3': 2, '4': 1, '5': 8, '10': 'volumeAdaptive'},
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_OtaSetting$json = {
  '1': 'OtaSetting',
  '2': [
    {'1': 'silent', '3': 1, '4': 2, '5': 8, '10': 'silent'},
  ],
};

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'items', '3': 1, '4': 2, '5': 13, '10': 'items'},
  ],
};

/// Descriptor for `SystemSetting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemSettingDescriptor = $convert.base64Decode(
    'Cg1TeXN0ZW1TZXR0aW5nElwKE25vdGlmaWNhdG9uX3NldHRpbmcYASABKAsyKy5wcm90b2NvbC'
    '5TeXN0ZW1TZXR0aW5nLk5vdGlmaWNhdGlvblNldHRpbmdSEm5vdGlmaWNhdG9uU2V0dGluZxI6'
    'CghkbmRfbW9kZRgCIAEoCzIfLnByb3RvY29sLlN5c3RlbVNldHRpbmcuRE5ETW9kZVIHZG5kTW'
    '9kZRJGCgx3ZWFyX3NldHRpbmcYAyABKAsyIy5wcm90b2NvbC5TeXN0ZW1TZXR0aW5nLldlYXJT'
    'ZXR0aW5nUgt3ZWFyU2V0dGluZxJbChNkaXNjb25uZWN0X3JlbWluZGVyGAQgASgLMioucHJvdG'
    '9jb2wuU3lzdGVtU2V0dGluZy5EaXNjb25uZWN0UmVtaW5kZXJSEmRpc2Nvbm5lY3RSZW1pbmRl'
    'chJPCg9pbmRpY2F0b3JfbGlnaHQYBSABKAsyJi5wcm90b2NvbC5TeXN0ZW1TZXR0aW5nLkluZG'
    'ljYXRvckxpZ2h0Ug5pbmRpY2F0b3JMaWdodBJGCgxhaV9hc3Npc3RhbnQYBiABKAsyIy5wcm90'
    'b2NvbC5TeXN0ZW1TZXR0aW5nLkFJQXNzaXN0YW50UgthaUFzc2lzdGFudBJJCg1tZWRpYV9zZX'
    'R0aW5nGAcgASgLMiQucHJvdG9jb2wuU3lzdGVtU2V0dGluZy5NZWRpYVNldHRpbmdSDG1lZGlh'
    'U2V0dGluZxI5CgdoZWFkc2V0GAggASgLMh8ucHJvdG9jb2wuU3lzdGVtU2V0dGluZy5IZWFkc2'
    'V0UgdoZWFkc2V0EkMKC290YV9zZXR0aW5nGAkgASgLMiIucHJvdG9jb2wuU3lzdGVtU2V0dGlu'
    'Zy5PdGFTZXR0aW5nUgpvdGFTZXR0aW5nGtABChNOb3RpZmljYXRpb25TZXR0aW5nEjsKC2F1dG'
    '9fc2NyZWVuGAEgAigOMhoucHJvdG9jb2wuT3B0aW9uYWxTd2l0Y2hlclIKYXV0b1NjcmVlbhJD'
    'Cg9vbmx5X2xvY2tzY3JlZW4YAiACKA4yGi5wcm90b2NvbC5PcHRpb25hbFN3aXRjaGVyUg5vbm'
    'x5TG9ja3NjcmVlbhI3Cglvbmx5X3dlYXIYAyABKA4yGi5wcm90b2NvbC5PcHRpb25hbFN3aXRj'
    'aGVyUghvbmx5V2VhchoxCgdETkRNb2RlEiYKD3N5bmNfd2l0aF9waG9uZRgBIAIoCFINc3luY1'
    'dpdGhQaG9uZRr0AQoLV2VhclNldHRpbmcSLwoJd2Vhcl9tb2RlGAEgAigOMhIucHJvdG9jb2wu'
    'V2Vhck1vZGVSCHdlYXJNb2RlEk8KC2h5YnJpZF9tb2RlGAIgASgLMi4ucHJvdG9jb2wuU3lzdG'
    'VtU2V0dGluZy5XZWFyU2V0dGluZy5IeWJyaWRNb2RlUgpoeWJyaWRNb2RlGmMKCkh5YnJpZE1v'
    'ZGUSMgoKcG93ZXJfbW9kZRgBIAIoDjITLnByb3RvY29sLlBvd2VyTW9kZVIJcG93ZXJNb2RlEi'
    'EKDGxhY2tfZmVhdHVyZRgCIAEoBFILbGFja0ZlYXR1cmUaKgoSRGlzY29ubmVjdFJlbWluZGVy'
    'EhQKBWFsZXJ0GAEgAigIUgVhbGVydBowCg5JbmRpY2F0b3JMaWdodBIeCgpicmlnaHRuZXNzGA'
    'EgAigNUgpicmlnaHRuZXNzGlUKC0FJQXNzaXN0YW50EiEKDHZvaWNlX3dha2V1cBgBIAIoCFIL'
    'dm9pY2VXYWtldXASIwoNY2FtZXJhX2FjY2VzcxgCIAEoCFIMY2FtZXJhQWNjZXNzGncKDE1lZG'
    'lhU2V0dGluZxIjCg1zaG9vdGluZ19tb2RlGAEgAigNUgxzaG9vdGluZ01vZGUSJQoOdmlkZW9f'
    'ZHVyYXRpb24YAiACKA1SDXZpZGVvRHVyYXRpb24SGwoJYXV0b19zeW5jGAMgAigIUghhdXRvU3'
    'luYxpZCgdIZWFkc2V0EiUKDndlYXJfZGV0ZWN0aW9uGAEgAigIUg13ZWFyRGV0ZWN0aW9uEicK'
    'D3ZvbHVtZV9hZGFwdGl2ZRgCIAEoCFIOdm9sdW1lQWRhcHRpdmUaJAoKT3RhU2V0dGluZxIWCg'
    'ZzaWxlbnQYASACKAhSBnNpbGVudBofCgdSZXF1ZXN0EhQKBWl0ZW1zGAEgAigNUgVpdGVtcw==');

@$core.Deprecated('Use phoneSettingDescriptor instead')
const PhoneSetting$json = {
  '1': 'PhoneSetting',
  '2': [
    {
      '1': 'mute_mode',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneSetting.MuteMode',
      '10': 'muteMode'
    },
  ],
  '3': [PhoneSetting_Request$json, PhoneSetting_MuteMode$json],
};

@$core.Deprecated('Use phoneSettingDescriptor instead')
const PhoneSetting_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'items', '3': 1, '4': 2, '5': 13, '10': 'items'},
  ],
};

@$core.Deprecated('Use phoneSettingDescriptor instead')
const PhoneSetting_MuteMode$json = {
  '1': 'MuteMode',
  '2': [
    {'1': 'mute', '3': 1, '4': 2, '5': 8, '10': 'mute'},
  ],
};

/// Descriptor for `PhoneSetting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneSettingDescriptor = $convert.base64Decode(
    'CgxQaG9uZVNldHRpbmcSPAoJbXV0ZV9tb2RlGAEgASgLMh8ucHJvdG9jb2wuUGhvbmVTZXR0aW'
    '5nLk11dGVNb2RlUghtdXRlTW9kZRofCgdSZXF1ZXN0EhQKBWl0ZW1zGAEgAigNUgVpdGVtcxoe'
    'CghNdXRlTW9kZRISCgRtdXRlGAEgAigIUgRtdXRl');

@$core.Deprecated('Use vibratorSettingDescriptor instead')
const VibratorSetting$json = {
  '1': 'VibratorSetting',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.VibratorItem',
      '10': 'items'
    },
    {'1': 'max_number', '3': 2, '4': 2, '5': 13, '10': 'maxNumber'},
    {
      '1': 'vibrators',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.protocol.Vibrator',
      '10': 'vibrators'
    },
    {'1': 'version', '3': 4, '4': 1, '5': 13, '10': 'version'},
  ],
};

/// Descriptor for `VibratorSetting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vibratorSettingDescriptor = $convert.base64Decode(
    'Cg9WaWJyYXRvclNldHRpbmcSLAoFaXRlbXMYASADKAsyFi5wcm90b2NvbC5WaWJyYXRvckl0ZW'
    '1SBWl0ZW1zEh0KCm1heF9udW1iZXIYAiACKA1SCW1heE51bWJlchIwCgl2aWJyYXRvcnMYAyAD'
    'KAsyEi5wcm90b2NvbC5WaWJyYXRvclIJdmlicmF0b3JzEhgKB3ZlcnNpb24YBCABKA1SB3Zlcn'
    'Npb24=');

@$core.Deprecated('Use vibratorDescriptor instead')
const Vibrator$json = {
  '1': 'Vibrator',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    {
      '1': 'segments',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.protocol.VibratorEffect.Segment',
      '10': 'segments'
    },
    {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.protocol.Vibrator.Type',
      '10': 'type'
    },
  ],
  '3': [Vibrator_Removal$json],
  '4': [Vibrator_Type$json],
};

@$core.Deprecated('Use vibratorDescriptor instead')
const Vibrator_Removal$json = {
  '1': 'Removal',
  '2': [
    {'1': 'ids', '3': 1, '4': 3, '5': 13, '10': 'ids'},
  ],
};

@$core.Deprecated('Use vibratorDescriptor instead')
const Vibrator_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'CALL', '2': 1},
    {'1': 'EVENT', '2': 2},
    {'1': 'CLOCK', '2': 3},
    {'1': 'NOTIFICATION', '2': 4},
    {'1': 'SEDENTARY', '2': 5},
    {'1': 'MESSAGE', '2': 6},
    {'1': 'GOAL', '2': 7},
    {'1': 'CALENDAR', '2': 8},
  ],
};

/// Descriptor for `Vibrator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vibratorDescriptor = $convert.base64Decode(
    'CghWaWJyYXRvchIOCgJpZBgBIAIoDVICaWQSEgoEbmFtZRgCIAIoCVIEbmFtZRI8CghzZWdtZW'
    '50cxgDIAMoCzIgLnByb3RvY29sLlZpYnJhdG9yRWZmZWN0LlNlZ21lbnRSCHNlZ21lbnRzEisK'
    'BHR5cGUYBCABKA4yFy5wcm90b2NvbC5WaWJyYXRvci5UeXBlUgR0eXBlGhsKB1JlbW92YWwSEA'
    'oDaWRzGAEgAygNUgNpZHMidgoEVHlwZRIICgROT05FEAASCAoEQ0FMTBABEgkKBUVWRU5UEAIS'
    'CQoFQ0xPQ0sQAxIQCgxOT1RJRklDQVRJT04QBBINCglTRURFTlRBUlkQBRILCgdNRVNTQUdFEA'
    'YSCAoER09BTBAHEgwKCENBTEVOREFSEAg=');

@$core.Deprecated('Use vibratorItemDescriptor instead')
const VibratorItem$json = {
  '1': 'VibratorItem',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.Vibrator.Type',
      '10': 'type'
    },
    {'1': 'id', '3': 2, '4': 2, '5': 13, '10': 'id'},
    {
      '1': 'supported_builtin_ids',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'supportedBuiltinIds'
    },
  ],
};

/// Descriptor for `VibratorItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vibratorItemDescriptor = $convert.base64Decode(
    'CgxWaWJyYXRvckl0ZW0SKwoEdHlwZRgBIAIoDjIXLnByb3RvY29sLlZpYnJhdG9yLlR5cGVSBH'
    'R5cGUSDgoCaWQYAiACKA1SAmlkEjIKFXN1cHBvcnRlZF9idWlsdGluX2lkcxgDIAEoDVITc3Vw'
    'cG9ydGVkQnVpbHRpbklkcw==');

@$core.Deprecated('Use vibratorEffectDescriptor instead')
const VibratorEffect$json = {
  '1': 'VibratorEffect',
  '2': [
    {
      '1': 'segments',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.VibratorEffect.Segment',
      '10': 'segments'
    },
    {
      '1': 'item',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.VibratorItem',
      '10': 'item'
    },
  ],
  '3': [VibratorEffect_Segment$json],
};

@$core.Deprecated('Use vibratorEffectDescriptor instead')
const VibratorEffect_Segment$json = {
  '1': 'Segment',
  '2': [
    {'1': 'on', '3': 1, '4': 2, '5': 8, '10': 'on'},
    {'1': 'duration', '3': 2, '4': 2, '5': 13, '10': 'duration'},
    {'1': 'strength', '3': 3, '4': 1, '5': 13, '10': 'strength'},
  ],
};

/// Descriptor for `VibratorEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vibratorEffectDescriptor = $convert.base64Decode(
    'Cg5WaWJyYXRvckVmZmVjdBI8CghzZWdtZW50cxgBIAMoCzIgLnByb3RvY29sLlZpYnJhdG9yRW'
    'ZmZWN0LlNlZ21lbnRSCHNlZ21lbnRzEioKBGl0ZW0YAiABKAsyFi5wcm90b2NvbC5WaWJyYXRv'
    'ckl0ZW1SBGl0ZW0aUQoHU2VnbWVudBIOCgJvbhgBIAIoCFICb24SGgoIZHVyYXRpb24YAiACKA'
    '1SCGR1cmF0aW9uEhoKCHN0cmVuZ3RoGAMgASgNUghzdHJlbmd0aA==');

@$core.Deprecated('Use vibratorErrorDescriptor instead')
const VibratorError$json = {
  '1': 'VibratorError',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.VibratorError.Code',
      '10': 'code'
    },
  ],
  '4': [VibratorError_Code$json],
};

@$core.Deprecated('Use vibratorErrorDescriptor instead')
const VibratorError_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'NUMBER_LIMIT', '2': 1},
    {'1': 'ID_NOT_EXIST', '2': 2},
  ],
};

/// Descriptor for `VibratorError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vibratorErrorDescriptor = $convert.base64Decode(
    'Cg1WaWJyYXRvckVycm9yEjAKBGNvZGUYASACKA4yHC5wcm90b2NvbC5WaWJyYXRvckVycm9yLk'
    'NvZGVSBGNvZGUiMgoEQ29kZRIGCgJPSxAAEhAKDE5VTUJFUl9MSU1JVBABEhAKDElEX05PVF9F'
    'WElTVBAC');

@$core.Deprecated('Use storageInfoDescriptor instead')
const StorageInfo$json = {
  '1': 'StorageInfo',
  '2': [
    {'1': 'used', '3': 1, '4': 2, '5': 4, '10': 'used'},
    {'1': 'total', '3': 2, '4': 2, '5': 4, '10': 'total'},
  ],
};

/// Descriptor for `StorageInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageInfoDescriptor = $convert.base64Decode(
    'CgtTdG9yYWdlSW5mbxISCgR1c2VkGAEgAigEUgR1c2VkEhQKBXRvdGFsGAIgAigEUgV0b3RhbA'
    '==');

@$core.Deprecated('Use phonePermissionDescriptor instead')
const PhonePermission$json = {
  '1': 'PhonePermission',
  '2': [
    {'1': 'permissions', '3': 1, '4': 2, '5': 13, '10': 'permissions'},
  ],
};

/// Descriptor for `PhonePermission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phonePermissionDescriptor = $convert.base64Decode(
    'Cg9QaG9uZVBlcm1pc3Npb24SIAoLcGVybWlzc2lvbnMYASACKA1SC3Blcm1pc3Npb25z');

@$core.Deprecated('Use lowLatencyDescriptor instead')
const LowLatency$json = {
  '1': 'LowLatency',
  '2': [
    {'1': 'duration', '3': 1, '4': 2, '5': 13, '10': 'duration'},
  ],
};

/// Descriptor for `LowLatency`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lowLatencyDescriptor = $convert
    .base64Decode('CgpMb3dMYXRlbmN5EhoKCGR1cmF0aW9uGAEgAigNUghkdXJhdGlvbg==');
