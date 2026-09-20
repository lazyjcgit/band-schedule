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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pb.dart' as $0;
import 'wear_system.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_system.pbenum.dart';

enum System_Payload {
  resetMode,
  deviceStatus,
  deviceInfo,
  systemTime,
  findMode,
  forceUpgrade,
  wristScreen,
  widget,
  widgetList,
  appList,
  timingSetting,
  shortcut,
  shortcutList,
  sportOptionList,
  hidStatus,
  prepareOtaRequest,
  prepareOtaResponse,
  appLayout,
  lockScreen,
  language,
  authorizeUnlockList,
  authorizeUnlock,
  nightMode,
  smallHabit,
  smallHabitList,
  smallHabitType,
  smallHabitTypeList,
  widgetGroupList,
  widgetV2List,
  wifiCapability,
  wifiBasicInfo,
  wifiConfig,
  wifiConfigList,
  systemSettingRequest,
  systemSetting,
  phoneSettingRequest,
  phoneSetting,
  vibratorSetting,
  vibratorItem,
  vibrator,
  vibratorEffect,
  vibratorRemoval,
  vibratorError,
  storageInfo,
  phonePermission,
  lowLatency,
  presentBasicStatus,
  reportBasicStatus,
  reportData,
  reportDataResult,
  networkProxyRequest,
  widgetV3,
  widgetV3SupportedList,
  otaProgress,
  wifiApResult,
  wifiAp,
  alertStatus,
  networkStatus,
  wearStatus,
  usageGuide,
  guideFeedback,
  batteryStatus,
  wifiConfigResult,
  notSet
}

class System extends $pb.GeneratedMessage {
  factory System({
    ResetMode? resetMode,
    DeviceStatus? deviceStatus,
    DeviceInfo? deviceInfo,
    SystemTime? systemTime,
    FindMode? findMode,
    ForceUpgrade? forceUpgrade,
    WristScreen? wristScreen,
    Widget? widget,
    Widget_List? widgetList,
    App_List? appList,
    TimingSetting? timingSetting,
    Shortcut? shortcut,
    Shortcut_List? shortcutList,
    SportOption_List? sportOptionList,
    HidStatus? hidStatus,
    PrepareOta_Request? prepareOtaRequest,
    PrepareOta_Response? prepareOtaResponse,
    AppLayout? appLayout,
    LockScreen? lockScreen,
    Language? language,
    AuthorizeUnlock_List? authorizeUnlockList,
    AuthorizeUnlock? authorizeUnlock,
    NightMode? nightMode,
    SmallHabit? smallHabit,
    SmallHabit_List? smallHabitList,
    SmallHabit_Type? smallHabitType,
    SmallHabit_TypeList? smallHabitTypeList,
    WidgetGroup_List? widgetGroupList,
    WidgetV2_List? widgetV2List,
    WiFiConfig_Capability? wifiCapability,
    WiFiConfig_BasicInfo? wifiBasicInfo,
    WiFiConfig? wifiConfig,
    WiFiConfig_List? wifiConfigList,
    SystemSetting_Request? systemSettingRequest,
    SystemSetting? systemSetting,
    PhoneSetting_Request? phoneSettingRequest,
    PhoneSetting? phoneSetting,
    VibratorSetting? vibratorSetting,
    VibratorItem? vibratorItem,
    Vibrator? vibrator,
    VibratorEffect? vibratorEffect,
    Vibrator_Removal? vibratorRemoval,
    VibratorError? vibratorError,
    StorageInfo? storageInfo,
    PhonePermission? phonePermission,
    LowLatency? lowLatency,
    BasicStatus_Present? presentBasicStatus,
    BasicStatus_Report? reportBasicStatus,
    ReportData? reportData,
    ReportData_Result? reportDataResult,
    NetworkProxy_Request? networkProxyRequest,
    WidgetV3? widgetV3,
    WidgetV3_SupportedList? widgetV3SupportedList,
    PrepareOta_Progress? otaProgress,
    WiFiAP_Result? wifiApResult,
    WiFiAP? wifiAp,
    AlertStatus? alertStatus,
    NetworkStatus? networkStatus,
    BasicStatus_Wearing? wearStatus,
    UsageGuide? usageGuide,
    UsageGuide_Feedback? guideFeedback,
    DeviceStatus_Battery? batteryStatus,
    WiFiConfig_Result? wifiConfigResult,
  }) {
    final result = create();
    if (resetMode != null) result.resetMode = resetMode;
    if (deviceStatus != null) result.deviceStatus = deviceStatus;
    if (deviceInfo != null) result.deviceInfo = deviceInfo;
    if (systemTime != null) result.systemTime = systemTime;
    if (findMode != null) result.findMode = findMode;
    if (forceUpgrade != null) result.forceUpgrade = forceUpgrade;
    if (wristScreen != null) result.wristScreen = wristScreen;
    if (widget != null) result.widget = widget;
    if (widgetList != null) result.widgetList = widgetList;
    if (appList != null) result.appList = appList;
    if (timingSetting != null) result.timingSetting = timingSetting;
    if (shortcut != null) result.shortcut = shortcut;
    if (shortcutList != null) result.shortcutList = shortcutList;
    if (sportOptionList != null) result.sportOptionList = sportOptionList;
    if (hidStatus != null) result.hidStatus = hidStatus;
    if (prepareOtaRequest != null) result.prepareOtaRequest = prepareOtaRequest;
    if (prepareOtaResponse != null)
      result.prepareOtaResponse = prepareOtaResponse;
    if (appLayout != null) result.appLayout = appLayout;
    if (lockScreen != null) result.lockScreen = lockScreen;
    if (language != null) result.language = language;
    if (authorizeUnlockList != null)
      result.authorizeUnlockList = authorizeUnlockList;
    if (authorizeUnlock != null) result.authorizeUnlock = authorizeUnlock;
    if (nightMode != null) result.nightMode = nightMode;
    if (smallHabit != null) result.smallHabit = smallHabit;
    if (smallHabitList != null) result.smallHabitList = smallHabitList;
    if (smallHabitType != null) result.smallHabitType = smallHabitType;
    if (smallHabitTypeList != null)
      result.smallHabitTypeList = smallHabitTypeList;
    if (widgetGroupList != null) result.widgetGroupList = widgetGroupList;
    if (widgetV2List != null) result.widgetV2List = widgetV2List;
    if (wifiCapability != null) result.wifiCapability = wifiCapability;
    if (wifiBasicInfo != null) result.wifiBasicInfo = wifiBasicInfo;
    if (wifiConfig != null) result.wifiConfig = wifiConfig;
    if (wifiConfigList != null) result.wifiConfigList = wifiConfigList;
    if (systemSettingRequest != null)
      result.systemSettingRequest = systemSettingRequest;
    if (systemSetting != null) result.systemSetting = systemSetting;
    if (phoneSettingRequest != null)
      result.phoneSettingRequest = phoneSettingRequest;
    if (phoneSetting != null) result.phoneSetting = phoneSetting;
    if (vibratorSetting != null) result.vibratorSetting = vibratorSetting;
    if (vibratorItem != null) result.vibratorItem = vibratorItem;
    if (vibrator != null) result.vibrator = vibrator;
    if (vibratorEffect != null) result.vibratorEffect = vibratorEffect;
    if (vibratorRemoval != null) result.vibratorRemoval = vibratorRemoval;
    if (vibratorError != null) result.vibratorError = vibratorError;
    if (storageInfo != null) result.storageInfo = storageInfo;
    if (phonePermission != null) result.phonePermission = phonePermission;
    if (lowLatency != null) result.lowLatency = lowLatency;
    if (presentBasicStatus != null)
      result.presentBasicStatus = presentBasicStatus;
    if (reportBasicStatus != null) result.reportBasicStatus = reportBasicStatus;
    if (reportData != null) result.reportData = reportData;
    if (reportDataResult != null) result.reportDataResult = reportDataResult;
    if (networkProxyRequest != null)
      result.networkProxyRequest = networkProxyRequest;
    if (widgetV3 != null) result.widgetV3 = widgetV3;
    if (widgetV3SupportedList != null)
      result.widgetV3SupportedList = widgetV3SupportedList;
    if (otaProgress != null) result.otaProgress = otaProgress;
    if (wifiApResult != null) result.wifiApResult = wifiApResult;
    if (wifiAp != null) result.wifiAp = wifiAp;
    if (alertStatus != null) result.alertStatus = alertStatus;
    if (networkStatus != null) result.networkStatus = networkStatus;
    if (wearStatus != null) result.wearStatus = wearStatus;
    if (usageGuide != null) result.usageGuide = usageGuide;
    if (guideFeedback != null) result.guideFeedback = guideFeedback;
    if (batteryStatus != null) result.batteryStatus = batteryStatus;
    if (wifiConfigResult != null) result.wifiConfigResult = wifiConfigResult;
    return result;
  }

  System._();

  factory System.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory System.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, System_Payload> _System_PayloadByTag = {
    1: System_Payload.resetMode,
    2: System_Payload.deviceStatus,
    3: System_Payload.deviceInfo,
    4: System_Payload.systemTime,
    5: System_Payload.findMode,
    6: System_Payload.forceUpgrade,
    7: System_Payload.wristScreen,
    8: System_Payload.widget,
    9: System_Payload.widgetList,
    10: System_Payload.appList,
    11: System_Payload.timingSetting,
    12: System_Payload.shortcut,
    13: System_Payload.shortcutList,
    14: System_Payload.sportOptionList,
    15: System_Payload.hidStatus,
    16: System_Payload.prepareOtaRequest,
    17: System_Payload.prepareOtaResponse,
    18: System_Payload.appLayout,
    19: System_Payload.lockScreen,
    20: System_Payload.language,
    21: System_Payload.authorizeUnlockList,
    22: System_Payload.authorizeUnlock,
    23: System_Payload.nightMode,
    24: System_Payload.smallHabit,
    25: System_Payload.smallHabitList,
    26: System_Payload.smallHabitType,
    27: System_Payload.smallHabitTypeList,
    28: System_Payload.widgetGroupList,
    29: System_Payload.widgetV2List,
    30: System_Payload.wifiCapability,
    31: System_Payload.wifiBasicInfo,
    32: System_Payload.wifiConfig,
    33: System_Payload.wifiConfigList,
    34: System_Payload.systemSettingRequest,
    35: System_Payload.systemSetting,
    36: System_Payload.phoneSettingRequest,
    37: System_Payload.phoneSetting,
    38: System_Payload.vibratorSetting,
    39: System_Payload.vibratorItem,
    40: System_Payload.vibrator,
    41: System_Payload.vibratorEffect,
    42: System_Payload.vibratorRemoval,
    43: System_Payload.vibratorError,
    44: System_Payload.storageInfo,
    45: System_Payload.phonePermission,
    46: System_Payload.lowLatency,
    48: System_Payload.presentBasicStatus,
    49: System_Payload.reportBasicStatus,
    50: System_Payload.reportData,
    51: System_Payload.reportDataResult,
    52: System_Payload.networkProxyRequest,
    53: System_Payload.widgetV3,
    54: System_Payload.widgetV3SupportedList,
    55: System_Payload.otaProgress,
    56: System_Payload.wifiApResult,
    57: System_Payload.wifiAp,
    58: System_Payload.alertStatus,
    59: System_Payload.networkStatus,
    60: System_Payload.wearStatus,
    61: System_Payload.usageGuide,
    62: System_Payload.guideFeedback,
    63: System_Payload.batteryStatus,
    64: System_Payload.wifiConfigResult,
    0: System_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'System',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      29,
      30,
      31,
      32,
      33,
      34,
      35,
      36,
      37,
      38,
      39,
      40,
      41,
      42,
      43,
      44,
      45,
      46,
      48,
      49,
      50,
      51,
      52,
      53,
      54,
      55,
      56,
      57,
      58,
      59,
      60,
      61,
      62,
      63,
      64
    ])
    ..aE<ResetMode>(1, _omitFieldNames ? '' : 'resetMode',
        enumValues: ResetMode.values)
    ..aOM<DeviceStatus>(2, _omitFieldNames ? '' : 'deviceStatus',
        subBuilder: DeviceStatus.create)
    ..aOM<DeviceInfo>(3, _omitFieldNames ? '' : 'deviceInfo',
        subBuilder: DeviceInfo.create)
    ..aOM<SystemTime>(4, _omitFieldNames ? '' : 'systemTime',
        subBuilder: SystemTime.create)
    ..aE<FindMode>(5, _omitFieldNames ? '' : 'findMode',
        enumValues: FindMode.values)
    ..aOM<ForceUpgrade>(6, _omitFieldNames ? '' : 'forceUpgrade',
        subBuilder: ForceUpgrade.create)
    ..aOM<WristScreen>(7, _omitFieldNames ? '' : 'wristScreen',
        subBuilder: WristScreen.create)
    ..aOM<Widget>(8, _omitFieldNames ? '' : 'widget', subBuilder: Widget.create)
    ..aOM<Widget_List>(9, _omitFieldNames ? '' : 'widgetList',
        subBuilder: Widget_List.create)
    ..aOM<App_List>(10, _omitFieldNames ? '' : 'appList',
        subBuilder: App_List.create)
    ..aOM<TimingSetting>(11, _omitFieldNames ? '' : 'timingSetting',
        subBuilder: TimingSetting.create)
    ..aOM<Shortcut>(12, _omitFieldNames ? '' : 'shortcut',
        subBuilder: Shortcut.create)
    ..aOM<Shortcut_List>(13, _omitFieldNames ? '' : 'shortcutList',
        subBuilder: Shortcut_List.create)
    ..aOM<SportOption_List>(14, _omitFieldNames ? '' : 'sportOptionList',
        subBuilder: SportOption_List.create)
    ..aOM<HidStatus>(15, _omitFieldNames ? '' : 'hidStatus',
        subBuilder: HidStatus.create)
    ..aOM<PrepareOta_Request>(16, _omitFieldNames ? '' : 'prepareOtaRequest',
        subBuilder: PrepareOta_Request.create)
    ..aOM<PrepareOta_Response>(17, _omitFieldNames ? '' : 'prepareOtaResponse',
        subBuilder: PrepareOta_Response.create)
    ..aOM<AppLayout>(18, _omitFieldNames ? '' : 'appLayout',
        subBuilder: AppLayout.create)
    ..aOM<LockScreen>(19, _omitFieldNames ? '' : 'lockScreen',
        subBuilder: LockScreen.create)
    ..aOM<Language>(20, _omitFieldNames ? '' : 'language',
        subBuilder: Language.create)
    ..aOM<AuthorizeUnlock_List>(
        21, _omitFieldNames ? '' : 'authorizeUnlockList',
        subBuilder: AuthorizeUnlock_List.create)
    ..aOM<AuthorizeUnlock>(22, _omitFieldNames ? '' : 'authorizeUnlock',
        subBuilder: AuthorizeUnlock.create)
    ..aOM<NightMode>(23, _omitFieldNames ? '' : 'nightMode',
        subBuilder: NightMode.create)
    ..aOM<SmallHabit>(24, _omitFieldNames ? '' : 'smallHabit',
        subBuilder: SmallHabit.create)
    ..aOM<SmallHabit_List>(25, _omitFieldNames ? '' : 'smallHabitList',
        subBuilder: SmallHabit_List.create)
    ..aE<SmallHabit_Type>(26, _omitFieldNames ? '' : 'smallHabitType',
        enumValues: SmallHabit_Type.values)
    ..aOM<SmallHabit_TypeList>(27, _omitFieldNames ? '' : 'smallHabitTypeList',
        subBuilder: SmallHabit_TypeList.create)
    ..aOM<WidgetGroup_List>(28, _omitFieldNames ? '' : 'widgetGroupList',
        subBuilder: WidgetGroup_List.create)
    ..aOM<WidgetV2_List>(29, _omitFieldNames ? '' : 'widgetV2List',
        subBuilder: WidgetV2_List.create)
    ..aOM<WiFiConfig_Capability>(30, _omitFieldNames ? '' : 'wifiCapability',
        subBuilder: WiFiConfig_Capability.create)
    ..aOM<WiFiConfig_BasicInfo>(31, _omitFieldNames ? '' : 'wifiBasicInfo',
        subBuilder: WiFiConfig_BasicInfo.create)
    ..aOM<WiFiConfig>(32, _omitFieldNames ? '' : 'wifiConfig',
        subBuilder: WiFiConfig.create)
    ..aOM<WiFiConfig_List>(33, _omitFieldNames ? '' : 'wifiConfigList',
        subBuilder: WiFiConfig_List.create)
    ..aOM<SystemSetting_Request>(
        34, _omitFieldNames ? '' : 'systemSettingRequest',
        subBuilder: SystemSetting_Request.create)
    ..aOM<SystemSetting>(35, _omitFieldNames ? '' : 'systemSetting',
        subBuilder: SystemSetting.create)
    ..aOM<PhoneSetting_Request>(
        36, _omitFieldNames ? '' : 'phoneSettingRequest',
        subBuilder: PhoneSetting_Request.create)
    ..aOM<PhoneSetting>(37, _omitFieldNames ? '' : 'phoneSetting',
        subBuilder: PhoneSetting.create)
    ..aOM<VibratorSetting>(38, _omitFieldNames ? '' : 'vibratorSetting',
        subBuilder: VibratorSetting.create)
    ..aOM<VibratorItem>(39, _omitFieldNames ? '' : 'VibratorItem',
        protoName: 'Vibrator_item', subBuilder: VibratorItem.create)
    ..aOM<Vibrator>(40, _omitFieldNames ? '' : 'Vibrator',
        protoName: 'Vibrator', subBuilder: Vibrator.create)
    ..aOM<VibratorEffect>(41, _omitFieldNames ? '' : 'vibratorEffect',
        subBuilder: VibratorEffect.create)
    ..aOM<Vibrator_Removal>(42, _omitFieldNames ? '' : 'vibratorRemoval',
        subBuilder: Vibrator_Removal.create)
    ..aOM<VibratorError>(43, _omitFieldNames ? '' : 'vibratorError',
        subBuilder: VibratorError.create)
    ..aOM<StorageInfo>(44, _omitFieldNames ? '' : 'storageInfo',
        subBuilder: StorageInfo.create)
    ..aOM<PhonePermission>(45, _omitFieldNames ? '' : 'phonePermission',
        subBuilder: PhonePermission.create)
    ..aOM<LowLatency>(46, _omitFieldNames ? '' : 'lowLatency',
        subBuilder: LowLatency.create)
    ..aOM<BasicStatus_Present>(48, _omitFieldNames ? '' : 'presentBasicStatus',
        subBuilder: BasicStatus_Present.create)
    ..aOM<BasicStatus_Report>(49, _omitFieldNames ? '' : 'reportBasicStatus',
        subBuilder: BasicStatus_Report.create)
    ..aOM<ReportData>(50, _omitFieldNames ? '' : 'reportData',
        subBuilder: ReportData.create)
    ..aOM<ReportData_Result>(51, _omitFieldNames ? '' : 'reportDataResult',
        subBuilder: ReportData_Result.create)
    ..aOM<NetworkProxy_Request>(
        52, _omitFieldNames ? '' : 'networkProxyRequest',
        subBuilder: NetworkProxy_Request.create)
    ..aOM<WidgetV3>(53, _omitFieldNames ? '' : 'widgetV3',
        subBuilder: WidgetV3.create)
    ..aOM<WidgetV3_SupportedList>(
        54, _omitFieldNames ? '' : 'widgetV3SupportedList',
        subBuilder: WidgetV3_SupportedList.create)
    ..aOM<PrepareOta_Progress>(55, _omitFieldNames ? '' : 'otaProgress',
        subBuilder: PrepareOta_Progress.create)
    ..aOM<WiFiAP_Result>(56, _omitFieldNames ? '' : 'wifiApResult',
        subBuilder: WiFiAP_Result.create)
    ..aOM<WiFiAP>(57, _omitFieldNames ? '' : 'wifiAp',
        subBuilder: WiFiAP.create)
    ..aOM<AlertStatus>(58, _omitFieldNames ? '' : 'alertStatus',
        subBuilder: AlertStatus.create)
    ..aOM<NetworkStatus>(59, _omitFieldNames ? '' : 'networkStatus',
        subBuilder: NetworkStatus.create)
    ..aE<BasicStatus_Wearing>(60, _omitFieldNames ? '' : 'wearStatus',
        enumValues: BasicStatus_Wearing.values)
    ..aOM<UsageGuide>(61, _omitFieldNames ? '' : 'usageGuide',
        subBuilder: UsageGuide.create)
    ..aOM<UsageGuide_Feedback>(62, _omitFieldNames ? '' : 'guideFeedback',
        subBuilder: UsageGuide_Feedback.create)
    ..aOM<DeviceStatus_Battery>(63, _omitFieldNames ? '' : 'batteryStatus',
        subBuilder: DeviceStatus_Battery.create)
    ..aOM<WiFiConfig_Result>(64, _omitFieldNames ? '' : 'wifiConfigResult',
        subBuilder: WiFiConfig_Result.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  System clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  System copyWith(void Function(System) updates) =>
      super.copyWith((message) => updates(message as System)) as System;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static System create() => System._();
  @$core.override
  System createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static System getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<System>(create);
  static System? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  @$pb.TagNumber(39)
  @$pb.TagNumber(40)
  @$pb.TagNumber(41)
  @$pb.TagNumber(42)
  @$pb.TagNumber(43)
  @$pb.TagNumber(44)
  @$pb.TagNumber(45)
  @$pb.TagNumber(46)
  @$pb.TagNumber(48)
  @$pb.TagNumber(49)
  @$pb.TagNumber(50)
  @$pb.TagNumber(51)
  @$pb.TagNumber(52)
  @$pb.TagNumber(53)
  @$pb.TagNumber(54)
  @$pb.TagNumber(55)
  @$pb.TagNumber(56)
  @$pb.TagNumber(57)
  @$pb.TagNumber(58)
  @$pb.TagNumber(59)
  @$pb.TagNumber(60)
  @$pb.TagNumber(61)
  @$pb.TagNumber(62)
  @$pb.TagNumber(63)
  @$pb.TagNumber(64)
  System_Payload whichPayload() => _System_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  @$pb.TagNumber(39)
  @$pb.TagNumber(40)
  @$pb.TagNumber(41)
  @$pb.TagNumber(42)
  @$pb.TagNumber(43)
  @$pb.TagNumber(44)
  @$pb.TagNumber(45)
  @$pb.TagNumber(46)
  @$pb.TagNumber(48)
  @$pb.TagNumber(49)
  @$pb.TagNumber(50)
  @$pb.TagNumber(51)
  @$pb.TagNumber(52)
  @$pb.TagNumber(53)
  @$pb.TagNumber(54)
  @$pb.TagNumber(55)
  @$pb.TagNumber(56)
  @$pb.TagNumber(57)
  @$pb.TagNumber(58)
  @$pb.TagNumber(59)
  @$pb.TagNumber(60)
  @$pb.TagNumber(61)
  @$pb.TagNumber(62)
  @$pb.TagNumber(63)
  @$pb.TagNumber(64)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ResetMode get resetMode => $_getN(0);
  @$pb.TagNumber(1)
  set resetMode(ResetMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResetMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResetMode() => $_clearField(1);

  @$pb.TagNumber(2)
  DeviceStatus get deviceStatus => $_getN(1);
  @$pb.TagNumber(2)
  set deviceStatus(DeviceStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceStatus() => $_clearField(2);
  @$pb.TagNumber(2)
  DeviceStatus ensureDeviceStatus() => $_ensure(1);

  @$pb.TagNumber(3)
  DeviceInfo get deviceInfo => $_getN(2);
  @$pb.TagNumber(3)
  set deviceInfo(DeviceInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDeviceInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  DeviceInfo ensureDeviceInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  SystemTime get systemTime => $_getN(3);
  @$pb.TagNumber(4)
  set systemTime(SystemTime value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSystemTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearSystemTime() => $_clearField(4);
  @$pb.TagNumber(4)
  SystemTime ensureSystemTime() => $_ensure(3);

  @$pb.TagNumber(5)
  FindMode get findMode => $_getN(4);
  @$pb.TagNumber(5)
  set findMode(FindMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFindMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearFindMode() => $_clearField(5);

  @$pb.TagNumber(6)
  ForceUpgrade get forceUpgrade => $_getN(5);
  @$pb.TagNumber(6)
  set forceUpgrade(ForceUpgrade value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasForceUpgrade() => $_has(5);
  @$pb.TagNumber(6)
  void clearForceUpgrade() => $_clearField(6);
  @$pb.TagNumber(6)
  ForceUpgrade ensureForceUpgrade() => $_ensure(5);

  @$pb.TagNumber(7)
  WristScreen get wristScreen => $_getN(6);
  @$pb.TagNumber(7)
  set wristScreen(WristScreen value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasWristScreen() => $_has(6);
  @$pb.TagNumber(7)
  void clearWristScreen() => $_clearField(7);
  @$pb.TagNumber(7)
  WristScreen ensureWristScreen() => $_ensure(6);

  @$pb.TagNumber(8)
  Widget get widget => $_getN(7);
  @$pb.TagNumber(8)
  set widget(Widget value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasWidget() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidget() => $_clearField(8);
  @$pb.TagNumber(8)
  Widget ensureWidget() => $_ensure(7);

  @$pb.TagNumber(9)
  Widget_List get widgetList => $_getN(8);
  @$pb.TagNumber(9)
  set widgetList(Widget_List value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasWidgetList() => $_has(8);
  @$pb.TagNumber(9)
  void clearWidgetList() => $_clearField(9);
  @$pb.TagNumber(9)
  Widget_List ensureWidgetList() => $_ensure(8);

  @$pb.TagNumber(10)
  App_List get appList => $_getN(9);
  @$pb.TagNumber(10)
  set appList(App_List value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAppList() => $_has(9);
  @$pb.TagNumber(10)
  void clearAppList() => $_clearField(10);
  @$pb.TagNumber(10)
  App_List ensureAppList() => $_ensure(9);

  @$pb.TagNumber(11)
  TimingSetting get timingSetting => $_getN(10);
  @$pb.TagNumber(11)
  set timingSetting(TimingSetting value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasTimingSetting() => $_has(10);
  @$pb.TagNumber(11)
  void clearTimingSetting() => $_clearField(11);
  @$pb.TagNumber(11)
  TimingSetting ensureTimingSetting() => $_ensure(10);

  @$pb.TagNumber(12)
  Shortcut get shortcut => $_getN(11);
  @$pb.TagNumber(12)
  set shortcut(Shortcut value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasShortcut() => $_has(11);
  @$pb.TagNumber(12)
  void clearShortcut() => $_clearField(12);
  @$pb.TagNumber(12)
  Shortcut ensureShortcut() => $_ensure(11);

  @$pb.TagNumber(13)
  Shortcut_List get shortcutList => $_getN(12);
  @$pb.TagNumber(13)
  set shortcutList(Shortcut_List value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasShortcutList() => $_has(12);
  @$pb.TagNumber(13)
  void clearShortcutList() => $_clearField(13);
  @$pb.TagNumber(13)
  Shortcut_List ensureShortcutList() => $_ensure(12);

  @$pb.TagNumber(14)
  SportOption_List get sportOptionList => $_getN(13);
  @$pb.TagNumber(14)
  set sportOptionList(SportOption_List value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasSportOptionList() => $_has(13);
  @$pb.TagNumber(14)
  void clearSportOptionList() => $_clearField(14);
  @$pb.TagNumber(14)
  SportOption_List ensureSportOptionList() => $_ensure(13);

  @$pb.TagNumber(15)
  HidStatus get hidStatus => $_getN(14);
  @$pb.TagNumber(15)
  set hidStatus(HidStatus value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasHidStatus() => $_has(14);
  @$pb.TagNumber(15)
  void clearHidStatus() => $_clearField(15);
  @$pb.TagNumber(15)
  HidStatus ensureHidStatus() => $_ensure(14);

  @$pb.TagNumber(16)
  PrepareOta_Request get prepareOtaRequest => $_getN(15);
  @$pb.TagNumber(16)
  set prepareOtaRequest(PrepareOta_Request value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasPrepareOtaRequest() => $_has(15);
  @$pb.TagNumber(16)
  void clearPrepareOtaRequest() => $_clearField(16);
  @$pb.TagNumber(16)
  PrepareOta_Request ensurePrepareOtaRequest() => $_ensure(15);

  @$pb.TagNumber(17)
  PrepareOta_Response get prepareOtaResponse => $_getN(16);
  @$pb.TagNumber(17)
  set prepareOtaResponse(PrepareOta_Response value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasPrepareOtaResponse() => $_has(16);
  @$pb.TagNumber(17)
  void clearPrepareOtaResponse() => $_clearField(17);
  @$pb.TagNumber(17)
  PrepareOta_Response ensurePrepareOtaResponse() => $_ensure(16);

  @$pb.TagNumber(18)
  AppLayout get appLayout => $_getN(17);
  @$pb.TagNumber(18)
  set appLayout(AppLayout value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasAppLayout() => $_has(17);
  @$pb.TagNumber(18)
  void clearAppLayout() => $_clearField(18);
  @$pb.TagNumber(18)
  AppLayout ensureAppLayout() => $_ensure(17);

  @$pb.TagNumber(19)
  LockScreen get lockScreen => $_getN(18);
  @$pb.TagNumber(19)
  set lockScreen(LockScreen value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasLockScreen() => $_has(18);
  @$pb.TagNumber(19)
  void clearLockScreen() => $_clearField(19);
  @$pb.TagNumber(19)
  LockScreen ensureLockScreen() => $_ensure(18);

  @$pb.TagNumber(20)
  Language get language => $_getN(19);
  @$pb.TagNumber(20)
  set language(Language value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasLanguage() => $_has(19);
  @$pb.TagNumber(20)
  void clearLanguage() => $_clearField(20);
  @$pb.TagNumber(20)
  Language ensureLanguage() => $_ensure(19);

  @$pb.TagNumber(21)
  AuthorizeUnlock_List get authorizeUnlockList => $_getN(20);
  @$pb.TagNumber(21)
  set authorizeUnlockList(AuthorizeUnlock_List value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasAuthorizeUnlockList() => $_has(20);
  @$pb.TagNumber(21)
  void clearAuthorizeUnlockList() => $_clearField(21);
  @$pb.TagNumber(21)
  AuthorizeUnlock_List ensureAuthorizeUnlockList() => $_ensure(20);

  @$pb.TagNumber(22)
  AuthorizeUnlock get authorizeUnlock => $_getN(21);
  @$pb.TagNumber(22)
  set authorizeUnlock(AuthorizeUnlock value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasAuthorizeUnlock() => $_has(21);
  @$pb.TagNumber(22)
  void clearAuthorizeUnlock() => $_clearField(22);
  @$pb.TagNumber(22)
  AuthorizeUnlock ensureAuthorizeUnlock() => $_ensure(21);

  @$pb.TagNumber(23)
  NightMode get nightMode => $_getN(22);
  @$pb.TagNumber(23)
  set nightMode(NightMode value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasNightMode() => $_has(22);
  @$pb.TagNumber(23)
  void clearNightMode() => $_clearField(23);
  @$pb.TagNumber(23)
  NightMode ensureNightMode() => $_ensure(22);

  @$pb.TagNumber(24)
  SmallHabit get smallHabit => $_getN(23);
  @$pb.TagNumber(24)
  set smallHabit(SmallHabit value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasSmallHabit() => $_has(23);
  @$pb.TagNumber(24)
  void clearSmallHabit() => $_clearField(24);
  @$pb.TagNumber(24)
  SmallHabit ensureSmallHabit() => $_ensure(23);

  @$pb.TagNumber(25)
  SmallHabit_List get smallHabitList => $_getN(24);
  @$pb.TagNumber(25)
  set smallHabitList(SmallHabit_List value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasSmallHabitList() => $_has(24);
  @$pb.TagNumber(25)
  void clearSmallHabitList() => $_clearField(25);
  @$pb.TagNumber(25)
  SmallHabit_List ensureSmallHabitList() => $_ensure(24);

  @$pb.TagNumber(26)
  SmallHabit_Type get smallHabitType => $_getN(25);
  @$pb.TagNumber(26)
  set smallHabitType(SmallHabit_Type value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasSmallHabitType() => $_has(25);
  @$pb.TagNumber(26)
  void clearSmallHabitType() => $_clearField(26);

  @$pb.TagNumber(27)
  SmallHabit_TypeList get smallHabitTypeList => $_getN(26);
  @$pb.TagNumber(27)
  set smallHabitTypeList(SmallHabit_TypeList value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasSmallHabitTypeList() => $_has(26);
  @$pb.TagNumber(27)
  void clearSmallHabitTypeList() => $_clearField(27);
  @$pb.TagNumber(27)
  SmallHabit_TypeList ensureSmallHabitTypeList() => $_ensure(26);

  @$pb.TagNumber(28)
  WidgetGroup_List get widgetGroupList => $_getN(27);
  @$pb.TagNumber(28)
  set widgetGroupList(WidgetGroup_List value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasWidgetGroupList() => $_has(27);
  @$pb.TagNumber(28)
  void clearWidgetGroupList() => $_clearField(28);
  @$pb.TagNumber(28)
  WidgetGroup_List ensureWidgetGroupList() => $_ensure(27);

  @$pb.TagNumber(29)
  WidgetV2_List get widgetV2List => $_getN(28);
  @$pb.TagNumber(29)
  set widgetV2List(WidgetV2_List value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasWidgetV2List() => $_has(28);
  @$pb.TagNumber(29)
  void clearWidgetV2List() => $_clearField(29);
  @$pb.TagNumber(29)
  WidgetV2_List ensureWidgetV2List() => $_ensure(28);

  @$pb.TagNumber(30)
  WiFiConfig_Capability get wifiCapability => $_getN(29);
  @$pb.TagNumber(30)
  set wifiCapability(WiFiConfig_Capability value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasWifiCapability() => $_has(29);
  @$pb.TagNumber(30)
  void clearWifiCapability() => $_clearField(30);
  @$pb.TagNumber(30)
  WiFiConfig_Capability ensureWifiCapability() => $_ensure(29);

  @$pb.TagNumber(31)
  WiFiConfig_BasicInfo get wifiBasicInfo => $_getN(30);
  @$pb.TagNumber(31)
  set wifiBasicInfo(WiFiConfig_BasicInfo value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasWifiBasicInfo() => $_has(30);
  @$pb.TagNumber(31)
  void clearWifiBasicInfo() => $_clearField(31);
  @$pb.TagNumber(31)
  WiFiConfig_BasicInfo ensureWifiBasicInfo() => $_ensure(30);

  @$pb.TagNumber(32)
  WiFiConfig get wifiConfig => $_getN(31);
  @$pb.TagNumber(32)
  set wifiConfig(WiFiConfig value) => $_setField(32, value);
  @$pb.TagNumber(32)
  $core.bool hasWifiConfig() => $_has(31);
  @$pb.TagNumber(32)
  void clearWifiConfig() => $_clearField(32);
  @$pb.TagNumber(32)
  WiFiConfig ensureWifiConfig() => $_ensure(31);

  @$pb.TagNumber(33)
  WiFiConfig_List get wifiConfigList => $_getN(32);
  @$pb.TagNumber(33)
  set wifiConfigList(WiFiConfig_List value) => $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasWifiConfigList() => $_has(32);
  @$pb.TagNumber(33)
  void clearWifiConfigList() => $_clearField(33);
  @$pb.TagNumber(33)
  WiFiConfig_List ensureWifiConfigList() => $_ensure(32);

  @$pb.TagNumber(34)
  SystemSetting_Request get systemSettingRequest => $_getN(33);
  @$pb.TagNumber(34)
  set systemSettingRequest(SystemSetting_Request value) =>
      $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasSystemSettingRequest() => $_has(33);
  @$pb.TagNumber(34)
  void clearSystemSettingRequest() => $_clearField(34);
  @$pb.TagNumber(34)
  SystemSetting_Request ensureSystemSettingRequest() => $_ensure(33);

  @$pb.TagNumber(35)
  SystemSetting get systemSetting => $_getN(34);
  @$pb.TagNumber(35)
  set systemSetting(SystemSetting value) => $_setField(35, value);
  @$pb.TagNumber(35)
  $core.bool hasSystemSetting() => $_has(34);
  @$pb.TagNumber(35)
  void clearSystemSetting() => $_clearField(35);
  @$pb.TagNumber(35)
  SystemSetting ensureSystemSetting() => $_ensure(34);

  @$pb.TagNumber(36)
  PhoneSetting_Request get phoneSettingRequest => $_getN(35);
  @$pb.TagNumber(36)
  set phoneSettingRequest(PhoneSetting_Request value) => $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasPhoneSettingRequest() => $_has(35);
  @$pb.TagNumber(36)
  void clearPhoneSettingRequest() => $_clearField(36);
  @$pb.TagNumber(36)
  PhoneSetting_Request ensurePhoneSettingRequest() => $_ensure(35);

  @$pb.TagNumber(37)
  PhoneSetting get phoneSetting => $_getN(36);
  @$pb.TagNumber(37)
  set phoneSetting(PhoneSetting value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasPhoneSetting() => $_has(36);
  @$pb.TagNumber(37)
  void clearPhoneSetting() => $_clearField(37);
  @$pb.TagNumber(37)
  PhoneSetting ensurePhoneSetting() => $_ensure(36);

  @$pb.TagNumber(38)
  VibratorSetting get vibratorSetting => $_getN(37);
  @$pb.TagNumber(38)
  set vibratorSetting(VibratorSetting value) => $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasVibratorSetting() => $_has(37);
  @$pb.TagNumber(38)
  void clearVibratorSetting() => $_clearField(38);
  @$pb.TagNumber(38)
  VibratorSetting ensureVibratorSetting() => $_ensure(37);

  @$pb.TagNumber(39)
  VibratorItem get vibratorItem => $_getN(38);
  @$pb.TagNumber(39)
  set vibratorItem(VibratorItem value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasVibratorItem() => $_has(38);
  @$pb.TagNumber(39)
  void clearVibratorItem() => $_clearField(39);
  @$pb.TagNumber(39)
  VibratorItem ensureVibratorItem() => $_ensure(38);

  @$pb.TagNumber(40)
  Vibrator get vibrator => $_getN(39);
  @$pb.TagNumber(40)
  set vibrator(Vibrator value) => $_setField(40, value);
  @$pb.TagNumber(40)
  $core.bool hasVibrator() => $_has(39);
  @$pb.TagNumber(40)
  void clearVibrator() => $_clearField(40);
  @$pb.TagNumber(40)
  Vibrator ensureVibrator() => $_ensure(39);

  @$pb.TagNumber(41)
  VibratorEffect get vibratorEffect => $_getN(40);
  @$pb.TagNumber(41)
  set vibratorEffect(VibratorEffect value) => $_setField(41, value);
  @$pb.TagNumber(41)
  $core.bool hasVibratorEffect() => $_has(40);
  @$pb.TagNumber(41)
  void clearVibratorEffect() => $_clearField(41);
  @$pb.TagNumber(41)
  VibratorEffect ensureVibratorEffect() => $_ensure(40);

  @$pb.TagNumber(42)
  Vibrator_Removal get vibratorRemoval => $_getN(41);
  @$pb.TagNumber(42)
  set vibratorRemoval(Vibrator_Removal value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasVibratorRemoval() => $_has(41);
  @$pb.TagNumber(42)
  void clearVibratorRemoval() => $_clearField(42);
  @$pb.TagNumber(42)
  Vibrator_Removal ensureVibratorRemoval() => $_ensure(41);

  @$pb.TagNumber(43)
  VibratorError get vibratorError => $_getN(42);
  @$pb.TagNumber(43)
  set vibratorError(VibratorError value) => $_setField(43, value);
  @$pb.TagNumber(43)
  $core.bool hasVibratorError() => $_has(42);
  @$pb.TagNumber(43)
  void clearVibratorError() => $_clearField(43);
  @$pb.TagNumber(43)
  VibratorError ensureVibratorError() => $_ensure(42);

  @$pb.TagNumber(44)
  StorageInfo get storageInfo => $_getN(43);
  @$pb.TagNumber(44)
  set storageInfo(StorageInfo value) => $_setField(44, value);
  @$pb.TagNumber(44)
  $core.bool hasStorageInfo() => $_has(43);
  @$pb.TagNumber(44)
  void clearStorageInfo() => $_clearField(44);
  @$pb.TagNumber(44)
  StorageInfo ensureStorageInfo() => $_ensure(43);

  @$pb.TagNumber(45)
  PhonePermission get phonePermission => $_getN(44);
  @$pb.TagNumber(45)
  set phonePermission(PhonePermission value) => $_setField(45, value);
  @$pb.TagNumber(45)
  $core.bool hasPhonePermission() => $_has(44);
  @$pb.TagNumber(45)
  void clearPhonePermission() => $_clearField(45);
  @$pb.TagNumber(45)
  PhonePermission ensurePhonePermission() => $_ensure(44);

  @$pb.TagNumber(46)
  LowLatency get lowLatency => $_getN(45);
  @$pb.TagNumber(46)
  set lowLatency(LowLatency value) => $_setField(46, value);
  @$pb.TagNumber(46)
  $core.bool hasLowLatency() => $_has(45);
  @$pb.TagNumber(46)
  void clearLowLatency() => $_clearField(46);
  @$pb.TagNumber(46)
  LowLatency ensureLowLatency() => $_ensure(45);

  @$pb.TagNumber(48)
  BasicStatus_Present get presentBasicStatus => $_getN(46);
  @$pb.TagNumber(48)
  set presentBasicStatus(BasicStatus_Present value) => $_setField(48, value);
  @$pb.TagNumber(48)
  $core.bool hasPresentBasicStatus() => $_has(46);
  @$pb.TagNumber(48)
  void clearPresentBasicStatus() => $_clearField(48);
  @$pb.TagNumber(48)
  BasicStatus_Present ensurePresentBasicStatus() => $_ensure(46);

  @$pb.TagNumber(49)
  BasicStatus_Report get reportBasicStatus => $_getN(47);
  @$pb.TagNumber(49)
  set reportBasicStatus(BasicStatus_Report value) => $_setField(49, value);
  @$pb.TagNumber(49)
  $core.bool hasReportBasicStatus() => $_has(47);
  @$pb.TagNumber(49)
  void clearReportBasicStatus() => $_clearField(49);
  @$pb.TagNumber(49)
  BasicStatus_Report ensureReportBasicStatus() => $_ensure(47);

  @$pb.TagNumber(50)
  ReportData get reportData => $_getN(48);
  @$pb.TagNumber(50)
  set reportData(ReportData value) => $_setField(50, value);
  @$pb.TagNumber(50)
  $core.bool hasReportData() => $_has(48);
  @$pb.TagNumber(50)
  void clearReportData() => $_clearField(50);
  @$pb.TagNumber(50)
  ReportData ensureReportData() => $_ensure(48);

  @$pb.TagNumber(51)
  ReportData_Result get reportDataResult => $_getN(49);
  @$pb.TagNumber(51)
  set reportDataResult(ReportData_Result value) => $_setField(51, value);
  @$pb.TagNumber(51)
  $core.bool hasReportDataResult() => $_has(49);
  @$pb.TagNumber(51)
  void clearReportDataResult() => $_clearField(51);
  @$pb.TagNumber(51)
  ReportData_Result ensureReportDataResult() => $_ensure(49);

  @$pb.TagNumber(52)
  NetworkProxy_Request get networkProxyRequest => $_getN(50);
  @$pb.TagNumber(52)
  set networkProxyRequest(NetworkProxy_Request value) => $_setField(52, value);
  @$pb.TagNumber(52)
  $core.bool hasNetworkProxyRequest() => $_has(50);
  @$pb.TagNumber(52)
  void clearNetworkProxyRequest() => $_clearField(52);
  @$pb.TagNumber(52)
  NetworkProxy_Request ensureNetworkProxyRequest() => $_ensure(50);

  @$pb.TagNumber(53)
  WidgetV3 get widgetV3 => $_getN(51);
  @$pb.TagNumber(53)
  set widgetV3(WidgetV3 value) => $_setField(53, value);
  @$pb.TagNumber(53)
  $core.bool hasWidgetV3() => $_has(51);
  @$pb.TagNumber(53)
  void clearWidgetV3() => $_clearField(53);
  @$pb.TagNumber(53)
  WidgetV3 ensureWidgetV3() => $_ensure(51);

  @$pb.TagNumber(54)
  WidgetV3_SupportedList get widgetV3SupportedList => $_getN(52);
  @$pb.TagNumber(54)
  set widgetV3SupportedList(WidgetV3_SupportedList value) =>
      $_setField(54, value);
  @$pb.TagNumber(54)
  $core.bool hasWidgetV3SupportedList() => $_has(52);
  @$pb.TagNumber(54)
  void clearWidgetV3SupportedList() => $_clearField(54);
  @$pb.TagNumber(54)
  WidgetV3_SupportedList ensureWidgetV3SupportedList() => $_ensure(52);

  @$pb.TagNumber(55)
  PrepareOta_Progress get otaProgress => $_getN(53);
  @$pb.TagNumber(55)
  set otaProgress(PrepareOta_Progress value) => $_setField(55, value);
  @$pb.TagNumber(55)
  $core.bool hasOtaProgress() => $_has(53);
  @$pb.TagNumber(55)
  void clearOtaProgress() => $_clearField(55);
  @$pb.TagNumber(55)
  PrepareOta_Progress ensureOtaProgress() => $_ensure(53);

  @$pb.TagNumber(56)
  WiFiAP_Result get wifiApResult => $_getN(54);
  @$pb.TagNumber(56)
  set wifiApResult(WiFiAP_Result value) => $_setField(56, value);
  @$pb.TagNumber(56)
  $core.bool hasWifiApResult() => $_has(54);
  @$pb.TagNumber(56)
  void clearWifiApResult() => $_clearField(56);
  @$pb.TagNumber(56)
  WiFiAP_Result ensureWifiApResult() => $_ensure(54);

  @$pb.TagNumber(57)
  WiFiAP get wifiAp => $_getN(55);
  @$pb.TagNumber(57)
  set wifiAp(WiFiAP value) => $_setField(57, value);
  @$pb.TagNumber(57)
  $core.bool hasWifiAp() => $_has(55);
  @$pb.TagNumber(57)
  void clearWifiAp() => $_clearField(57);
  @$pb.TagNumber(57)
  WiFiAP ensureWifiAp() => $_ensure(55);

  @$pb.TagNumber(58)
  AlertStatus get alertStatus => $_getN(56);
  @$pb.TagNumber(58)
  set alertStatus(AlertStatus value) => $_setField(58, value);
  @$pb.TagNumber(58)
  $core.bool hasAlertStatus() => $_has(56);
  @$pb.TagNumber(58)
  void clearAlertStatus() => $_clearField(58);
  @$pb.TagNumber(58)
  AlertStatus ensureAlertStatus() => $_ensure(56);

  @$pb.TagNumber(59)
  NetworkStatus get networkStatus => $_getN(57);
  @$pb.TagNumber(59)
  set networkStatus(NetworkStatus value) => $_setField(59, value);
  @$pb.TagNumber(59)
  $core.bool hasNetworkStatus() => $_has(57);
  @$pb.TagNumber(59)
  void clearNetworkStatus() => $_clearField(59);
  @$pb.TagNumber(59)
  NetworkStatus ensureNetworkStatus() => $_ensure(57);

  @$pb.TagNumber(60)
  BasicStatus_Wearing get wearStatus => $_getN(58);
  @$pb.TagNumber(60)
  set wearStatus(BasicStatus_Wearing value) => $_setField(60, value);
  @$pb.TagNumber(60)
  $core.bool hasWearStatus() => $_has(58);
  @$pb.TagNumber(60)
  void clearWearStatus() => $_clearField(60);

  @$pb.TagNumber(61)
  UsageGuide get usageGuide => $_getN(59);
  @$pb.TagNumber(61)
  set usageGuide(UsageGuide value) => $_setField(61, value);
  @$pb.TagNumber(61)
  $core.bool hasUsageGuide() => $_has(59);
  @$pb.TagNumber(61)
  void clearUsageGuide() => $_clearField(61);
  @$pb.TagNumber(61)
  UsageGuide ensureUsageGuide() => $_ensure(59);

  @$pb.TagNumber(62)
  UsageGuide_Feedback get guideFeedback => $_getN(60);
  @$pb.TagNumber(62)
  set guideFeedback(UsageGuide_Feedback value) => $_setField(62, value);
  @$pb.TagNumber(62)
  $core.bool hasGuideFeedback() => $_has(60);
  @$pb.TagNumber(62)
  void clearGuideFeedback() => $_clearField(62);
  @$pb.TagNumber(62)
  UsageGuide_Feedback ensureGuideFeedback() => $_ensure(60);

  @$pb.TagNumber(63)
  DeviceStatus_Battery get batteryStatus => $_getN(61);
  @$pb.TagNumber(63)
  set batteryStatus(DeviceStatus_Battery value) => $_setField(63, value);
  @$pb.TagNumber(63)
  $core.bool hasBatteryStatus() => $_has(61);
  @$pb.TagNumber(63)
  void clearBatteryStatus() => $_clearField(63);
  @$pb.TagNumber(63)
  DeviceStatus_Battery ensureBatteryStatus() => $_ensure(61);

  @$pb.TagNumber(64)
  WiFiConfig_Result get wifiConfigResult => $_getN(62);
  @$pb.TagNumber(64)
  set wifiConfigResult(WiFiConfig_Result value) => $_setField(64, value);
  @$pb.TagNumber(64)
  $core.bool hasWifiConfigResult() => $_has(62);
  @$pb.TagNumber(64)
  void clearWifiConfigResult() => $_clearField(64);
  @$pb.TagNumber(64)
  WiFiConfig_Result ensureWifiConfigResult() => $_ensure(62);
}

class DeviceStatus_Battery_ChargeInfo extends $pb.GeneratedMessage {
  factory DeviceStatus_Battery_ChargeInfo({
    $core.int? state,
    $core.int? timestamp,
  }) {
    final result = create();
    if (state != null) result.state = state;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  DeviceStatus_Battery_ChargeInfo._();

  factory DeviceStatus_Battery_ChargeInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceStatus_Battery_ChargeInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceStatus.Battery.ChargeInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'state', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceStatus_Battery_ChargeInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceStatus_Battery_ChargeInfo copyWith(
          void Function(DeviceStatus_Battery_ChargeInfo) updates) =>
      super.copyWith(
              (message) => updates(message as DeviceStatus_Battery_ChargeInfo))
          as DeviceStatus_Battery_ChargeInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceStatus_Battery_ChargeInfo create() =>
      DeviceStatus_Battery_ChargeInfo._();
  @$core.override
  DeviceStatus_Battery_ChargeInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceStatus_Battery_ChargeInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceStatus_Battery_ChargeInfo>(
          create);
  static DeviceStatus_Battery_ChargeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get state => $_getIZ(0);
  @$pb.TagNumber(1)
  set state($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get timestamp => $_getIZ(1);
  @$pb.TagNumber(2)
  set timestamp($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => $_clearField(2);
}

class DeviceStatus_Battery extends $pb.GeneratedMessage {
  factory DeviceStatus_Battery({
    $core.int? capacity,
    DeviceStatus_Battery_ChargeStatus? chargeStatus,
    DeviceStatus_Battery_ChargeInfo? chargeInfo,
  }) {
    final result = create();
    if (capacity != null) result.capacity = capacity;
    if (chargeStatus != null) result.chargeStatus = chargeStatus;
    if (chargeInfo != null) result.chargeInfo = chargeInfo;
    return result;
  }

  DeviceStatus_Battery._();

  factory DeviceStatus_Battery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceStatus_Battery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceStatus.Battery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'capacity', fieldType: $pb.PbFieldType.QU3)
    ..aE<DeviceStatus_Battery_ChargeStatus>(
        2, _omitFieldNames ? '' : 'chargeStatus',
        enumValues: DeviceStatus_Battery_ChargeStatus.values)
    ..aOM<DeviceStatus_Battery_ChargeInfo>(
        3, _omitFieldNames ? '' : 'chargeInfo',
        subBuilder: DeviceStatus_Battery_ChargeInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceStatus_Battery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceStatus_Battery copyWith(void Function(DeviceStatus_Battery) updates) =>
      super.copyWith((message) => updates(message as DeviceStatus_Battery))
          as DeviceStatus_Battery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceStatus_Battery create() => DeviceStatus_Battery._();
  @$core.override
  DeviceStatus_Battery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceStatus_Battery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceStatus_Battery>(create);
  static DeviceStatus_Battery? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get capacity => $_getIZ(0);
  @$pb.TagNumber(1)
  set capacity($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCapacity() => $_has(0);
  @$pb.TagNumber(1)
  void clearCapacity() => $_clearField(1);

  @$pb.TagNumber(2)
  DeviceStatus_Battery_ChargeStatus get chargeStatus => $_getN(1);
  @$pb.TagNumber(2)
  set chargeStatus(DeviceStatus_Battery_ChargeStatus value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasChargeStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearChargeStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  DeviceStatus_Battery_ChargeInfo get chargeInfo => $_getN(2);
  @$pb.TagNumber(3)
  set chargeInfo(DeviceStatus_Battery_ChargeInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasChargeInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearChargeInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  DeviceStatus_Battery_ChargeInfo ensureChargeInfo() => $_ensure(2);
}

class DeviceStatus extends $pb.GeneratedMessage {
  factory DeviceStatus({
    DeviceStatus_Battery? battery,
  }) {
    final result = create();
    if (battery != null) result.battery = battery;
    return result;
  }

  DeviceStatus._();

  factory DeviceStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<DeviceStatus_Battery>(1, _omitFieldNames ? '' : 'battery',
        subBuilder: DeviceStatus_Battery.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceStatus copyWith(void Function(DeviceStatus) updates) =>
      super.copyWith((message) => updates(message as DeviceStatus))
          as DeviceStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceStatus create() => DeviceStatus._();
  @$core.override
  DeviceStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceStatus>(create);
  static DeviceStatus? _defaultInstance;

  @$pb.TagNumber(1)
  DeviceStatus_Battery get battery => $_getN(0);
  @$pb.TagNumber(1)
  set battery(DeviceStatus_Battery value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBattery() => $_has(0);
  @$pb.TagNumber(1)
  void clearBattery() => $_clearField(1);
  @$pb.TagNumber(1)
  DeviceStatus_Battery ensureBattery() => $_ensure(0);
}

class DeviceInfo extends $pb.GeneratedMessage {
  factory DeviceInfo({
    $core.String? serialNumber,
    $core.String? firmwareVersion,
    $core.String? imei,
    $core.String? model,
    $core.String? productDevice,
  }) {
    final result = create();
    if (serialNumber != null) result.serialNumber = serialNumber;
    if (firmwareVersion != null) result.firmwareVersion = firmwareVersion;
    if (imei != null) result.imei = imei;
    if (model != null) result.model = model;
    if (productDevice != null) result.productDevice = productDevice;
    return result;
  }

  DeviceInfo._();

  factory DeviceInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'serialNumber')
    ..aQS(2, _omitFieldNames ? '' : 'firmwareVersion')
    ..aQS(3, _omitFieldNames ? '' : 'imei')
    ..aQS(4, _omitFieldNames ? '' : 'model')
    ..aQS(5, _omitFieldNames ? '' : 'productDevice');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceInfo copyWith(void Function(DeviceInfo) updates) =>
      super.copyWith((message) => updates(message as DeviceInfo)) as DeviceInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceInfo create() => DeviceInfo._();
  @$core.override
  DeviceInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceInfo>(create);
  static DeviceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serialNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set serialNumber($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSerialNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearSerialNumber() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get firmwareVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set firmwareVersion($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFirmwareVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirmwareVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get imei => $_getSZ(2);
  @$pb.TagNumber(3)
  set imei($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasImei() => $_has(2);
  @$pb.TagNumber(3)
  void clearImei() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get model => $_getSZ(3);
  @$pb.TagNumber(4)
  set model($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasModel() => $_has(3);
  @$pb.TagNumber(4)
  void clearModel() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get productDevice => $_getSZ(4);
  @$pb.TagNumber(5)
  set productDevice($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasProductDevice() => $_has(4);
  @$pb.TagNumber(5)
  void clearProductDevice() => $_clearField(5);
}

class SystemTime extends $pb.GeneratedMessage {
  factory SystemTime({
    $0.Date? date,
    $0.Time? time,
    $0.Timezone? timeZone,
    $core.bool? is12Hours,
  }) {
    final result = create();
    if (date != null) result.date = date;
    if (time != null) result.time = time;
    if (timeZone != null) result.timeZone = timeZone;
    if (is12Hours != null) result.is12Hours = is12Hours;
    return result;
  }

  SystemTime._();

  factory SystemTime.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemTime.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemTime',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<$0.Date>(1, _omitFieldNames ? '' : 'date', subBuilder: $0.Date.create)
    ..aQM<$0.Time>(2, _omitFieldNames ? '' : 'time', subBuilder: $0.Time.create)
    ..aOM<$0.Timezone>(3, _omitFieldNames ? '' : 'timeZone',
        subBuilder: $0.Timezone.create)
    ..aOB(4, _omitFieldNames ? '' : 'is12Hours', protoName: 'is_12_hours');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemTime clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemTime copyWith(void Function(SystemTime) updates) =>
      super.copyWith((message) => updates(message as SystemTime)) as SystemTime;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemTime create() => SystemTime._();
  @$core.override
  SystemTime createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemTime getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemTime>(create);
  static SystemTime? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Date get date => $_getN(0);
  @$pb.TagNumber(1)
  set date($0.Date value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Date ensureDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Time get time => $_getN(1);
  @$pb.TagNumber(2)
  set time($0.Time value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Timezone get timeZone => $_getN(2);
  @$pb.TagNumber(3)
  set timeZone($0.Timezone value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTimeZone() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeZone() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timezone ensureTimeZone() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get is12Hours => $_getBF(3);
  @$pb.TagNumber(4)
  set is12Hours($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIs12Hours() => $_has(3);
  @$pb.TagNumber(4)
  void clearIs12Hours() => $_clearField(4);
}

class Language extends $pb.GeneratedMessage {
  factory Language({
    $core.String? locale,
  }) {
    final result = create();
    if (locale != null) result.locale = locale;
    return result;
  }

  Language._();

  factory Language.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Language.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Language',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'locale');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Language clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Language copyWith(void Function(Language) updates) =>
      super.copyWith((message) => updates(message as Language)) as Language;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Language create() => Language._();
  @$core.override
  Language createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Language getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Language>(create);
  static Language? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => $_clearField(1);
}

class HidStatus extends $pb.GeneratedMessage {
  factory HidStatus({
    $core.bool? enable,
  }) {
    final result = create();
    if (enable != null) result.enable = enable;
    return result;
  }

  HidStatus._();

  factory HidStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HidStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HidStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HidStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HidStatus copyWith(void Function(HidStatus) updates) =>
      super.copyWith((message) => updates(message as HidStatus)) as HidStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HidStatus create() => HidStatus._();
  @$core.override
  HidStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HidStatus getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HidStatus>(create);
  static HidStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enable => $_getBF(0);
  @$pb.TagNumber(1)
  set enable($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnable() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnable() => $_clearField(1);
}

class LockScreen extends $pb.GeneratedMessage {
  factory LockScreen({
    LockScreen_Status? status,
    $core.String? pwd,
    $core.bool? locked,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (pwd != null) result.pwd = pwd;
    if (locked != null) result.locked = locked;
    return result;
  }

  LockScreen._();

  factory LockScreen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LockScreen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LockScreen',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<LockScreen_Status>(1, _omitFieldNames ? '' : 'status',
        fieldType: $pb.PbFieldType.QE, enumValues: LockScreen_Status.values)
    ..aQS(2, _omitFieldNames ? '' : 'pwd')
    ..aOB(3, _omitFieldNames ? '' : 'locked');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LockScreen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LockScreen copyWith(void Function(LockScreen) updates) =>
      super.copyWith((message) => updates(message as LockScreen)) as LockScreen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LockScreen create() => LockScreen._();
  @$core.override
  LockScreen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LockScreen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LockScreen>(create);
  static LockScreen? _defaultInstance;

  @$pb.TagNumber(1)
  LockScreen_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(LockScreen_Status value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get pwd => $_getSZ(1);
  @$pb.TagNumber(2)
  set pwd($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPwd() => $_has(1);
  @$pb.TagNumber(2)
  void clearPwd() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get locked => $_getBF(2);
  @$pb.TagNumber(3)
  set locked($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocked() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocked() => $_clearField(3);
}

class NightMode extends $pb.GeneratedMessage {
  factory NightMode({
    NightMode_Mode? mode,
    $0.Time? startTime,
    $0.Time? endTime,
  }) {
    final result = create();
    if (mode != null) result.mode = mode;
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    return result;
  }

  NightMode._();

  factory NightMode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NightMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NightMode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<NightMode_Mode>(1, _omitFieldNames ? '' : 'mode',
        fieldType: $pb.PbFieldType.QE, enumValues: NightMode_Mode.values)
    ..aOM<$0.Time>(2, _omitFieldNames ? '' : 'startTime',
        subBuilder: $0.Time.create)
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'endTime',
        subBuilder: $0.Time.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NightMode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NightMode copyWith(void Function(NightMode) updates) =>
      super.copyWith((message) => updates(message as NightMode)) as NightMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NightMode create() => NightMode._();
  @$core.override
  NightMode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NightMode getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NightMode>(create);
  static NightMode? _defaultInstance;

  @$pb.TagNumber(1)
  NightMode_Mode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(NightMode_Mode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Time get startTime => $_getN(1);
  @$pb.TagNumber(2)
  set startTime($0.Time value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureStartTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Time get endTime => $_getN(2);
  @$pb.TagNumber(3)
  set endTime($0.Time value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEndTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureEndTime() => $_ensure(2);
}

class AuthorizeUnlock_List extends $pb.GeneratedMessage {
  factory AuthorizeUnlock_List({
    $core.Iterable<AuthorizeUnlock>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  AuthorizeUnlock_List._();

  factory AuthorizeUnlock_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthorizeUnlock_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthorizeUnlock.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AuthorizeUnlock>(1, _omitFieldNames ? '' : 'list',
        subBuilder: AuthorizeUnlock.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthorizeUnlock_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthorizeUnlock_List copyWith(void Function(AuthorizeUnlock_List) updates) =>
      super.copyWith((message) => updates(message as AuthorizeUnlock_List))
          as AuthorizeUnlock_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizeUnlock_List create() => AuthorizeUnlock_List._();
  @$core.override
  AuthorizeUnlock_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthorizeUnlock_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthorizeUnlock_List>(create);
  static AuthorizeUnlock_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AuthorizeUnlock> get list => $_getList(0);
}

class AuthorizeUnlock extends $pb.GeneratedMessage {
  factory AuthorizeUnlock({
    AuthorizeUnlock_Device? device,
    $core.bool? enable,
  }) {
    final result = create();
    if (device != null) result.device = device;
    if (enable != null) result.enable = enable;
    return result;
  }

  AuthorizeUnlock._();

  factory AuthorizeUnlock.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthorizeUnlock.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthorizeUnlock',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<AuthorizeUnlock_Device>(1, _omitFieldNames ? '' : 'device',
        fieldType: $pb.PbFieldType.QE,
        enumValues: AuthorizeUnlock_Device.values)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthorizeUnlock clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthorizeUnlock copyWith(void Function(AuthorizeUnlock) updates) =>
      super.copyWith((message) => updates(message as AuthorizeUnlock))
          as AuthorizeUnlock;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizeUnlock create() => AuthorizeUnlock._();
  @$core.override
  AuthorizeUnlock createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthorizeUnlock getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthorizeUnlock>(create);
  static AuthorizeUnlock? _defaultInstance;

  @$pb.TagNumber(1)
  AuthorizeUnlock_Device get device => $_getN(0);
  @$pb.TagNumber(1)
  set device(AuthorizeUnlock_Device value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevice() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enable => $_getBF(1);
  @$pb.TagNumber(2)
  set enable($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnable() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnable() => $_clearField(2);
}

class TimingSetting extends $pb.GeneratedMessage {
  factory TimingSetting({
    TimingMode? timingMode,
    $0.Time? startTime,
    $0.Time? endTime,
    $core.int? repeatDays,
    $core.int? timestamp,
  }) {
    final result = create();
    if (timingMode != null) result.timingMode = timingMode;
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    if (repeatDays != null) result.repeatDays = repeatDays;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  TimingSetting._();

  factory TimingSetting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimingSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimingSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<TimingMode>(1, _omitFieldNames ? '' : 'timingMode',
        fieldType: $pb.PbFieldType.QE, enumValues: TimingMode.values)
    ..aOM<$0.Time>(2, _omitFieldNames ? '' : 'startTime',
        subBuilder: $0.Time.create)
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'endTime',
        subBuilder: $0.Time.create)
    ..aI(4, _omitFieldNames ? '' : 'repeatDays', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimingSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimingSetting copyWith(void Function(TimingSetting) updates) =>
      super.copyWith((message) => updates(message as TimingSetting))
          as TimingSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimingSetting create() => TimingSetting._();
  @$core.override
  TimingSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimingSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimingSetting>(create);
  static TimingSetting? _defaultInstance;

  @$pb.TagNumber(1)
  TimingMode get timingMode => $_getN(0);
  @$pb.TagNumber(1)
  set timingMode(TimingMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTimingMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimingMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Time get startTime => $_getN(1);
  @$pb.TagNumber(2)
  set startTime($0.Time value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureStartTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Time get endTime => $_getN(2);
  @$pb.TagNumber(3)
  set endTime($0.Time value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEndTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureEndTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get repeatDays => $_getIZ(3);
  @$pb.TagNumber(4)
  set repeatDays($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRepeatDays() => $_has(3);
  @$pb.TagNumber(4)
  void clearRepeatDays() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get timestamp => $_getIZ(4);
  @$pb.TagNumber(5)
  set timestamp($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => $_clearField(5);
}

class WristScreen extends $pb.GeneratedMessage {
  factory WristScreen({
    TimingMode? timingMode,
    $0.Time? startTime,
    $0.Time? endTime,
    WristScreen_Sensitivity? sensitivity,
  }) {
    final result = create();
    if (timingMode != null) result.timingMode = timingMode;
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    if (sensitivity != null) result.sensitivity = sensitivity;
    return result;
  }

  WristScreen._();

  factory WristScreen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WristScreen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WristScreen',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<TimingMode>(1, _omitFieldNames ? '' : 'timingMode',
        fieldType: $pb.PbFieldType.QE, enumValues: TimingMode.values)
    ..aOM<$0.Time>(2, _omitFieldNames ? '' : 'startTime',
        subBuilder: $0.Time.create)
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'endTime',
        subBuilder: $0.Time.create)
    ..aE<WristScreen_Sensitivity>(4, _omitFieldNames ? '' : 'sensitivity',
        enumValues: WristScreen_Sensitivity.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WristScreen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WristScreen copyWith(void Function(WristScreen) updates) =>
      super.copyWith((message) => updates(message as WristScreen))
          as WristScreen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WristScreen create() => WristScreen._();
  @$core.override
  WristScreen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WristScreen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WristScreen>(create);
  static WristScreen? _defaultInstance;

  @$pb.TagNumber(1)
  TimingMode get timingMode => $_getN(0);
  @$pb.TagNumber(1)
  set timingMode(TimingMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTimingMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimingMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Time get startTime => $_getN(1);
  @$pb.TagNumber(2)
  set startTime($0.Time value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureStartTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Time get endTime => $_getN(2);
  @$pb.TagNumber(3)
  set endTime($0.Time value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEndTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureEndTime() => $_ensure(2);

  @$pb.TagNumber(4)
  WristScreen_Sensitivity get sensitivity => $_getN(3);
  @$pb.TagNumber(4)
  set sensitivity(WristScreen_Sensitivity value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSensitivity() => $_has(3);
  @$pb.TagNumber(4)
  void clearSensitivity() => $_clearField(4);
}

class Widget_List extends $pb.GeneratedMessage {
  factory Widget_List({
    $core.Iterable<Widget>? list,
    $core.int? supportMaxNumber,
    $core.int? supportMinNumber,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (supportMaxNumber != null) result.supportMaxNumber = supportMaxNumber;
    if (supportMinNumber != null) result.supportMinNumber = supportMinNumber;
    return result;
  }

  Widget_List._();

  factory Widget_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Widget_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Widget.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Widget>(1, _omitFieldNames ? '' : 'list', subBuilder: Widget.create)
    ..aI(2, _omitFieldNames ? '' : 'supportMaxNumber',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'supportMinNumber',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Widget_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Widget_List copyWith(void Function(Widget_List) updates) =>
      super.copyWith((message) => updates(message as Widget_List))
          as Widget_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Widget_List create() => Widget_List._();
  @$core.override
  Widget_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Widget_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Widget_List>(create);
  static Widget_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Widget> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get supportMaxNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set supportMaxNumber($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportMaxNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportMaxNumber() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get supportMinNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set supportMinNumber($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSupportMinNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupportMinNumber() => $_clearField(3);
}

class Widget extends $pb.GeneratedMessage {
  factory Widget({
    $core.int? function,
    $core.bool? enable,
    $core.int? order,
  }) {
    final result = create();
    if (function != null) result.function = function;
    if (enable != null) result.enable = enable;
    if (order != null) result.order = order;
    return result;
  }

  Widget._();

  factory Widget.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Widget.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Widget',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'function', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB)
    ..aI(3, _omitFieldNames ? '' : 'order', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Widget clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Widget copyWith(void Function(Widget) updates) =>
      super.copyWith((message) => updates(message as Widget)) as Widget;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Widget create() => Widget._();
  @$core.override
  Widget createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Widget getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Widget>(create);
  static Widget? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get function => $_getIZ(0);
  @$pb.TagNumber(1)
  set function($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFunction() => $_has(0);
  @$pb.TagNumber(1)
  void clearFunction() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enable => $_getBF(1);
  @$pb.TagNumber(2)
  set enable($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnable() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnable() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => $_clearField(3);
}

class WidgetV2_List extends $pb.GeneratedMessage {
  factory WidgetV2_List({
    $core.Iterable<WidgetV2>? supportWidgets,
  }) {
    final result = create();
    if (supportWidgets != null) result.supportWidgets.addAll(supportWidgets);
    return result;
  }

  WidgetV2_List._();

  factory WidgetV2_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WidgetV2_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WidgetV2.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WidgetV2>(1, _omitFieldNames ? '' : 'supportWidgets',
        subBuilder: WidgetV2.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV2_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV2_List copyWith(void Function(WidgetV2_List) updates) =>
      super.copyWith((message) => updates(message as WidgetV2_List))
          as WidgetV2_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WidgetV2_List create() => WidgetV2_List._();
  @$core.override
  WidgetV2_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WidgetV2_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WidgetV2_List>(create);
  static WidgetV2_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WidgetV2> get supportWidgets => $_getList(0);
}

class WidgetV2 extends $pb.GeneratedMessage {
  factory WidgetV2({
    $0.WidgetStyle? style,
    $core.int? function,
    $core.int? subType,
    $core.String? name,
    $0.SportType? sportType,
    $core.String? appId,
    $core.String? appName,
    $core.int? phoneType,
  }) {
    final result = create();
    if (style != null) result.style = style;
    if (function != null) result.function = function;
    if (subType != null) result.subType = subType;
    if (name != null) result.name = name;
    if (sportType != null) result.sportType = sportType;
    if (appId != null) result.appId = appId;
    if (appName != null) result.appName = appName;
    if (phoneType != null) result.phoneType = phoneType;
    return result;
  }

  WidgetV2._();

  factory WidgetV2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WidgetV2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WidgetV2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.WidgetStyle>(1, _omitFieldNames ? '' : 'style',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.WidgetStyle.values)
    ..aI(2, _omitFieldNames ? '' : 'function', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'subType', fieldType: $pb.PbFieldType.QU3)
    ..aQS(4, _omitFieldNames ? '' : 'name')
    ..aE<$0.SportType>(5, _omitFieldNames ? '' : 'sportType',
        enumValues: $0.SportType.values)
    ..aQS(6, _omitFieldNames ? '' : 'appId')
    ..aQS(7, _omitFieldNames ? '' : 'appName')
    ..aI(8, _omitFieldNames ? '' : 'phoneType', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV2 copyWith(void Function(WidgetV2) updates) =>
      super.copyWith((message) => updates(message as WidgetV2)) as WidgetV2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WidgetV2 create() => WidgetV2._();
  @$core.override
  WidgetV2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WidgetV2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WidgetV2>(create);
  static WidgetV2? _defaultInstance;

  @$pb.TagNumber(1)
  $0.WidgetStyle get style => $_getN(0);
  @$pb.TagNumber(1)
  set style($0.WidgetStyle value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStyle() => $_has(0);
  @$pb.TagNumber(1)
  void clearStyle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get function => $_getIZ(1);
  @$pb.TagNumber(2)
  set function($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFunction() => $_has(1);
  @$pb.TagNumber(2)
  void clearFunction() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get subType => $_getIZ(2);
  @$pb.TagNumber(3)
  set subType($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.SportType get sportType => $_getN(4);
  @$pb.TagNumber(5)
  set sportType($0.SportType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSportType() => $_has(4);
  @$pb.TagNumber(5)
  void clearSportType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get appId => $_getSZ(5);
  @$pb.TagNumber(6)
  set appId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAppId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get appName => $_getSZ(6);
  @$pb.TagNumber(7)
  set appName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAppName() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppName() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get phoneType => $_getIZ(7);
  @$pb.TagNumber(8)
  set phoneType($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPhoneType() => $_has(7);
  @$pb.TagNumber(8)
  void clearPhoneType() => $_clearField(8);
}

class WidgetV3_NativeBuiltin extends $pb.GeneratedMessage {
  factory WidgetV3_NativeBuiltin({
    $core.int? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  WidgetV3_NativeBuiltin._();

  factory WidgetV3_NativeBuiltin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WidgetV3_NativeBuiltin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WidgetV3.NativeBuiltin',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'name');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV3_NativeBuiltin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV3_NativeBuiltin copyWith(
          void Function(WidgetV3_NativeBuiltin) updates) =>
      super.copyWith((message) => updates(message as WidgetV3_NativeBuiltin))
          as WidgetV3_NativeBuiltin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WidgetV3_NativeBuiltin create() => WidgetV3_NativeBuiltin._();
  @$core.override
  WidgetV3_NativeBuiltin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WidgetV3_NativeBuiltin getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WidgetV3_NativeBuiltin>(create);
  static WidgetV3_NativeBuiltin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class WidgetV3_NativeBuiltinGroup extends $pb.GeneratedMessage {
  factory WidgetV3_NativeBuiltinGroup({
    $core.int? id,
    $core.String? name,
    $core.Iterable<WidgetV3_NativeBuiltin>? builtinWidgets,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (builtinWidgets != null) result.builtinWidgets.addAll(builtinWidgets);
    return result;
  }

  WidgetV3_NativeBuiltinGroup._();

  factory WidgetV3_NativeBuiltinGroup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WidgetV3_NativeBuiltinGroup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WidgetV3.NativeBuiltinGroup',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..pPM<WidgetV3_NativeBuiltin>(3, _omitFieldNames ? '' : 'builtinWidgets',
        subBuilder: WidgetV3_NativeBuiltin.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV3_NativeBuiltinGroup clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV3_NativeBuiltinGroup copyWith(
          void Function(WidgetV3_NativeBuiltinGroup) updates) =>
      super.copyWith(
              (message) => updates(message as WidgetV3_NativeBuiltinGroup))
          as WidgetV3_NativeBuiltinGroup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WidgetV3_NativeBuiltinGroup create() =>
      WidgetV3_NativeBuiltinGroup._();
  @$core.override
  WidgetV3_NativeBuiltinGroup createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WidgetV3_NativeBuiltinGroup getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WidgetV3_NativeBuiltinGroup>(create);
  static WidgetV3_NativeBuiltinGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<WidgetV3_NativeBuiltin> get builtinWidgets => $_getList(2);
}

class WidgetV3_SupportedList extends $pb.GeneratedMessage {
  factory WidgetV3_SupportedList({
    $core.Iterable<WidgetV3_NativeBuiltinGroup>? builtinGroups,
  }) {
    final result = create();
    if (builtinGroups != null) result.builtinGroups.addAll(builtinGroups);
    return result;
  }

  WidgetV3_SupportedList._();

  factory WidgetV3_SupportedList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WidgetV3_SupportedList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WidgetV3.SupportedList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WidgetV3_NativeBuiltinGroup>(
        1, _omitFieldNames ? '' : 'builtinGroups',
        subBuilder: WidgetV3_NativeBuiltinGroup.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV3_SupportedList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV3_SupportedList copyWith(
          void Function(WidgetV3_SupportedList) updates) =>
      super.copyWith((message) => updates(message as WidgetV3_SupportedList))
          as WidgetV3_SupportedList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WidgetV3_SupportedList create() => WidgetV3_SupportedList._();
  @$core.override
  WidgetV3_SupportedList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WidgetV3_SupportedList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WidgetV3_SupportedList>(create);
  static WidgetV3_SupportedList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WidgetV3_NativeBuiltinGroup> get builtinGroups => $_getList(0);
}

class WidgetV3 extends $pb.GeneratedMessage {
  factory WidgetV3({
    $core.Iterable<WidgetV3_NativeBuiltin>? builtinWidgets,
    $core.int? minCount,
    $core.int? maxCount,
  }) {
    final result = create();
    if (builtinWidgets != null) result.builtinWidgets.addAll(builtinWidgets);
    if (minCount != null) result.minCount = minCount;
    if (maxCount != null) result.maxCount = maxCount;
    return result;
  }

  WidgetV3._();

  factory WidgetV3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WidgetV3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WidgetV3',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WidgetV3_NativeBuiltin>(1, _omitFieldNames ? '' : 'builtinWidgets',
        subBuilder: WidgetV3_NativeBuiltin.create)
    ..aI(2, _omitFieldNames ? '' : 'minCount', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'maxCount', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetV3 copyWith(void Function(WidgetV3) updates) =>
      super.copyWith((message) => updates(message as WidgetV3)) as WidgetV3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WidgetV3 create() => WidgetV3._();
  @$core.override
  WidgetV3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WidgetV3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WidgetV3>(create);
  static WidgetV3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WidgetV3_NativeBuiltin> get builtinWidgets => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get minCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set minCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxCount($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxCount() => $_clearField(3);
}

class WidgetGroup_Config extends $pb.GeneratedMessage {
  factory WidgetGroup_Config({
    $core.int? minGroupNumber,
    $core.int? maxGroupNumber,
    $core.int? supportGroupStyles,
  }) {
    final result = create();
    if (minGroupNumber != null) result.minGroupNumber = minGroupNumber;
    if (maxGroupNumber != null) result.maxGroupNumber = maxGroupNumber;
    if (supportGroupStyles != null)
      result.supportGroupStyles = supportGroupStyles;
    return result;
  }

  WidgetGroup_Config._();

  factory WidgetGroup_Config.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WidgetGroup_Config.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WidgetGroup.Config',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'minGroupNumber',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'maxGroupNumber',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'supportGroupStyles',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetGroup_Config clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetGroup_Config copyWith(void Function(WidgetGroup_Config) updates) =>
      super.copyWith((message) => updates(message as WidgetGroup_Config))
          as WidgetGroup_Config;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WidgetGroup_Config create() => WidgetGroup_Config._();
  @$core.override
  WidgetGroup_Config createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WidgetGroup_Config getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WidgetGroup_Config>(create);
  static WidgetGroup_Config? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get minGroupNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set minGroupNumber($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMinGroupNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinGroupNumber() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxGroupNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxGroupNumber($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxGroupNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxGroupNumber() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get supportGroupStyles => $_getIZ(2);
  @$pb.TagNumber(3)
  set supportGroupStyles($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSupportGroupStyles() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupportGroupStyles() => $_clearField(3);
}

class WidgetGroup_List extends $pb.GeneratedMessage {
  factory WidgetGroup_List({
    $core.Iterable<WidgetGroup>? groups,
    $core.bool? full,
    WidgetGroup_Config? config,
  }) {
    final result = create();
    if (groups != null) result.groups.addAll(groups);
    if (full != null) result.full = full;
    if (config != null) result.config = config;
    return result;
  }

  WidgetGroup_List._();

  factory WidgetGroup_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WidgetGroup_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WidgetGroup.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WidgetGroup>(1, _omitFieldNames ? '' : 'groups',
        subBuilder: WidgetGroup.create)
    ..aOB(2, _omitFieldNames ? '' : 'full')
    ..aOM<WidgetGroup_Config>(3, _omitFieldNames ? '' : 'config',
        subBuilder: WidgetGroup_Config.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetGroup_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetGroup_List copyWith(void Function(WidgetGroup_List) updates) =>
      super.copyWith((message) => updates(message as WidgetGroup_List))
          as WidgetGroup_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WidgetGroup_List create() => WidgetGroup_List._();
  @$core.override
  WidgetGroup_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WidgetGroup_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WidgetGroup_List>(create);
  static WidgetGroup_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WidgetGroup> get groups => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get full => $_getBF(1);
  @$pb.TagNumber(2)
  set full($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFull() => $_has(1);
  @$pb.TagNumber(2)
  void clearFull() => $_clearField(2);

  @$pb.TagNumber(3)
  WidgetGroup_Config get config => $_getN(2);
  @$pb.TagNumber(3)
  set config(WidgetGroup_Config value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfig() => $_clearField(3);
  @$pb.TagNumber(3)
  WidgetGroup_Config ensureConfig() => $_ensure(2);
}

class WidgetGroup extends $pb.GeneratedMessage {
  factory WidgetGroup({
    $core.int? sequency,
    WidgetGroup_Style? style,
    $core.Iterable<WidgetV2>? widgets,
  }) {
    final result = create();
    if (sequency != null) result.sequency = sequency;
    if (style != null) result.style = style;
    if (widgets != null) result.widgets.addAll(widgets);
    return result;
  }

  WidgetGroup._();

  factory WidgetGroup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WidgetGroup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WidgetGroup',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'sequency', fieldType: $pb.PbFieldType.QU3)
    ..aE<WidgetGroup_Style>(2, _omitFieldNames ? '' : 'style',
        fieldType: $pb.PbFieldType.QE, enumValues: WidgetGroup_Style.values)
    ..pPM<WidgetV2>(3, _omitFieldNames ? '' : 'widgets',
        subBuilder: WidgetV2.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetGroup clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WidgetGroup copyWith(void Function(WidgetGroup) updates) =>
      super.copyWith((message) => updates(message as WidgetGroup))
          as WidgetGroup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WidgetGroup create() => WidgetGroup._();
  @$core.override
  WidgetGroup createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WidgetGroup getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WidgetGroup>(create);
  static WidgetGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sequency => $_getIZ(0);
  @$pb.TagNumber(1)
  set sequency($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSequency() => $_has(0);
  @$pb.TagNumber(1)
  void clearSequency() => $_clearField(1);

  @$pb.TagNumber(2)
  WidgetGroup_Style get style => $_getN(1);
  @$pb.TagNumber(2)
  set style(WidgetGroup_Style value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<WidgetV2> get widgets => $_getList(2);
}

class App_List extends $pb.GeneratedMessage {
  factory App_List({
    $core.Iterable<App>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  App_List._();

  factory App_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory App_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'App.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<App>(1, _omitFieldNames ? '' : 'list', subBuilder: App.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  App_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  App_List copyWith(void Function(App_List) updates) =>
      super.copyWith((message) => updates(message as App_List)) as App_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static App_List create() => App_List._();
  @$core.override
  App_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static App_List getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<App_List>(create);
  static App_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<App> get list => $_getList(0);
}

class App extends $pb.GeneratedMessage {
  factory App({
    $core.String? id,
    $core.String? name,
    $core.bool? hidden,
    $core.bool? persist,
    $core.bool? canMore,
    $core.bool? inMore,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (hidden != null) result.hidden = hidden;
    if (persist != null) result.persist = persist;
    if (canMore != null) result.canMore = canMore;
    if (inMore != null) result.inMore = inMore;
    return result;
  }

  App._();

  factory App.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory App.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'App',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'hidden')
    ..aOB(4, _omitFieldNames ? '' : 'persist')
    ..aOB(5, _omitFieldNames ? '' : 'canMore')
    ..aOB(6, _omitFieldNames ? '' : 'inMore');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  App clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  App copyWith(void Function(App) updates) =>
      super.copyWith((message) => updates(message as App)) as App;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static App create() => App._();
  @$core.override
  App createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static App getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<App>(create);
  static App? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get hidden => $_getBF(2);
  @$pb.TagNumber(3)
  set hidden($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHidden() => $_has(2);
  @$pb.TagNumber(3)
  void clearHidden() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get persist => $_getBF(3);
  @$pb.TagNumber(4)
  set persist($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPersist() => $_has(3);
  @$pb.TagNumber(4)
  void clearPersist() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get canMore => $_getBF(4);
  @$pb.TagNumber(5)
  set canMore($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCanMore() => $_has(4);
  @$pb.TagNumber(5)
  void clearCanMore() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get inMore => $_getBF(5);
  @$pb.TagNumber(6)
  set inMore($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasInMore() => $_has(5);
  @$pb.TagNumber(6)
  void clearInMore() => $_clearField(6);
}

class AppLayout extends $pb.GeneratedMessage {
  factory AppLayout({
    AppLayout_Layout? layout,
    $core.int? supportLayouts,
  }) {
    final result = create();
    if (layout != null) result.layout = layout;
    if (supportLayouts != null) result.supportLayouts = supportLayouts;
    return result;
  }

  AppLayout._();

  factory AppLayout.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppLayout.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppLayout',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<AppLayout_Layout>(1, _omitFieldNames ? '' : 'layout',
        fieldType: $pb.PbFieldType.QE, enumValues: AppLayout_Layout.values)
    ..aI(2, _omitFieldNames ? '' : 'supportLayouts',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppLayout clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppLayout copyWith(void Function(AppLayout) updates) =>
      super.copyWith((message) => updates(message as AppLayout)) as AppLayout;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppLayout create() => AppLayout._();
  @$core.override
  AppLayout createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppLayout getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppLayout>(create);
  static AppLayout? _defaultInstance;

  @$pb.TagNumber(1)
  AppLayout_Layout get layout => $_getN(0);
  @$pb.TagNumber(1)
  set layout(AppLayout_Layout value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLayout() => $_has(0);
  @$pb.TagNumber(1)
  void clearLayout() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get supportLayouts => $_getIZ(1);
  @$pb.TagNumber(2)
  set supportLayouts($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportLayouts() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportLayouts() => $_clearField(2);
}

class Shortcut_List extends $pb.GeneratedMessage {
  factory Shortcut_List({
    $core.Iterable<Shortcut>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  Shortcut_List._();

  factory Shortcut_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Shortcut_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Shortcut.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Shortcut>(1, _omitFieldNames ? '' : 'list',
        subBuilder: Shortcut.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shortcut_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shortcut_List copyWith(void Function(Shortcut_List) updates) =>
      super.copyWith((message) => updates(message as Shortcut_List))
          as Shortcut_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Shortcut_List create() => Shortcut_List._();
  @$core.override
  Shortcut_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Shortcut_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Shortcut_List>(create);
  static Shortcut_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Shortcut> get list => $_getList(0);
}

class Shortcut extends $pb.GeneratedMessage {
  factory Shortcut({
    Shortcut_Type? type,
    $core.int? subType,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (subType != null) result.subType = subType;
    return result;
  }

  Shortcut._();

  factory Shortcut.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Shortcut.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Shortcut',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<Shortcut_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: Shortcut_Type.values)
    ..aI(2, _omitFieldNames ? '' : 'subType', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shortcut clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shortcut copyWith(void Function(Shortcut) updates) =>
      super.copyWith((message) => updates(message as Shortcut)) as Shortcut;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Shortcut create() => Shortcut._();
  @$core.override
  Shortcut createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Shortcut getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Shortcut>(create);
  static Shortcut? _defaultInstance;

  @$pb.TagNumber(1)
  Shortcut_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Shortcut_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get subType => $_getIZ(1);
  @$pb.TagNumber(2)
  set subType($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubType() => $_clearField(2);
}

class SportOption_List extends $pb.GeneratedMessage {
  factory SportOption_List({
    $core.Iterable<SportOption>? list,
    $0.SportType? shortcutSportType,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (shortcutSportType != null) result.shortcutSportType = shortcutSportType;
    return result;
  }

  SportOption_List._();

  factory SportOption_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportOption_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportOption.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<SportOption>(1, _omitFieldNames ? '' : 'list',
        subBuilder: SportOption.create)
    ..aE<$0.SportType>(2, _omitFieldNames ? '' : 'shortcutSportType',
        enumValues: $0.SportType.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportOption_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportOption_List copyWith(void Function(SportOption_List) updates) =>
      super.copyWith((message) => updates(message as SportOption_List))
          as SportOption_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportOption_List create() => SportOption_List._();
  @$core.override
  SportOption_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportOption_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportOption_List>(create);
  static SportOption_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SportOption> get list => $_getList(0);

  @$pb.TagNumber(2)
  $0.SportType get shortcutSportType => $_getN(1);
  @$pb.TagNumber(2)
  set shortcutSportType($0.SportType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasShortcutSportType() => $_has(1);
  @$pb.TagNumber(2)
  void clearShortcutSportType() => $_clearField(2);
}

class SportOption extends $pb.GeneratedMessage {
  factory SportOption({
    $0.SportType? sportType,
    $core.bool? show,
  }) {
    final result = create();
    if (sportType != null) result.sportType = sportType;
    if (show != null) result.show = show;
    return result;
  }

  SportOption._();

  factory SportOption.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportOption.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportOption',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.SportType>(1, _omitFieldNames ? '' : 'sportType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportType.values)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'show', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportOption clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportOption copyWith(void Function(SportOption) updates) =>
      super.copyWith((message) => updates(message as SportOption))
          as SportOption;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportOption create() => SportOption._();
  @$core.override
  SportOption createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportOption getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportOption>(create);
  static SportOption? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SportType get sportType => $_getN(0);
  @$pb.TagNumber(1)
  set sportType($0.SportType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSportType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSportType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get show => $_getBF(1);
  @$pb.TagNumber(2)
  set show($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasShow() => $_has(1);
  @$pb.TagNumber(2)
  void clearShow() => $_clearField(2);
}

class ForceUpgrade extends $pb.GeneratedMessage {
  factory ForceUpgrade({
    $core.bool? force,
    $core.String? firmwareVersion,
  }) {
    final result = create();
    if (force != null) result.force = force;
    if (firmwareVersion != null) result.firmwareVersion = firmwareVersion;
    return result;
  }

  ForceUpgrade._();

  factory ForceUpgrade.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForceUpgrade.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForceUpgrade',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'force', $pb.PbFieldType.QB)
    ..aQS(2, _omitFieldNames ? '' : 'firmwareVersion');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForceUpgrade clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForceUpgrade copyWith(void Function(ForceUpgrade) updates) =>
      super.copyWith((message) => updates(message as ForceUpgrade))
          as ForceUpgrade;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForceUpgrade create() => ForceUpgrade._();
  @$core.override
  ForceUpgrade createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForceUpgrade getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForceUpgrade>(create);
  static ForceUpgrade? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get force => $_getBF(0);
  @$pb.TagNumber(1)
  set force($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForce() => $_has(0);
  @$pb.TagNumber(1)
  void clearForce() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get firmwareVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set firmwareVersion($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFirmwareVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirmwareVersion() => $_clearField(2);
}

class PrepareOta_Progress extends $pb.GeneratedMessage {
  factory PrepareOta_Progress({
    $core.int? code,
    $core.double? percent,
    $core.int? minBattery,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (percent != null) result.percent = percent;
    if (minBattery != null) result.minBattery = minBattery;
    return result;
  }

  PrepareOta_Progress._();

  factory PrepareOta_Progress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareOta_Progress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareOta.Progress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3)
    ..aD(2, _omitFieldNames ? '' : 'percent', fieldType: $pb.PbFieldType.OF)
    ..aI(3, _omitFieldNames ? '' : 'minBattery',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareOta_Progress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareOta_Progress copyWith(void Function(PrepareOta_Progress) updates) =>
      super.copyWith((message) => updates(message as PrepareOta_Progress))
          as PrepareOta_Progress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareOta_Progress create() => PrepareOta_Progress._();
  @$core.override
  PrepareOta_Progress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareOta_Progress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareOta_Progress>(create);
  static PrepareOta_Progress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get percent => $_getN(1);
  @$pb.TagNumber(2)
  set percent($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPercent() => $_has(1);
  @$pb.TagNumber(2)
  void clearPercent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get minBattery => $_getIZ(2);
  @$pb.TagNumber(3)
  set minBattery($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMinBattery() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinBattery() => $_clearField(3);
}

class PrepareOta_Request extends $pb.GeneratedMessage {
  factory PrepareOta_Request({
    $core.bool? force,
    PrepareOta_Type? type,
    $core.String? firmwareVersion,
    $core.String? fileMd5,
    $core.String? changeLog,
    $core.String? fileUrl,
    $core.int? fileSize,
  }) {
    final result = create();
    if (force != null) result.force = force;
    if (type != null) result.type = type;
    if (firmwareVersion != null) result.firmwareVersion = firmwareVersion;
    if (fileMd5 != null) result.fileMd5 = fileMd5;
    if (changeLog != null) result.changeLog = changeLog;
    if (fileUrl != null) result.fileUrl = fileUrl;
    if (fileSize != null) result.fileSize = fileSize;
    return result;
  }

  PrepareOta_Request._();

  factory PrepareOta_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareOta_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareOta.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'force', $pb.PbFieldType.QB)
    ..aE<PrepareOta_Type>(2, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: PrepareOta_Type.values)
    ..aQS(3, _omitFieldNames ? '' : 'firmwareVersion')
    ..aQS(4, _omitFieldNames ? '' : 'fileMd5')
    ..aQS(5, _omitFieldNames ? '' : 'changeLog')
    ..aQS(6, _omitFieldNames ? '' : 'fileUrl')
    ..aI(7, _omitFieldNames ? '' : 'fileSize', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareOta_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareOta_Request copyWith(void Function(PrepareOta_Request) updates) =>
      super.copyWith((message) => updates(message as PrepareOta_Request))
          as PrepareOta_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareOta_Request create() => PrepareOta_Request._();
  @$core.override
  PrepareOta_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareOta_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareOta_Request>(create);
  static PrepareOta_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get force => $_getBF(0);
  @$pb.TagNumber(1)
  set force($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForce() => $_has(0);
  @$pb.TagNumber(1)
  void clearForce() => $_clearField(1);

  @$pb.TagNumber(2)
  PrepareOta_Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(PrepareOta_Type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get firmwareVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set firmwareVersion($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFirmwareVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirmwareVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get fileMd5 => $_getSZ(3);
  @$pb.TagNumber(4)
  set fileMd5($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFileMd5() => $_has(3);
  @$pb.TagNumber(4)
  void clearFileMd5() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get changeLog => $_getSZ(4);
  @$pb.TagNumber(5)
  set changeLog($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasChangeLog() => $_has(4);
  @$pb.TagNumber(5)
  void clearChangeLog() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get fileUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set fileUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFileUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearFileUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get fileSize => $_getIZ(6);
  @$pb.TagNumber(7)
  set fileSize($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFileSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearFileSize() => $_clearField(7);
}

class PrepareOta_Response extends $pb.GeneratedMessage {
  factory PrepareOta_Response({
    $0.PrepareStatus? prepareStatus,
    $core.int? expectedSliceLength,
    $core.int? minBattery,
    PrepareOta_Progress? progress,
  }) {
    final result = create();
    if (prepareStatus != null) result.prepareStatus = prepareStatus;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    if (minBattery != null) result.minBattery = minBattery;
    if (progress != null) result.progress = progress;
    return result;
  }

  PrepareOta_Response._();

  factory PrepareOta_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareOta_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareOta.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.PrepareStatus>(1, _omitFieldNames ? '' : 'prepareStatus',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.PrepareStatus.values)
    ..aI(2, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'minBattery', fieldType: $pb.PbFieldType.OU3)
    ..aOM<PrepareOta_Progress>(4, _omitFieldNames ? '' : 'progress',
        subBuilder: PrepareOta_Progress.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareOta_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareOta_Response copyWith(void Function(PrepareOta_Response) updates) =>
      super.copyWith((message) => updates(message as PrepareOta_Response))
          as PrepareOta_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareOta_Response create() => PrepareOta_Response._();
  @$core.override
  PrepareOta_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareOta_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareOta_Response>(create);
  static PrepareOta_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $0.PrepareStatus get prepareStatus => $_getN(0);
  @$pb.TagNumber(1)
  set prepareStatus($0.PrepareStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPrepareStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrepareStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get expectedSliceLength => $_getIZ(1);
  @$pb.TagNumber(2)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExpectedSliceLength() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpectedSliceLength() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get minBattery => $_getIZ(2);
  @$pb.TagNumber(3)
  set minBattery($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMinBattery() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinBattery() => $_clearField(3);

  @$pb.TagNumber(4)
  PrepareOta_Progress get progress => $_getN(3);
  @$pb.TagNumber(4)
  set progress(PrepareOta_Progress value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasProgress() => $_has(3);
  @$pb.TagNumber(4)
  void clearProgress() => $_clearField(4);
  @$pb.TagNumber(4)
  PrepareOta_Progress ensureProgress() => $_ensure(3);
}

class PrepareOta extends $pb.GeneratedMessage {
  factory PrepareOta() => create();

  PrepareOta._();

  factory PrepareOta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareOta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareOta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareOta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareOta copyWith(void Function(PrepareOta) updates) =>
      super.copyWith((message) => updates(message as PrepareOta)) as PrepareOta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareOta create() => PrepareOta._();
  @$core.override
  PrepareOta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareOta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareOta>(create);
  static PrepareOta? _defaultInstance;
}

class SmallHabit_List extends $pb.GeneratedMessage {
  factory SmallHabit_List({
    $core.Iterable<SmallHabit>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  SmallHabit_List._();

  factory SmallHabit_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SmallHabit_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SmallHabit.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<SmallHabit>(1, _omitFieldNames ? '' : 'list',
        subBuilder: SmallHabit.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SmallHabit_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SmallHabit_List copyWith(void Function(SmallHabit_List) updates) =>
      super.copyWith((message) => updates(message as SmallHabit_List))
          as SmallHabit_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmallHabit_List create() => SmallHabit_List._();
  @$core.override
  SmallHabit_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SmallHabit_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SmallHabit_List>(create);
  static SmallHabit_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SmallHabit> get list => $_getList(0);
}

class SmallHabit_TypeList extends $pb.GeneratedMessage {
  factory SmallHabit_TypeList({
    $core.Iterable<SmallHabit_Type>? type,
  }) {
    final result = create();
    if (type != null) result.type.addAll(type);
    return result;
  }

  SmallHabit_TypeList._();

  factory SmallHabit_TypeList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SmallHabit_TypeList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SmallHabit.TypeList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPE<SmallHabit_Type>(1, _omitFieldNames ? '' : 'type',
        enumValues: SmallHabit_Type.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SmallHabit_TypeList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SmallHabit_TypeList copyWith(void Function(SmallHabit_TypeList) updates) =>
      super.copyWith((message) => updates(message as SmallHabit_TypeList))
          as SmallHabit_TypeList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmallHabit_TypeList create() => SmallHabit_TypeList._();
  @$core.override
  SmallHabit_TypeList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SmallHabit_TypeList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SmallHabit_TypeList>(create);
  static SmallHabit_TypeList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SmallHabit_Type> get type => $_getList(0);
}

class SmallHabit extends $pb.GeneratedMessage {
  factory SmallHabit({
    SmallHabit_Type? type,
    $core.Iterable<$0.Time>? time,
    $0.ClockMode? clockMode,
    $core.int? weekDays,
    $core.bool? enable,
    $core.String? label,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (time != null) result.time.addAll(time);
    if (clockMode != null) result.clockMode = clockMode;
    if (weekDays != null) result.weekDays = weekDays;
    if (enable != null) result.enable = enable;
    if (label != null) result.label = label;
    return result;
  }

  SmallHabit._();

  factory SmallHabit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SmallHabit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SmallHabit',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<SmallHabit_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: SmallHabit_Type.values)
    ..pPM<$0.Time>(2, _omitFieldNames ? '' : 'time', subBuilder: $0.Time.create)
    ..aE<$0.ClockMode>(3, _omitFieldNames ? '' : 'clockMode',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.ClockMode.values)
    ..aI(4, _omitFieldNames ? '' : 'weekDays', fieldType: $pb.PbFieldType.OU3)
    ..a<$core.bool>(5, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB)
    ..aQS(6, _omitFieldNames ? '' : 'label');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SmallHabit clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SmallHabit copyWith(void Function(SmallHabit) updates) =>
      super.copyWith((message) => updates(message as SmallHabit)) as SmallHabit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmallHabit create() => SmallHabit._();
  @$core.override
  SmallHabit createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SmallHabit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SmallHabit>(create);
  static SmallHabit? _defaultInstance;

  @$pb.TagNumber(1)
  SmallHabit_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SmallHabit_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.Time> get time => $_getList(1);

  @$pb.TagNumber(3)
  $0.ClockMode get clockMode => $_getN(2);
  @$pb.TagNumber(3)
  set clockMode($0.ClockMode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasClockMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearClockMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get weekDays => $_getIZ(3);
  @$pb.TagNumber(4)
  set weekDays($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWeekDays() => $_has(3);
  @$pb.TagNumber(4)
  void clearWeekDays() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get enable => $_getBF(4);
  @$pb.TagNumber(5)
  set enable($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEnable() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnable() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get label => $_getSZ(5);
  @$pb.TagNumber(6)
  set label($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearLabel() => $_clearField(6);
}

class WiFiConfig_Capability extends $pb.GeneratedMessage {
  factory WiFiConfig_Capability({
    $core.int? supportAuthMode,
    $core.int? supportFrequency,
  }) {
    final result = create();
    if (supportAuthMode != null) result.supportAuthMode = supportAuthMode;
    if (supportFrequency != null) result.supportFrequency = supportFrequency;
    return result;
  }

  WiFiConfig_Capability._();

  factory WiFiConfig_Capability.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WiFiConfig_Capability.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WiFiConfig.Capability',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'supportAuthMode',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'supportFrequency',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_Capability clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_Capability copyWith(
          void Function(WiFiConfig_Capability) updates) =>
      super.copyWith((message) => updates(message as WiFiConfig_Capability))
          as WiFiConfig_Capability;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiConfig_Capability create() => WiFiConfig_Capability._();
  @$core.override
  WiFiConfig_Capability createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WiFiConfig_Capability getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WiFiConfig_Capability>(create);
  static WiFiConfig_Capability? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get supportAuthMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set supportAuthMode($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSupportAuthMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupportAuthMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get supportFrequency => $_getIZ(1);
  @$pb.TagNumber(2)
  set supportFrequency($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportFrequency() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportFrequency() => $_clearField(2);
}

class WiFiConfig_BasicInfo extends $pb.GeneratedMessage {
  factory WiFiConfig_BasicInfo({
    $core.String? ssid,
    WiFiConfig_AuthMode? authMode,
    WiFiConfig_Frequency? frequency,
  }) {
    final result = create();
    if (ssid != null) result.ssid = ssid;
    if (authMode != null) result.authMode = authMode;
    if (frequency != null) result.frequency = frequency;
    return result;
  }

  WiFiConfig_BasicInfo._();

  factory WiFiConfig_BasicInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WiFiConfig_BasicInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WiFiConfig.BasicInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'ssid')
    ..aE<WiFiConfig_AuthMode>(2, _omitFieldNames ? '' : 'authMode',
        fieldType: $pb.PbFieldType.QE, enumValues: WiFiConfig_AuthMode.values)
    ..aE<WiFiConfig_Frequency>(3, _omitFieldNames ? '' : 'frequency',
        fieldType: $pb.PbFieldType.QE, enumValues: WiFiConfig_Frequency.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_BasicInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_BasicInfo copyWith(void Function(WiFiConfig_BasicInfo) updates) =>
      super.copyWith((message) => updates(message as WiFiConfig_BasicInfo))
          as WiFiConfig_BasicInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiConfig_BasicInfo create() => WiFiConfig_BasicInfo._();
  @$core.override
  WiFiConfig_BasicInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WiFiConfig_BasicInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WiFiConfig_BasicInfo>(create);
  static WiFiConfig_BasicInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ssid => $_getSZ(0);
  @$pb.TagNumber(1)
  set ssid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSsid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSsid() => $_clearField(1);

  @$pb.TagNumber(2)
  WiFiConfig_AuthMode get authMode => $_getN(1);
  @$pb.TagNumber(2)
  set authMode(WiFiConfig_AuthMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthMode() => $_clearField(2);

  @$pb.TagNumber(3)
  WiFiConfig_Frequency get frequency => $_getN(2);
  @$pb.TagNumber(3)
  set frequency(WiFiConfig_Frequency value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFrequency() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrequency() => $_clearField(3);
}

class WiFiConfig_PSKInfo extends $pb.GeneratedMessage {
  factory WiFiConfig_PSKInfo({
    $core.String? password,
  }) {
    final result = create();
    if (password != null) result.password = password;
    return result;
  }

  WiFiConfig_PSKInfo._();

  factory WiFiConfig_PSKInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WiFiConfig_PSKInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WiFiConfig.PSKInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'password');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_PSKInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_PSKInfo copyWith(void Function(WiFiConfig_PSKInfo) updates) =>
      super.copyWith((message) => updates(message as WiFiConfig_PSKInfo))
          as WiFiConfig_PSKInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiConfig_PSKInfo create() => WiFiConfig_PSKInfo._();
  @$core.override
  WiFiConfig_PSKInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WiFiConfig_PSKInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WiFiConfig_PSKInfo>(create);
  static WiFiConfig_PSKInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => $_clearField(1);
}

class WiFiConfig_EAPInfo extends $pb.GeneratedMessage {
  factory WiFiConfig_EAPInfo({
    $core.String? identity,
    $core.String? password,
  }) {
    final result = create();
    if (identity != null) result.identity = identity;
    if (password != null) result.password = password;
    return result;
  }

  WiFiConfig_EAPInfo._();

  factory WiFiConfig_EAPInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WiFiConfig_EAPInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WiFiConfig.EAPInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'identity')
    ..aQS(2, _omitFieldNames ? '' : 'password');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_EAPInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_EAPInfo copyWith(void Function(WiFiConfig_EAPInfo) updates) =>
      super.copyWith((message) => updates(message as WiFiConfig_EAPInfo))
          as WiFiConfig_EAPInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiConfig_EAPInfo create() => WiFiConfig_EAPInfo._();
  @$core.override
  WiFiConfig_EAPInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WiFiConfig_EAPInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WiFiConfig_EAPInfo>(create);
  static WiFiConfig_EAPInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);
}

class WiFiConfig_Result extends $pb.GeneratedMessage {
  factory WiFiConfig_Result({
    $core.String? ssid,
    $core.int? code,
  }) {
    final result = create();
    if (ssid != null) result.ssid = ssid;
    if (code != null) result.code = code;
    return result;
  }

  WiFiConfig_Result._();

  factory WiFiConfig_Result.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WiFiConfig_Result.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WiFiConfig.Result',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'ssid')
    ..aI(2, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_Result clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_Result copyWith(void Function(WiFiConfig_Result) updates) =>
      super.copyWith((message) => updates(message as WiFiConfig_Result))
          as WiFiConfig_Result;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiConfig_Result create() => WiFiConfig_Result._();
  @$core.override
  WiFiConfig_Result createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WiFiConfig_Result getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WiFiConfig_Result>(create);
  static WiFiConfig_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ssid => $_getSZ(0);
  @$pb.TagNumber(1)
  set ssid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSsid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSsid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);
}

class WiFiConfig_List extends $pb.GeneratedMessage {
  factory WiFiConfig_List({
    $core.Iterable<WiFiConfig>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  WiFiConfig_List._();

  factory WiFiConfig_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WiFiConfig_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WiFiConfig.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WiFiConfig>(1, _omitFieldNames ? '' : 'list',
        subBuilder: WiFiConfig.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig_List copyWith(void Function(WiFiConfig_List) updates) =>
      super.copyWith((message) => updates(message as WiFiConfig_List))
          as WiFiConfig_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiConfig_List create() => WiFiConfig_List._();
  @$core.override
  WiFiConfig_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WiFiConfig_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WiFiConfig_List>(create);
  static WiFiConfig_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WiFiConfig> get list => $_getList(0);
}

enum WiFiConfig_AuthInfo { pskInfo, eapInfo, notSet }

class WiFiConfig extends $pb.GeneratedMessage {
  factory WiFiConfig({
    WiFiConfig_BasicInfo? basicInfo,
    WiFiConfig_PSKInfo? pskInfo,
    WiFiConfig_EAPInfo? eapInfo,
  }) {
    final result = create();
    if (basicInfo != null) result.basicInfo = basicInfo;
    if (pskInfo != null) result.pskInfo = pskInfo;
    if (eapInfo != null) result.eapInfo = eapInfo;
    return result;
  }

  WiFiConfig._();

  factory WiFiConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WiFiConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, WiFiConfig_AuthInfo>
      _WiFiConfig_AuthInfoByTag = {
    2: WiFiConfig_AuthInfo.pskInfo,
    3: WiFiConfig_AuthInfo.eapInfo,
    0: WiFiConfig_AuthInfo.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WiFiConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aQM<WiFiConfig_BasicInfo>(1, _omitFieldNames ? '' : 'basicInfo',
        subBuilder: WiFiConfig_BasicInfo.create)
    ..aOM<WiFiConfig_PSKInfo>(2, _omitFieldNames ? '' : 'pskInfo',
        subBuilder: WiFiConfig_PSKInfo.create)
    ..aOM<WiFiConfig_EAPInfo>(3, _omitFieldNames ? '' : 'eapInfo',
        subBuilder: WiFiConfig_EAPInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiConfig copyWith(void Function(WiFiConfig) updates) =>
      super.copyWith((message) => updates(message as WiFiConfig)) as WiFiConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiConfig create() => WiFiConfig._();
  @$core.override
  WiFiConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WiFiConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WiFiConfig>(create);
  static WiFiConfig? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  WiFiConfig_AuthInfo whichAuthInfo() =>
      _WiFiConfig_AuthInfoByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearAuthInfo() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WiFiConfig_BasicInfo get basicInfo => $_getN(0);
  @$pb.TagNumber(1)
  set basicInfo(WiFiConfig_BasicInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBasicInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasicInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  WiFiConfig_BasicInfo ensureBasicInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  WiFiConfig_PSKInfo get pskInfo => $_getN(1);
  @$pb.TagNumber(2)
  set pskInfo(WiFiConfig_PSKInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPskInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearPskInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  WiFiConfig_PSKInfo ensurePskInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  WiFiConfig_EAPInfo get eapInfo => $_getN(2);
  @$pb.TagNumber(3)
  set eapInfo(WiFiConfig_EAPInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEapInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearEapInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  WiFiConfig_EAPInfo ensureEapInfo() => $_ensure(2);
}

class BasicStatus_Sport extends $pb.GeneratedMessage {
  factory BasicStatus_Sport({
    $0.SportType? sportType,
    $0.SportState? sportState,
  }) {
    final result = create();
    if (sportType != null) result.sportType = sportType;
    if (sportState != null) result.sportState = sportState;
    return result;
  }

  BasicStatus_Sport._();

  factory BasicStatus_Sport.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BasicStatus_Sport.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BasicStatus.Sport',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.SportType>(1, _omitFieldNames ? '' : 'sportType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportType.values)
    ..aE<$0.SportState>(2, _omitFieldNames ? '' : 'sportState',
        enumValues: $0.SportState.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicStatus_Sport clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicStatus_Sport copyWith(void Function(BasicStatus_Sport) updates) =>
      super.copyWith((message) => updates(message as BasicStatus_Sport))
          as BasicStatus_Sport;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicStatus_Sport create() => BasicStatus_Sport._();
  @$core.override
  BasicStatus_Sport createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BasicStatus_Sport getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BasicStatus_Sport>(create);
  static BasicStatus_Sport? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SportType get sportType => $_getN(0);
  @$pb.TagNumber(1)
  set sportType($0.SportType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSportType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSportType() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.SportState get sportState => $_getN(1);
  @$pb.TagNumber(2)
  set sportState($0.SportState value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSportState() => $_has(1);
  @$pb.TagNumber(2)
  void clearSportState() => $_clearField(2);
}

class BasicStatus_Present extends $pb.GeneratedMessage {
  factory BasicStatus_Present({
    $core.bool? isCharging,
    $core.int? battery,
    $core.bool? isWearing,
    $core.bool? isSleeping,
    BasicStatus_Sport? sport,
  }) {
    final result = create();
    if (isCharging != null) result.isCharging = isCharging;
    if (battery != null) result.battery = battery;
    if (isWearing != null) result.isWearing = isWearing;
    if (isSleeping != null) result.isSleeping = isSleeping;
    if (sport != null) result.sport = sport;
    return result;
  }

  BasicStatus_Present._();

  factory BasicStatus_Present.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BasicStatus_Present.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BasicStatus.Present',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'isCharging', $pb.PbFieldType.QB)
    ..aI(2, _omitFieldNames ? '' : 'battery', fieldType: $pb.PbFieldType.OU3)
    ..a<$core.bool>(3, _omitFieldNames ? '' : 'isWearing', $pb.PbFieldType.QB)
    ..a<$core.bool>(4, _omitFieldNames ? '' : 'isSleeping', $pb.PbFieldType.QB)
    ..aQM<BasicStatus_Sport>(5, _omitFieldNames ? '' : 'sport',
        subBuilder: BasicStatus_Sport.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicStatus_Present clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicStatus_Present copyWith(void Function(BasicStatus_Present) updates) =>
      super.copyWith((message) => updates(message as BasicStatus_Present))
          as BasicStatus_Present;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicStatus_Present create() => BasicStatus_Present._();
  @$core.override
  BasicStatus_Present createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BasicStatus_Present getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BasicStatus_Present>(create);
  static BasicStatus_Present? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isCharging => $_getBF(0);
  @$pb.TagNumber(1)
  set isCharging($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsCharging() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsCharging() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get battery => $_getIZ(1);
  @$pb.TagNumber(2)
  set battery($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBattery() => $_has(1);
  @$pb.TagNumber(2)
  void clearBattery() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isWearing => $_getBF(2);
  @$pb.TagNumber(3)
  set isWearing($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsWearing() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsWearing() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isSleeping => $_getBF(3);
  @$pb.TagNumber(4)
  set isSleeping($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsSleeping() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsSleeping() => $_clearField(4);

  @$pb.TagNumber(5)
  BasicStatus_Sport get sport => $_getN(4);
  @$pb.TagNumber(5)
  set sport(BasicStatus_Sport value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSport() => $_has(4);
  @$pb.TagNumber(5)
  void clearSport() => $_clearField(5);
  @$pb.TagNumber(5)
  BasicStatus_Sport ensureSport() => $_ensure(4);
}

class BasicStatus_Report extends $pb.GeneratedMessage {
  factory BasicStatus_Report({
    BasicStatus_Charging? charging,
    BasicStatus_Wearing? wearing,
    BasicStatus_Sleeping? sleeping,
    BasicStatus_Warning? waring,
    BasicStatus_Sport? sport,
  }) {
    final result = create();
    if (charging != null) result.charging = charging;
    if (wearing != null) result.wearing = wearing;
    if (sleeping != null) result.sleeping = sleeping;
    if (waring != null) result.waring = waring;
    if (sport != null) result.sport = sport;
    return result;
  }

  BasicStatus_Report._();

  factory BasicStatus_Report.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BasicStatus_Report.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BasicStatus.Report',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<BasicStatus_Charging>(1, _omitFieldNames ? '' : 'charging',
        enumValues: BasicStatus_Charging.values)
    ..aE<BasicStatus_Wearing>(2, _omitFieldNames ? '' : 'wearing',
        enumValues: BasicStatus_Wearing.values)
    ..aE<BasicStatus_Sleeping>(3, _omitFieldNames ? '' : 'sleeping',
        enumValues: BasicStatus_Sleeping.values)
    ..aE<BasicStatus_Warning>(4, _omitFieldNames ? '' : 'waring',
        enumValues: BasicStatus_Warning.values)
    ..aOM<BasicStatus_Sport>(5, _omitFieldNames ? '' : 'sport',
        subBuilder: BasicStatus_Sport.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicStatus_Report clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicStatus_Report copyWith(void Function(BasicStatus_Report) updates) =>
      super.copyWith((message) => updates(message as BasicStatus_Report))
          as BasicStatus_Report;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicStatus_Report create() => BasicStatus_Report._();
  @$core.override
  BasicStatus_Report createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BasicStatus_Report getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BasicStatus_Report>(create);
  static BasicStatus_Report? _defaultInstance;

  @$pb.TagNumber(1)
  BasicStatus_Charging get charging => $_getN(0);
  @$pb.TagNumber(1)
  set charging(BasicStatus_Charging value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCharging() => $_has(0);
  @$pb.TagNumber(1)
  void clearCharging() => $_clearField(1);

  @$pb.TagNumber(2)
  BasicStatus_Wearing get wearing => $_getN(1);
  @$pb.TagNumber(2)
  set wearing(BasicStatus_Wearing value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWearing() => $_has(1);
  @$pb.TagNumber(2)
  void clearWearing() => $_clearField(2);

  @$pb.TagNumber(3)
  BasicStatus_Sleeping get sleeping => $_getN(2);
  @$pb.TagNumber(3)
  set sleeping(BasicStatus_Sleeping value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSleeping() => $_has(2);
  @$pb.TagNumber(3)
  void clearSleeping() => $_clearField(3);

  @$pb.TagNumber(4)
  BasicStatus_Warning get waring => $_getN(3);
  @$pb.TagNumber(4)
  set waring(BasicStatus_Warning value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasWaring() => $_has(3);
  @$pb.TagNumber(4)
  void clearWaring() => $_clearField(4);

  @$pb.TagNumber(5)
  BasicStatus_Sport get sport => $_getN(4);
  @$pb.TagNumber(5)
  set sport(BasicStatus_Sport value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSport() => $_has(4);
  @$pb.TagNumber(5)
  void clearSport() => $_clearField(5);
  @$pb.TagNumber(5)
  BasicStatus_Sport ensureSport() => $_ensure(4);
}

class BasicStatus extends $pb.GeneratedMessage {
  factory BasicStatus() => create();

  BasicStatus._();

  factory BasicStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BasicStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BasicStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicStatus copyWith(void Function(BasicStatus) updates) =>
      super.copyWith((message) => updates(message as BasicStatus))
          as BasicStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicStatus create() => BasicStatus._();
  @$core.override
  BasicStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BasicStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BasicStatus>(create);
  static BasicStatus? _defaultInstance;
}

class ReportData_Result extends $pb.GeneratedMessage {
  factory ReportData_Result({
    ReportData_Type? type,
    ReportData_Status? status,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (status != null) result.status = status;
    return result;
  }

  ReportData_Result._();

  factory ReportData_Result.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportData_Result.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportData.Result',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ReportData_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: ReportData_Type.values)
    ..aE<ReportData_Status>(2, _omitFieldNames ? '' : 'status',
        fieldType: $pb.PbFieldType.QE, enumValues: ReportData_Status.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportData_Result clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportData_Result copyWith(void Function(ReportData_Result) updates) =>
      super.copyWith((message) => updates(message as ReportData_Result))
          as ReportData_Result;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportData_Result create() => ReportData_Result._();
  @$core.override
  ReportData_Result createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportData_Result getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportData_Result>(create);
  static ReportData_Result? _defaultInstance;

  @$pb.TagNumber(1)
  ReportData_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ReportData_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  ReportData_Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(ReportData_Status value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
}

class ReportData extends $pb.GeneratedMessage {
  factory ReportData({
    ReportData_Type? type,
    $core.String? id,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    return result;
  }

  ReportData._();

  factory ReportData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ReportData_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: ReportData_Type.values)
    ..aOS(2, _omitFieldNames ? '' : 'id');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportData copyWith(void Function(ReportData) updates) =>
      super.copyWith((message) => updates(message as ReportData)) as ReportData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportData create() => ReportData._();
  @$core.override
  ReportData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportData>(create);
  static ReportData? _defaultInstance;

  @$pb.TagNumber(1)
  ReportData_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ReportData_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
}

class NetworkProxy_Request extends $pb.GeneratedMessage {
  factory NetworkProxy_Request({
    NetworkProxy_Type? type,
  }) {
    final result = create();
    if (type != null) result.type = type;
    return result;
  }

  NetworkProxy_Request._();

  factory NetworkProxy_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NetworkProxy_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NetworkProxy.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<NetworkProxy_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: NetworkProxy_Type.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkProxy_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkProxy_Request copyWith(void Function(NetworkProxy_Request) updates) =>
      super.copyWith((message) => updates(message as NetworkProxy_Request))
          as NetworkProxy_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkProxy_Request create() => NetworkProxy_Request._();
  @$core.override
  NetworkProxy_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NetworkProxy_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NetworkProxy_Request>(create);
  static NetworkProxy_Request? _defaultInstance;

  @$pb.TagNumber(1)
  NetworkProxy_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(NetworkProxy_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class NetworkProxy extends $pb.GeneratedMessage {
  factory NetworkProxy() => create();

  NetworkProxy._();

  factory NetworkProxy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NetworkProxy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NetworkProxy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkProxy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkProxy copyWith(void Function(NetworkProxy) updates) =>
      super.copyWith((message) => updates(message as NetworkProxy))
          as NetworkProxy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkProxy create() => NetworkProxy._();
  @$core.override
  NetworkProxy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NetworkProxy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NetworkProxy>(create);
  static NetworkProxy? _defaultInstance;
}

class WiFiAP_Result extends $pb.GeneratedMessage {
  factory WiFiAP_Result({
    $core.int? code,
    WiFiAP? wifiAp,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (wifiAp != null) result.wifiAp = wifiAp;
    return result;
  }

  WiFiAP_Result._();

  factory WiFiAP_Result.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WiFiAP_Result.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WiFiAP.Result',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3)
    ..aOM<WiFiAP>(2, _omitFieldNames ? '' : 'wifiAp',
        subBuilder: WiFiAP.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiAP_Result clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiAP_Result copyWith(void Function(WiFiAP_Result) updates) =>
      super.copyWith((message) => updates(message as WiFiAP_Result))
          as WiFiAP_Result;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiAP_Result create() => WiFiAP_Result._();
  @$core.override
  WiFiAP_Result createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WiFiAP_Result getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WiFiAP_Result>(create);
  static WiFiAP_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  WiFiAP get wifiAp => $_getN(1);
  @$pb.TagNumber(2)
  set wifiAp(WiFiAP value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWifiAp() => $_has(1);
  @$pb.TagNumber(2)
  void clearWifiAp() => $_clearField(2);
  @$pb.TagNumber(2)
  WiFiAP ensureWifiAp() => $_ensure(1);
}

class WiFiAP extends $pb.GeneratedMessage {
  factory WiFiAP({
    $core.String? ssid,
    $core.String? password,
    $core.String? gateway,
  }) {
    final result = create();
    if (ssid != null) result.ssid = ssid;
    if (password != null) result.password = password;
    if (gateway != null) result.gateway = gateway;
    return result;
  }

  WiFiAP._();

  factory WiFiAP.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WiFiAP.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WiFiAP',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'ssid')
    ..aQS(2, _omitFieldNames ? '' : 'password')
    ..aQS(3, _omitFieldNames ? '' : 'gateway');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiAP clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WiFiAP copyWith(void Function(WiFiAP) updates) =>
      super.copyWith((message) => updates(message as WiFiAP)) as WiFiAP;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiAP create() => WiFiAP._();
  @$core.override
  WiFiAP createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WiFiAP getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WiFiAP>(create);
  static WiFiAP? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ssid => $_getSZ(0);
  @$pb.TagNumber(1)
  set ssid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSsid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSsid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get gateway => $_getSZ(2);
  @$pb.TagNumber(3)
  set gateway($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGateway() => $_has(2);
  @$pb.TagNumber(3)
  void clearGateway() => $_clearField(3);
}

class AlertStatus_Battery extends $pb.GeneratedMessage {
  factory AlertStatus_Battery({
    $core.int? type,
    $core.int? capacity,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (capacity != null) result.capacity = capacity;
    return result;
  }

  AlertStatus_Battery._();

  factory AlertStatus_Battery.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertStatus_Battery.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertStatus.Battery',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'capacity', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Battery clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Battery copyWith(void Function(AlertStatus_Battery) updates) =>
      super.copyWith((message) => updates(message as AlertStatus_Battery))
          as AlertStatus_Battery;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertStatus_Battery create() => AlertStatus_Battery._();
  @$core.override
  AlertStatus_Battery createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertStatus_Battery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertStatus_Battery>(create);
  static AlertStatus_Battery? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get capacity => $_getIZ(1);
  @$pb.TagNumber(2)
  set capacity($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCapacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCapacity() => $_clearField(2);
}

class AlertStatus_Temperature extends $pb.GeneratedMessage {
  factory AlertStatus_Temperature({
    $core.bool? high,
    $core.int? temp,
  }) {
    final result = create();
    if (high != null) result.high = high;
    if (temp != null) result.temp = temp;
    return result;
  }

  AlertStatus_Temperature._();

  factory AlertStatus_Temperature.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertStatus_Temperature.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertStatus.Temperature',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'high', $pb.PbFieldType.QB)
    ..aI(2, _omitFieldNames ? '' : 'temp', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Temperature clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Temperature copyWith(
          void Function(AlertStatus_Temperature) updates) =>
      super.copyWith((message) => updates(message as AlertStatus_Temperature))
          as AlertStatus_Temperature;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertStatus_Temperature create() => AlertStatus_Temperature._();
  @$core.override
  AlertStatus_Temperature createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertStatus_Temperature getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertStatus_Temperature>(create);
  static AlertStatus_Temperature? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get high => $_getBF(0);
  @$pb.TagNumber(1)
  set high($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHigh() => $_has(0);
  @$pb.TagNumber(1)
  void clearHigh() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get temp => $_getIZ(1);
  @$pb.TagNumber(2)
  set temp($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTemp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemp() => $_clearField(2);
}

class AlertStatus_Storage extends $pb.GeneratedMessage {
  factory AlertStatus_Storage({
    $core.int? freeSpace,
  }) {
    final result = create();
    if (freeSpace != null) result.freeSpace = freeSpace;
    return result;
  }

  AlertStatus_Storage._();

  factory AlertStatus_Storage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertStatus_Storage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertStatus.Storage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'freeSpace', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Storage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Storage copyWith(void Function(AlertStatus_Storage) updates) =>
      super.copyWith((message) => updates(message as AlertStatus_Storage))
          as AlertStatus_Storage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertStatus_Storage create() => AlertStatus_Storage._();
  @$core.override
  AlertStatus_Storage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertStatus_Storage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertStatus_Storage>(create);
  static AlertStatus_Storage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get freeSpace => $_getIZ(0);
  @$pb.TagNumber(1)
  set freeSpace($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFreeSpace() => $_has(0);
  @$pb.TagNumber(1)
  void clearFreeSpace() => $_clearField(1);
}

class AlertStatus_Ota extends $pb.GeneratedMessage {
  factory AlertStatus_Ota({
    $core.int? status,
    $core.int? errorCode,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (errorCode != null) result.errorCode = errorCode;
    return result;
  }

  AlertStatus_Ota._();

  factory AlertStatus_Ota.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertStatus_Ota.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertStatus.Ota',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'errorCode', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Ota clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Ota copyWith(void Function(AlertStatus_Ota) updates) =>
      super.copyWith((message) => updates(message as AlertStatus_Ota))
          as AlertStatus_Ota;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertStatus_Ota create() => AlertStatus_Ota._();
  @$core.override
  AlertStatus_Ota createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertStatus_Ota getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertStatus_Ota>(create);
  static AlertStatus_Ota? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get errorCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set errorCode($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasErrorCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorCode() => $_clearField(2);
}

class AlertStatus_Electrochromic extends $pb.GeneratedMessage {
  factory AlertStatus_Electrochromic({
    $core.int? color,
    $core.int? level,
  }) {
    final result = create();
    if (color != null) result.color = color;
    if (level != null) result.level = level;
    return result;
  }

  AlertStatus_Electrochromic._();

  factory AlertStatus_Electrochromic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertStatus_Electrochromic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertStatus.Electrochromic',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'color', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'level', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Electrochromic clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Electrochromic copyWith(
          void Function(AlertStatus_Electrochromic) updates) =>
      super.copyWith(
              (message) => updates(message as AlertStatus_Electrochromic))
          as AlertStatus_Electrochromic;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertStatus_Electrochromic create() => AlertStatus_Electrochromic._();
  @$core.override
  AlertStatus_Electrochromic createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertStatus_Electrochromic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertStatus_Electrochromic>(create);
  static AlertStatus_Electrochromic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get color => $_getIZ(0);
  @$pb.TagNumber(1)
  set color($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get level => $_getIZ(1);
  @$pb.TagNumber(2)
  set level($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => $_clearField(2);
}

class AlertStatus_Camera extends $pb.GeneratedMessage {
  factory AlertStatus_Camera({
    $core.int? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  AlertStatus_Camera._();

  factory AlertStatus_Camera.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertStatus_Camera.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertStatus.Camera',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Camera clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Camera copyWith(void Function(AlertStatus_Camera) updates) =>
      super.copyWith((message) => updates(message as AlertStatus_Camera))
          as AlertStatus_Camera;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertStatus_Camera create() => AlertStatus_Camera._();
  @$core.override
  AlertStatus_Camera createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertStatus_Camera getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertStatus_Camera>(create);
  static AlertStatus_Camera? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

class AlertStatus_Wear extends $pb.GeneratedMessage {
  factory AlertStatus_Wear({
    $core.int? mode,
  }) {
    final result = create();
    if (mode != null) result.mode = mode;
    return result;
  }

  AlertStatus_Wear._();

  factory AlertStatus_Wear.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertStatus_Wear.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertStatus.Wear',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'mode', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Wear clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus_Wear copyWith(void Function(AlertStatus_Wear) updates) =>
      super.copyWith((message) => updates(message as AlertStatus_Wear))
          as AlertStatus_Wear;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertStatus_Wear create() => AlertStatus_Wear._();
  @$core.override
  AlertStatus_Wear createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertStatus_Wear getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertStatus_Wear>(create);
  static AlertStatus_Wear? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mode => $_getIZ(0);
  @$pb.TagNumber(1)
  set mode($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => $_clearField(1);
}

class AlertStatus extends $pb.GeneratedMessage {
  factory AlertStatus({
    AlertStatus_Battery? battery,
    AlertStatus_Temperature? temperature,
    AlertStatus_Storage? storage,
    AlertStatus_Ota? ota,
    AlertStatus_Electrochromic? electrochromic,
    AlertStatus_Camera? camera,
    AlertStatus_Wear? wear,
  }) {
    final result = create();
    if (battery != null) result.battery = battery;
    if (temperature != null) result.temperature = temperature;
    if (storage != null) result.storage = storage;
    if (ota != null) result.ota = ota;
    if (electrochromic != null) result.electrochromic = electrochromic;
    if (camera != null) result.camera = camera;
    if (wear != null) result.wear = wear;
    return result;
  }

  AlertStatus._();

  factory AlertStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aOM<AlertStatus_Battery>(1, _omitFieldNames ? '' : 'battery',
        subBuilder: AlertStatus_Battery.create)
    ..aOM<AlertStatus_Temperature>(2, _omitFieldNames ? '' : 'temperature',
        subBuilder: AlertStatus_Temperature.create)
    ..aOM<AlertStatus_Storage>(3, _omitFieldNames ? '' : 'storage',
        subBuilder: AlertStatus_Storage.create)
    ..aOM<AlertStatus_Ota>(4, _omitFieldNames ? '' : 'ota',
        subBuilder: AlertStatus_Ota.create)
    ..aOM<AlertStatus_Electrochromic>(
        5, _omitFieldNames ? '' : 'electrochromic',
        subBuilder: AlertStatus_Electrochromic.create)
    ..aOM<AlertStatus_Camera>(6, _omitFieldNames ? '' : 'camera',
        subBuilder: AlertStatus_Camera.create)
    ..aOM<AlertStatus_Wear>(7, _omitFieldNames ? '' : 'wear',
        subBuilder: AlertStatus_Wear.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertStatus copyWith(void Function(AlertStatus) updates) =>
      super.copyWith((message) => updates(message as AlertStatus))
          as AlertStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertStatus create() => AlertStatus._();
  @$core.override
  AlertStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertStatus>(create);
  static AlertStatus? _defaultInstance;

  @$pb.TagNumber(1)
  AlertStatus_Battery get battery => $_getN(0);
  @$pb.TagNumber(1)
  set battery(AlertStatus_Battery value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBattery() => $_has(0);
  @$pb.TagNumber(1)
  void clearBattery() => $_clearField(1);
  @$pb.TagNumber(1)
  AlertStatus_Battery ensureBattery() => $_ensure(0);

  @$pb.TagNumber(2)
  AlertStatus_Temperature get temperature => $_getN(1);
  @$pb.TagNumber(2)
  set temperature(AlertStatus_Temperature value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTemperature() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperature() => $_clearField(2);
  @$pb.TagNumber(2)
  AlertStatus_Temperature ensureTemperature() => $_ensure(1);

  @$pb.TagNumber(3)
  AlertStatus_Storage get storage => $_getN(2);
  @$pb.TagNumber(3)
  set storage(AlertStatus_Storage value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStorage() => $_has(2);
  @$pb.TagNumber(3)
  void clearStorage() => $_clearField(3);
  @$pb.TagNumber(3)
  AlertStatus_Storage ensureStorage() => $_ensure(2);

  @$pb.TagNumber(4)
  AlertStatus_Ota get ota => $_getN(3);
  @$pb.TagNumber(4)
  set ota(AlertStatus_Ota value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOta() => $_has(3);
  @$pb.TagNumber(4)
  void clearOta() => $_clearField(4);
  @$pb.TagNumber(4)
  AlertStatus_Ota ensureOta() => $_ensure(3);

  @$pb.TagNumber(5)
  AlertStatus_Electrochromic get electrochromic => $_getN(4);
  @$pb.TagNumber(5)
  set electrochromic(AlertStatus_Electrochromic value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasElectrochromic() => $_has(4);
  @$pb.TagNumber(5)
  void clearElectrochromic() => $_clearField(5);
  @$pb.TagNumber(5)
  AlertStatus_Electrochromic ensureElectrochromic() => $_ensure(4);

  @$pb.TagNumber(6)
  AlertStatus_Camera get camera => $_getN(5);
  @$pb.TagNumber(6)
  set camera(AlertStatus_Camera value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCamera() => $_has(5);
  @$pb.TagNumber(6)
  void clearCamera() => $_clearField(6);
  @$pb.TagNumber(6)
  AlertStatus_Camera ensureCamera() => $_ensure(5);

  @$pb.TagNumber(7)
  AlertStatus_Wear get wear => $_getN(6);
  @$pb.TagNumber(7)
  set wear(AlertStatus_Wear value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasWear() => $_has(6);
  @$pb.TagNumber(7)
  void clearWear() => $_clearField(7);
  @$pb.TagNumber(7)
  AlertStatus_Wear ensureWear() => $_ensure(6);
}

class NetworkStatus extends $pb.GeneratedMessage {
  factory NetworkStatus({
    $core.int? capability,
  }) {
    final result = create();
    if (capability != null) result.capability = capability;
    return result;
  }

  NetworkStatus._();

  factory NetworkStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NetworkStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NetworkStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'capability',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NetworkStatus copyWith(void Function(NetworkStatus) updates) =>
      super.copyWith((message) => updates(message as NetworkStatus))
          as NetworkStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkStatus create() => NetworkStatus._();
  @$core.override
  NetworkStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NetworkStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NetworkStatus>(create);
  static NetworkStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get capability => $_getIZ(0);
  @$pb.TagNumber(1)
  set capability($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCapability() => $_has(0);
  @$pb.TagNumber(1)
  void clearCapability() => $_clearField(1);
}

class UsageGuide_Feedback extends $pb.GeneratedMessage {
  factory UsageGuide_Feedback({
    $core.int? guideId,
    $core.bool? success,
  }) {
    final result = create();
    if (guideId != null) result.guideId = guideId;
    if (success != null) result.success = success;
    return result;
  }

  UsageGuide_Feedback._();

  factory UsageGuide_Feedback.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UsageGuide_Feedback.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UsageGuide.Feedback',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'guideId', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'success', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsageGuide_Feedback clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsageGuide_Feedback copyWith(void Function(UsageGuide_Feedback) updates) =>
      super.copyWith((message) => updates(message as UsageGuide_Feedback))
          as UsageGuide_Feedback;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsageGuide_Feedback create() => UsageGuide_Feedback._();
  @$core.override
  UsageGuide_Feedback createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UsageGuide_Feedback getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UsageGuide_Feedback>(create);
  static UsageGuide_Feedback? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get guideId => $_getIZ(0);
  @$pb.TagNumber(1)
  set guideId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGuideId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuideId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => $_clearField(2);
}

class UsageGuide extends $pb.GeneratedMessage {
  factory UsageGuide({
    $core.int? id,
    $core.bool? needFeedback,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (needFeedback != null) result.needFeedback = needFeedback;
    return result;
  }

  UsageGuide._();

  factory UsageGuide.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UsageGuide.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UsageGuide',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(
        2, _omitFieldNames ? '' : 'needFeedback', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsageGuide clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsageGuide copyWith(void Function(UsageGuide) updates) =>
      super.copyWith((message) => updates(message as UsageGuide)) as UsageGuide;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsageGuide create() => UsageGuide._();
  @$core.override
  UsageGuide createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UsageGuide getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UsageGuide>(create);
  static UsageGuide? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get needFeedback => $_getBF(1);
  @$pb.TagNumber(2)
  set needFeedback($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNeedFeedback() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeedFeedback() => $_clearField(2);
}

class SystemSetting_NotificationSetting extends $pb.GeneratedMessage {
  factory SystemSetting_NotificationSetting({
    $0.OptionalSwitcher? autoScreen,
    $0.OptionalSwitcher? onlyLockscreen,
    $0.OptionalSwitcher? onlyWear,
  }) {
    final result = create();
    if (autoScreen != null) result.autoScreen = autoScreen;
    if (onlyLockscreen != null) result.onlyLockscreen = onlyLockscreen;
    if (onlyWear != null) result.onlyWear = onlyWear;
    return result;
  }

  SystemSetting_NotificationSetting._();

  factory SystemSetting_NotificationSetting.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_NotificationSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.NotificationSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.OptionalSwitcher>(1, _omitFieldNames ? '' : 'autoScreen',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.OptionalSwitcher.values)
    ..aE<$0.OptionalSwitcher>(2, _omitFieldNames ? '' : 'onlyLockscreen',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.OptionalSwitcher.values)
    ..aE<$0.OptionalSwitcher>(3, _omitFieldNames ? '' : 'onlyWear',
        enumValues: $0.OptionalSwitcher.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_NotificationSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_NotificationSetting copyWith(
          void Function(SystemSetting_NotificationSetting) updates) =>
      super.copyWith((message) =>
              updates(message as SystemSetting_NotificationSetting))
          as SystemSetting_NotificationSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_NotificationSetting create() =>
      SystemSetting_NotificationSetting._();
  @$core.override
  SystemSetting_NotificationSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_NotificationSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_NotificationSetting>(
          create);
  static SystemSetting_NotificationSetting? _defaultInstance;

  @$pb.TagNumber(1)
  $0.OptionalSwitcher get autoScreen => $_getN(0);
  @$pb.TagNumber(1)
  set autoScreen($0.OptionalSwitcher value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAutoScreen() => $_has(0);
  @$pb.TagNumber(1)
  void clearAutoScreen() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.OptionalSwitcher get onlyLockscreen => $_getN(1);
  @$pb.TagNumber(2)
  set onlyLockscreen($0.OptionalSwitcher value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOnlyLockscreen() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnlyLockscreen() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.OptionalSwitcher get onlyWear => $_getN(2);
  @$pb.TagNumber(3)
  set onlyWear($0.OptionalSwitcher value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOnlyWear() => $_has(2);
  @$pb.TagNumber(3)
  void clearOnlyWear() => $_clearField(3);
}

class SystemSetting_DNDMode extends $pb.GeneratedMessage {
  factory SystemSetting_DNDMode({
    $core.bool? syncWithPhone,
  }) {
    final result = create();
    if (syncWithPhone != null) result.syncWithPhone = syncWithPhone;
    return result;
  }

  SystemSetting_DNDMode._();

  factory SystemSetting_DNDMode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_DNDMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.DNDMode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(
        1, _omitFieldNames ? '' : 'syncWithPhone', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_DNDMode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_DNDMode copyWith(
          void Function(SystemSetting_DNDMode) updates) =>
      super.copyWith((message) => updates(message as SystemSetting_DNDMode))
          as SystemSetting_DNDMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_DNDMode create() => SystemSetting_DNDMode._();
  @$core.override
  SystemSetting_DNDMode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_DNDMode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_DNDMode>(create);
  static SystemSetting_DNDMode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get syncWithPhone => $_getBF(0);
  @$pb.TagNumber(1)
  set syncWithPhone($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSyncWithPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncWithPhone() => $_clearField(1);
}

class SystemSetting_WearSetting_HybridMode extends $pb.GeneratedMessage {
  factory SystemSetting_WearSetting_HybridMode({
    PowerMode? powerMode,
    $fixnum.Int64? lackFeature,
  }) {
    final result = create();
    if (powerMode != null) result.powerMode = powerMode;
    if (lackFeature != null) result.lackFeature = lackFeature;
    return result;
  }

  SystemSetting_WearSetting_HybridMode._();

  factory SystemSetting_WearSetting_HybridMode.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_WearSetting_HybridMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.WearSetting.HybridMode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<PowerMode>(1, _omitFieldNames ? '' : 'powerMode',
        fieldType: $pb.PbFieldType.QE, enumValues: PowerMode.values)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'lackFeature', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_WearSetting_HybridMode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_WearSetting_HybridMode copyWith(
          void Function(SystemSetting_WearSetting_HybridMode) updates) =>
      super.copyWith((message) =>
              updates(message as SystemSetting_WearSetting_HybridMode))
          as SystemSetting_WearSetting_HybridMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_WearSetting_HybridMode create() =>
      SystemSetting_WearSetting_HybridMode._();
  @$core.override
  SystemSetting_WearSetting_HybridMode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_WearSetting_HybridMode getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SystemSetting_WearSetting_HybridMode>(create);
  static SystemSetting_WearSetting_HybridMode? _defaultInstance;

  @$pb.TagNumber(1)
  PowerMode get powerMode => $_getN(0);
  @$pb.TagNumber(1)
  set powerMode(PowerMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPowerMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearPowerMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lackFeature => $_getI64(1);
  @$pb.TagNumber(2)
  set lackFeature($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLackFeature() => $_has(1);
  @$pb.TagNumber(2)
  void clearLackFeature() => $_clearField(2);
}

class SystemSetting_WearSetting extends $pb.GeneratedMessage {
  factory SystemSetting_WearSetting({
    $0.WearMode? wearMode,
    SystemSetting_WearSetting_HybridMode? hybridMode,
  }) {
    final result = create();
    if (wearMode != null) result.wearMode = wearMode;
    if (hybridMode != null) result.hybridMode = hybridMode;
    return result;
  }

  SystemSetting_WearSetting._();

  factory SystemSetting_WearSetting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_WearSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.WearSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.WearMode>(1, _omitFieldNames ? '' : 'wearMode',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.WearMode.values)
    ..aOM<SystemSetting_WearSetting_HybridMode>(
        2, _omitFieldNames ? '' : 'hybridMode',
        subBuilder: SystemSetting_WearSetting_HybridMode.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_WearSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_WearSetting copyWith(
          void Function(SystemSetting_WearSetting) updates) =>
      super.copyWith((message) => updates(message as SystemSetting_WearSetting))
          as SystemSetting_WearSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_WearSetting create() => SystemSetting_WearSetting._();
  @$core.override
  SystemSetting_WearSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_WearSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_WearSetting>(create);
  static SystemSetting_WearSetting? _defaultInstance;

  @$pb.TagNumber(1)
  $0.WearMode get wearMode => $_getN(0);
  @$pb.TagNumber(1)
  set wearMode($0.WearMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasWearMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearWearMode() => $_clearField(1);

  @$pb.TagNumber(2)
  SystemSetting_WearSetting_HybridMode get hybridMode => $_getN(1);
  @$pb.TagNumber(2)
  set hybridMode(SystemSetting_WearSetting_HybridMode value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasHybridMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearHybridMode() => $_clearField(2);
  @$pb.TagNumber(2)
  SystemSetting_WearSetting_HybridMode ensureHybridMode() => $_ensure(1);
}

class SystemSetting_DisconnectReminder extends $pb.GeneratedMessage {
  factory SystemSetting_DisconnectReminder({
    $core.bool? alert,
  }) {
    final result = create();
    if (alert != null) result.alert = alert;
    return result;
  }

  SystemSetting_DisconnectReminder._();

  factory SystemSetting_DisconnectReminder.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_DisconnectReminder.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.DisconnectReminder',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'alert', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_DisconnectReminder clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_DisconnectReminder copyWith(
          void Function(SystemSetting_DisconnectReminder) updates) =>
      super.copyWith(
              (message) => updates(message as SystemSetting_DisconnectReminder))
          as SystemSetting_DisconnectReminder;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_DisconnectReminder create() =>
      SystemSetting_DisconnectReminder._();
  @$core.override
  SystemSetting_DisconnectReminder createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_DisconnectReminder getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_DisconnectReminder>(
          create);
  static SystemSetting_DisconnectReminder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get alert => $_getBF(0);
  @$pb.TagNumber(1)
  set alert($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAlert() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlert() => $_clearField(1);
}

class SystemSetting_IndicatorLight extends $pb.GeneratedMessage {
  factory SystemSetting_IndicatorLight({
    $core.int? brightness,
  }) {
    final result = create();
    if (brightness != null) result.brightness = brightness;
    return result;
  }

  SystemSetting_IndicatorLight._();

  factory SystemSetting_IndicatorLight.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_IndicatorLight.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.IndicatorLight',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'brightness',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_IndicatorLight clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_IndicatorLight copyWith(
          void Function(SystemSetting_IndicatorLight) updates) =>
      super.copyWith(
              (message) => updates(message as SystemSetting_IndicatorLight))
          as SystemSetting_IndicatorLight;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_IndicatorLight create() =>
      SystemSetting_IndicatorLight._();
  @$core.override
  SystemSetting_IndicatorLight createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_IndicatorLight getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_IndicatorLight>(create);
  static SystemSetting_IndicatorLight? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get brightness => $_getIZ(0);
  @$pb.TagNumber(1)
  set brightness($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBrightness() => $_has(0);
  @$pb.TagNumber(1)
  void clearBrightness() => $_clearField(1);
}

class SystemSetting_AIAssistant extends $pb.GeneratedMessage {
  factory SystemSetting_AIAssistant({
    $core.bool? voiceWakeup,
    $core.bool? cameraAccess,
  }) {
    final result = create();
    if (voiceWakeup != null) result.voiceWakeup = voiceWakeup;
    if (cameraAccess != null) result.cameraAccess = cameraAccess;
    return result;
  }

  SystemSetting_AIAssistant._();

  factory SystemSetting_AIAssistant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_AIAssistant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.AIAssistant',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'voiceWakeup', $pb.PbFieldType.QB)
    ..aOB(2, _omitFieldNames ? '' : 'cameraAccess');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_AIAssistant clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_AIAssistant copyWith(
          void Function(SystemSetting_AIAssistant) updates) =>
      super.copyWith((message) => updates(message as SystemSetting_AIAssistant))
          as SystemSetting_AIAssistant;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_AIAssistant create() => SystemSetting_AIAssistant._();
  @$core.override
  SystemSetting_AIAssistant createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_AIAssistant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_AIAssistant>(create);
  static SystemSetting_AIAssistant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get voiceWakeup => $_getBF(0);
  @$pb.TagNumber(1)
  set voiceWakeup($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVoiceWakeup() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoiceWakeup() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get cameraAccess => $_getBF(1);
  @$pb.TagNumber(2)
  set cameraAccess($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCameraAccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearCameraAccess() => $_clearField(2);
}

class SystemSetting_MediaSetting extends $pb.GeneratedMessage {
  factory SystemSetting_MediaSetting({
    $core.int? shootingMode,
    $core.int? videoDuration,
    $core.bool? autoSync,
  }) {
    final result = create();
    if (shootingMode != null) result.shootingMode = shootingMode;
    if (videoDuration != null) result.videoDuration = videoDuration;
    if (autoSync != null) result.autoSync = autoSync;
    return result;
  }

  SystemSetting_MediaSetting._();

  factory SystemSetting_MediaSetting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_MediaSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.MediaSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'shootingMode',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'videoDuration',
        fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(3, _omitFieldNames ? '' : 'autoSync', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_MediaSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_MediaSetting copyWith(
          void Function(SystemSetting_MediaSetting) updates) =>
      super.copyWith(
              (message) => updates(message as SystemSetting_MediaSetting))
          as SystemSetting_MediaSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_MediaSetting create() => SystemSetting_MediaSetting._();
  @$core.override
  SystemSetting_MediaSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_MediaSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_MediaSetting>(create);
  static SystemSetting_MediaSetting? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get shootingMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set shootingMode($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShootingMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearShootingMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get videoDuration => $_getIZ(1);
  @$pb.TagNumber(2)
  set videoDuration($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVideoDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearVideoDuration() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get autoSync => $_getBF(2);
  @$pb.TagNumber(3)
  set autoSync($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAutoSync() => $_has(2);
  @$pb.TagNumber(3)
  void clearAutoSync() => $_clearField(3);
}

class SystemSetting_Headset extends $pb.GeneratedMessage {
  factory SystemSetting_Headset({
    $core.bool? wearDetection,
    $core.bool? volumeAdaptive,
  }) {
    final result = create();
    if (wearDetection != null) result.wearDetection = wearDetection;
    if (volumeAdaptive != null) result.volumeAdaptive = volumeAdaptive;
    return result;
  }

  SystemSetting_Headset._();

  factory SystemSetting_Headset.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_Headset.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.Headset',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(
        1, _omitFieldNames ? '' : 'wearDetection', $pb.PbFieldType.QB)
    ..aOB(2, _omitFieldNames ? '' : 'volumeAdaptive');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_Headset clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_Headset copyWith(
          void Function(SystemSetting_Headset) updates) =>
      super.copyWith((message) => updates(message as SystemSetting_Headset))
          as SystemSetting_Headset;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_Headset create() => SystemSetting_Headset._();
  @$core.override
  SystemSetting_Headset createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_Headset getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_Headset>(create);
  static SystemSetting_Headset? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get wearDetection => $_getBF(0);
  @$pb.TagNumber(1)
  set wearDetection($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWearDetection() => $_has(0);
  @$pb.TagNumber(1)
  void clearWearDetection() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get volumeAdaptive => $_getBF(1);
  @$pb.TagNumber(2)
  set volumeAdaptive($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVolumeAdaptive() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolumeAdaptive() => $_clearField(2);
}

class SystemSetting_OtaSetting extends $pb.GeneratedMessage {
  factory SystemSetting_OtaSetting({
    $core.bool? silent,
  }) {
    final result = create();
    if (silent != null) result.silent = silent;
    return result;
  }

  SystemSetting_OtaSetting._();

  factory SystemSetting_OtaSetting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_OtaSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.OtaSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'silent', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_OtaSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_OtaSetting copyWith(
          void Function(SystemSetting_OtaSetting) updates) =>
      super.copyWith((message) => updates(message as SystemSetting_OtaSetting))
          as SystemSetting_OtaSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_OtaSetting create() => SystemSetting_OtaSetting._();
  @$core.override
  SystemSetting_OtaSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_OtaSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_OtaSetting>(create);
  static SystemSetting_OtaSetting? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get silent => $_getBF(0);
  @$pb.TagNumber(1)
  set silent($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSilent() => $_has(0);
  @$pb.TagNumber(1)
  void clearSilent() => $_clearField(1);
}

class SystemSetting_Request extends $pb.GeneratedMessage {
  factory SystemSetting_Request({
    $core.int? items,
  }) {
    final result = create();
    if (items != null) result.items = items;
    return result;
  }

  SystemSetting_Request._();

  factory SystemSetting_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'items', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting_Request copyWith(
          void Function(SystemSetting_Request) updates) =>
      super.copyWith((message) => updates(message as SystemSetting_Request))
          as SystemSetting_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting_Request create() => SystemSetting_Request._();
  @$core.override
  SystemSetting_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting_Request>(create);
  static SystemSetting_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get items => $_getIZ(0);
  @$pb.TagNumber(1)
  set items($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasItems() => $_has(0);
  @$pb.TagNumber(1)
  void clearItems() => $_clearField(1);
}

class SystemSetting extends $pb.GeneratedMessage {
  factory SystemSetting({
    SystemSetting_NotificationSetting? notificatonSetting,
    SystemSetting_DNDMode? dndMode,
    SystemSetting_WearSetting? wearSetting,
    SystemSetting_DisconnectReminder? disconnectReminder,
    SystemSetting_IndicatorLight? indicatorLight,
    SystemSetting_AIAssistant? aiAssistant,
    SystemSetting_MediaSetting? mediaSetting,
    SystemSetting_Headset? headset,
    SystemSetting_OtaSetting? otaSetting,
  }) {
    final result = create();
    if (notificatonSetting != null)
      result.notificatonSetting = notificatonSetting;
    if (dndMode != null) result.dndMode = dndMode;
    if (wearSetting != null) result.wearSetting = wearSetting;
    if (disconnectReminder != null)
      result.disconnectReminder = disconnectReminder;
    if (indicatorLight != null) result.indicatorLight = indicatorLight;
    if (aiAssistant != null) result.aiAssistant = aiAssistant;
    if (mediaSetting != null) result.mediaSetting = mediaSetting;
    if (headset != null) result.headset = headset;
    if (otaSetting != null) result.otaSetting = otaSetting;
    return result;
  }

  SystemSetting._();

  factory SystemSetting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aOM<SystemSetting_NotificationSetting>(
        1, _omitFieldNames ? '' : 'notificatonSetting',
        subBuilder: SystemSetting_NotificationSetting.create)
    ..aOM<SystemSetting_DNDMode>(2, _omitFieldNames ? '' : 'dndMode',
        subBuilder: SystemSetting_DNDMode.create)
    ..aOM<SystemSetting_WearSetting>(3, _omitFieldNames ? '' : 'wearSetting',
        subBuilder: SystemSetting_WearSetting.create)
    ..aOM<SystemSetting_DisconnectReminder>(
        4, _omitFieldNames ? '' : 'disconnectReminder',
        subBuilder: SystemSetting_DisconnectReminder.create)
    ..aOM<SystemSetting_IndicatorLight>(
        5, _omitFieldNames ? '' : 'indicatorLight',
        subBuilder: SystemSetting_IndicatorLight.create)
    ..aOM<SystemSetting_AIAssistant>(6, _omitFieldNames ? '' : 'aiAssistant',
        subBuilder: SystemSetting_AIAssistant.create)
    ..aOM<SystemSetting_MediaSetting>(7, _omitFieldNames ? '' : 'mediaSetting',
        subBuilder: SystemSetting_MediaSetting.create)
    ..aOM<SystemSetting_Headset>(8, _omitFieldNames ? '' : 'headset',
        subBuilder: SystemSetting_Headset.create)
    ..aOM<SystemSetting_OtaSetting>(9, _omitFieldNames ? '' : 'otaSetting',
        subBuilder: SystemSetting_OtaSetting.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting copyWith(void Function(SystemSetting) updates) =>
      super.copyWith((message) => updates(message as SystemSetting))
          as SystemSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting create() => SystemSetting._();
  @$core.override
  SystemSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetting>(create);
  static SystemSetting? _defaultInstance;

  @$pb.TagNumber(1)
  SystemSetting_NotificationSetting get notificatonSetting => $_getN(0);
  @$pb.TagNumber(1)
  set notificatonSetting(SystemSetting_NotificationSetting value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNotificatonSetting() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotificatonSetting() => $_clearField(1);
  @$pb.TagNumber(1)
  SystemSetting_NotificationSetting ensureNotificatonSetting() => $_ensure(0);

  @$pb.TagNumber(2)
  SystemSetting_DNDMode get dndMode => $_getN(1);
  @$pb.TagNumber(2)
  set dndMode(SystemSetting_DNDMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDndMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearDndMode() => $_clearField(2);
  @$pb.TagNumber(2)
  SystemSetting_DNDMode ensureDndMode() => $_ensure(1);

  @$pb.TagNumber(3)
  SystemSetting_WearSetting get wearSetting => $_getN(2);
  @$pb.TagNumber(3)
  set wearSetting(SystemSetting_WearSetting value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasWearSetting() => $_has(2);
  @$pb.TagNumber(3)
  void clearWearSetting() => $_clearField(3);
  @$pb.TagNumber(3)
  SystemSetting_WearSetting ensureWearSetting() => $_ensure(2);

  @$pb.TagNumber(4)
  SystemSetting_DisconnectReminder get disconnectReminder => $_getN(3);
  @$pb.TagNumber(4)
  set disconnectReminder(SystemSetting_DisconnectReminder value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDisconnectReminder() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisconnectReminder() => $_clearField(4);
  @$pb.TagNumber(4)
  SystemSetting_DisconnectReminder ensureDisconnectReminder() => $_ensure(3);

  @$pb.TagNumber(5)
  SystemSetting_IndicatorLight get indicatorLight => $_getN(4);
  @$pb.TagNumber(5)
  set indicatorLight(SystemSetting_IndicatorLight value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasIndicatorLight() => $_has(4);
  @$pb.TagNumber(5)
  void clearIndicatorLight() => $_clearField(5);
  @$pb.TagNumber(5)
  SystemSetting_IndicatorLight ensureIndicatorLight() => $_ensure(4);

  @$pb.TagNumber(6)
  SystemSetting_AIAssistant get aiAssistant => $_getN(5);
  @$pb.TagNumber(6)
  set aiAssistant(SystemSetting_AIAssistant value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAiAssistant() => $_has(5);
  @$pb.TagNumber(6)
  void clearAiAssistant() => $_clearField(6);
  @$pb.TagNumber(6)
  SystemSetting_AIAssistant ensureAiAssistant() => $_ensure(5);

  @$pb.TagNumber(7)
  SystemSetting_MediaSetting get mediaSetting => $_getN(6);
  @$pb.TagNumber(7)
  set mediaSetting(SystemSetting_MediaSetting value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasMediaSetting() => $_has(6);
  @$pb.TagNumber(7)
  void clearMediaSetting() => $_clearField(7);
  @$pb.TagNumber(7)
  SystemSetting_MediaSetting ensureMediaSetting() => $_ensure(6);

  @$pb.TagNumber(8)
  SystemSetting_Headset get headset => $_getN(7);
  @$pb.TagNumber(8)
  set headset(SystemSetting_Headset value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasHeadset() => $_has(7);
  @$pb.TagNumber(8)
  void clearHeadset() => $_clearField(8);
  @$pb.TagNumber(8)
  SystemSetting_Headset ensureHeadset() => $_ensure(7);

  @$pb.TagNumber(9)
  SystemSetting_OtaSetting get otaSetting => $_getN(8);
  @$pb.TagNumber(9)
  set otaSetting(SystemSetting_OtaSetting value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasOtaSetting() => $_has(8);
  @$pb.TagNumber(9)
  void clearOtaSetting() => $_clearField(9);
  @$pb.TagNumber(9)
  SystemSetting_OtaSetting ensureOtaSetting() => $_ensure(8);
}

class PhoneSetting_Request extends $pb.GeneratedMessage {
  factory PhoneSetting_Request({
    $core.int? items,
  }) {
    final result = create();
    if (items != null) result.items = items;
    return result;
  }

  PhoneSetting_Request._();

  factory PhoneSetting_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneSetting_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneSetting.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'items', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSetting_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSetting_Request copyWith(void Function(PhoneSetting_Request) updates) =>
      super.copyWith((message) => updates(message as PhoneSetting_Request))
          as PhoneSetting_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneSetting_Request create() => PhoneSetting_Request._();
  @$core.override
  PhoneSetting_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneSetting_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneSetting_Request>(create);
  static PhoneSetting_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get items => $_getIZ(0);
  @$pb.TagNumber(1)
  set items($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasItems() => $_has(0);
  @$pb.TagNumber(1)
  void clearItems() => $_clearField(1);
}

class PhoneSetting_MuteMode extends $pb.GeneratedMessage {
  factory PhoneSetting_MuteMode({
    $core.bool? mute,
  }) {
    final result = create();
    if (mute != null) result.mute = mute;
    return result;
  }

  PhoneSetting_MuteMode._();

  factory PhoneSetting_MuteMode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneSetting_MuteMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneSetting.MuteMode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'mute', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSetting_MuteMode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSetting_MuteMode copyWith(
          void Function(PhoneSetting_MuteMode) updates) =>
      super.copyWith((message) => updates(message as PhoneSetting_MuteMode))
          as PhoneSetting_MuteMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneSetting_MuteMode create() => PhoneSetting_MuteMode._();
  @$core.override
  PhoneSetting_MuteMode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneSetting_MuteMode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneSetting_MuteMode>(create);
  static PhoneSetting_MuteMode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get mute => $_getBF(0);
  @$pb.TagNumber(1)
  set mute($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMute() => $_has(0);
  @$pb.TagNumber(1)
  void clearMute() => $_clearField(1);
}

class PhoneSetting extends $pb.GeneratedMessage {
  factory PhoneSetting({
    PhoneSetting_MuteMode? muteMode,
  }) {
    final result = create();
    if (muteMode != null) result.muteMode = muteMode;
    return result;
  }

  PhoneSetting._();

  factory PhoneSetting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aOM<PhoneSetting_MuteMode>(1, _omitFieldNames ? '' : 'muteMode',
        subBuilder: PhoneSetting_MuteMode.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSetting copyWith(void Function(PhoneSetting) updates) =>
      super.copyWith((message) => updates(message as PhoneSetting))
          as PhoneSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneSetting create() => PhoneSetting._();
  @$core.override
  PhoneSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneSetting>(create);
  static PhoneSetting? _defaultInstance;

  @$pb.TagNumber(1)
  PhoneSetting_MuteMode get muteMode => $_getN(0);
  @$pb.TagNumber(1)
  set muteMode(PhoneSetting_MuteMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMuteMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMuteMode() => $_clearField(1);
  @$pb.TagNumber(1)
  PhoneSetting_MuteMode ensureMuteMode() => $_ensure(0);
}

class VibratorSetting extends $pb.GeneratedMessage {
  factory VibratorSetting({
    $core.Iterable<VibratorItem>? items,
    $core.int? maxNumber,
    $core.Iterable<Vibrator>? vibrators,
    $core.int? version,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (maxNumber != null) result.maxNumber = maxNumber;
    if (vibrators != null) result.vibrators.addAll(vibrators);
    if (version != null) result.version = version;
    return result;
  }

  VibratorSetting._();

  factory VibratorSetting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VibratorSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VibratorSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<VibratorItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: VibratorItem.create)
    ..aI(2, _omitFieldNames ? '' : 'maxNumber', fieldType: $pb.PbFieldType.QU3)
    ..pPM<Vibrator>(3, _omitFieldNames ? '' : 'vibrators',
        subBuilder: Vibrator.create)
    ..aI(4, _omitFieldNames ? '' : 'version', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorSetting copyWith(void Function(VibratorSetting) updates) =>
      super.copyWith((message) => updates(message as VibratorSetting))
          as VibratorSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VibratorSetting create() => VibratorSetting._();
  @$core.override
  VibratorSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VibratorSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VibratorSetting>(create);
  static VibratorSetting? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<VibratorItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get maxNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxNumber($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxNumber() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<Vibrator> get vibrators => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get version => $_getIZ(3);
  @$pb.TagNumber(4)
  set version($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);
}

class Vibrator_Removal extends $pb.GeneratedMessage {
  factory Vibrator_Removal({
    $core.Iterable<$core.int>? ids,
  }) {
    final result = create();
    if (ids != null) result.ids.addAll(ids);
    return result;
  }

  Vibrator_Removal._();

  factory Vibrator_Removal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Vibrator_Removal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Vibrator.Removal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vibrator_Removal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vibrator_Removal copyWith(void Function(Vibrator_Removal) updates) =>
      super.copyWith((message) => updates(message as Vibrator_Removal))
          as Vibrator_Removal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vibrator_Removal create() => Vibrator_Removal._();
  @$core.override
  Vibrator_Removal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Vibrator_Removal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Vibrator_Removal>(create);
  static Vibrator_Removal? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get ids => $_getList(0);
}

class Vibrator extends $pb.GeneratedMessage {
  factory Vibrator({
    $core.int? id,
    $core.String? name,
    $core.Iterable<VibratorEffect_Segment>? segments,
    Vibrator_Type? type,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (segments != null) result.segments.addAll(segments);
    if (type != null) result.type = type;
    return result;
  }

  Vibrator._();

  factory Vibrator.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Vibrator.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Vibrator',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..pPM<VibratorEffect_Segment>(3, _omitFieldNames ? '' : 'segments',
        subBuilder: VibratorEffect_Segment.create)
    ..aE<Vibrator_Type>(4, _omitFieldNames ? '' : 'type',
        enumValues: Vibrator_Type.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vibrator clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vibrator copyWith(void Function(Vibrator) updates) =>
      super.copyWith((message) => updates(message as Vibrator)) as Vibrator;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vibrator create() => Vibrator._();
  @$core.override
  Vibrator createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Vibrator getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vibrator>(create);
  static Vibrator? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<VibratorEffect_Segment> get segments => $_getList(2);

  @$pb.TagNumber(4)
  Vibrator_Type get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(Vibrator_Type value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);
}

class VibratorItem extends $pb.GeneratedMessage {
  factory VibratorItem({
    Vibrator_Type? type,
    $core.int? id,
    $core.int? supportedBuiltinIds,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    if (supportedBuiltinIds != null)
      result.supportedBuiltinIds = supportedBuiltinIds;
    return result;
  }

  VibratorItem._();

  factory VibratorItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VibratorItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VibratorItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<Vibrator_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: Vibrator_Type.values)
    ..aI(2, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'supportedBuiltinIds',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorItem copyWith(void Function(VibratorItem) updates) =>
      super.copyWith((message) => updates(message as VibratorItem))
          as VibratorItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VibratorItem create() => VibratorItem._();
  @$core.override
  VibratorItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VibratorItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VibratorItem>(create);
  static VibratorItem? _defaultInstance;

  @$pb.TagNumber(1)
  Vibrator_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Vibrator_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get supportedBuiltinIds => $_getIZ(2);
  @$pb.TagNumber(3)
  set supportedBuiltinIds($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSupportedBuiltinIds() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupportedBuiltinIds() => $_clearField(3);
}

class VibratorEffect_Segment extends $pb.GeneratedMessage {
  factory VibratorEffect_Segment({
    $core.bool? on,
    $core.int? duration,
    $core.int? strength,
  }) {
    final result = create();
    if (on != null) result.on = on;
    if (duration != null) result.duration = duration;
    if (strength != null) result.strength = strength;
    return result;
  }

  VibratorEffect_Segment._();

  factory VibratorEffect_Segment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VibratorEffect_Segment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VibratorEffect.Segment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'on', $pb.PbFieldType.QB)
    ..aI(2, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'strength', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorEffect_Segment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorEffect_Segment copyWith(
          void Function(VibratorEffect_Segment) updates) =>
      super.copyWith((message) => updates(message as VibratorEffect_Segment))
          as VibratorEffect_Segment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VibratorEffect_Segment create() => VibratorEffect_Segment._();
  @$core.override
  VibratorEffect_Segment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VibratorEffect_Segment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VibratorEffect_Segment>(create);
  static VibratorEffect_Segment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get on => $_getBF(0);
  @$pb.TagNumber(1)
  set on($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearOn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get duration => $_getIZ(1);
  @$pb.TagNumber(2)
  set duration($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get strength => $_getIZ(2);
  @$pb.TagNumber(3)
  set strength($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStrength() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrength() => $_clearField(3);
}

class VibratorEffect extends $pb.GeneratedMessage {
  factory VibratorEffect({
    $core.Iterable<VibratorEffect_Segment>? segments,
    VibratorItem? item,
  }) {
    final result = create();
    if (segments != null) result.segments.addAll(segments);
    if (item != null) result.item = item;
    return result;
  }

  VibratorEffect._();

  factory VibratorEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VibratorEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VibratorEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<VibratorEffect_Segment>(1, _omitFieldNames ? '' : 'segments',
        subBuilder: VibratorEffect_Segment.create)
    ..aOM<VibratorItem>(2, _omitFieldNames ? '' : 'item',
        subBuilder: VibratorItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorEffect copyWith(void Function(VibratorEffect) updates) =>
      super.copyWith((message) => updates(message as VibratorEffect))
          as VibratorEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VibratorEffect create() => VibratorEffect._();
  @$core.override
  VibratorEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VibratorEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VibratorEffect>(create);
  static VibratorEffect? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<VibratorEffect_Segment> get segments => $_getList(0);

  @$pb.TagNumber(2)
  VibratorItem get item => $_getN(1);
  @$pb.TagNumber(2)
  set item(VibratorItem value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearItem() => $_clearField(2);
  @$pb.TagNumber(2)
  VibratorItem ensureItem() => $_ensure(1);
}

class VibratorError extends $pb.GeneratedMessage {
  factory VibratorError({
    VibratorError_Code? code,
  }) {
    final result = create();
    if (code != null) result.code = code;
    return result;
  }

  VibratorError._();

  factory VibratorError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VibratorError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VibratorError',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<VibratorError_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: VibratorError_Code.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VibratorError copyWith(void Function(VibratorError) updates) =>
      super.copyWith((message) => updates(message as VibratorError))
          as VibratorError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VibratorError create() => VibratorError._();
  @$core.override
  VibratorError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VibratorError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VibratorError>(create);
  static VibratorError? _defaultInstance;

  @$pb.TagNumber(1)
  VibratorError_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(VibratorError_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);
}

class StorageInfo extends $pb.GeneratedMessage {
  factory StorageInfo({
    $fixnum.Int64? used,
    $fixnum.Int64? total,
  }) {
    final result = create();
    if (used != null) result.used = used;
    if (total != null) result.total = total;
    return result;
  }

  StorageInfo._();

  factory StorageInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StorageInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'used', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'total', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StorageInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StorageInfo copyWith(void Function(StorageInfo) updates) =>
      super.copyWith((message) => updates(message as StorageInfo))
          as StorageInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageInfo create() => StorageInfo._();
  @$core.override
  StorageInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StorageInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageInfo>(create);
  static StorageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get used => $_getI64(0);
  @$pb.TagNumber(1)
  set used($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsed() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsed() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get total => $_getI64(1);
  @$pb.TagNumber(2)
  set total($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => $_clearField(2);
}

class PhonePermission extends $pb.GeneratedMessage {
  factory PhonePermission({
    $core.int? permissions,
  }) {
    final result = create();
    if (permissions != null) result.permissions = permissions;
    return result;
  }

  PhonePermission._();

  factory PhonePermission.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhonePermission.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhonePermission',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'permissions',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhonePermission clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhonePermission copyWith(void Function(PhonePermission) updates) =>
      super.copyWith((message) => updates(message as PhonePermission))
          as PhonePermission;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhonePermission create() => PhonePermission._();
  @$core.override
  PhonePermission createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhonePermission getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhonePermission>(create);
  static PhonePermission? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get permissions => $_getIZ(0);
  @$pb.TagNumber(1)
  set permissions($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPermissions() => $_has(0);
  @$pb.TagNumber(1)
  void clearPermissions() => $_clearField(1);
}

class LowLatency extends $pb.GeneratedMessage {
  factory LowLatency({
    $core.int? duration,
  }) {
    final result = create();
    if (duration != null) result.duration = duration;
    return result;
  }

  LowLatency._();

  factory LowLatency.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LowLatency.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LowLatency',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LowLatency clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LowLatency copyWith(void Function(LowLatency) updates) =>
      super.copyWith((message) => updates(message as LowLatency)) as LowLatency;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LowLatency create() => LowLatency._();
  @$core.override
  LowLatency createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LowLatency getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LowLatency>(create);
  static LowLatency? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get duration => $_getIZ(0);
  @$pb.TagNumber(1)
  set duration($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDuration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDuration() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
