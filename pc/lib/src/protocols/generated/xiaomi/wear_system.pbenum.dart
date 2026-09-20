// This is a generated file - do not edit.
//
// Generated from wear_system.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PowerMode extends $pb.ProtobufEnum {
  static const PowerMode PERFORMANCE =
      PowerMode._(0, _omitEnumNames ? '' : 'PERFORMANCE');
  static const PowerMode POWER_SAVE =
      PowerMode._(1, _omitEnumNames ? '' : 'POWER_SAVE');
  static const PowerMode SUPER_POWER_SAVE =
      PowerMode._(2, _omitEnumNames ? '' : 'SUPER_POWER_SAVE');

  static const $core.List<PowerMode> values = <PowerMode>[
    PERFORMANCE,
    POWER_SAVE,
    SUPER_POWER_SAVE,
  ];

  static final $core.List<PowerMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static PowerMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PowerMode._(super.value, super.name);
}

class ResetMode extends $pb.ProtobufEnum {
  static const ResetMode NO_ERASE =
      ResetMode._(0, _omitEnumNames ? '' : 'NO_ERASE');
  static const ResetMode ERASE_ALL =
      ResetMode._(1, _omitEnumNames ? '' : 'ERASE_ALL');

  static const $core.List<ResetMode> values = <ResetMode>[
    NO_ERASE,
    ERASE_ALL,
  ];

  static final $core.List<ResetMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ResetMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ResetMode._(super.value, super.name);
}

class FindMode extends $pb.ProtobufEnum {
  static const FindMode FIND_START =
      FindMode._(0, _omitEnumNames ? '' : 'FIND_START');
  static const FindMode FIND_STOP =
      FindMode._(1, _omitEnumNames ? '' : 'FIND_STOP');

  static const $core.List<FindMode> values = <FindMode>[
    FIND_START,
    FIND_STOP,
  ];

  static final $core.List<FindMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static FindMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FindMode._(super.value, super.name);
}

class TimingMode extends $pb.ProtobufEnum {
  static const TimingMode ALL_DAY_ON =
      TimingMode._(0, _omitEnumNames ? '' : 'ALL_DAY_ON');
  static const TimingMode TIMED_ON =
      TimingMode._(1, _omitEnumNames ? '' : 'TIMED_ON');
  static const TimingMode ALL_DAY_OFF =
      TimingMode._(2, _omitEnumNames ? '' : 'ALL_DAY_OFF');
  static const TimingMode SMART_ON =
      TimingMode._(3, _omitEnumNames ? '' : 'SMART_ON');

  static const $core.List<TimingMode> values = <TimingMode>[
    ALL_DAY_ON,
    TIMED_ON,
    ALL_DAY_OFF,
    SMART_ON,
  ];

  static final $core.List<TimingMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TimingMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TimingMode._(super.value, super.name);
}

class Order extends $pb.ProtobufEnum {
  static const Order HEAD_RESIDENT =
      Order._(0, _omitEnumNames ? '' : 'HEAD_RESIDENT');
  static const Order HIGHEST = Order._(10, _omitEnumNames ? '' : 'HIGHEST');
  static const Order LOWEST = Order._(99, _omitEnumNames ? '' : 'LOWEST');
  static const Order RESIDENT = Order._(100, _omitEnumNames ? '' : 'RESIDENT');

  static const $core.List<Order> values = <Order>[
    HEAD_RESIDENT,
    HIGHEST,
    LOWEST,
    RESIDENT,
  ];

  static final $core.Map<$core.int, Order> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Order? valueOf($core.int value) => _byValue[value];

  const Order._(super.value, super.name);
}

class System_SystemID extends $pb.ProtobufEnum {
  static const System_SystemID RESET =
      System_SystemID._(0, _omitEnumNames ? '' : 'RESET');
  static const System_SystemID APPLY_NEW_BIND =
      System_SystemID._(63, _omitEnumNames ? '' : 'APPLY_NEW_BIND');
  static const System_SystemID NOTIFY_NEW_BIND =
      System_SystemID._(12, _omitEnumNames ? '' : 'NOTIFY_NEW_BIND');
  static const System_SystemID NOTIFY_APP_DISCONNECTED =
      System_SystemID._(13, _omitEnumNames ? '' : 'NOTIFY_APP_DISCONNECTED');
  static const System_SystemID APPLY_LOW_LATENCY =
      System_SystemID._(67, _omitEnumNames ? '' : 'APPLY_LOW_LATENCY');
  static const System_SystemID GET_DEVICE_STATUS =
      System_SystemID._(1, _omitEnumNames ? '' : 'GET_DEVICE_STATUS');
  static const System_SystemID GET_DEVICE_INFO =
      System_SystemID._(2, _omitEnumNames ? '' : 'GET_DEVICE_INFO');
  static const System_SystemID SET_SYSTEM_TIME =
      System_SystemID._(3, _omitEnumNames ? '' : 'SET_SYSTEM_TIME');
  static const System_SystemID FORCE_UPGRADE =
      System_SystemID._(4, _omitEnumNames ? '' : 'FORCE_UPGRADE');
  static const System_SystemID PREPARE_OTA =
      System_SystemID._(5, _omitEnumNames ? '' : 'PREPARE_OTA');
  static const System_SystemID REPORT_OTA_PROGRESS =
      System_SystemID._(87, _omitEnumNames ? '' : 'REPORT_OTA_PROGRESS');
  static const System_SystemID SET_LANGUAGE =
      System_SystemID._(6, _omitEnumNames ? '' : 'SET_LANGUAGE');
  static const System_SystemID GET_HID_STATUS =
      System_SystemID._(7, _omitEnumNames ? '' : 'GET_HID_STATUS');
  static const System_SystemID SET_HID_STATUS =
      System_SystemID._(8, _omitEnumNames ? '' : 'SET_HID_STATUS');
  static const System_SystemID GET_LOCK_SCREEN =
      System_SystemID._(9, _omitEnumNames ? '' : 'GET_LOCK_SCREEN');
  static const System_SystemID SET_LOCK_SCREEN =
      System_SystemID._(21, _omitEnumNames ? '' : 'SET_LOCK_SCREEN');
  static const System_SystemID GET_NIGHT_MODE =
      System_SystemID._(10, _omitEnumNames ? '' : 'GET_NIGHT_MODE');
  static const System_SystemID SET_NIGHT_MODE =
      System_SystemID._(11, _omitEnumNames ? '' : 'SET_NIGHT_MODE');
  static const System_SystemID UNLOCK_WATCH =
      System_SystemID._(16, _omitEnumNames ? '' : 'UNLOCK_WATCH');
  static const System_SystemID FIND_PHONE =
      System_SystemID._(17, _omitEnumNames ? '' : 'FIND_PHONE');
  static const System_SystemID FIND_WEAR =
      System_SystemID._(18, _omitEnumNames ? '' : 'FIND_WEAR');
  static const System_SystemID GET_AUTHORIZE_UNLOCK =
      System_SystemID._(19, _omitEnumNames ? '' : 'GET_AUTHORIZE_UNLOCK');
  static const System_SystemID SET_AUTHORIZE_UNLOCK =
      System_SystemID._(20, _omitEnumNames ? '' : 'SET_AUTHORIZE_UNLOCK');
  static const System_SystemID GET_QUIET_MODE =
      System_SystemID._(22, _omitEnumNames ? '' : 'GET_QUIET_MODE');
  static const System_SystemID SET_QUIET_MODE =
      System_SystemID._(23, _omitEnumNames ? '' : 'SET_QUIET_MODE');
  static const System_SystemID GET_WRIST_SCREEN =
      System_SystemID._(24, _omitEnumNames ? '' : 'GET_WRIST_SCREEN');
  static const System_SystemID SET_WRIST_SCREEN =
      System_SystemID._(25, _omitEnumNames ? '' : 'SET_WRIST_SCREEN');
  static const System_SystemID SET_WIDGET =
      System_SystemID._(26, _omitEnumNames ? '' : 'SET_WIDGET');
  static const System_SystemID SET_WIDGET_LIST =
      System_SystemID._(27, _omitEnumNames ? '' : 'SET_WIDGET_LIST');
  static const System_SystemID GET_WIDGET_LIST =
      System_SystemID._(28, _omitEnumNames ? '' : 'GET_WIDGET_LIST');
  static const System_SystemID GET_ORDERED_APP_LIST =
      System_SystemID._(29, _omitEnumNames ? '' : 'GET_ORDERED_APP_LIST');
  static const System_SystemID SET_ORDERED_APP_LIST =
      System_SystemID._(30, _omitEnumNames ? '' : 'SET_ORDERED_APP_LIST');
  static const System_SystemID GET_APP_LAYOUT =
      System_SystemID._(31, _omitEnumNames ? '' : 'GET_APP_LAYOUT');
  static const System_SystemID SET_APP_LAYOUT =
      System_SystemID._(41, _omitEnumNames ? '' : 'SET_APP_LAYOUT');
  static const System_SystemID SET_SHORTCUT_1 =
      System_SystemID._(32, _omitEnumNames ? '' : 'SET_SHORTCUT_1');
  static const System_SystemID SET_SHORTCUT_2 =
      System_SystemID._(33, _omitEnumNames ? '' : 'SET_SHORTCUT_2');
  static const System_SystemID SET_SHORTCUT_3 =
      System_SystemID._(34, _omitEnumNames ? '' : 'SET_SHORTCUT_3');
  static const System_SystemID GET_SHORTCUT_1 =
      System_SystemID._(35, _omitEnumNames ? '' : 'GET_SHORTCUT_1');
  static const System_SystemID GET_SHORTCUT_2 =
      System_SystemID._(36, _omitEnumNames ? '' : 'GET_SHORTCUT_2');
  static const System_SystemID GET_SHORTCUT_3 =
      System_SystemID._(37, _omitEnumNames ? '' : 'GET_SHORTCUT_3');
  static const System_SystemID GET_SUPPORT_SHORTCUT_LIST =
      System_SystemID._(38, _omitEnumNames ? '' : 'GET_SUPPORT_SHORTCUT_LIST');
  static const System_SystemID GET_SPORT_OPTION =
      System_SystemID._(39, _omitEnumNames ? '' : 'GET_SPORT_OPTION');
  static const System_SystemID SET_SPORT_OPTION =
      System_SystemID._(40, _omitEnumNames ? '' : 'SET_SPORT_OPTION');
  static const System_SystemID ADD_OR_UPDATE_SMALL_HABIT =
      System_SystemID._(48, _omitEnumNames ? '' : 'ADD_OR_UPDATE_SMALL_HABIT');
  static const System_SystemID SYNC_SMALL_HABIT =
      System_SystemID._(49, _omitEnumNames ? '' : 'SYNC_SMALL_HABIT');
  static const System_SystemID DELETE_SMALL_HABIT =
      System_SystemID._(50, _omitEnumNames ? '' : 'DELETE_SMALL_HABIT');
  static const System_SystemID GET_WIDGET_GROUP_LIST =
      System_SystemID._(51, _omitEnumNames ? '' : 'GET_WIDGET_GROUP_LIST');
  static const System_SystemID SET_WIDGET_GROUP_LIST =
      System_SystemID._(52, _omitEnumNames ? '' : 'SET_WIDGET_GROUP_LIST');
  static const System_SystemID GET_SUPPORT_WIDGET_LIST =
      System_SystemID._(53, _omitEnumNames ? '' : 'GET_SUPPORT_WIDGET_LIST');
  static const System_SystemID GET_WIFI_CAPABILITY =
      System_SystemID._(54, _omitEnumNames ? '' : 'GET_WIFI_CAPABILITY');
  static const System_SystemID REQUEST_WIFI_CONFIG =
      System_SystemID._(55, _omitEnumNames ? '' : 'REQUEST_WIFI_CONFIG');
  static const System_SystemID ADD_WIFI_CONFIG =
      System_SystemID._(56, _omitEnumNames ? '' : 'ADD_WIFI_CONFIG');
  static const System_SystemID NOTIFY_WIFI_CONFIG_RESULT =
      System_SystemID._(98, _omitEnumNames ? '' : 'NOTIFY_WIFI_CONFIG_RESULT');
  static const System_SystemID SYNC_WIFI_CONFIG_LIST =
      System_SystemID._(57, _omitEnumNames ? '' : 'SYNC_WIFI_CONFIG_LIST');
  static const System_SystemID GET_WIFI_CONFIG_LIST =
      System_SystemID._(86, _omitEnumNames ? '' : 'GET_WIFI_CONFIG_LIST');
  static const System_SystemID ENABLE_WIFI_AP =
      System_SystemID._(88, _omitEnumNames ? '' : 'ENABLE_WIFI_AP');
  static const System_SystemID DISABLE_WIFI_AP =
      System_SystemID._(89, _omitEnumNames ? '' : 'DISABLE_WIFI_AP');
  static const System_SystemID GET_SYSTEM_SETTING =
      System_SystemID._(14, _omitEnumNames ? '' : 'GET_SYSTEM_SETTING');
  static const System_SystemID SET_SYSTEM_SETTING =
      System_SystemID._(15, _omitEnumNames ? '' : 'SET_SYSTEM_SETTING');
  static const System_SystemID REPORT_SYSTEM_SETTING =
      System_SystemID._(42, _omitEnumNames ? '' : 'REPORT_SYSTEM_SETTING');
  static const System_SystemID REQUEST_PHONE_SETTING =
      System_SystemID._(43, _omitEnumNames ? '' : 'REQUEST_PHONE_SETTING');
  static const System_SystemID SYNC_PHONE_SETTING =
      System_SystemID._(44, _omitEnumNames ? '' : 'SYNC_PHONE_SETTING');
  static const System_SystemID MODIFY_PHONE_SETTING =
      System_SystemID._(45, _omitEnumNames ? '' : 'MODIFY_PHONE_SETTING');
  static const System_SystemID LACK_PHONE_PERMISSION =
      System_SystemID._(64, _omitEnumNames ? '' : 'LACK_PHONE_PERMISSION');
  static const System_SystemID GET_AOD_SETTING =
      System_SystemID._(65, _omitEnumNames ? '' : 'GET_AOD_SETTING');
  static const System_SystemID SET_AOD_SETTING =
      System_SystemID._(66, _omitEnumNames ? '' : 'SET_AOD_SETTING');
  static const System_SystemID GET_VIBRATOR_SETTING =
      System_SystemID._(46, _omitEnumNames ? '' : 'GET_VIBRATOR_SETTING');
  static const System_SystemID SET_VIBRATOR_ITEM =
      System_SystemID._(47, _omitEnumNames ? '' : 'SET_VIBRATOR_ITEM');
  static const System_SystemID ADD_VIBRATOR =
      System_SystemID._(58, _omitEnumNames ? '' : 'ADD_VIBRATOR');
  static const System_SystemID TEST_VIBRATOR =
      System_SystemID._(59, _omitEnumNames ? '' : 'TEST_VIBRATOR');
  static const System_SystemID UPDATE_VIBRATOR =
      System_SystemID._(60, _omitEnumNames ? '' : 'UPDATE_VIBRATOR');
  static const System_SystemID REMOVE_VIBRATORS =
      System_SystemID._(61, _omitEnumNames ? '' : 'REMOVE_VIBRATORS');
  static const System_SystemID GET_STORAGE_INFO =
      System_SystemID._(62, _omitEnumNames ? '' : 'GET_STORAGE_INFO');
  static const System_SystemID GET_WEAR_STATUS =
      System_SystemID._(93, _omitEnumNames ? '' : 'GET_WEAR_STATUS');
  static const System_SystemID GET_BASIC_STATUS =
      System_SystemID._(78, _omitEnumNames ? '' : 'GET_BASIC_STATUS');
  static const System_SystemID REPORT_BASIC_STATUS =
      System_SystemID._(79, _omitEnumNames ? '' : 'REPORT_BASIC_STATUS');
  static const System_SystemID REPORT_BATTERY_STATUS =
      System_SystemID._(97, _omitEnumNames ? '' : 'REPORT_BATTERY_STATUS');
  static const System_SystemID GET_ALERT_STATUS =
      System_SystemID._(90, _omitEnumNames ? '' : 'GET_ALERT_STATUS');
  static const System_SystemID REPORT_ALERT_STATUS =
      System_SystemID._(91, _omitEnumNames ? '' : 'REPORT_ALERT_STATUS');
  static const System_SystemID REPORT_DATA =
      System_SystemID._(80, _omitEnumNames ? '' : 'REPORT_DATA');
  static const System_SystemID REPORT_DATA_RESULT =
      System_SystemID._(81, _omitEnumNames ? '' : 'REPORT_DATA_RESULT');
  static const System_SystemID REQUEST_NETWORK_PROXY =
      System_SystemID._(82, _omitEnumNames ? '' : 'REQUEST_NETWORK_PROXY');
  static const System_SystemID SYNC_NETWORK_STATUS =
      System_SystemID._(92, _omitEnumNames ? '' : 'SYNC_NETWORK_STATUS');
  static const System_SystemID GET_WIDGET_V3 =
      System_SystemID._(83, _omitEnumNames ? '' : 'GET_WIDGET_V3');
  static const System_SystemID SET_WIDGET_V3 =
      System_SystemID._(84, _omitEnumNames ? '' : 'SET_WIDGET_V3');
  static const System_SystemID GET_SUPPORT_WIDGET_V3 =
      System_SystemID._(85, _omitEnumNames ? '' : 'GET_SUPPORT_WIDGET_V3');
  static const System_SystemID START_USAGE_GUIDE =
      System_SystemID._(94, _omitEnumNames ? '' : 'START_USAGE_GUIDE');
  static const System_SystemID REPORT_USAGE_GUIDE_FEEDBACK = System_SystemID._(
      95, _omitEnumNames ? '' : 'REPORT_USAGE_GUIDE_FEEDBACK');
  static const System_SystemID FINISH_USAGE_GUIDE =
      System_SystemID._(96, _omitEnumNames ? '' : 'FINISH_USAGE_GUIDE');

  static const $core.List<System_SystemID> values = <System_SystemID>[
    RESET,
    APPLY_NEW_BIND,
    NOTIFY_NEW_BIND,
    NOTIFY_APP_DISCONNECTED,
    APPLY_LOW_LATENCY,
    GET_DEVICE_STATUS,
    GET_DEVICE_INFO,
    SET_SYSTEM_TIME,
    FORCE_UPGRADE,
    PREPARE_OTA,
    REPORT_OTA_PROGRESS,
    SET_LANGUAGE,
    GET_HID_STATUS,
    SET_HID_STATUS,
    GET_LOCK_SCREEN,
    SET_LOCK_SCREEN,
    GET_NIGHT_MODE,
    SET_NIGHT_MODE,
    UNLOCK_WATCH,
    FIND_PHONE,
    FIND_WEAR,
    GET_AUTHORIZE_UNLOCK,
    SET_AUTHORIZE_UNLOCK,
    GET_QUIET_MODE,
    SET_QUIET_MODE,
    GET_WRIST_SCREEN,
    SET_WRIST_SCREEN,
    SET_WIDGET,
    SET_WIDGET_LIST,
    GET_WIDGET_LIST,
    GET_ORDERED_APP_LIST,
    SET_ORDERED_APP_LIST,
    GET_APP_LAYOUT,
    SET_APP_LAYOUT,
    SET_SHORTCUT_1,
    SET_SHORTCUT_2,
    SET_SHORTCUT_3,
    GET_SHORTCUT_1,
    GET_SHORTCUT_2,
    GET_SHORTCUT_3,
    GET_SUPPORT_SHORTCUT_LIST,
    GET_SPORT_OPTION,
    SET_SPORT_OPTION,
    ADD_OR_UPDATE_SMALL_HABIT,
    SYNC_SMALL_HABIT,
    DELETE_SMALL_HABIT,
    GET_WIDGET_GROUP_LIST,
    SET_WIDGET_GROUP_LIST,
    GET_SUPPORT_WIDGET_LIST,
    GET_WIFI_CAPABILITY,
    REQUEST_WIFI_CONFIG,
    ADD_WIFI_CONFIG,
    NOTIFY_WIFI_CONFIG_RESULT,
    SYNC_WIFI_CONFIG_LIST,
    GET_WIFI_CONFIG_LIST,
    ENABLE_WIFI_AP,
    DISABLE_WIFI_AP,
    GET_SYSTEM_SETTING,
    SET_SYSTEM_SETTING,
    REPORT_SYSTEM_SETTING,
    REQUEST_PHONE_SETTING,
    SYNC_PHONE_SETTING,
    MODIFY_PHONE_SETTING,
    LACK_PHONE_PERMISSION,
    GET_AOD_SETTING,
    SET_AOD_SETTING,
    GET_VIBRATOR_SETTING,
    SET_VIBRATOR_ITEM,
    ADD_VIBRATOR,
    TEST_VIBRATOR,
    UPDATE_VIBRATOR,
    REMOVE_VIBRATORS,
    GET_STORAGE_INFO,
    GET_WEAR_STATUS,
    GET_BASIC_STATUS,
    REPORT_BASIC_STATUS,
    REPORT_BATTERY_STATUS,
    GET_ALERT_STATUS,
    REPORT_ALERT_STATUS,
    REPORT_DATA,
    REPORT_DATA_RESULT,
    REQUEST_NETWORK_PROXY,
    SYNC_NETWORK_STATUS,
    GET_WIDGET_V3,
    SET_WIDGET_V3,
    GET_SUPPORT_WIDGET_V3,
    START_USAGE_GUIDE,
    REPORT_USAGE_GUIDE_FEEDBACK,
    FINISH_USAGE_GUIDE,
  ];

  static final $core.List<System_SystemID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 98);
  static System_SystemID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const System_SystemID._(super.value, super.name);
}

class DeviceStatus_Battery_ChargeStatus extends $pb.ProtobufEnum {
  static const DeviceStatus_Battery_ChargeStatus UNKNOWN =
      DeviceStatus_Battery_ChargeStatus._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const DeviceStatus_Battery_ChargeStatus CHARGING =
      DeviceStatus_Battery_ChargeStatus._(1, _omitEnumNames ? '' : 'CHARGING');
  static const DeviceStatus_Battery_ChargeStatus NOT_CHARGING =
      DeviceStatus_Battery_ChargeStatus._(
          2, _omitEnumNames ? '' : 'NOT_CHARGING');
  static const DeviceStatus_Battery_ChargeStatus FULL =
      DeviceStatus_Battery_ChargeStatus._(3, _omitEnumNames ? '' : 'FULL');

  static const $core.List<DeviceStatus_Battery_ChargeStatus> values =
      <DeviceStatus_Battery_ChargeStatus>[
    UNKNOWN,
    CHARGING,
    NOT_CHARGING,
    FULL,
  ];

  static final $core.List<DeviceStatus_Battery_ChargeStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static DeviceStatus_Battery_ChargeStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DeviceStatus_Battery_ChargeStatus._(super.value, super.name);
}

class LockScreen_Status extends $pb.ProtobufEnum {
  static const LockScreen_Status DISABLED =
      LockScreen_Status._(1, _omitEnumNames ? '' : 'DISABLED');
  static const LockScreen_Status ENABLED =
      LockScreen_Status._(2, _omitEnumNames ? '' : 'ENABLED');
  static const LockScreen_Status ENABLED_AND_REQUIRED =
      LockScreen_Status._(3, _omitEnumNames ? '' : 'ENABLED_AND_REQUIRED');

  static const $core.List<LockScreen_Status> values = <LockScreen_Status>[
    DISABLED,
    ENABLED,
    ENABLED_AND_REQUIRED,
  ];

  static final $core.List<LockScreen_Status?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LockScreen_Status? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LockScreen_Status._(super.value, super.name);
}

class NightMode_Mode extends $pb.ProtobufEnum {
  static const NightMode_Mode OFF =
      NightMode_Mode._(1, _omitEnumNames ? '' : 'OFF');
  static const NightMode_Mode SUNSET_ON =
      NightMode_Mode._(2, _omitEnumNames ? '' : 'SUNSET_ON');
  static const NightMode_Mode TIMING_ON =
      NightMode_Mode._(3, _omitEnumNames ? '' : 'TIMING_ON');

  static const $core.List<NightMode_Mode> values = <NightMode_Mode>[
    OFF,
    SUNSET_ON,
    TIMING_ON,
  ];

  static final $core.List<NightMode_Mode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static NightMode_Mode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const NightMode_Mode._(super.value, super.name);
}

class AuthorizeUnlock_Device extends $pb.ProtobufEnum {
  static const AuthorizeUnlock_Device UNKNOWN =
      AuthorizeUnlock_Device._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const AuthorizeUnlock_Device LAPTOP =
      AuthorizeUnlock_Device._(1, _omitEnumNames ? '' : 'LAPTOP');
  static const AuthorizeUnlock_Device PHONE =
      AuthorizeUnlock_Device._(2, _omitEnumNames ? '' : 'PHONE');

  static const $core.List<AuthorizeUnlock_Device> values =
      <AuthorizeUnlock_Device>[
    UNKNOWN,
    LAPTOP,
    PHONE,
  ];

  static final $core.List<AuthorizeUnlock_Device?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static AuthorizeUnlock_Device? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AuthorizeUnlock_Device._(super.value, super.name);
}

class WristScreen_Sensitivity extends $pb.ProtobufEnum {
  static const WristScreen_Sensitivity NONE =
      WristScreen_Sensitivity._(0, _omitEnumNames ? '' : 'NONE');
  static const WristScreen_Sensitivity STANDARD =
      WristScreen_Sensitivity._(1, _omitEnumNames ? '' : 'STANDARD');
  static const WristScreen_Sensitivity HIGH =
      WristScreen_Sensitivity._(2, _omitEnumNames ? '' : 'HIGH');

  static const $core.List<WristScreen_Sensitivity> values =
      <WristScreen_Sensitivity>[
    NONE,
    STANDARD,
    HIGH,
  ];

  static final $core.List<WristScreen_Sensitivity?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static WristScreen_Sensitivity? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WristScreen_Sensitivity._(super.value, super.name);
}

class WidgetGroup_Style extends $pb.ProtobufEnum {
  static const WidgetGroup_Style STYLE_1 =
      WidgetGroup_Style._(1, _omitEnumNames ? '' : 'STYLE_1');
  static const WidgetGroup_Style STYLE_2 =
      WidgetGroup_Style._(2, _omitEnumNames ? '' : 'STYLE_2');
  static const WidgetGroup_Style STYLE_3 =
      WidgetGroup_Style._(4, _omitEnumNames ? '' : 'STYLE_3');
  static const WidgetGroup_Style STYLE_4 =
      WidgetGroup_Style._(8, _omitEnumNames ? '' : 'STYLE_4');
  static const WidgetGroup_Style STYLE_5 =
      WidgetGroup_Style._(16, _omitEnumNames ? '' : 'STYLE_5');
  static const WidgetGroup_Style STYLE_6 =
      WidgetGroup_Style._(32, _omitEnumNames ? '' : 'STYLE_6');
  static const WidgetGroup_Style STYLE_7 =
      WidgetGroup_Style._(64, _omitEnumNames ? '' : 'STYLE_7');
  static const WidgetGroup_Style STYLE_8 =
      WidgetGroup_Style._(128, _omitEnumNames ? '' : 'STYLE_8');
  static const WidgetGroup_Style STYLE_9 =
      WidgetGroup_Style._(256, _omitEnumNames ? '' : 'STYLE_9');
  static const WidgetGroup_Style STYLE_10 =
      WidgetGroup_Style._(512, _omitEnumNames ? '' : 'STYLE_10');
  static const WidgetGroup_Style STYLE_11 =
      WidgetGroup_Style._(1024, _omitEnumNames ? '' : 'STYLE_11');
  static const WidgetGroup_Style STYLE_12 =
      WidgetGroup_Style._(2048, _omitEnumNames ? '' : 'STYLE_12');
  static const WidgetGroup_Style STYLE_13 =
      WidgetGroup_Style._(4096, _omitEnumNames ? '' : 'STYLE_13');
  static const WidgetGroup_Style STYLE_14 =
      WidgetGroup_Style._(8192, _omitEnumNames ? '' : 'STYLE_14');
  static const WidgetGroup_Style STYLE_15 =
      WidgetGroup_Style._(16384, _omitEnumNames ? '' : 'STYLE_15');

  static const $core.List<WidgetGroup_Style> values = <WidgetGroup_Style>[
    STYLE_1,
    STYLE_2,
    STYLE_3,
    STYLE_4,
    STYLE_5,
    STYLE_6,
    STYLE_7,
    STYLE_8,
    STYLE_9,
    STYLE_10,
    STYLE_11,
    STYLE_12,
    STYLE_13,
    STYLE_14,
    STYLE_15,
  ];

  static final $core.Map<$core.int, WidgetGroup_Style> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static WidgetGroup_Style? valueOf($core.int value) => _byValue[value];

  const WidgetGroup_Style._(super.value, super.name);
}

class AppLayout_Layout extends $pb.ProtobufEnum {
  static const AppLayout_Layout LIST =
      AppLayout_Layout._(1, _omitEnumNames ? '' : 'LIST');
  static const AppLayout_Layout GRID =
      AppLayout_Layout._(2, _omitEnumNames ? '' : 'GRID');
  static const AppLayout_Layout GRID_TEXT =
      AppLayout_Layout._(4, _omitEnumNames ? '' : 'GRID_TEXT');

  static const $core.List<AppLayout_Layout> values = <AppLayout_Layout>[
    LIST,
    GRID,
    GRID_TEXT,
  ];

  static final $core.Map<$core.int, AppLayout_Layout> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AppLayout_Layout? valueOf($core.int value) => _byValue[value];

  const AppLayout_Layout._(super.value, super.name);
}

class Shortcut_Type extends $pb.ProtobufEnum {
  static const Shortcut_Type NONE =
      Shortcut_Type._(0, _omitEnumNames ? '' : 'NONE');
  static const Shortcut_Type VOICE =
      Shortcut_Type._(1, _omitEnumNames ? '' : 'VOICE');
  static const Shortcut_Type FUNCTION =
      Shortcut_Type._(2, _omitEnumNames ? '' : 'FUNCTION');
  static const Shortcut_Type SPORT =
      Shortcut_Type._(3, _omitEnumNames ? '' : 'SPORT');

  static const $core.List<Shortcut_Type> values = <Shortcut_Type>[
    NONE,
    VOICE,
    FUNCTION,
    SPORT,
  ];

  static final $core.List<Shortcut_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Shortcut_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Shortcut_Type._(super.value, super.name);
}

class PrepareOta_Type extends $pb.ProtobufEnum {
  static const PrepareOta_Type ALL =
      PrepareOta_Type._(0, _omitEnumNames ? '' : 'ALL');
  static const PrepareOta_Type ROM =
      PrepareOta_Type._(1, _omitEnumNames ? '' : 'ROM');
  static const PrepareOta_Type RES =
      PrepareOta_Type._(2, _omitEnumNames ? '' : 'RES');
  static const PrepareOta_Type SILENT =
      PrepareOta_Type._(15, _omitEnumNames ? '' : 'SILENT');

  static const $core.List<PrepareOta_Type> values = <PrepareOta_Type>[
    ALL,
    ROM,
    RES,
    SILENT,
  ];

  static final $core.Map<$core.int, PrepareOta_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PrepareOta_Type? valueOf($core.int value) => _byValue[value];

  const PrepareOta_Type._(super.value, super.name);
}

class SmallHabit_Type extends $pb.ProtobufEnum {
  static const SmallHabit_Type GO_TO_BED_EARLY =
      SmallHabit_Type._(0, _omitEnumNames ? '' : 'GO_TO_BED_EARLY');
  static const SmallHabit_Type DO_MORE_EXERCISE =
      SmallHabit_Type._(1, _omitEnumNames ? '' : 'DO_MORE_EXERCISE');
  static const SmallHabit_Type DRINK_WATER =
      SmallHabit_Type._(2, _omitEnumNames ? '' : 'DRINK_WATER');
  static const SmallHabit_Type READING =
      SmallHabit_Type._(3, _omitEnumNames ? '' : 'READING');
  static const SmallHabit_Type EAT_BREAKFAST =
      SmallHabit_Type._(4, _omitEnumNames ? '' : 'EAT_BREAKFAST');
  static const SmallHabit_Type CALL_PARENTS =
      SmallHabit_Type._(5, _omitEnumNames ? '' : 'CALL_PARENTS');
  static const SmallHabit_Type EAT_FRUIT =
      SmallHabit_Type._(6, _omitEnumNames ? '' : 'EAT_FRUIT');
  static const SmallHabit_Type ACTIVE_NECK =
      SmallHabit_Type._(7, _omitEnumNames ? '' : 'ACTIVE_NECK');
  static const SmallHabit_Type LEARN_TO_CHARGE =
      SmallHabit_Type._(8, _omitEnumNames ? '' : 'LEARN_TO_CHARGE');
  static const SmallHabit_Type PRACTICE_A_SKILL =
      SmallHabit_Type._(9, _omitEnumNames ? '' : 'PRACTICE_A_SKILL');
  static const SmallHabit_Type CONTACT_FRIEND =
      SmallHabit_Type._(10, _omitEnumNames ? '' : 'CONTACT_FRIEND');
  static const SmallHabit_Type SITTING_UPRIGHT =
      SmallHabit_Type._(11, _omitEnumNames ? '' : 'SITTING_UPRIGHT');
  static const SmallHabit_Type EAT_VEGETABLE =
      SmallHabit_Type._(12, _omitEnumNames ? '' : 'EAT_VEGETABLE');
  static const SmallHabit_Type CIVILIZED_LANGUAGE =
      SmallHabit_Type._(13, _omitEnumNames ? '' : 'CIVILIZED_LANGUAGE');
  static const SmallHabit_Type MEDITATION =
      SmallHabit_Type._(14, _omitEnumNames ? '' : 'MEDITATION');
  static const SmallHabit_Type BOOK_KEEPING =
      SmallHabit_Type._(15, _omitEnumNames ? '' : 'BOOK_KEEPING');
  static const SmallHabit_Type RECITE_WORDS =
      SmallHabit_Type._(16, _omitEnumNames ? '' : 'RECITE_WORDS');
  static const SmallHabit_Type WALK_AFTER_MEAL =
      SmallHabit_Type._(17, _omitEnumNames ? '' : 'WALK_AFTER_MEAL');
  static const SmallHabit_Type GO_OUT_WITH_KEY =
      SmallHabit_Type._(18, _omitEnumNames ? '' : 'GO_OUT_WITH_KEY');
  static const SmallHabit_Type DAILY_SUMMARY =
      SmallHabit_Type._(19, _omitEnumNames ? '' : 'DAILY_SUMMARY');
  static const SmallHabit_Type GARGLE_AFTER_MEAL =
      SmallHabit_Type._(20, _omitEnumNames ? '' : 'GARGLE_AFTER_MEAL');
  static const SmallHabit_Type SMILE_MORE =
      SmallHabit_Type._(21, _omitEnumNames ? '' : 'SMILE_MORE');
  static const SmallHabit_Type TAKE_MEDICINE =
      SmallHabit_Type._(22, _omitEnumNames ? '' : 'TAKE_MEDICINE');
  static const SmallHabit_Type NOT_HUMPBACK =
      SmallHabit_Type._(23, _omitEnumNames ? '' : 'NOT_HUMPBACK');
  static const SmallHabit_Type CALLIGRAPHY =
      SmallHabit_Type._(24, _omitEnumNames ? '' : 'CALLIGRAPHY');
  static const SmallHabit_Type LUNCH_BREAK =
      SmallHabit_Type._(25, _omitEnumNames ? '' : 'LUNCH_BREAK');
  static const SmallHabit_Type DO_EYE_EXERCISES =
      SmallHabit_Type._(26, _omitEnumNames ? '' : 'DO_EYE_EXERCISES');
  static const SmallHabit_Type DO_YOGA =
      SmallHabit_Type._(27, _omitEnumNames ? '' : 'DO_YOGA');
  static const SmallHabit_Type APPLY_FACIAL_MASK =
      SmallHabit_Type._(28, _omitEnumNames ? '' : 'APPLY_FACIAL_MASK');
  static const SmallHabit_Type QUIT_SUGAR =
      SmallHabit_Type._(29, _omitEnumNames ? '' : 'QUIT_SUGAR');
  static const SmallHabit_Type SHOVEL_CAT_LITTER =
      SmallHabit_Type._(30, _omitEnumNames ? '' : 'SHOVEL_CAT_LITTER');
  static const SmallHabit_Type ONLINE_LESSON =
      SmallHabit_Type._(31, _omitEnumNames ? '' : 'ONLINE_LESSON');
  static const SmallHabit_Type WATERING_FLOWERS =
      SmallHabit_Type._(32, _omitEnumNames ? '' : 'WATERING_FLOWERS');
  static const SmallHabit_Type TAKE_A_PICTURE_ONE_DAY =
      SmallHabit_Type._(33, _omitEnumNames ? '' : 'TAKE_A_PICTURE_ONE_DAY');

  static const $core.List<SmallHabit_Type> values = <SmallHabit_Type>[
    GO_TO_BED_EARLY,
    DO_MORE_EXERCISE,
    DRINK_WATER,
    READING,
    EAT_BREAKFAST,
    CALL_PARENTS,
    EAT_FRUIT,
    ACTIVE_NECK,
    LEARN_TO_CHARGE,
    PRACTICE_A_SKILL,
    CONTACT_FRIEND,
    SITTING_UPRIGHT,
    EAT_VEGETABLE,
    CIVILIZED_LANGUAGE,
    MEDITATION,
    BOOK_KEEPING,
    RECITE_WORDS,
    WALK_AFTER_MEAL,
    GO_OUT_WITH_KEY,
    DAILY_SUMMARY,
    GARGLE_AFTER_MEAL,
    SMILE_MORE,
    TAKE_MEDICINE,
    NOT_HUMPBACK,
    CALLIGRAPHY,
    LUNCH_BREAK,
    DO_EYE_EXERCISES,
    DO_YOGA,
    APPLY_FACIAL_MASK,
    QUIT_SUGAR,
    SHOVEL_CAT_LITTER,
    ONLINE_LESSON,
    WATERING_FLOWERS,
    TAKE_A_PICTURE_ONE_DAY,
  ];

  static final $core.List<SmallHabit_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 33);
  static SmallHabit_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SmallHabit_Type._(super.value, super.name);
}

class WiFiConfig_AuthMode extends $pb.ProtobufEnum {
  static const WiFiConfig_AuthMode WPA_NONE =
      WiFiConfig_AuthMode._(1, _omitEnumNames ? '' : 'WPA_NONE');
  static const WiFiConfig_AuthMode WPA_PSK =
      WiFiConfig_AuthMode._(2, _omitEnumNames ? '' : 'WPA_PSK');
  static const WiFiConfig_AuthMode WPA_EAP =
      WiFiConfig_AuthMode._(4, _omitEnumNames ? '' : 'WPA_EAP');

  static const $core.List<WiFiConfig_AuthMode> values = <WiFiConfig_AuthMode>[
    WPA_NONE,
    WPA_PSK,
    WPA_EAP,
  ];

  static final $core.Map<$core.int, WiFiConfig_AuthMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static WiFiConfig_AuthMode? valueOf($core.int value) => _byValue[value];

  const WiFiConfig_AuthMode._(super.value, super.name);
}

class WiFiConfig_Frequency extends $pb.ProtobufEnum {
  static const WiFiConfig_Frequency F_24G =
      WiFiConfig_Frequency._(1, _omitEnumNames ? '' : 'F_24G');
  static const WiFiConfig_Frequency F_5G =
      WiFiConfig_Frequency._(2, _omitEnumNames ? '' : 'F_5G');

  static const $core.List<WiFiConfig_Frequency> values = <WiFiConfig_Frequency>[
    F_24G,
    F_5G,
  ];

  static final $core.Map<$core.int, WiFiConfig_Frequency> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static WiFiConfig_Frequency? valueOf($core.int value) => _byValue[value];

  const WiFiConfig_Frequency._(super.value, super.name);
}

class BasicStatus_Charging extends $pb.ProtobufEnum {
  static const BasicStatus_Charging START =
      BasicStatus_Charging._(1, _omitEnumNames ? '' : 'START');
  static const BasicStatus_Charging QUIT =
      BasicStatus_Charging._(2, _omitEnumNames ? '' : 'QUIT');
  static const BasicStatus_Charging FINISH =
      BasicStatus_Charging._(3, _omitEnumNames ? '' : 'FINISH');

  static const $core.List<BasicStatus_Charging> values = <BasicStatus_Charging>[
    START,
    QUIT,
    FINISH,
  ];

  static final $core.List<BasicStatus_Charging?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static BasicStatus_Charging? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BasicStatus_Charging._(super.value, super.name);
}

class BasicStatus_Wearing extends $pb.ProtobufEnum {
  static const BasicStatus_Wearing ON =
      BasicStatus_Wearing._(1, _omitEnumNames ? '' : 'ON');
  static const BasicStatus_Wearing OFF =
      BasicStatus_Wearing._(2, _omitEnumNames ? '' : 'OFF');

  static const $core.List<BasicStatus_Wearing> values = <BasicStatus_Wearing>[
    ON,
    OFF,
  ];

  static final $core.Map<$core.int, BasicStatus_Wearing> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static BasicStatus_Wearing? valueOf($core.int value) => _byValue[value];

  const BasicStatus_Wearing._(super.value, super.name);
}

class BasicStatus_Sleeping extends $pb.ProtobufEnum {
  static const BasicStatus_Sleeping IN =
      BasicStatus_Sleeping._(1, _omitEnumNames ? '' : 'IN');
  static const BasicStatus_Sleeping OUT =
      BasicStatus_Sleeping._(2, _omitEnumNames ? '' : 'OUT');

  static const $core.List<BasicStatus_Sleeping> values = <BasicStatus_Sleeping>[
    IN,
    OUT,
  ];

  static final $core.Map<$core.int, BasicStatus_Sleeping> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static BasicStatus_Sleeping? valueOf($core.int value) => _byValue[value];

  const BasicStatus_Sleeping._(super.value, super.name);
}

class BasicStatus_Warning extends $pb.ProtobufEnum {
  static const BasicStatus_Warning HEART_RATE_HIGH =
      BasicStatus_Warning._(1, _omitEnumNames ? '' : 'HEART_RATE_HIGH');
  static const BasicStatus_Warning HEART_RATE_LOW =
      BasicStatus_Warning._(2, _omitEnumNames ? '' : 'HEART_RATE_LOW');
  static const BasicStatus_Warning ACTIVE_HEART_RATE_HIGH =
      BasicStatus_Warning._(3, _omitEnumNames ? '' : 'ACTIVE_HEART_RATE_HIGH');
  static const BasicStatus_Warning ACTIVE_HEART_RATE_LOW =
      BasicStatus_Warning._(4, _omitEnumNames ? '' : 'ACTIVE_HEART_RATE_LOW');

  static const $core.List<BasicStatus_Warning> values = <BasicStatus_Warning>[
    HEART_RATE_HIGH,
    HEART_RATE_LOW,
    ACTIVE_HEART_RATE_HIGH,
    ACTIVE_HEART_RATE_LOW,
  ];

  static final $core.List<BasicStatus_Warning?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static BasicStatus_Warning? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BasicStatus_Warning._(super.value, super.name);
}

class ReportData_Type extends $pb.ProtobufEnum {
  static const ReportData_Type DEVICE_LOG =
      ReportData_Type._(1, _omitEnumNames ? '' : 'DEVICE_LOG');
  static const ReportData_Type STATISTICS =
      ReportData_Type._(2, _omitEnumNames ? '' : 'STATISTICS');
  static const ReportData_Type DUMP_LOG =
      ReportData_Type._(3, _omitEnumNames ? '' : 'DUMP_LOG');

  static const $core.List<ReportData_Type> values = <ReportData_Type>[
    DEVICE_LOG,
    STATISTICS,
    DUMP_LOG,
  ];

  static final $core.List<ReportData_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ReportData_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ReportData_Type._(super.value, super.name);
}

class ReportData_Status extends $pb.ProtobufEnum {
  static const ReportData_Status SUCCESS =
      ReportData_Status._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const ReportData_Status NO_DATA =
      ReportData_Status._(1, _omitEnumNames ? '' : 'NO_DATA');
  static const ReportData_Status URL_DIRECT =
      ReportData_Status._(2, _omitEnumNames ? '' : 'URL_DIRECT');
  static const ReportData_Status BUSY =
      ReportData_Status._(3, _omitEnumNames ? '' : 'BUSY');
  static const ReportData_Status FAIL =
      ReportData_Status._(10, _omitEnumNames ? '' : 'FAIL');

  static const $core.List<ReportData_Status> values = <ReportData_Status>[
    SUCCESS,
    NO_DATA,
    URL_DIRECT,
    BUSY,
    FAIL,
  ];

  static final $core.Map<$core.int, ReportData_Status> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ReportData_Status? valueOf($core.int value) => _byValue[value];

  const ReportData_Status._(super.value, super.name);
}

class NetworkProxy_Type extends $pb.ProtobufEnum {
  static const NetworkProxy_Type PAN =
      NetworkProxy_Type._(1, _omitEnumNames ? '' : 'PAN');

  static const $core.List<NetworkProxy_Type> values = <NetworkProxy_Type>[
    PAN,
  ];

  static final $core.Map<$core.int, NetworkProxy_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static NetworkProxy_Type? valueOf($core.int value) => _byValue[value];

  const NetworkProxy_Type._(super.value, super.name);
}

class Vibrator_Type extends $pb.ProtobufEnum {
  static const Vibrator_Type NONE =
      Vibrator_Type._(0, _omitEnumNames ? '' : 'NONE');
  static const Vibrator_Type CALL =
      Vibrator_Type._(1, _omitEnumNames ? '' : 'CALL');
  static const Vibrator_Type EVENT =
      Vibrator_Type._(2, _omitEnumNames ? '' : 'EVENT');
  static const Vibrator_Type CLOCK =
      Vibrator_Type._(3, _omitEnumNames ? '' : 'CLOCK');
  static const Vibrator_Type NOTIFICATION =
      Vibrator_Type._(4, _omitEnumNames ? '' : 'NOTIFICATION');
  static const Vibrator_Type SEDENTARY =
      Vibrator_Type._(5, _omitEnumNames ? '' : 'SEDENTARY');
  static const Vibrator_Type MESSAGE =
      Vibrator_Type._(6, _omitEnumNames ? '' : 'MESSAGE');
  static const Vibrator_Type GOAL =
      Vibrator_Type._(7, _omitEnumNames ? '' : 'GOAL');
  static const Vibrator_Type CALENDAR =
      Vibrator_Type._(8, _omitEnumNames ? '' : 'CALENDAR');

  static const $core.List<Vibrator_Type> values = <Vibrator_Type>[
    NONE,
    CALL,
    EVENT,
    CLOCK,
    NOTIFICATION,
    SEDENTARY,
    MESSAGE,
    GOAL,
    CALENDAR,
  ];

  static final $core.List<Vibrator_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static Vibrator_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Vibrator_Type._(super.value, super.name);
}

class VibratorError_Code extends $pb.ProtobufEnum {
  static const VibratorError_Code OK =
      VibratorError_Code._(0, _omitEnumNames ? '' : 'OK');
  static const VibratorError_Code NUMBER_LIMIT =
      VibratorError_Code._(1, _omitEnumNames ? '' : 'NUMBER_LIMIT');
  static const VibratorError_Code ID_NOT_EXIST =
      VibratorError_Code._(2, _omitEnumNames ? '' : 'ID_NOT_EXIST');

  static const $core.List<VibratorError_Code> values = <VibratorError_Code>[
    OK,
    NUMBER_LIMIT,
    ID_NOT_EXIST,
  ];

  static final $core.List<VibratorError_Code?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static VibratorError_Code? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const VibratorError_Code._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
