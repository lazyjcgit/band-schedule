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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pb.dart' as $0;
import 'wear_fitness.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_fitness.pbenum.dart';

enum Fitness_Payload {
  userProfile,
  ids,
  id,
  remainingSportDataList,
  syncParam,
  bloodOxygenMonitor,
  heartRateMonitor,
  sedentaryReminder,
  pressureMonitor,
  measureReminder,
  sectionList,
  vitalityReminder,
  activityReminder,
  wearSensorData,
  pressurCalibrateResponse,
  evaluationResult,
  calibrationResult,
  sportRequest,
  sportResponse,
  phoneSportData,
  wearSportData,
  sportStatus,
  sportPreRequest,
  sportPreResponse,
  ecgRequest,
  ecgResponse,
  ecgData,
  ecgStatus,
  womenHealth,
  forcastOn,
  reminderList,
  sleepResult,
  goalStatus,
  basicData,
  phoneSportDataV2d,
  phoneSportDataV2a,
  wearSportDataV2a,
  vitalityDataList,
  sportDataList,
  ecgActivation,
  motionInteract,
  naviRouteList,
  naviRouteAddReqeust,
  naviRouteAddResponse,
  gymRequest,
  gymResponse,
  gymAssist,
  gymData,
  gymSettingList,
  naviRouteAddResult,
  naviRouteRemoveReqeust,
  naviRouteRemoveResponse,
  sleepRegularity,
  sleepDisorder,
  researchApp,
  researchAppList,
  researchDeviceList,
  researchCaliRequest,
  researchCaliResponse,
  researchBpSetting,
  phoneControlData,
  wearControlData,
  training,
  bpgCaliRequest,
  bpgCaliStatus,
  notSet
}

class Fitness extends $pb.GeneratedMessage {
  factory Fitness({
    UserProfile? userProfile,
    $core.List<$core.int>? ids,
    $core.List<$core.int>? id,
    RemainingSportData_List? remainingSportDataList,
    SyncParam? syncParam,
    BloodOxygenMonitor? bloodOxygenMonitor,
    HeartRateMonitor? heartRateMonitor,
    SedentaryReminder? sedentaryReminder,
    PressureMonitor? pressureMonitor,
    MeasureReminder? measureReminder,
    WomenHealth_Section_List? sectionList,
    VitalityReminder? vitalityReminder,
    ActivityReminder? activityReminder,
    WearSensorData? wearSensorData,
    PressureCalibrate_Response? pressurCalibrateResponse,
    PressureCalibrate_EvaluationResult? evaluationResult,
    PressureCalibrate_CalibrationResult? calibrationResult,
    SportRequest? sportRequest,
    SportResponse? sportResponse,
    PhoneSportData? phoneSportData,
    WearSportData? wearSportData,
    SportStatus? sportStatus,
    SportPreRequest? sportPreRequest,
    SportPreResponse? sportPreResponse,
    ECGRequest? ecgRequest,
    ECGResponse? ecgResponse,
    ECGData? ecgData,
    ECGStatus? ecgStatus,
    WomenHealth? womenHealth,
    $core.bool? forcastOn,
    WomenHealth_Reminder_List? reminderList,
    SleepResult? sleepResult,
    Goal_Status? goalStatus,
    BasicData? basicData,
    PhoneSportDataV2D? phoneSportDataV2d,
    PhoneSportDataV2A? phoneSportDataV2a,
    WearSportDataV2A? wearSportDataV2a,
    VitalityData_List? vitalityDataList,
    BestSportData_List? sportDataList,
    ECGActivation? ecgActivation,
    MotionInteract? motionInteract,
    NaviRoute_List? naviRouteList,
    NaviRoute_AddRequest? naviRouteAddReqeust,
    NaviRoute_AddResponse? naviRouteAddResponse,
    GYMRequest? gymRequest,
    GYMResponse? gymResponse,
    GYMAssist? gymAssist,
    GYMData? gymData,
    GYMSetting_List? gymSettingList,
    NaviRoute_AddResult? naviRouteAddResult,
    NaviRoute_RemoveRequest? naviRouteRemoveReqeust,
    NaviRoute_RemoveResponse? naviRouteRemoveResponse,
    SleepRegularity? sleepRegularity,
    SleepDisorder? sleepDisorder,
    Research_App? researchApp,
    Research_App_List? researchAppList,
    Research_Device_List? researchDeviceList,
    Research_CalibrationRequest? researchCaliRequest,
    Research_CalibrationResponse? researchCaliResponse,
    Research_BpSetting? researchBpSetting,
    PhoneControlData? phoneControlData,
    WearControlData? wearControlData,
    Training? training,
    Research_BPGCalibrationRequest? bpgCaliRequest,
    Research_BPGCalibrationStatus? bpgCaliStatus,
  }) {
    final result = create();
    if (userProfile != null) result.userProfile = userProfile;
    if (ids != null) result.ids = ids;
    if (id != null) result.id = id;
    if (remainingSportDataList != null)
      result.remainingSportDataList = remainingSportDataList;
    if (syncParam != null) result.syncParam = syncParam;
    if (bloodOxygenMonitor != null)
      result.bloodOxygenMonitor = bloodOxygenMonitor;
    if (heartRateMonitor != null) result.heartRateMonitor = heartRateMonitor;
    if (sedentaryReminder != null) result.sedentaryReminder = sedentaryReminder;
    if (pressureMonitor != null) result.pressureMonitor = pressureMonitor;
    if (measureReminder != null) result.measureReminder = measureReminder;
    if (sectionList != null) result.sectionList = sectionList;
    if (vitalityReminder != null) result.vitalityReminder = vitalityReminder;
    if (activityReminder != null) result.activityReminder = activityReminder;
    if (wearSensorData != null) result.wearSensorData = wearSensorData;
    if (pressurCalibrateResponse != null)
      result.pressurCalibrateResponse = pressurCalibrateResponse;
    if (evaluationResult != null) result.evaluationResult = evaluationResult;
    if (calibrationResult != null) result.calibrationResult = calibrationResult;
    if (sportRequest != null) result.sportRequest = sportRequest;
    if (sportResponse != null) result.sportResponse = sportResponse;
    if (phoneSportData != null) result.phoneSportData = phoneSportData;
    if (wearSportData != null) result.wearSportData = wearSportData;
    if (sportStatus != null) result.sportStatus = sportStatus;
    if (sportPreRequest != null) result.sportPreRequest = sportPreRequest;
    if (sportPreResponse != null) result.sportPreResponse = sportPreResponse;
    if (ecgRequest != null) result.ecgRequest = ecgRequest;
    if (ecgResponse != null) result.ecgResponse = ecgResponse;
    if (ecgData != null) result.ecgData = ecgData;
    if (ecgStatus != null) result.ecgStatus = ecgStatus;
    if (womenHealth != null) result.womenHealth = womenHealth;
    if (forcastOn != null) result.forcastOn = forcastOn;
    if (reminderList != null) result.reminderList = reminderList;
    if (sleepResult != null) result.sleepResult = sleepResult;
    if (goalStatus != null) result.goalStatus = goalStatus;
    if (basicData != null) result.basicData = basicData;
    if (phoneSportDataV2d != null) result.phoneSportDataV2d = phoneSportDataV2d;
    if (phoneSportDataV2a != null) result.phoneSportDataV2a = phoneSportDataV2a;
    if (wearSportDataV2a != null) result.wearSportDataV2a = wearSportDataV2a;
    if (vitalityDataList != null) result.vitalityDataList = vitalityDataList;
    if (sportDataList != null) result.sportDataList = sportDataList;
    if (ecgActivation != null) result.ecgActivation = ecgActivation;
    if (motionInteract != null) result.motionInteract = motionInteract;
    if (naviRouteList != null) result.naviRouteList = naviRouteList;
    if (naviRouteAddReqeust != null)
      result.naviRouteAddReqeust = naviRouteAddReqeust;
    if (naviRouteAddResponse != null)
      result.naviRouteAddResponse = naviRouteAddResponse;
    if (gymRequest != null) result.gymRequest = gymRequest;
    if (gymResponse != null) result.gymResponse = gymResponse;
    if (gymAssist != null) result.gymAssist = gymAssist;
    if (gymData != null) result.gymData = gymData;
    if (gymSettingList != null) result.gymSettingList = gymSettingList;
    if (naviRouteAddResult != null)
      result.naviRouteAddResult = naviRouteAddResult;
    if (naviRouteRemoveReqeust != null)
      result.naviRouteRemoveReqeust = naviRouteRemoveReqeust;
    if (naviRouteRemoveResponse != null)
      result.naviRouteRemoveResponse = naviRouteRemoveResponse;
    if (sleepRegularity != null) result.sleepRegularity = sleepRegularity;
    if (sleepDisorder != null) result.sleepDisorder = sleepDisorder;
    if (researchApp != null) result.researchApp = researchApp;
    if (researchAppList != null) result.researchAppList = researchAppList;
    if (researchDeviceList != null)
      result.researchDeviceList = researchDeviceList;
    if (researchCaliRequest != null)
      result.researchCaliRequest = researchCaliRequest;
    if (researchCaliResponse != null)
      result.researchCaliResponse = researchCaliResponse;
    if (researchBpSetting != null) result.researchBpSetting = researchBpSetting;
    if (phoneControlData != null) result.phoneControlData = phoneControlData;
    if (wearControlData != null) result.wearControlData = wearControlData;
    if (training != null) result.training = training;
    if (bpgCaliRequest != null) result.bpgCaliRequest = bpgCaliRequest;
    if (bpgCaliStatus != null) result.bpgCaliStatus = bpgCaliStatus;
    return result;
  }

  Fitness._();

  factory Fitness.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fitness.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Fitness_Payload> _Fitness_PayloadByTag = {
    1: Fitness_Payload.userProfile,
    2: Fitness_Payload.ids,
    3: Fitness_Payload.id,
    4: Fitness_Payload.remainingSportDataList,
    5: Fitness_Payload.syncParam,
    7: Fitness_Payload.bloodOxygenMonitor,
    8: Fitness_Payload.heartRateMonitor,
    9: Fitness_Payload.sedentaryReminder,
    10: Fitness_Payload.pressureMonitor,
    11: Fitness_Payload.measureReminder,
    12: Fitness_Payload.sectionList,
    13: Fitness_Payload.vitalityReminder,
    14: Fitness_Payload.activityReminder,
    15: Fitness_Payload.wearSensorData,
    17: Fitness_Payload.pressurCalibrateResponse,
    18: Fitness_Payload.evaluationResult,
    19: Fitness_Payload.calibrationResult,
    20: Fitness_Payload.sportRequest,
    21: Fitness_Payload.sportResponse,
    22: Fitness_Payload.phoneSportData,
    23: Fitness_Payload.wearSportData,
    24: Fitness_Payload.sportStatus,
    25: Fitness_Payload.sportPreRequest,
    26: Fitness_Payload.sportPreResponse,
    27: Fitness_Payload.ecgRequest,
    28: Fitness_Payload.ecgResponse,
    29: Fitness_Payload.ecgData,
    30: Fitness_Payload.ecgStatus,
    34: Fitness_Payload.womenHealth,
    35: Fitness_Payload.forcastOn,
    36: Fitness_Payload.reminderList,
    37: Fitness_Payload.sleepResult,
    38: Fitness_Payload.goalStatus,
    39: Fitness_Payload.basicData,
    40: Fitness_Payload.phoneSportDataV2d,
    41: Fitness_Payload.phoneSportDataV2a,
    42: Fitness_Payload.wearSportDataV2a,
    43: Fitness_Payload.vitalityDataList,
    44: Fitness_Payload.sportDataList,
    45: Fitness_Payload.ecgActivation,
    46: Fitness_Payload.motionInteract,
    47: Fitness_Payload.naviRouteList,
    48: Fitness_Payload.naviRouteAddReqeust,
    49: Fitness_Payload.naviRouteAddResponse,
    50: Fitness_Payload.gymRequest,
    51: Fitness_Payload.gymResponse,
    52: Fitness_Payload.gymAssist,
    53: Fitness_Payload.gymData,
    54: Fitness_Payload.gymSettingList,
    55: Fitness_Payload.naviRouteAddResult,
    56: Fitness_Payload.naviRouteRemoveReqeust,
    57: Fitness_Payload.naviRouteRemoveResponse,
    58: Fitness_Payload.sleepRegularity,
    59: Fitness_Payload.sleepDisorder,
    60: Fitness_Payload.researchApp,
    61: Fitness_Payload.researchAppList,
    62: Fitness_Payload.researchDeviceList,
    63: Fitness_Payload.researchCaliRequest,
    64: Fitness_Payload.researchCaliResponse,
    65: Fitness_Payload.researchBpSetting,
    66: Fitness_Payload.phoneControlData,
    67: Fitness_Payload.wearControlData,
    68: Fitness_Payload.training,
    69: Fitness_Payload.bpgCaliRequest,
    70: Fitness_Payload.bpgCaliStatus,
    0: Fitness_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fitness',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [
      1,
      2,
      3,
      4,
      5,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
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
      47,
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
      64,
      65,
      66,
      67,
      68,
      69,
      70
    ])
    ..aOM<UserProfile>(1, _omitFieldNames ? '' : 'userProfile',
        subBuilder: UserProfile.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OY)
    ..aOM<RemainingSportData_List>(
        4, _omitFieldNames ? '' : 'remainingSportDataList',
        subBuilder: RemainingSportData_List.create)
    ..aOM<SyncParam>(5, _omitFieldNames ? '' : 'syncParam',
        subBuilder: SyncParam.create)
    ..aOM<BloodOxygenMonitor>(7, _omitFieldNames ? '' : 'bloodOxygenMonitor',
        subBuilder: BloodOxygenMonitor.create)
    ..aOM<HeartRateMonitor>(8, _omitFieldNames ? '' : 'heartRateMonitor',
        subBuilder: HeartRateMonitor.create)
    ..aOM<SedentaryReminder>(9, _omitFieldNames ? '' : 'sedentaryReminder',
        subBuilder: SedentaryReminder.create)
    ..aOM<PressureMonitor>(10, _omitFieldNames ? '' : 'pressureMonitor',
        subBuilder: PressureMonitor.create)
    ..aOM<MeasureReminder>(11, _omitFieldNames ? '' : 'measureReminder',
        subBuilder: MeasureReminder.create)
    ..aOM<WomenHealth_Section_List>(12, _omitFieldNames ? '' : 'sectionList',
        subBuilder: WomenHealth_Section_List.create)
    ..aOM<VitalityReminder>(13, _omitFieldNames ? '' : 'vitalityReminder',
        subBuilder: VitalityReminder.create)
    ..aOM<ActivityReminder>(14, _omitFieldNames ? '' : 'activityReminder',
        subBuilder: ActivityReminder.create)
    ..aOM<WearSensorData>(15, _omitFieldNames ? '' : 'wearSensorData',
        subBuilder: WearSensorData.create)
    ..aOM<PressureCalibrate_Response>(
        17, _omitFieldNames ? '' : 'pressurCalibrateResponse',
        subBuilder: PressureCalibrate_Response.create)
    ..aOM<PressureCalibrate_EvaluationResult>(
        18, _omitFieldNames ? '' : 'evaluationResult',
        subBuilder: PressureCalibrate_EvaluationResult.create)
    ..aOM<PressureCalibrate_CalibrationResult>(
        19, _omitFieldNames ? '' : 'calibrationResult',
        subBuilder: PressureCalibrate_CalibrationResult.create)
    ..aOM<SportRequest>(20, _omitFieldNames ? '' : 'sportRequest',
        subBuilder: SportRequest.create)
    ..aOM<SportResponse>(21, _omitFieldNames ? '' : 'sportResponse',
        subBuilder: SportResponse.create)
    ..aOM<PhoneSportData>(22, _omitFieldNames ? '' : 'phoneSportData',
        subBuilder: PhoneSportData.create)
    ..aOM<WearSportData>(23, _omitFieldNames ? '' : 'wearSportData',
        subBuilder: WearSportData.create)
    ..aOM<SportStatus>(24, _omitFieldNames ? '' : 'sportStatus',
        subBuilder: SportStatus.create)
    ..aOM<SportPreRequest>(25, _omitFieldNames ? '' : 'sportPreRequest',
        subBuilder: SportPreRequest.create)
    ..aOM<SportPreResponse>(26, _omitFieldNames ? '' : 'sportPreResponse',
        subBuilder: SportPreResponse.create)
    ..aOM<ECGRequest>(27, _omitFieldNames ? '' : 'ecgRequest',
        subBuilder: ECGRequest.create)
    ..aOM<ECGResponse>(28, _omitFieldNames ? '' : 'ecgResponse',
        subBuilder: ECGResponse.create)
    ..aOM<ECGData>(29, _omitFieldNames ? '' : 'ecgData',
        subBuilder: ECGData.create)
    ..aOM<ECGStatus>(30, _omitFieldNames ? '' : 'ecgStatus',
        subBuilder: ECGStatus.create)
    ..aOM<WomenHealth>(34, _omitFieldNames ? '' : 'womenHealth',
        subBuilder: WomenHealth.create)
    ..aOB(35, _omitFieldNames ? '' : 'forcastOn')
    ..aOM<WomenHealth_Reminder_List>(36, _omitFieldNames ? '' : 'reminderList',
        subBuilder: WomenHealth_Reminder_List.create)
    ..aOM<SleepResult>(37, _omitFieldNames ? '' : 'sleepResult',
        subBuilder: SleepResult.create)
    ..aOM<Goal_Status>(38, _omitFieldNames ? '' : 'goalStatus',
        subBuilder: Goal_Status.create)
    ..aOM<BasicData>(39, _omitFieldNames ? '' : 'basicData',
        subBuilder: BasicData.create)
    ..aOM<PhoneSportDataV2D>(40, _omitFieldNames ? '' : 'phoneSportDataV2d',
        subBuilder: PhoneSportDataV2D.create)
    ..aOM<PhoneSportDataV2A>(41, _omitFieldNames ? '' : 'phoneSportDataV2a',
        subBuilder: PhoneSportDataV2A.create)
    ..aOM<WearSportDataV2A>(42, _omitFieldNames ? '' : 'wearSportDataV2a',
        subBuilder: WearSportDataV2A.create)
    ..aOM<VitalityData_List>(43, _omitFieldNames ? '' : 'vitalityDataList',
        subBuilder: VitalityData_List.create)
    ..aOM<BestSportData_List>(44, _omitFieldNames ? '' : 'sportDataList',
        subBuilder: BestSportData_List.create)
    ..aOM<ECGActivation>(45, _omitFieldNames ? '' : 'ecgActivation',
        subBuilder: ECGActivation.create)
    ..aOM<MotionInteract>(46, _omitFieldNames ? '' : 'motionInteract',
        subBuilder: MotionInteract.create)
    ..aOM<NaviRoute_List>(47, _omitFieldNames ? '' : 'naviRouteList',
        subBuilder: NaviRoute_List.create)
    ..aOM<NaviRoute_AddRequest>(
        48, _omitFieldNames ? '' : 'naviRouteAddReqeust',
        subBuilder: NaviRoute_AddRequest.create)
    ..aOM<NaviRoute_AddResponse>(
        49, _omitFieldNames ? '' : 'naviRouteAddResponse',
        subBuilder: NaviRoute_AddResponse.create)
    ..aOM<GYMRequest>(50, _omitFieldNames ? '' : 'gymRequest',
        subBuilder: GYMRequest.create)
    ..aOM<GYMResponse>(51, _omitFieldNames ? '' : 'gymResponse',
        subBuilder: GYMResponse.create)
    ..aOM<GYMAssist>(52, _omitFieldNames ? '' : 'gymAssist',
        subBuilder: GYMAssist.create)
    ..aOM<GYMData>(53, _omitFieldNames ? '' : 'gymData',
        subBuilder: GYMData.create)
    ..aOM<GYMSetting_List>(54, _omitFieldNames ? '' : 'gymSettingList',
        subBuilder: GYMSetting_List.create)
    ..aOM<NaviRoute_AddResult>(55, _omitFieldNames ? '' : 'naviRouteAddResult',
        subBuilder: NaviRoute_AddResult.create)
    ..aOM<NaviRoute_RemoveRequest>(
        56, _omitFieldNames ? '' : 'naviRouteRemoveReqeust',
        subBuilder: NaviRoute_RemoveRequest.create)
    ..aOM<NaviRoute_RemoveResponse>(
        57, _omitFieldNames ? '' : 'naviRouteRemoveResponse',
        subBuilder: NaviRoute_RemoveResponse.create)
    ..aOM<SleepRegularity>(58, _omitFieldNames ? '' : 'sleepRegularity',
        subBuilder: SleepRegularity.create)
    ..aOM<SleepDisorder>(59, _omitFieldNames ? '' : 'sleepDisorder',
        subBuilder: SleepDisorder.create)
    ..aOM<Research_App>(60, _omitFieldNames ? '' : 'researchApp',
        subBuilder: Research_App.create)
    ..aOM<Research_App_List>(61, _omitFieldNames ? '' : 'researchAppList',
        subBuilder: Research_App_List.create)
    ..aOM<Research_Device_List>(62, _omitFieldNames ? '' : 'researchDeviceList',
        subBuilder: Research_Device_List.create)
    ..aOM<Research_CalibrationRequest>(
        63, _omitFieldNames ? '' : 'researchCaliRequest',
        subBuilder: Research_CalibrationRequest.create)
    ..aOM<Research_CalibrationResponse>(
        64, _omitFieldNames ? '' : 'researchCaliResponse',
        subBuilder: Research_CalibrationResponse.create)
    ..aOM<Research_BpSetting>(65, _omitFieldNames ? '' : 'researchBpSetting',
        subBuilder: Research_BpSetting.create)
    ..aOM<PhoneControlData>(66, _omitFieldNames ? '' : 'phoneControlData',
        subBuilder: PhoneControlData.create)
    ..aOM<WearControlData>(67, _omitFieldNames ? '' : 'wearControlData',
        subBuilder: WearControlData.create)
    ..aOM<Training>(68, _omitFieldNames ? '' : 'training',
        subBuilder: Training.create)
    ..aOM<Research_BPGCalibrationRequest>(
        69, _omitFieldNames ? '' : 'bpgCaliRequest',
        subBuilder: Research_BPGCalibrationRequest.create)
    ..aOM<Research_BPGCalibrationStatus>(
        70, _omitFieldNames ? '' : 'bpgCaliStatus',
        subBuilder: Research_BPGCalibrationStatus.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fitness clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fitness copyWith(void Function(Fitness) updates) =>
      super.copyWith((message) => updates(message as Fitness)) as Fitness;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fitness create() => Fitness._();
  @$core.override
  Fitness createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fitness getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fitness>(create);
  static Fitness? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
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
  @$pb.TagNumber(47)
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
  @$pb.TagNumber(65)
  @$pb.TagNumber(66)
  @$pb.TagNumber(67)
  @$pb.TagNumber(68)
  @$pb.TagNumber(69)
  @$pb.TagNumber(70)
  Fitness_Payload whichPayload() => _Fitness_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
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
  @$pb.TagNumber(47)
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
  @$pb.TagNumber(65)
  @$pb.TagNumber(66)
  @$pb.TagNumber(67)
  @$pb.TagNumber(68)
  @$pb.TagNumber(69)
  @$pb.TagNumber(70)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  UserProfile get userProfile => $_getN(0);
  @$pb.TagNumber(1)
  set userProfile(UserProfile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUserProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserProfile() => $_clearField(1);
  @$pb.TagNumber(1)
  UserProfile ensureUserProfile() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get ids => $_getN(1);
  @$pb.TagNumber(2)
  set ids($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get id => $_getN(2);
  @$pb.TagNumber(3)
  set id($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);

  @$pb.TagNumber(4)
  RemainingSportData_List get remainingSportDataList => $_getN(3);
  @$pb.TagNumber(4)
  set remainingSportDataList(RemainingSportData_List value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRemainingSportDataList() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemainingSportDataList() => $_clearField(4);
  @$pb.TagNumber(4)
  RemainingSportData_List ensureRemainingSportDataList() => $_ensure(3);

  @$pb.TagNumber(5)
  SyncParam get syncParam => $_getN(4);
  @$pb.TagNumber(5)
  set syncParam(SyncParam value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSyncParam() => $_has(4);
  @$pb.TagNumber(5)
  void clearSyncParam() => $_clearField(5);
  @$pb.TagNumber(5)
  SyncParam ensureSyncParam() => $_ensure(4);

  @$pb.TagNumber(7)
  BloodOxygenMonitor get bloodOxygenMonitor => $_getN(5);
  @$pb.TagNumber(7)
  set bloodOxygenMonitor(BloodOxygenMonitor value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasBloodOxygenMonitor() => $_has(5);
  @$pb.TagNumber(7)
  void clearBloodOxygenMonitor() => $_clearField(7);
  @$pb.TagNumber(7)
  BloodOxygenMonitor ensureBloodOxygenMonitor() => $_ensure(5);

  @$pb.TagNumber(8)
  HeartRateMonitor get heartRateMonitor => $_getN(6);
  @$pb.TagNumber(8)
  set heartRateMonitor(HeartRateMonitor value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasHeartRateMonitor() => $_has(6);
  @$pb.TagNumber(8)
  void clearHeartRateMonitor() => $_clearField(8);
  @$pb.TagNumber(8)
  HeartRateMonitor ensureHeartRateMonitor() => $_ensure(6);

  @$pb.TagNumber(9)
  SedentaryReminder get sedentaryReminder => $_getN(7);
  @$pb.TagNumber(9)
  set sedentaryReminder(SedentaryReminder value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSedentaryReminder() => $_has(7);
  @$pb.TagNumber(9)
  void clearSedentaryReminder() => $_clearField(9);
  @$pb.TagNumber(9)
  SedentaryReminder ensureSedentaryReminder() => $_ensure(7);

  @$pb.TagNumber(10)
  PressureMonitor get pressureMonitor => $_getN(8);
  @$pb.TagNumber(10)
  set pressureMonitor(PressureMonitor value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasPressureMonitor() => $_has(8);
  @$pb.TagNumber(10)
  void clearPressureMonitor() => $_clearField(10);
  @$pb.TagNumber(10)
  PressureMonitor ensurePressureMonitor() => $_ensure(8);

  @$pb.TagNumber(11)
  MeasureReminder get measureReminder => $_getN(9);
  @$pb.TagNumber(11)
  set measureReminder(MeasureReminder value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasMeasureReminder() => $_has(9);
  @$pb.TagNumber(11)
  void clearMeasureReminder() => $_clearField(11);
  @$pb.TagNumber(11)
  MeasureReminder ensureMeasureReminder() => $_ensure(9);

  @$pb.TagNumber(12)
  WomenHealth_Section_List get sectionList => $_getN(10);
  @$pb.TagNumber(12)
  set sectionList(WomenHealth_Section_List value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSectionList() => $_has(10);
  @$pb.TagNumber(12)
  void clearSectionList() => $_clearField(12);
  @$pb.TagNumber(12)
  WomenHealth_Section_List ensureSectionList() => $_ensure(10);

  @$pb.TagNumber(13)
  VitalityReminder get vitalityReminder => $_getN(11);
  @$pb.TagNumber(13)
  set vitalityReminder(VitalityReminder value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasVitalityReminder() => $_has(11);
  @$pb.TagNumber(13)
  void clearVitalityReminder() => $_clearField(13);
  @$pb.TagNumber(13)
  VitalityReminder ensureVitalityReminder() => $_ensure(11);

  @$pb.TagNumber(14)
  ActivityReminder get activityReminder => $_getN(12);
  @$pb.TagNumber(14)
  set activityReminder(ActivityReminder value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasActivityReminder() => $_has(12);
  @$pb.TagNumber(14)
  void clearActivityReminder() => $_clearField(14);
  @$pb.TagNumber(14)
  ActivityReminder ensureActivityReminder() => $_ensure(12);

  @$pb.TagNumber(15)
  WearSensorData get wearSensorData => $_getN(13);
  @$pb.TagNumber(15)
  set wearSensorData(WearSensorData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasWearSensorData() => $_has(13);
  @$pb.TagNumber(15)
  void clearWearSensorData() => $_clearField(15);
  @$pb.TagNumber(15)
  WearSensorData ensureWearSensorData() => $_ensure(13);

  @$pb.TagNumber(17)
  PressureCalibrate_Response get pressurCalibrateResponse => $_getN(14);
  @$pb.TagNumber(17)
  set pressurCalibrateResponse(PressureCalibrate_Response value) =>
      $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasPressurCalibrateResponse() => $_has(14);
  @$pb.TagNumber(17)
  void clearPressurCalibrateResponse() => $_clearField(17);
  @$pb.TagNumber(17)
  PressureCalibrate_Response ensurePressurCalibrateResponse() => $_ensure(14);

  @$pb.TagNumber(18)
  PressureCalibrate_EvaluationResult get evaluationResult => $_getN(15);
  @$pb.TagNumber(18)
  set evaluationResult(PressureCalibrate_EvaluationResult value) =>
      $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasEvaluationResult() => $_has(15);
  @$pb.TagNumber(18)
  void clearEvaluationResult() => $_clearField(18);
  @$pb.TagNumber(18)
  PressureCalibrate_EvaluationResult ensureEvaluationResult() => $_ensure(15);

  @$pb.TagNumber(19)
  PressureCalibrate_CalibrationResult get calibrationResult => $_getN(16);
  @$pb.TagNumber(19)
  set calibrationResult(PressureCalibrate_CalibrationResult value) =>
      $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasCalibrationResult() => $_has(16);
  @$pb.TagNumber(19)
  void clearCalibrationResult() => $_clearField(19);
  @$pb.TagNumber(19)
  PressureCalibrate_CalibrationResult ensureCalibrationResult() => $_ensure(16);

  @$pb.TagNumber(20)
  SportRequest get sportRequest => $_getN(17);
  @$pb.TagNumber(20)
  set sportRequest(SportRequest value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasSportRequest() => $_has(17);
  @$pb.TagNumber(20)
  void clearSportRequest() => $_clearField(20);
  @$pb.TagNumber(20)
  SportRequest ensureSportRequest() => $_ensure(17);

  @$pb.TagNumber(21)
  SportResponse get sportResponse => $_getN(18);
  @$pb.TagNumber(21)
  set sportResponse(SportResponse value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasSportResponse() => $_has(18);
  @$pb.TagNumber(21)
  void clearSportResponse() => $_clearField(21);
  @$pb.TagNumber(21)
  SportResponse ensureSportResponse() => $_ensure(18);

  @$pb.TagNumber(22)
  PhoneSportData get phoneSportData => $_getN(19);
  @$pb.TagNumber(22)
  set phoneSportData(PhoneSportData value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasPhoneSportData() => $_has(19);
  @$pb.TagNumber(22)
  void clearPhoneSportData() => $_clearField(22);
  @$pb.TagNumber(22)
  PhoneSportData ensurePhoneSportData() => $_ensure(19);

  @$pb.TagNumber(23)
  WearSportData get wearSportData => $_getN(20);
  @$pb.TagNumber(23)
  set wearSportData(WearSportData value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasWearSportData() => $_has(20);
  @$pb.TagNumber(23)
  void clearWearSportData() => $_clearField(23);
  @$pb.TagNumber(23)
  WearSportData ensureWearSportData() => $_ensure(20);

  @$pb.TagNumber(24)
  SportStatus get sportStatus => $_getN(21);
  @$pb.TagNumber(24)
  set sportStatus(SportStatus value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasSportStatus() => $_has(21);
  @$pb.TagNumber(24)
  void clearSportStatus() => $_clearField(24);
  @$pb.TagNumber(24)
  SportStatus ensureSportStatus() => $_ensure(21);

  @$pb.TagNumber(25)
  SportPreRequest get sportPreRequest => $_getN(22);
  @$pb.TagNumber(25)
  set sportPreRequest(SportPreRequest value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasSportPreRequest() => $_has(22);
  @$pb.TagNumber(25)
  void clearSportPreRequest() => $_clearField(25);
  @$pb.TagNumber(25)
  SportPreRequest ensureSportPreRequest() => $_ensure(22);

  @$pb.TagNumber(26)
  SportPreResponse get sportPreResponse => $_getN(23);
  @$pb.TagNumber(26)
  set sportPreResponse(SportPreResponse value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasSportPreResponse() => $_has(23);
  @$pb.TagNumber(26)
  void clearSportPreResponse() => $_clearField(26);
  @$pb.TagNumber(26)
  SportPreResponse ensureSportPreResponse() => $_ensure(23);

  @$pb.TagNumber(27)
  ECGRequest get ecgRequest => $_getN(24);
  @$pb.TagNumber(27)
  set ecgRequest(ECGRequest value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasEcgRequest() => $_has(24);
  @$pb.TagNumber(27)
  void clearEcgRequest() => $_clearField(27);
  @$pb.TagNumber(27)
  ECGRequest ensureEcgRequest() => $_ensure(24);

  @$pb.TagNumber(28)
  ECGResponse get ecgResponse => $_getN(25);
  @$pb.TagNumber(28)
  set ecgResponse(ECGResponse value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasEcgResponse() => $_has(25);
  @$pb.TagNumber(28)
  void clearEcgResponse() => $_clearField(28);
  @$pb.TagNumber(28)
  ECGResponse ensureEcgResponse() => $_ensure(25);

  @$pb.TagNumber(29)
  ECGData get ecgData => $_getN(26);
  @$pb.TagNumber(29)
  set ecgData(ECGData value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasEcgData() => $_has(26);
  @$pb.TagNumber(29)
  void clearEcgData() => $_clearField(29);
  @$pb.TagNumber(29)
  ECGData ensureEcgData() => $_ensure(26);

  @$pb.TagNumber(30)
  ECGStatus get ecgStatus => $_getN(27);
  @$pb.TagNumber(30)
  set ecgStatus(ECGStatus value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasEcgStatus() => $_has(27);
  @$pb.TagNumber(30)
  void clearEcgStatus() => $_clearField(30);
  @$pb.TagNumber(30)
  ECGStatus ensureEcgStatus() => $_ensure(27);

  @$pb.TagNumber(34)
  WomenHealth get womenHealth => $_getN(28);
  @$pb.TagNumber(34)
  set womenHealth(WomenHealth value) => $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasWomenHealth() => $_has(28);
  @$pb.TagNumber(34)
  void clearWomenHealth() => $_clearField(34);
  @$pb.TagNumber(34)
  WomenHealth ensureWomenHealth() => $_ensure(28);

  @$pb.TagNumber(35)
  $core.bool get forcastOn => $_getBF(29);
  @$pb.TagNumber(35)
  set forcastOn($core.bool value) => $_setBool(29, value);
  @$pb.TagNumber(35)
  $core.bool hasForcastOn() => $_has(29);
  @$pb.TagNumber(35)
  void clearForcastOn() => $_clearField(35);

  @$pb.TagNumber(36)
  WomenHealth_Reminder_List get reminderList => $_getN(30);
  @$pb.TagNumber(36)
  set reminderList(WomenHealth_Reminder_List value) => $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasReminderList() => $_has(30);
  @$pb.TagNumber(36)
  void clearReminderList() => $_clearField(36);
  @$pb.TagNumber(36)
  WomenHealth_Reminder_List ensureReminderList() => $_ensure(30);

  @$pb.TagNumber(37)
  SleepResult get sleepResult => $_getN(31);
  @$pb.TagNumber(37)
  set sleepResult(SleepResult value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasSleepResult() => $_has(31);
  @$pb.TagNumber(37)
  void clearSleepResult() => $_clearField(37);
  @$pb.TagNumber(37)
  SleepResult ensureSleepResult() => $_ensure(31);

  @$pb.TagNumber(38)
  Goal_Status get goalStatus => $_getN(32);
  @$pb.TagNumber(38)
  set goalStatus(Goal_Status value) => $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasGoalStatus() => $_has(32);
  @$pb.TagNumber(38)
  void clearGoalStatus() => $_clearField(38);
  @$pb.TagNumber(38)
  Goal_Status ensureGoalStatus() => $_ensure(32);

  @$pb.TagNumber(39)
  BasicData get basicData => $_getN(33);
  @$pb.TagNumber(39)
  set basicData(BasicData value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasBasicData() => $_has(33);
  @$pb.TagNumber(39)
  void clearBasicData() => $_clearField(39);
  @$pb.TagNumber(39)
  BasicData ensureBasicData() => $_ensure(33);

  @$pb.TagNumber(40)
  PhoneSportDataV2D get phoneSportDataV2d => $_getN(34);
  @$pb.TagNumber(40)
  set phoneSportDataV2d(PhoneSportDataV2D value) => $_setField(40, value);
  @$pb.TagNumber(40)
  $core.bool hasPhoneSportDataV2d() => $_has(34);
  @$pb.TagNumber(40)
  void clearPhoneSportDataV2d() => $_clearField(40);
  @$pb.TagNumber(40)
  PhoneSportDataV2D ensurePhoneSportDataV2d() => $_ensure(34);

  @$pb.TagNumber(41)
  PhoneSportDataV2A get phoneSportDataV2a => $_getN(35);
  @$pb.TagNumber(41)
  set phoneSportDataV2a(PhoneSportDataV2A value) => $_setField(41, value);
  @$pb.TagNumber(41)
  $core.bool hasPhoneSportDataV2a() => $_has(35);
  @$pb.TagNumber(41)
  void clearPhoneSportDataV2a() => $_clearField(41);
  @$pb.TagNumber(41)
  PhoneSportDataV2A ensurePhoneSportDataV2a() => $_ensure(35);

  @$pb.TagNumber(42)
  WearSportDataV2A get wearSportDataV2a => $_getN(36);
  @$pb.TagNumber(42)
  set wearSportDataV2a(WearSportDataV2A value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasWearSportDataV2a() => $_has(36);
  @$pb.TagNumber(42)
  void clearWearSportDataV2a() => $_clearField(42);
  @$pb.TagNumber(42)
  WearSportDataV2A ensureWearSportDataV2a() => $_ensure(36);

  @$pb.TagNumber(43)
  VitalityData_List get vitalityDataList => $_getN(37);
  @$pb.TagNumber(43)
  set vitalityDataList(VitalityData_List value) => $_setField(43, value);
  @$pb.TagNumber(43)
  $core.bool hasVitalityDataList() => $_has(37);
  @$pb.TagNumber(43)
  void clearVitalityDataList() => $_clearField(43);
  @$pb.TagNumber(43)
  VitalityData_List ensureVitalityDataList() => $_ensure(37);

  @$pb.TagNumber(44)
  BestSportData_List get sportDataList => $_getN(38);
  @$pb.TagNumber(44)
  set sportDataList(BestSportData_List value) => $_setField(44, value);
  @$pb.TagNumber(44)
  $core.bool hasSportDataList() => $_has(38);
  @$pb.TagNumber(44)
  void clearSportDataList() => $_clearField(44);
  @$pb.TagNumber(44)
  BestSportData_List ensureSportDataList() => $_ensure(38);

  @$pb.TagNumber(45)
  ECGActivation get ecgActivation => $_getN(39);
  @$pb.TagNumber(45)
  set ecgActivation(ECGActivation value) => $_setField(45, value);
  @$pb.TagNumber(45)
  $core.bool hasEcgActivation() => $_has(39);
  @$pb.TagNumber(45)
  void clearEcgActivation() => $_clearField(45);
  @$pb.TagNumber(45)
  ECGActivation ensureEcgActivation() => $_ensure(39);

  @$pb.TagNumber(46)
  MotionInteract get motionInteract => $_getN(40);
  @$pb.TagNumber(46)
  set motionInteract(MotionInteract value) => $_setField(46, value);
  @$pb.TagNumber(46)
  $core.bool hasMotionInteract() => $_has(40);
  @$pb.TagNumber(46)
  void clearMotionInteract() => $_clearField(46);
  @$pb.TagNumber(46)
  MotionInteract ensureMotionInteract() => $_ensure(40);

  @$pb.TagNumber(47)
  NaviRoute_List get naviRouteList => $_getN(41);
  @$pb.TagNumber(47)
  set naviRouteList(NaviRoute_List value) => $_setField(47, value);
  @$pb.TagNumber(47)
  $core.bool hasNaviRouteList() => $_has(41);
  @$pb.TagNumber(47)
  void clearNaviRouteList() => $_clearField(47);
  @$pb.TagNumber(47)
  NaviRoute_List ensureNaviRouteList() => $_ensure(41);

  @$pb.TagNumber(48)
  NaviRoute_AddRequest get naviRouteAddReqeust => $_getN(42);
  @$pb.TagNumber(48)
  set naviRouteAddReqeust(NaviRoute_AddRequest value) => $_setField(48, value);
  @$pb.TagNumber(48)
  $core.bool hasNaviRouteAddReqeust() => $_has(42);
  @$pb.TagNumber(48)
  void clearNaviRouteAddReqeust() => $_clearField(48);
  @$pb.TagNumber(48)
  NaviRoute_AddRequest ensureNaviRouteAddReqeust() => $_ensure(42);

  @$pb.TagNumber(49)
  NaviRoute_AddResponse get naviRouteAddResponse => $_getN(43);
  @$pb.TagNumber(49)
  set naviRouteAddResponse(NaviRoute_AddResponse value) =>
      $_setField(49, value);
  @$pb.TagNumber(49)
  $core.bool hasNaviRouteAddResponse() => $_has(43);
  @$pb.TagNumber(49)
  void clearNaviRouteAddResponse() => $_clearField(49);
  @$pb.TagNumber(49)
  NaviRoute_AddResponse ensureNaviRouteAddResponse() => $_ensure(43);

  @$pb.TagNumber(50)
  GYMRequest get gymRequest => $_getN(44);
  @$pb.TagNumber(50)
  set gymRequest(GYMRequest value) => $_setField(50, value);
  @$pb.TagNumber(50)
  $core.bool hasGymRequest() => $_has(44);
  @$pb.TagNumber(50)
  void clearGymRequest() => $_clearField(50);
  @$pb.TagNumber(50)
  GYMRequest ensureGymRequest() => $_ensure(44);

  @$pb.TagNumber(51)
  GYMResponse get gymResponse => $_getN(45);
  @$pb.TagNumber(51)
  set gymResponse(GYMResponse value) => $_setField(51, value);
  @$pb.TagNumber(51)
  $core.bool hasGymResponse() => $_has(45);
  @$pb.TagNumber(51)
  void clearGymResponse() => $_clearField(51);
  @$pb.TagNumber(51)
  GYMResponse ensureGymResponse() => $_ensure(45);

  @$pb.TagNumber(52)
  GYMAssist get gymAssist => $_getN(46);
  @$pb.TagNumber(52)
  set gymAssist(GYMAssist value) => $_setField(52, value);
  @$pb.TagNumber(52)
  $core.bool hasGymAssist() => $_has(46);
  @$pb.TagNumber(52)
  void clearGymAssist() => $_clearField(52);
  @$pb.TagNumber(52)
  GYMAssist ensureGymAssist() => $_ensure(46);

  @$pb.TagNumber(53)
  GYMData get gymData => $_getN(47);
  @$pb.TagNumber(53)
  set gymData(GYMData value) => $_setField(53, value);
  @$pb.TagNumber(53)
  $core.bool hasGymData() => $_has(47);
  @$pb.TagNumber(53)
  void clearGymData() => $_clearField(53);
  @$pb.TagNumber(53)
  GYMData ensureGymData() => $_ensure(47);

  @$pb.TagNumber(54)
  GYMSetting_List get gymSettingList => $_getN(48);
  @$pb.TagNumber(54)
  set gymSettingList(GYMSetting_List value) => $_setField(54, value);
  @$pb.TagNumber(54)
  $core.bool hasGymSettingList() => $_has(48);
  @$pb.TagNumber(54)
  void clearGymSettingList() => $_clearField(54);
  @$pb.TagNumber(54)
  GYMSetting_List ensureGymSettingList() => $_ensure(48);

  @$pb.TagNumber(55)
  NaviRoute_AddResult get naviRouteAddResult => $_getN(49);
  @$pb.TagNumber(55)
  set naviRouteAddResult(NaviRoute_AddResult value) => $_setField(55, value);
  @$pb.TagNumber(55)
  $core.bool hasNaviRouteAddResult() => $_has(49);
  @$pb.TagNumber(55)
  void clearNaviRouteAddResult() => $_clearField(55);
  @$pb.TagNumber(55)
  NaviRoute_AddResult ensureNaviRouteAddResult() => $_ensure(49);

  @$pb.TagNumber(56)
  NaviRoute_RemoveRequest get naviRouteRemoveReqeust => $_getN(50);
  @$pb.TagNumber(56)
  set naviRouteRemoveReqeust(NaviRoute_RemoveRequest value) =>
      $_setField(56, value);
  @$pb.TagNumber(56)
  $core.bool hasNaviRouteRemoveReqeust() => $_has(50);
  @$pb.TagNumber(56)
  void clearNaviRouteRemoveReqeust() => $_clearField(56);
  @$pb.TagNumber(56)
  NaviRoute_RemoveRequest ensureNaviRouteRemoveReqeust() => $_ensure(50);

  @$pb.TagNumber(57)
  NaviRoute_RemoveResponse get naviRouteRemoveResponse => $_getN(51);
  @$pb.TagNumber(57)
  set naviRouteRemoveResponse(NaviRoute_RemoveResponse value) =>
      $_setField(57, value);
  @$pb.TagNumber(57)
  $core.bool hasNaviRouteRemoveResponse() => $_has(51);
  @$pb.TagNumber(57)
  void clearNaviRouteRemoveResponse() => $_clearField(57);
  @$pb.TagNumber(57)
  NaviRoute_RemoveResponse ensureNaviRouteRemoveResponse() => $_ensure(51);

  @$pb.TagNumber(58)
  SleepRegularity get sleepRegularity => $_getN(52);
  @$pb.TagNumber(58)
  set sleepRegularity(SleepRegularity value) => $_setField(58, value);
  @$pb.TagNumber(58)
  $core.bool hasSleepRegularity() => $_has(52);
  @$pb.TagNumber(58)
  void clearSleepRegularity() => $_clearField(58);
  @$pb.TagNumber(58)
  SleepRegularity ensureSleepRegularity() => $_ensure(52);

  @$pb.TagNumber(59)
  SleepDisorder get sleepDisorder => $_getN(53);
  @$pb.TagNumber(59)
  set sleepDisorder(SleepDisorder value) => $_setField(59, value);
  @$pb.TagNumber(59)
  $core.bool hasSleepDisorder() => $_has(53);
  @$pb.TagNumber(59)
  void clearSleepDisorder() => $_clearField(59);
  @$pb.TagNumber(59)
  SleepDisorder ensureSleepDisorder() => $_ensure(53);

  @$pb.TagNumber(60)
  Research_App get researchApp => $_getN(54);
  @$pb.TagNumber(60)
  set researchApp(Research_App value) => $_setField(60, value);
  @$pb.TagNumber(60)
  $core.bool hasResearchApp() => $_has(54);
  @$pb.TagNumber(60)
  void clearResearchApp() => $_clearField(60);
  @$pb.TagNumber(60)
  Research_App ensureResearchApp() => $_ensure(54);

  @$pb.TagNumber(61)
  Research_App_List get researchAppList => $_getN(55);
  @$pb.TagNumber(61)
  set researchAppList(Research_App_List value) => $_setField(61, value);
  @$pb.TagNumber(61)
  $core.bool hasResearchAppList() => $_has(55);
  @$pb.TagNumber(61)
  void clearResearchAppList() => $_clearField(61);
  @$pb.TagNumber(61)
  Research_App_List ensureResearchAppList() => $_ensure(55);

  @$pb.TagNumber(62)
  Research_Device_List get researchDeviceList => $_getN(56);
  @$pb.TagNumber(62)
  set researchDeviceList(Research_Device_List value) => $_setField(62, value);
  @$pb.TagNumber(62)
  $core.bool hasResearchDeviceList() => $_has(56);
  @$pb.TagNumber(62)
  void clearResearchDeviceList() => $_clearField(62);
  @$pb.TagNumber(62)
  Research_Device_List ensureResearchDeviceList() => $_ensure(56);

  @$pb.TagNumber(63)
  Research_CalibrationRequest get researchCaliRequest => $_getN(57);
  @$pb.TagNumber(63)
  set researchCaliRequest(Research_CalibrationRequest value) =>
      $_setField(63, value);
  @$pb.TagNumber(63)
  $core.bool hasResearchCaliRequest() => $_has(57);
  @$pb.TagNumber(63)
  void clearResearchCaliRequest() => $_clearField(63);
  @$pb.TagNumber(63)
  Research_CalibrationRequest ensureResearchCaliRequest() => $_ensure(57);

  @$pb.TagNumber(64)
  Research_CalibrationResponse get researchCaliResponse => $_getN(58);
  @$pb.TagNumber(64)
  set researchCaliResponse(Research_CalibrationResponse value) =>
      $_setField(64, value);
  @$pb.TagNumber(64)
  $core.bool hasResearchCaliResponse() => $_has(58);
  @$pb.TagNumber(64)
  void clearResearchCaliResponse() => $_clearField(64);
  @$pb.TagNumber(64)
  Research_CalibrationResponse ensureResearchCaliResponse() => $_ensure(58);

  @$pb.TagNumber(65)
  Research_BpSetting get researchBpSetting => $_getN(59);
  @$pb.TagNumber(65)
  set researchBpSetting(Research_BpSetting value) => $_setField(65, value);
  @$pb.TagNumber(65)
  $core.bool hasResearchBpSetting() => $_has(59);
  @$pb.TagNumber(65)
  void clearResearchBpSetting() => $_clearField(65);
  @$pb.TagNumber(65)
  Research_BpSetting ensureResearchBpSetting() => $_ensure(59);

  @$pb.TagNumber(66)
  PhoneControlData get phoneControlData => $_getN(60);
  @$pb.TagNumber(66)
  set phoneControlData(PhoneControlData value) => $_setField(66, value);
  @$pb.TagNumber(66)
  $core.bool hasPhoneControlData() => $_has(60);
  @$pb.TagNumber(66)
  void clearPhoneControlData() => $_clearField(66);
  @$pb.TagNumber(66)
  PhoneControlData ensurePhoneControlData() => $_ensure(60);

  @$pb.TagNumber(67)
  WearControlData get wearControlData => $_getN(61);
  @$pb.TagNumber(67)
  set wearControlData(WearControlData value) => $_setField(67, value);
  @$pb.TagNumber(67)
  $core.bool hasWearControlData() => $_has(61);
  @$pb.TagNumber(67)
  void clearWearControlData() => $_clearField(67);
  @$pb.TagNumber(67)
  WearControlData ensureWearControlData() => $_ensure(61);

  @$pb.TagNumber(68)
  Training get training => $_getN(62);
  @$pb.TagNumber(68)
  set training(Training value) => $_setField(68, value);
  @$pb.TagNumber(68)
  $core.bool hasTraining() => $_has(62);
  @$pb.TagNumber(68)
  void clearTraining() => $_clearField(68);
  @$pb.TagNumber(68)
  Training ensureTraining() => $_ensure(62);

  @$pb.TagNumber(69)
  Research_BPGCalibrationRequest get bpgCaliRequest => $_getN(63);
  @$pb.TagNumber(69)
  set bpgCaliRequest(Research_BPGCalibrationRequest value) =>
      $_setField(69, value);
  @$pb.TagNumber(69)
  $core.bool hasBpgCaliRequest() => $_has(63);
  @$pb.TagNumber(69)
  void clearBpgCaliRequest() => $_clearField(69);
  @$pb.TagNumber(69)
  Research_BPGCalibrationRequest ensureBpgCaliRequest() => $_ensure(63);

  @$pb.TagNumber(70)
  Research_BPGCalibrationStatus get bpgCaliStatus => $_getN(64);
  @$pb.TagNumber(70)
  set bpgCaliStatus(Research_BPGCalibrationStatus value) =>
      $_setField(70, value);
  @$pb.TagNumber(70)
  $core.bool hasBpgCaliStatus() => $_has(64);
  @$pb.TagNumber(70)
  void clearBpgCaliStatus() => $_clearField(70);
  @$pb.TagNumber(70)
  Research_BPGCalibrationStatus ensureBpgCaliStatus() => $_ensure(64);
}

class UserProfile_Contact extends $pb.GeneratedMessage {
  factory UserProfile_Contact({
    $core.String? name,
    $core.String? number,
    $core.int? relation,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (number != null) result.number = number;
    if (relation != null) result.relation = relation;
    return result;
  }

  UserProfile_Contact._();

  factory UserProfile_Contact.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserProfile_Contact.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserProfile.Contact',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aQS(2, _omitFieldNames ? '' : 'number')
    ..aI(3, _omitFieldNames ? '' : 'relation', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfile_Contact clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfile_Contact copyWith(void Function(UserProfile_Contact) updates) =>
      super.copyWith((message) => updates(message as UserProfile_Contact))
          as UserProfile_Contact;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserProfile_Contact create() => UserProfile_Contact._();
  @$core.override
  UserProfile_Contact createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserProfile_Contact getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserProfile_Contact>(create);
  static UserProfile_Contact? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get number => $_getSZ(1);
  @$pb.TagNumber(2)
  set number($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get relation => $_getIZ(2);
  @$pb.TagNumber(3)
  set relation($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRelation() => $_has(2);
  @$pb.TagNumber(3)
  void clearRelation() => $_clearField(3);
}

class UserProfile extends $pb.GeneratedMessage {
  factory UserProfile({
    $core.int? height,
    $core.double? weight,
    $core.int? birth,
    $0.Sex? sex,
    $core.int? maxHr,
    $core.int? goalCalorie,
    $core.int? goalStep,
    $core.double? maximalMet,
    $core.int? goalValidStand,
    $core.int? goalSleep,
    $core.int? goalIntensity,
    $core.int? defaultHeight,
    $core.int? defaultWeight,
    $core.int? defaultBirth,
    $core.int? defaultSex,
    $core.String? name,
    $core.int? bloodType,
    $core.int? rhBloodType,
    $core.int? organDonationVolunteer,
    UserProfile_Contact? contact,
    $core.String? allergyMedicine,
    $core.String? chronicDisease,
    $core.String? medicalProgram,
  }) {
    final result = create();
    if (height != null) result.height = height;
    if (weight != null) result.weight = weight;
    if (birth != null) result.birth = birth;
    if (sex != null) result.sex = sex;
    if (maxHr != null) result.maxHr = maxHr;
    if (goalCalorie != null) result.goalCalorie = goalCalorie;
    if (goalStep != null) result.goalStep = goalStep;
    if (maximalMet != null) result.maximalMet = maximalMet;
    if (goalValidStand != null) result.goalValidStand = goalValidStand;
    if (goalSleep != null) result.goalSleep = goalSleep;
    if (goalIntensity != null) result.goalIntensity = goalIntensity;
    if (defaultHeight != null) result.defaultHeight = defaultHeight;
    if (defaultWeight != null) result.defaultWeight = defaultWeight;
    if (defaultBirth != null) result.defaultBirth = defaultBirth;
    if (defaultSex != null) result.defaultSex = defaultSex;
    if (name != null) result.name = name;
    if (bloodType != null) result.bloodType = bloodType;
    if (rhBloodType != null) result.rhBloodType = rhBloodType;
    if (organDonationVolunteer != null)
      result.organDonationVolunteer = organDonationVolunteer;
    if (contact != null) result.contact = contact;
    if (allergyMedicine != null) result.allergyMedicine = allergyMedicine;
    if (chronicDisease != null) result.chronicDisease = chronicDisease;
    if (medicalProgram != null) result.medicalProgram = medicalProgram;
    return result;
  }

  UserProfile._();

  factory UserProfile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserProfile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserProfile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'height', fieldType: $pb.PbFieldType.OU3)
    ..aD(2, _omitFieldNames ? '' : 'weight', fieldType: $pb.PbFieldType.OF)
    ..aI(3, _omitFieldNames ? '' : 'birth', fieldType: $pb.PbFieldType.OU3)
    ..aE<$0.Sex>(4, _omitFieldNames ? '' : 'sex', enumValues: $0.Sex.values)
    ..aI(5, _omitFieldNames ? '' : 'maxHr', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'goalCalorie',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'goalStep', fieldType: $pb.PbFieldType.OU3)
    ..aD(8, _omitFieldNames ? '' : 'maximalMet', fieldType: $pb.PbFieldType.OF)
    ..aI(9, _omitFieldNames ? '' : 'goalValidStand',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'goalSleep', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'goalIntensity',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(12, _omitFieldNames ? '' : 'defaultHeight',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(13, _omitFieldNames ? '' : 'defaultWeight',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'defaultBirth',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'defaultSex',
        fieldType: $pb.PbFieldType.OU3)
    ..aQS(16, _omitFieldNames ? '' : 'name')
    ..aI(17, _omitFieldNames ? '' : 'bloodType', fieldType: $pb.PbFieldType.OU3)
    ..aI(18, _omitFieldNames ? '' : 'rhBloodType',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(19, _omitFieldNames ? '' : 'organDonationVolunteer',
        fieldType: $pb.PbFieldType.OU3)
    ..aOM<UserProfile_Contact>(20, _omitFieldNames ? '' : 'contact',
        subBuilder: UserProfile_Contact.create)
    ..aQS(21, _omitFieldNames ? '' : 'allergyMedicine')
    ..aQS(22, _omitFieldNames ? '' : 'chronicDisease')
    ..aQS(23, _omitFieldNames ? '' : 'medicalProgram');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfile copyWith(void Function(UserProfile) updates) =>
      super.copyWith((message) => updates(message as UserProfile))
          as UserProfile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserProfile create() => UserProfile._();
  @$core.override
  UserProfile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserProfile>(create);
  static UserProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get height => $_getIZ(0);
  @$pb.TagNumber(1)
  set height($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get weight => $_getN(1);
  @$pb.TagNumber(2)
  set weight($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get birth => $_getIZ(2);
  @$pb.TagNumber(3)
  set birth($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBirth() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirth() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.Sex get sex => $_getN(3);
  @$pb.TagNumber(4)
  set sex($0.Sex value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSex() => $_has(3);
  @$pb.TagNumber(4)
  void clearSex() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get maxHr => $_getIZ(4);
  @$pb.TagNumber(5)
  set maxHr($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxHr() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxHr() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get goalCalorie => $_getIZ(5);
  @$pb.TagNumber(6)
  set goalCalorie($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGoalCalorie() => $_has(5);
  @$pb.TagNumber(6)
  void clearGoalCalorie() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get goalStep => $_getIZ(6);
  @$pb.TagNumber(7)
  set goalStep($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasGoalStep() => $_has(6);
  @$pb.TagNumber(7)
  void clearGoalStep() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get maximalMet => $_getN(7);
  @$pb.TagNumber(8)
  set maximalMet($core.double value) => $_setFloat(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMaximalMet() => $_has(7);
  @$pb.TagNumber(8)
  void clearMaximalMet() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get goalValidStand => $_getIZ(8);
  @$pb.TagNumber(9)
  set goalValidStand($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasGoalValidStand() => $_has(8);
  @$pb.TagNumber(9)
  void clearGoalValidStand() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get goalSleep => $_getIZ(9);
  @$pb.TagNumber(10)
  set goalSleep($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasGoalSleep() => $_has(9);
  @$pb.TagNumber(10)
  void clearGoalSleep() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get goalIntensity => $_getIZ(10);
  @$pb.TagNumber(11)
  set goalIntensity($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasGoalIntensity() => $_has(10);
  @$pb.TagNumber(11)
  void clearGoalIntensity() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get defaultHeight => $_getIZ(11);
  @$pb.TagNumber(12)
  set defaultHeight($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDefaultHeight() => $_has(11);
  @$pb.TagNumber(12)
  void clearDefaultHeight() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get defaultWeight => $_getIZ(12);
  @$pb.TagNumber(13)
  set defaultWeight($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDefaultWeight() => $_has(12);
  @$pb.TagNumber(13)
  void clearDefaultWeight() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get defaultBirth => $_getIZ(13);
  @$pb.TagNumber(14)
  set defaultBirth($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasDefaultBirth() => $_has(13);
  @$pb.TagNumber(14)
  void clearDefaultBirth() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get defaultSex => $_getIZ(14);
  @$pb.TagNumber(15)
  set defaultSex($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasDefaultSex() => $_has(14);
  @$pb.TagNumber(15)
  void clearDefaultSex() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get name => $_getSZ(15);
  @$pb.TagNumber(16)
  set name($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasName() => $_has(15);
  @$pb.TagNumber(16)
  void clearName() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get bloodType => $_getIZ(16);
  @$pb.TagNumber(17)
  set bloodType($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasBloodType() => $_has(16);
  @$pb.TagNumber(17)
  void clearBloodType() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get rhBloodType => $_getIZ(17);
  @$pb.TagNumber(18)
  set rhBloodType($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasRhBloodType() => $_has(17);
  @$pb.TagNumber(18)
  void clearRhBloodType() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get organDonationVolunteer => $_getIZ(18);
  @$pb.TagNumber(19)
  set organDonationVolunteer($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasOrganDonationVolunteer() => $_has(18);
  @$pb.TagNumber(19)
  void clearOrganDonationVolunteer() => $_clearField(19);

  @$pb.TagNumber(20)
  UserProfile_Contact get contact => $_getN(19);
  @$pb.TagNumber(20)
  set contact(UserProfile_Contact value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasContact() => $_has(19);
  @$pb.TagNumber(20)
  void clearContact() => $_clearField(20);
  @$pb.TagNumber(20)
  UserProfile_Contact ensureContact() => $_ensure(19);

  @$pb.TagNumber(21)
  $core.String get allergyMedicine => $_getSZ(20);
  @$pb.TagNumber(21)
  set allergyMedicine($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasAllergyMedicine() => $_has(20);
  @$pb.TagNumber(21)
  void clearAllergyMedicine() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get chronicDisease => $_getSZ(21);
  @$pb.TagNumber(22)
  set chronicDisease($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasChronicDisease() => $_has(21);
  @$pb.TagNumber(22)
  void clearChronicDisease() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get medicalProgram => $_getSZ(22);
  @$pb.TagNumber(23)
  set medicalProgram($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasMedicalProgram() => $_has(22);
  @$pb.TagNumber(23)
  void clearMedicalProgram() => $_clearField(23);
}

class SyncParam extends $pb.GeneratedMessage {
  factory SyncParam({
    $core.int? reason,
  }) {
    final result = create();
    if (reason != null) result.reason = reason;
    return result;
  }

  SyncParam._();

  factory SyncParam.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SyncParam.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SyncParam',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'reason', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncParam clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncParam copyWith(void Function(SyncParam) updates) =>
      super.copyWith((message) => updates(message as SyncParam)) as SyncParam;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncParam create() => SyncParam._();
  @$core.override
  SyncParam createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SyncParam getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncParam>(create);
  static SyncParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reason => $_getIZ(0);
  @$pb.TagNumber(1)
  set reason($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => $_clearField(1);
}

class RemainingSportData_List extends $pb.GeneratedMessage {
  factory RemainingSportData_List({
    $core.Iterable<RemainingSportData>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  RemainingSportData_List._();

  factory RemainingSportData_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemainingSportData_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemainingSportData.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<RemainingSportData>(1, _omitFieldNames ? '' : 'list',
        subBuilder: RemainingSportData.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemainingSportData_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemainingSportData_List copyWith(
          void Function(RemainingSportData_List) updates) =>
      super.copyWith((message) => updates(message as RemainingSportData_List))
          as RemainingSportData_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemainingSportData_List create() => RemainingSportData_List._();
  @$core.override
  RemainingSportData_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RemainingSportData_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemainingSportData_List>(create);
  static RemainingSportData_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RemainingSportData> get list => $_getList(0);
}

class RemainingSportData extends $pb.GeneratedMessage {
  factory RemainingSportData({
    $core.List<$core.int>? ids,
    $core.int? sportCourseType,
    $fixnum.Int64? cloudCourseId,
    $core.int? duration,
    $core.int? distance,
  }) {
    final result = create();
    if (ids != null) result.ids = ids;
    if (sportCourseType != null) result.sportCourseType = sportCourseType;
    if (cloudCourseId != null) result.cloudCourseId = cloudCourseId;
    if (duration != null) result.duration = duration;
    if (distance != null) result.distance = distance;
    return result;
  }

  RemainingSportData._();

  factory RemainingSportData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemainingSportData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemainingSportData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.QY)
    ..aI(2, _omitFieldNames ? '' : 'sportCourseType',
        fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'cloudCourseId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(4, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemainingSportData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemainingSportData copyWith(void Function(RemainingSportData) updates) =>
      super.copyWith((message) => updates(message as RemainingSportData))
          as RemainingSportData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemainingSportData create() => RemainingSportData._();
  @$core.override
  RemainingSportData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RemainingSportData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemainingSportData>(create);
  static RemainingSportData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get ids => $_getN(0);
  @$pb.TagNumber(1)
  set ids($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIds() => $_has(0);
  @$pb.TagNumber(1)
  void clearIds() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get sportCourseType => $_getIZ(1);
  @$pb.TagNumber(2)
  set sportCourseType($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSportCourseType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSportCourseType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get cloudCourseId => $_getI64(2);
  @$pb.TagNumber(3)
  set cloudCourseId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCloudCourseId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCloudCourseId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get duration => $_getIZ(3);
  @$pb.TagNumber(4)
  set duration($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearDuration() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get distance => $_getIZ(4);
  @$pb.TagNumber(5)
  set distance($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDistance() => $_has(4);
  @$pb.TagNumber(5)
  void clearDistance() => $_clearField(5);
}

class WarningOption extends $pb.GeneratedMessage {
  factory WarningOption({
    $core.bool? warning,
    $core.int? warningValue,
  }) {
    final result = create();
    if (warning != null) result.warning = warning;
    if (warningValue != null) result.warningValue = warningValue;
    return result;
  }

  WarningOption._();

  factory WarningOption.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WarningOption.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WarningOption',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'warning', $pb.PbFieldType.QB)
    ..aI(2, _omitFieldNames ? '' : 'warningValue',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WarningOption clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WarningOption copyWith(void Function(WarningOption) updates) =>
      super.copyWith((message) => updates(message as WarningOption))
          as WarningOption;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WarningOption create() => WarningOption._();
  @$core.override
  WarningOption createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WarningOption getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WarningOption>(create);
  static WarningOption? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get warning => $_getBF(0);
  @$pb.TagNumber(1)
  set warning($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWarning() => $_has(0);
  @$pb.TagNumber(1)
  void clearWarning() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get warningValue => $_getIZ(1);
  @$pb.TagNumber(2)
  set warningValue($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWarningValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearWarningValue() => $_clearField(2);
}

class BloodOxygenMonitor extends $pb.GeneratedMessage {
  factory BloodOxygenMonitor({
    $core.bool? supportAllDay,
    BloodOxygenMonitor_Mode? mode,
    $core.int? frequency,
    WarningOption? warningNonSleep,
  }) {
    final result = create();
    if (supportAllDay != null) result.supportAllDay = supportAllDay;
    if (mode != null) result.mode = mode;
    if (frequency != null) result.frequency = frequency;
    if (warningNonSleep != null) result.warningNonSleep = warningNonSleep;
    return result;
  }

  BloodOxygenMonitor._();

  factory BloodOxygenMonitor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BloodOxygenMonitor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BloodOxygenMonitor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(
        1, _omitFieldNames ? '' : 'supportAllDay', $pb.PbFieldType.QB)
    ..aE<BloodOxygenMonitor_Mode>(2, _omitFieldNames ? '' : 'mode',
        fieldType: $pb.PbFieldType.QE,
        enumValues: BloodOxygenMonitor_Mode.values)
    ..aI(3, _omitFieldNames ? '' : 'frequency', fieldType: $pb.PbFieldType.OU3)
    ..aOM<WarningOption>(4, _omitFieldNames ? '' : 'warningNonSleep',
        subBuilder: WarningOption.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodOxygenMonitor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodOxygenMonitor copyWith(void Function(BloodOxygenMonitor) updates) =>
      super.copyWith((message) => updates(message as BloodOxygenMonitor))
          as BloodOxygenMonitor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BloodOxygenMonitor create() => BloodOxygenMonitor._();
  @$core.override
  BloodOxygenMonitor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BloodOxygenMonitor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BloodOxygenMonitor>(create);
  static BloodOxygenMonitor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get supportAllDay => $_getBF(0);
  @$pb.TagNumber(1)
  set supportAllDay($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSupportAllDay() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupportAllDay() => $_clearField(1);

  @$pb.TagNumber(2)
  BloodOxygenMonitor_Mode get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(BloodOxygenMonitor_Mode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get frequency => $_getIZ(2);
  @$pb.TagNumber(3)
  set frequency($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFrequency() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrequency() => $_clearField(3);

  @$pb.TagNumber(4)
  WarningOption get warningNonSleep => $_getN(3);
  @$pb.TagNumber(4)
  set warningNonSleep(WarningOption value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasWarningNonSleep() => $_has(3);
  @$pb.TagNumber(4)
  void clearWarningNonSleep() => $_clearField(4);
  @$pb.TagNumber(4)
  WarningOption ensureWarningNonSleep() => $_ensure(3);
}

class HeartRateMonitor_AssistSleep extends $pb.GeneratedMessage {
  factory HeartRateMonitor_AssistSleep({
    $core.bool? on,
  }) {
    final result = create();
    if (on != null) result.on = on;
    return result;
  }

  HeartRateMonitor_AssistSleep._();

  factory HeartRateMonitor_AssistSleep.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeartRateMonitor_AssistSleep.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeartRateMonitor.AssistSleep',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'on', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartRateMonitor_AssistSleep clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartRateMonitor_AssistSleep copyWith(
          void Function(HeartRateMonitor_AssistSleep) updates) =>
      super.copyWith(
              (message) => updates(message as HeartRateMonitor_AssistSleep))
          as HeartRateMonitor_AssistSleep;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeartRateMonitor_AssistSleep create() =>
      HeartRateMonitor_AssistSleep._();
  @$core.override
  HeartRateMonitor_AssistSleep createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HeartRateMonitor_AssistSleep getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeartRateMonitor_AssistSleep>(create);
  static HeartRateMonitor_AssistSleep? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get on => $_getBF(0);
  @$pb.TagNumber(1)
  set on($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearOn() => $_clearField(1);
}

class HeartRateMonitor extends $pb.GeneratedMessage {
  factory HeartRateMonitor({
    HeartRateMonitor_Mode? mode,
    $core.int? frequency,
    $core.bool? warning,
    $core.int? warningValue,
    HeartRateMonitor_AssistSleep? assitSleep,
    WarningOption? warningSport,
    $core.bool? supportIntelligentMonitor,
    WarningOption? warningLow,
    $0.OptionalSwitcher? sleepBreatheQuality,
    $0.OptionalSwitcher? abnormalCardiac,
    $0.OptionalSwitcher? sleepBreatheRate,
  }) {
    final result = create();
    if (mode != null) result.mode = mode;
    if (frequency != null) result.frequency = frequency;
    if (warning != null) result.warning = warning;
    if (warningValue != null) result.warningValue = warningValue;
    if (assitSleep != null) result.assitSleep = assitSleep;
    if (warningSport != null) result.warningSport = warningSport;
    if (supportIntelligentMonitor != null)
      result.supportIntelligentMonitor = supportIntelligentMonitor;
    if (warningLow != null) result.warningLow = warningLow;
    if (sleepBreatheQuality != null)
      result.sleepBreatheQuality = sleepBreatheQuality;
    if (abnormalCardiac != null) result.abnormalCardiac = abnormalCardiac;
    if (sleepBreatheRate != null) result.sleepBreatheRate = sleepBreatheRate;
    return result;
  }

  HeartRateMonitor._();

  factory HeartRateMonitor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeartRateMonitor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeartRateMonitor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<HeartRateMonitor_Mode>(1, _omitFieldNames ? '' : 'mode',
        fieldType: $pb.PbFieldType.QE, enumValues: HeartRateMonitor_Mode.values)
    ..aI(2, _omitFieldNames ? '' : 'frequency', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(3, _omitFieldNames ? '' : 'warning', $pb.PbFieldType.QB)
    ..aI(4, _omitFieldNames ? '' : 'warningValue',
        fieldType: $pb.PbFieldType.QU3)
    ..aOM<HeartRateMonitor_AssistSleep>(5, _omitFieldNames ? '' : 'assitSleep',
        subBuilder: HeartRateMonitor_AssistSleep.create)
    ..aOM<WarningOption>(6, _omitFieldNames ? '' : 'warningSport',
        subBuilder: WarningOption.create)
    ..aOB(7, _omitFieldNames ? '' : 'supportIntelligentMonitor')
    ..aOM<WarningOption>(8, _omitFieldNames ? '' : 'warningLow',
        subBuilder: WarningOption.create)
    ..aE<$0.OptionalSwitcher>(9, _omitFieldNames ? '' : 'sleepBreatheQuality',
        enumValues: $0.OptionalSwitcher.values)
    ..aE<$0.OptionalSwitcher>(10, _omitFieldNames ? '' : 'abnormalCardiac',
        enumValues: $0.OptionalSwitcher.values)
    ..aE<$0.OptionalSwitcher>(11, _omitFieldNames ? '' : 'sleepBreatheRate',
        enumValues: $0.OptionalSwitcher.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartRateMonitor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartRateMonitor copyWith(void Function(HeartRateMonitor) updates) =>
      super.copyWith((message) => updates(message as HeartRateMonitor))
          as HeartRateMonitor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeartRateMonitor create() => HeartRateMonitor._();
  @$core.override
  HeartRateMonitor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HeartRateMonitor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeartRateMonitor>(create);
  static HeartRateMonitor? _defaultInstance;

  @$pb.TagNumber(1)
  HeartRateMonitor_Mode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(HeartRateMonitor_Mode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get frequency => $_getIZ(1);
  @$pb.TagNumber(2)
  set frequency($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFrequency() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrequency() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get warning => $_getBF(2);
  @$pb.TagNumber(3)
  set warning($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWarning() => $_has(2);
  @$pb.TagNumber(3)
  void clearWarning() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get warningValue => $_getIZ(3);
  @$pb.TagNumber(4)
  set warningValue($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWarningValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearWarningValue() => $_clearField(4);

  @$pb.TagNumber(5)
  HeartRateMonitor_AssistSleep get assitSleep => $_getN(4);
  @$pb.TagNumber(5)
  set assitSleep(HeartRateMonitor_AssistSleep value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAssitSleep() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssitSleep() => $_clearField(5);
  @$pb.TagNumber(5)
  HeartRateMonitor_AssistSleep ensureAssitSleep() => $_ensure(4);

  @$pb.TagNumber(6)
  WarningOption get warningSport => $_getN(5);
  @$pb.TagNumber(6)
  set warningSport(WarningOption value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasWarningSport() => $_has(5);
  @$pb.TagNumber(6)
  void clearWarningSport() => $_clearField(6);
  @$pb.TagNumber(6)
  WarningOption ensureWarningSport() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get supportIntelligentMonitor => $_getBF(6);
  @$pb.TagNumber(7)
  set supportIntelligentMonitor($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSupportIntelligentMonitor() => $_has(6);
  @$pb.TagNumber(7)
  void clearSupportIntelligentMonitor() => $_clearField(7);

  @$pb.TagNumber(8)
  WarningOption get warningLow => $_getN(7);
  @$pb.TagNumber(8)
  set warningLow(WarningOption value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasWarningLow() => $_has(7);
  @$pb.TagNumber(8)
  void clearWarningLow() => $_clearField(8);
  @$pb.TagNumber(8)
  WarningOption ensureWarningLow() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.OptionalSwitcher get sleepBreatheQuality => $_getN(8);
  @$pb.TagNumber(9)
  set sleepBreatheQuality($0.OptionalSwitcher value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSleepBreatheQuality() => $_has(8);
  @$pb.TagNumber(9)
  void clearSleepBreatheQuality() => $_clearField(9);

  @$pb.TagNumber(10)
  $0.OptionalSwitcher get abnormalCardiac => $_getN(9);
  @$pb.TagNumber(10)
  set abnormalCardiac($0.OptionalSwitcher value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbnormalCardiac() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbnormalCardiac() => $_clearField(10);

  @$pb.TagNumber(11)
  $0.OptionalSwitcher get sleepBreatheRate => $_getN(10);
  @$pb.TagNumber(11)
  set sleepBreatheRate($0.OptionalSwitcher value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSleepBreatheRate() => $_has(10);
  @$pb.TagNumber(11)
  void clearSleepBreatheRate() => $_clearField(11);
}

class SedentaryReminder extends $pb.GeneratedMessage {
  factory SedentaryReminder({
    $core.bool? on,
    $0.Time? startTime,
    $0.Time? endTime,
    $core.bool? noDisturbInLaunchBreak,
    $0.OptionalSwitcher? stretchGuide,
    $0.Time? launchBreakStartTime,
    $0.Time? launchBreakEndTime,
  }) {
    final result = create();
    if (on != null) result.on = on;
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    if (noDisturbInLaunchBreak != null)
      result.noDisturbInLaunchBreak = noDisturbInLaunchBreak;
    if (stretchGuide != null) result.stretchGuide = stretchGuide;
    if (launchBreakStartTime != null)
      result.launchBreakStartTime = launchBreakStartTime;
    if (launchBreakEndTime != null)
      result.launchBreakEndTime = launchBreakEndTime;
    return result;
  }

  SedentaryReminder._();

  factory SedentaryReminder.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SedentaryReminder.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SedentaryReminder',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'on', $pb.PbFieldType.QB)
    ..aQM<$0.Time>(2, _omitFieldNames ? '' : 'startTime',
        subBuilder: $0.Time.create)
    ..aQM<$0.Time>(3, _omitFieldNames ? '' : 'endTime',
        subBuilder: $0.Time.create)
    ..a<$core.bool>(
        4, _omitFieldNames ? '' : 'noDisturbInLaunchBreak', $pb.PbFieldType.QB)
    ..aE<$0.OptionalSwitcher>(5, _omitFieldNames ? '' : 'stretchGuide',
        enumValues: $0.OptionalSwitcher.values)
    ..aOM<$0.Time>(6, _omitFieldNames ? '' : 'launchBreakStartTime',
        subBuilder: $0.Time.create)
    ..aOM<$0.Time>(7, _omitFieldNames ? '' : 'launchBreakEndTime',
        subBuilder: $0.Time.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SedentaryReminder clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SedentaryReminder copyWith(void Function(SedentaryReminder) updates) =>
      super.copyWith((message) => updates(message as SedentaryReminder))
          as SedentaryReminder;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SedentaryReminder create() => SedentaryReminder._();
  @$core.override
  SedentaryReminder createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SedentaryReminder getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SedentaryReminder>(create);
  static SedentaryReminder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get on => $_getBF(0);
  @$pb.TagNumber(1)
  set on($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearOn() => $_clearField(1);

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
  $core.bool get noDisturbInLaunchBreak => $_getBF(3);
  @$pb.TagNumber(4)
  set noDisturbInLaunchBreak($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNoDisturbInLaunchBreak() => $_has(3);
  @$pb.TagNumber(4)
  void clearNoDisturbInLaunchBreak() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.OptionalSwitcher get stretchGuide => $_getN(4);
  @$pb.TagNumber(5)
  set stretchGuide($0.OptionalSwitcher value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStretchGuide() => $_has(4);
  @$pb.TagNumber(5)
  void clearStretchGuide() => $_clearField(5);

  @$pb.TagNumber(6)
  $0.Time get launchBreakStartTime => $_getN(5);
  @$pb.TagNumber(6)
  set launchBreakStartTime($0.Time value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLaunchBreakStartTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearLaunchBreakStartTime() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Time ensureLaunchBreakStartTime() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.Time get launchBreakEndTime => $_getN(6);
  @$pb.TagNumber(7)
  set launchBreakEndTime($0.Time value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasLaunchBreakEndTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearLaunchBreakEndTime() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Time ensureLaunchBreakEndTime() => $_ensure(6);
}

class PressureMonitor extends $pb.GeneratedMessage {
  factory PressureMonitor({
    $core.bool? on,
    WarningOption? warningNonSleep,
  }) {
    final result = create();
    if (on != null) result.on = on;
    if (warningNonSleep != null) result.warningNonSleep = warningNonSleep;
    return result;
  }

  PressureMonitor._();

  factory PressureMonitor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PressureMonitor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PressureMonitor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'on', $pb.PbFieldType.QB)
    ..aOM<WarningOption>(2, _omitFieldNames ? '' : 'warningNonSleep',
        subBuilder: WarningOption.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureMonitor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureMonitor copyWith(void Function(PressureMonitor) updates) =>
      super.copyWith((message) => updates(message as PressureMonitor))
          as PressureMonitor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PressureMonitor create() => PressureMonitor._();
  @$core.override
  PressureMonitor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PressureMonitor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PressureMonitor>(create);
  static PressureMonitor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get on => $_getBF(0);
  @$pb.TagNumber(1)
  set on($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearOn() => $_clearField(1);

  @$pb.TagNumber(2)
  WarningOption get warningNonSleep => $_getN(1);
  @$pb.TagNumber(2)
  set warningNonSleep(WarningOption value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWarningNonSleep() => $_has(1);
  @$pb.TagNumber(2)
  void clearWarningNonSleep() => $_clearField(2);
  @$pb.TagNumber(2)
  WarningOption ensureWarningNonSleep() => $_ensure(1);
}

class PressureCalibrate_Response extends $pb.GeneratedMessage {
  factory PressureCalibrate_Response({
    PressureCalibrate_Code? code,
    $core.int? needCollectTime,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (needCollectTime != null) result.needCollectTime = needCollectTime;
    return result;
  }

  PressureCalibrate_Response._();

  factory PressureCalibrate_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PressureCalibrate_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PressureCalibrate.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<PressureCalibrate_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE,
        enumValues: PressureCalibrate_Code.values)
    ..aI(2, _omitFieldNames ? '' : 'needCollectTime',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureCalibrate_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureCalibrate_Response copyWith(
          void Function(PressureCalibrate_Response) updates) =>
      super.copyWith(
              (message) => updates(message as PressureCalibrate_Response))
          as PressureCalibrate_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PressureCalibrate_Response create() => PressureCalibrate_Response._();
  @$core.override
  PressureCalibrate_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PressureCalibrate_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PressureCalibrate_Response>(create);
  static PressureCalibrate_Response? _defaultInstance;

  @$pb.TagNumber(1)
  PressureCalibrate_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(PressureCalibrate_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get needCollectTime => $_getIZ(1);
  @$pb.TagNumber(2)
  set needCollectTime($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNeedCollectTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeedCollectTime() => $_clearField(2);
}

class PressureCalibrate_EvaluationResult extends $pb.GeneratedMessage {
  factory PressureCalibrate_EvaluationResult({
    $core.int? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  PressureCalibrate_EvaluationResult._();

  factory PressureCalibrate_EvaluationResult.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PressureCalibrate_EvaluationResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PressureCalibrate.EvaluationResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureCalibrate_EvaluationResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureCalibrate_EvaluationResult copyWith(
          void Function(PressureCalibrate_EvaluationResult) updates) =>
      super.copyWith((message) =>
              updates(message as PressureCalibrate_EvaluationResult))
          as PressureCalibrate_EvaluationResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PressureCalibrate_EvaluationResult create() =>
      PressureCalibrate_EvaluationResult._();
  @$core.override
  PressureCalibrate_EvaluationResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PressureCalibrate_EvaluationResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PressureCalibrate_EvaluationResult>(
          create);
  static PressureCalibrate_EvaluationResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

class PressureCalibrate_CalibrationResult extends $pb.GeneratedMessage {
  factory PressureCalibrate_CalibrationResult({
    PressureCalibrate_Code? code,
    $core.int? currentPressure,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (currentPressure != null) result.currentPressure = currentPressure;
    return result;
  }

  PressureCalibrate_CalibrationResult._();

  factory PressureCalibrate_CalibrationResult.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PressureCalibrate_CalibrationResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PressureCalibrate.CalibrationResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<PressureCalibrate_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE,
        enumValues: PressureCalibrate_Code.values)
    ..aI(2, _omitFieldNames ? '' : 'currentPressure',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureCalibrate_CalibrationResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureCalibrate_CalibrationResult copyWith(
          void Function(PressureCalibrate_CalibrationResult) updates) =>
      super.copyWith((message) =>
              updates(message as PressureCalibrate_CalibrationResult))
          as PressureCalibrate_CalibrationResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PressureCalibrate_CalibrationResult create() =>
      PressureCalibrate_CalibrationResult._();
  @$core.override
  PressureCalibrate_CalibrationResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PressureCalibrate_CalibrationResult getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PressureCalibrate_CalibrationResult>(create);
  static PressureCalibrate_CalibrationResult? _defaultInstance;

  @$pb.TagNumber(1)
  PressureCalibrate_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(PressureCalibrate_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get currentPressure => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentPressure($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentPressure() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentPressure() => $_clearField(2);
}

class PressureCalibrate extends $pb.GeneratedMessage {
  factory PressureCalibrate() => create();

  PressureCalibrate._();

  factory PressureCalibrate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PressureCalibrate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PressureCalibrate',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureCalibrate clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureCalibrate copyWith(void Function(PressureCalibrate) updates) =>
      super.copyWith((message) => updates(message as PressureCalibrate))
          as PressureCalibrate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PressureCalibrate create() => PressureCalibrate._();
  @$core.override
  PressureCalibrate createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PressureCalibrate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PressureCalibrate>(create);
  static PressureCalibrate? _defaultInstance;
}

class SleepResult_Animal extends $pb.GeneratedMessage {
  factory SleepResult_Animal({
    $core.int? type,
    $core.int? currentProgress,
    $core.int? totalProgress,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (currentProgress != null) result.currentProgress = currentProgress;
    if (totalProgress != null) result.totalProgress = totalProgress;
    return result;
  }

  SleepResult_Animal._();

  factory SleepResult_Animal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SleepResult_Animal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SleepResult.Animal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'currentProgress',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'totalProgress',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepResult_Animal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepResult_Animal copyWith(void Function(SleepResult_Animal) updates) =>
      super.copyWith((message) => updates(message as SleepResult_Animal))
          as SleepResult_Animal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SleepResult_Animal create() => SleepResult_Animal._();
  @$core.override
  SleepResult_Animal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SleepResult_Animal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SleepResult_Animal>(create);
  static SleepResult_Animal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get currentProgress => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentProgress($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentProgress() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalProgress => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalProgress($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalProgress() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalProgress() => $_clearField(3);
}

class SleepResult_ExtraData extends $pb.GeneratedMessage {
  factory SleepResult_ExtraData({
    $core.int? bedtime,
    $core.int? sleepTime,
    $core.int? sleepQuality,
    $core.int? sleepEfficiency,
    $core.int? breathing,
  }) {
    final result = create();
    if (bedtime != null) result.bedtime = bedtime;
    if (sleepTime != null) result.sleepTime = sleepTime;
    if (sleepQuality != null) result.sleepQuality = sleepQuality;
    if (sleepEfficiency != null) result.sleepEfficiency = sleepEfficiency;
    if (breathing != null) result.breathing = breathing;
    return result;
  }

  SleepResult_ExtraData._();

  factory SleepResult_ExtraData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SleepResult_ExtraData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SleepResult.ExtraData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'bedtime', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'sleepTime', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'sleepQuality',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'sleepEfficiency',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(5, _omitFieldNames ? '' : 'breathing', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepResult_ExtraData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepResult_ExtraData copyWith(
          void Function(SleepResult_ExtraData) updates) =>
      super.copyWith((message) => updates(message as SleepResult_ExtraData))
          as SleepResult_ExtraData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SleepResult_ExtraData create() => SleepResult_ExtraData._();
  @$core.override
  SleepResult_ExtraData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SleepResult_ExtraData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SleepResult_ExtraData>(create);
  static SleepResult_ExtraData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bedtime => $_getIZ(0);
  @$pb.TagNumber(1)
  set bedtime($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBedtime() => $_has(0);
  @$pb.TagNumber(1)
  void clearBedtime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get sleepTime => $_getIZ(1);
  @$pb.TagNumber(2)
  set sleepTime($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSleepTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearSleepTime() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get sleepQuality => $_getIZ(2);
  @$pb.TagNumber(3)
  set sleepQuality($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSleepQuality() => $_has(2);
  @$pb.TagNumber(3)
  void clearSleepQuality() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get sleepEfficiency => $_getIZ(3);
  @$pb.TagNumber(4)
  set sleepEfficiency($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSleepEfficiency() => $_has(3);
  @$pb.TagNumber(4)
  void clearSleepEfficiency() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get breathing => $_getIZ(4);
  @$pb.TagNumber(5)
  set breathing($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBreathing() => $_has(4);
  @$pb.TagNumber(5)
  void clearBreathing() => $_clearField(5);
}

class SleepResult_Section extends $pb.GeneratedMessage {
  factory SleepResult_Section({
    $0.Timezone? timezone,
    $core.int? validSleepTime,
    $core.int? sleepTimestamp,
    $core.int? wakeupTimestamp,
    $core.int? averageHeartRate,
    $core.int? averageBloodOxygen,
    SleepResult_ExtraData? extraData,
  }) {
    final result = create();
    if (timezone != null) result.timezone = timezone;
    if (validSleepTime != null) result.validSleepTime = validSleepTime;
    if (sleepTimestamp != null) result.sleepTimestamp = sleepTimestamp;
    if (wakeupTimestamp != null) result.wakeupTimestamp = wakeupTimestamp;
    if (averageHeartRate != null) result.averageHeartRate = averageHeartRate;
    if (averageBloodOxygen != null)
      result.averageBloodOxygen = averageBloodOxygen;
    if (extraData != null) result.extraData = extraData;
    return result;
  }

  SleepResult_Section._();

  factory SleepResult_Section.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SleepResult_Section.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SleepResult.Section',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<$0.Timezone>(1, _omitFieldNames ? '' : 'timezone',
        subBuilder: $0.Timezone.create)
    ..aI(2, _omitFieldNames ? '' : 'validSleepTime',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'sleepTimestamp',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'wakeupTimestamp',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(5, _omitFieldNames ? '' : 'averageHeartRate',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(6, _omitFieldNames ? '' : 'averageBloodOxygen',
        fieldType: $pb.PbFieldType.QU3)
    ..aOM<SleepResult_ExtraData>(7, _omitFieldNames ? '' : 'extraData',
        subBuilder: SleepResult_ExtraData.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepResult_Section clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepResult_Section copyWith(void Function(SleepResult_Section) updates) =>
      super.copyWith((message) => updates(message as SleepResult_Section))
          as SleepResult_Section;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SleepResult_Section create() => SleepResult_Section._();
  @$core.override
  SleepResult_Section createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SleepResult_Section getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SleepResult_Section>(create);
  static SleepResult_Section? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timezone get timezone => $_getN(0);
  @$pb.TagNumber(1)
  set timezone($0.Timezone value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTimezone() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimezone() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timezone ensureTimezone() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get validSleepTime => $_getIZ(1);
  @$pb.TagNumber(2)
  set validSleepTime($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValidSleepTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidSleepTime() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get sleepTimestamp => $_getIZ(2);
  @$pb.TagNumber(3)
  set sleepTimestamp($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSleepTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearSleepTimestamp() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get wakeupTimestamp => $_getIZ(3);
  @$pb.TagNumber(4)
  set wakeupTimestamp($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWakeupTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearWakeupTimestamp() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get averageHeartRate => $_getIZ(4);
  @$pb.TagNumber(5)
  set averageHeartRate($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAverageHeartRate() => $_has(4);
  @$pb.TagNumber(5)
  void clearAverageHeartRate() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get averageBloodOxygen => $_getIZ(5);
  @$pb.TagNumber(6)
  set averageBloodOxygen($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAverageBloodOxygen() => $_has(5);
  @$pb.TagNumber(6)
  void clearAverageBloodOxygen() => $_clearField(6);

  @$pb.TagNumber(7)
  SleepResult_ExtraData get extraData => $_getN(6);
  @$pb.TagNumber(7)
  set extraData(SleepResult_ExtraData value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasExtraData() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtraData() => $_clearField(7);
  @$pb.TagNumber(7)
  SleepResult_ExtraData ensureExtraData() => $_ensure(6);
}

class SleepResult extends $pb.GeneratedMessage {
  factory SleepResult({
    $core.Iterable<SleepResult_Section>? sectionList,
    SleepResult_Animal? animal,
  }) {
    final result = create();
    if (sectionList != null) result.sectionList.addAll(sectionList);
    if (animal != null) result.animal = animal;
    return result;
  }

  SleepResult._();

  factory SleepResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SleepResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SleepResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<SleepResult_Section>(1, _omitFieldNames ? '' : 'sectionList',
        subBuilder: SleepResult_Section.create)
    ..aOM<SleepResult_Animal>(2, _omitFieldNames ? '' : 'animal',
        subBuilder: SleepResult_Animal.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepResult copyWith(void Function(SleepResult) updates) =>
      super.copyWith((message) => updates(message as SleepResult))
          as SleepResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SleepResult create() => SleepResult._();
  @$core.override
  SleepResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SleepResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SleepResult>(create);
  static SleepResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SleepResult_Section> get sectionList => $_getList(0);

  @$pb.TagNumber(2)
  SleepResult_Animal get animal => $_getN(1);
  @$pb.TagNumber(2)
  set animal(SleepResult_Animal value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAnimal() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnimal() => $_clearField(2);
  @$pb.TagNumber(2)
  SleepResult_Animal ensureAnimal() => $_ensure(1);
}

class Goal_Status extends $pb.GeneratedMessage {
  factory Goal_Status({
    $core.Iterable<Goal>? currentGoals,
    $core.Iterable<Goal>? supportedGoals,
  }) {
    final result = create();
    if (currentGoals != null) result.currentGoals.addAll(currentGoals);
    if (supportedGoals != null) result.supportedGoals.addAll(supportedGoals);
    return result;
  }

  Goal_Status._();

  factory Goal_Status.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Goal_Status.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Goal.Status',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Goal>(1, _omitFieldNames ? '' : 'currentGoals',
        subBuilder: Goal.create)
    ..pPM<Goal>(2, _omitFieldNames ? '' : 'supportedGoals',
        subBuilder: Goal.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Goal_Status clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Goal_Status copyWith(void Function(Goal_Status) updates) =>
      super.copyWith((message) => updates(message as Goal_Status))
          as Goal_Status;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Goal_Status create() => Goal_Status._();
  @$core.override
  Goal_Status createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Goal_Status getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Goal_Status>(create);
  static Goal_Status? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Goal> get currentGoals => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<Goal> get supportedGoals => $_getList(1);
}

class Goal extends $pb.GeneratedMessage {
  factory Goal({
    Goal_Type? type,
  }) {
    final result = create();
    if (type != null) result.type = type;
    return result;
  }

  Goal._();

  factory Goal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Goal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Goal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<Goal_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: Goal_Type.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Goal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Goal copyWith(void Function(Goal) updates) =>
      super.copyWith((message) => updates(message as Goal)) as Goal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Goal create() => Goal._();
  @$core.override
  Goal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Goal getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Goal>(create);
  static Goal? _defaultInstance;

  @$pb.TagNumber(1)
  Goal_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Goal_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class BasicData extends $pb.GeneratedMessage {
  factory BasicData({
    $core.int? steps,
    $core.int? calories,
    $core.int? distance,
    $core.int? heartRate,
    $core.int? intensity,
    $core.int? validStand,
  }) {
    final result = create();
    if (steps != null) result.steps = steps;
    if (calories != null) result.calories = calories;
    if (distance != null) result.distance = distance;
    if (heartRate != null) result.heartRate = heartRate;
    if (intensity != null) result.intensity = intensity;
    if (validStand != null) result.validStand = validStand;
    return result;
  }

  BasicData._();

  factory BasicData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BasicData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BasicData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'steps', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'calories', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'heartRate', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'intensity', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'validStand',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicData copyWith(void Function(BasicData) updates) =>
      super.copyWith((message) => updates(message as BasicData)) as BasicData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicData create() => BasicData._();
  @$core.override
  BasicData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BasicData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BasicData>(create);
  static BasicData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get steps => $_getIZ(0);
  @$pb.TagNumber(1)
  set steps($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSteps() => $_has(0);
  @$pb.TagNumber(1)
  void clearSteps() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get calories => $_getIZ(1);
  @$pb.TagNumber(2)
  set calories($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCalories() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalories() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get distance => $_getIZ(2);
  @$pb.TagNumber(3)
  set distance($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDistance() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistance() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get heartRate => $_getIZ(3);
  @$pb.TagNumber(4)
  set heartRate($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHeartRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeartRate() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get intensity => $_getIZ(4);
  @$pb.TagNumber(5)
  set intensity($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIntensity() => $_has(4);
  @$pb.TagNumber(5)
  void clearIntensity() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get validStand => $_getIZ(5);
  @$pb.TagNumber(6)
  set validStand($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasValidStand() => $_has(5);
  @$pb.TagNumber(6)
  void clearValidStand() => $_clearField(6);
}

class VitalityData_Item extends $pb.GeneratedMessage {
  factory VitalityData_Item({
    Goal_Type? type,
    $core.int? total,
    $core.int? interval,
    $core.Iterable<$core.int>? detail,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (total != null) result.total = total;
    if (interval != null) result.interval = interval;
    if (detail != null) result.detail.addAll(detail);
    return result;
  }

  VitalityData_Item._();

  factory VitalityData_Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VitalityData_Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VitalityData.Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<Goal_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: Goal_Type.values)
    ..aI(2, _omitFieldNames ? '' : 'total', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'interval', fieldType: $pb.PbFieldType.OU3)
    ..p<$core.int>(4, _omitFieldNames ? '' : 'detail', $pb.PbFieldType.PU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VitalityData_Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VitalityData_Item copyWith(void Function(VitalityData_Item) updates) =>
      super.copyWith((message) => updates(message as VitalityData_Item))
          as VitalityData_Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VitalityData_Item create() => VitalityData_Item._();
  @$core.override
  VitalityData_Item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VitalityData_Item getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VitalityData_Item>(create);
  static VitalityData_Item? _defaultInstance;

  @$pb.TagNumber(1)
  Goal_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Goal_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get interval => $_getIZ(2);
  @$pb.TagNumber(3)
  set interval($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasInterval() => $_has(2);
  @$pb.TagNumber(3)
  void clearInterval() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.int> get detail => $_getList(3);
}

class VitalityData_List extends $pb.GeneratedMessage {
  factory VitalityData_List({
    $core.int? timestamp,
    $core.Iterable<VitalityData_Item>? list,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (list != null) result.list.addAll(list);
    return result;
  }

  VitalityData_List._();

  factory VitalityData_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VitalityData_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VitalityData.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.OU3)
    ..pPM<VitalityData_Item>(2, _omitFieldNames ? '' : 'list',
        subBuilder: VitalityData_Item.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VitalityData_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VitalityData_List copyWith(void Function(VitalityData_List) updates) =>
      super.copyWith((message) => updates(message as VitalityData_List))
          as VitalityData_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VitalityData_List create() => VitalityData_List._();
  @$core.override
  VitalityData_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VitalityData_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VitalityData_List>(create);
  static VitalityData_List? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<VitalityData_Item> get list => $_getList(1);
}

class VitalityData extends $pb.GeneratedMessage {
  factory VitalityData() => create();

  VitalityData._();

  factory VitalityData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VitalityData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VitalityData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VitalityData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VitalityData copyWith(void Function(VitalityData) updates) =>
      super.copyWith((message) => updates(message as VitalityData))
          as VitalityData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VitalityData create() => VitalityData._();
  @$core.override
  VitalityData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VitalityData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VitalityData>(create);
  static VitalityData? _defaultInstance;
}

class BestSportData_List extends $pb.GeneratedMessage {
  factory BestSportData_List({
    $core.Iterable<BestSportData>? sportDataList,
  }) {
    final result = create();
    if (sportDataList != null) result.sportDataList.addAll(sportDataList);
    return result;
  }

  BestSportData_List._();

  factory BestSportData_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BestSportData_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BestSportData.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<BestSportData>(1, _omitFieldNames ? '' : 'sportDataList',
        subBuilder: BestSportData.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BestSportData_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BestSportData_List copyWith(void Function(BestSportData_List) updates) =>
      super.copyWith((message) => updates(message as BestSportData_List))
          as BestSportData_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BestSportData_List create() => BestSportData_List._();
  @$core.override
  BestSportData_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BestSportData_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BestSportData_List>(create);
  static BestSportData_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<BestSportData> get sportDataList => $_getList(0);
}

class BestSportData extends $pb.GeneratedMessage {
  factory BestSportData({
    $0.SportType? sportType,
    $core.int? duration,
    $core.int? distance,
  }) {
    final result = create();
    if (sportType != null) result.sportType = sportType;
    if (duration != null) result.duration = duration;
    if (distance != null) result.distance = distance;
    return result;
  }

  BestSportData._();

  factory BestSportData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BestSportData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BestSportData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.SportType>(1, _omitFieldNames ? '' : 'sportType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportType.values)
    ..aI(2, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BestSportData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BestSportData copyWith(void Function(BestSportData) updates) =>
      super.copyWith((message) => updates(message as BestSportData))
          as BestSportData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BestSportData create() => BestSportData._();
  @$core.override
  BestSportData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BestSportData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BestSportData>(create);
  static BestSportData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SportType get sportType => $_getN(0);
  @$pb.TagNumber(1)
  set sportType($0.SportType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSportType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSportType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get duration => $_getIZ(1);
  @$pb.TagNumber(2)
  set duration($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get distance => $_getIZ(2);
  @$pb.TagNumber(3)
  set distance($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDistance() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistance() => $_clearField(3);
}

class SportTarget extends $pb.GeneratedMessage {
  factory SportTarget({
    $0.SportTargetType? type,
    $core.int? value,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (value != null) result.value = value;
    return result;
  }

  SportTarget._();

  factory SportTarget.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportTarget.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportTarget',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.SportTargetType>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportTargetType.values)
    ..aI(2, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportTarget clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportTarget copyWith(void Function(SportTarget) updates) =>
      super.copyWith((message) => updates(message as SportTarget))
          as SportTarget;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportTarget create() => SportTarget._();
  @$core.override
  SportTarget createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportTarget>(create);
  static SportTarget? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SportTargetType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type($0.SportTargetType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get value => $_getIZ(1);
  @$pb.TagNumber(2)
  set value($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class SportCourse extends $pb.GeneratedMessage {
  factory SportCourse({
    $core.int? sportCourseType,
    $fixnum.Int64? cloudCourseId,
    $core.String? courseName,
  }) {
    final result = create();
    if (sportCourseType != null) result.sportCourseType = sportCourseType;
    if (cloudCourseId != null) result.cloudCourseId = cloudCourseId;
    if (courseName != null) result.courseName = courseName;
    return result;
  }

  SportCourse._();

  factory SportCourse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportCourse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportCourse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'sportCourseType',
        fieldType: $pb.PbFieldType.QU3)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'cloudCourseId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(3, _omitFieldNames ? '' : 'courseName');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportCourse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportCourse copyWith(void Function(SportCourse) updates) =>
      super.copyWith((message) => updates(message as SportCourse))
          as SportCourse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportCourse create() => SportCourse._();
  @$core.override
  SportCourse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportCourse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportCourse>(create);
  static SportCourse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sportCourseType => $_getIZ(0);
  @$pb.TagNumber(1)
  set sportCourseType($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSportCourseType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSportCourseType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get cloudCourseId => $_getI64(1);
  @$pb.TagNumber(2)
  set cloudCourseId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCloudCourseId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCloudCourseId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get courseName => $_getSZ(2);
  @$pb.TagNumber(3)
  set courseName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCourseName() => $_has(2);
  @$pb.TagNumber(3)
  void clearCourseName() => $_clearField(3);
}

class SportStatus extends $pb.GeneratedMessage {
  factory SportStatus({
    $0.SportType? sportType,
    $core.int? timestamp,
    $0.Timezone? timezone,
    $core.int? duration,
    $core.bool? paused,
    $core.bool? standalone,
    $core.int? selectVersion,
    $core.bool? appLaunched,
    $core.Iterable<SportTarget>? sportTargetList,
    SportCourse? sportCourse,
    $0.SportType? mainSportType,
    $0.WearMode? wearMode,
  }) {
    final result = create();
    if (sportType != null) result.sportType = sportType;
    if (timestamp != null) result.timestamp = timestamp;
    if (timezone != null) result.timezone = timezone;
    if (duration != null) result.duration = duration;
    if (paused != null) result.paused = paused;
    if (standalone != null) result.standalone = standalone;
    if (selectVersion != null) result.selectVersion = selectVersion;
    if (appLaunched != null) result.appLaunched = appLaunched;
    if (sportTargetList != null) result.sportTargetList.addAll(sportTargetList);
    if (sportCourse != null) result.sportCourse = sportCourse;
    if (mainSportType != null) result.mainSportType = mainSportType;
    if (wearMode != null) result.wearMode = wearMode;
    return result;
  }

  SportStatus._();

  factory SportStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.SportType>(1, _omitFieldNames ? '' : 'sportType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportType.values)
    ..aI(2, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$0.Timezone>(3, _omitFieldNames ? '' : 'timezone',
        subBuilder: $0.Timezone.create)
    ..aI(4, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.OU3)
    ..aOB(5, _omitFieldNames ? '' : 'paused')
    ..aOB(6, _omitFieldNames ? '' : 'standalone')
    ..aI(7, _omitFieldNames ? '' : 'selectVersion',
        fieldType: $pb.PbFieldType.OU3)
    ..aOB(8, _omitFieldNames ? '' : 'appLaunched')
    ..pPM<SportTarget>(9, _omitFieldNames ? '' : 'sportTargetList',
        subBuilder: SportTarget.create)
    ..aOM<SportCourse>(10, _omitFieldNames ? '' : 'sportCourse',
        subBuilder: SportCourse.create)
    ..aE<$0.SportType>(11, _omitFieldNames ? '' : 'mainSportType',
        enumValues: $0.SportType.values)
    ..aE<$0.WearMode>(12, _omitFieldNames ? '' : 'wearMode',
        enumValues: $0.WearMode.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportStatus copyWith(void Function(SportStatus) updates) =>
      super.copyWith((message) => updates(message as SportStatus))
          as SportStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportStatus create() => SportStatus._();
  @$core.override
  SportStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportStatus>(create);
  static SportStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SportType get sportType => $_getN(0);
  @$pb.TagNumber(1)
  set sportType($0.SportType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSportType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSportType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get timestamp => $_getIZ(1);
  @$pb.TagNumber(2)
  set timestamp($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.Timezone get timezone => $_getN(2);
  @$pb.TagNumber(3)
  set timezone($0.Timezone value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTimezone() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimezone() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timezone ensureTimezone() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get duration => $_getIZ(3);
  @$pb.TagNumber(4)
  set duration($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearDuration() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get paused => $_getBF(4);
  @$pb.TagNumber(5)
  set paused($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPaused() => $_has(4);
  @$pb.TagNumber(5)
  void clearPaused() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get standalone => $_getBF(5);
  @$pb.TagNumber(6)
  set standalone($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStandalone() => $_has(5);
  @$pb.TagNumber(6)
  void clearStandalone() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get selectVersion => $_getIZ(6);
  @$pb.TagNumber(7)
  set selectVersion($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSelectVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearSelectVersion() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get appLaunched => $_getBF(7);
  @$pb.TagNumber(8)
  set appLaunched($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAppLaunched() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppLaunched() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<SportTarget> get sportTargetList => $_getList(8);

  @$pb.TagNumber(10)
  SportCourse get sportCourse => $_getN(9);
  @$pb.TagNumber(10)
  set sportCourse(SportCourse value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasSportCourse() => $_has(9);
  @$pb.TagNumber(10)
  void clearSportCourse() => $_clearField(10);
  @$pb.TagNumber(10)
  SportCourse ensureSportCourse() => $_ensure(9);

  @$pb.TagNumber(11)
  $0.SportType get mainSportType => $_getN(10);
  @$pb.TagNumber(11)
  set mainSportType($0.SportType value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasMainSportType() => $_has(10);
  @$pb.TagNumber(11)
  void clearMainSportType() => $_clearField(11);

  @$pb.TagNumber(12)
  $0.WearMode get wearMode => $_getN(11);
  @$pb.TagNumber(12)
  set wearMode($0.WearMode value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasWearMode() => $_has(11);
  @$pb.TagNumber(12)
  void clearWearMode() => $_clearField(12);
}

class SportPreRequest extends $pb.GeneratedMessage {
  factory SportPreRequest({
    $0.SportType? sportType,
    $core.int? supportVersions,
    $0.SportType? mainSportType,
  }) {
    final result = create();
    if (sportType != null) result.sportType = sportType;
    if (supportVersions != null) result.supportVersions = supportVersions;
    if (mainSportType != null) result.mainSportType = mainSportType;
    return result;
  }

  SportPreRequest._();

  factory SportPreRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportPreRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportPreRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.SportType>(1, _omitFieldNames ? '' : 'sportType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportType.values)
    ..aI(2, _omitFieldNames ? '' : 'supportVersions',
        fieldType: $pb.PbFieldType.QU3)
    ..aE<$0.SportType>(3, _omitFieldNames ? '' : 'mainSportType',
        enumValues: $0.SportType.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportPreRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportPreRequest copyWith(void Function(SportPreRequest) updates) =>
      super.copyWith((message) => updates(message as SportPreRequest))
          as SportPreRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportPreRequest create() => SportPreRequest._();
  @$core.override
  SportPreRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportPreRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportPreRequest>(create);
  static SportPreRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SportType get sportType => $_getN(0);
  @$pb.TagNumber(1)
  set sportType($0.SportType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSportType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSportType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get supportVersions => $_getIZ(1);
  @$pb.TagNumber(2)
  set supportVersions($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportVersions() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportVersions() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.SportType get mainSportType => $_getN(2);
  @$pb.TagNumber(3)
  set mainSportType($0.SportType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMainSportType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMainSportType() => $_clearField(3);
}

class SportPreResponse extends $pb.GeneratedMessage {
  factory SportPreResponse({
    SportResponse_Code? code,
    $core.int? selectVersion,
    GpsAccuracy? gpsAccuracy,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (selectVersion != null) result.selectVersion = selectVersion;
    if (gpsAccuracy != null) result.gpsAccuracy = gpsAccuracy;
    return result;
  }

  SportPreResponse._();

  factory SportPreResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportPreResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportPreResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<SportResponse_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: SportResponse_Code.values)
    ..aI(2, _omitFieldNames ? '' : 'selectVersion',
        fieldType: $pb.PbFieldType.QU3)
    ..aE<GpsAccuracy>(3, _omitFieldNames ? '' : 'gpsAccuracy',
        enumValues: GpsAccuracy.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportPreResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportPreResponse copyWith(void Function(SportPreResponse) updates) =>
      super.copyWith((message) => updates(message as SportPreResponse))
          as SportPreResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportPreResponse create() => SportPreResponse._();
  @$core.override
  SportPreResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportPreResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportPreResponse>(create);
  static SportPreResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SportResponse_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(SportResponse_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get selectVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set selectVersion($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSelectVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelectVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  GpsAccuracy get gpsAccuracy => $_getN(2);
  @$pb.TagNumber(3)
  set gpsAccuracy(GpsAccuracy value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGpsAccuracy() => $_has(2);
  @$pb.TagNumber(3)
  void clearGpsAccuracy() => $_clearField(3);
}

class SportRequest extends $pb.GeneratedMessage {
  factory SportRequest({
    $core.int? timestamp,
    $0.Timezone? timezone,
    $0.SportType? sportType,
    $0.SportState? state,
    $core.List<$core.int>? ids,
    $core.int? supportVersions,
    $core.Iterable<SportTarget>? sportTargetList,
    SportCourse? sportCourse,
    $0.SportType? mainSportType,
    $0.WearMode? wearMode,
    SportExtraData? extraData,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (timezone != null) result.timezone = timezone;
    if (sportType != null) result.sportType = sportType;
    if (state != null) result.state = state;
    if (ids != null) result.ids = ids;
    if (supportVersions != null) result.supportVersions = supportVersions;
    if (sportTargetList != null) result.sportTargetList.addAll(sportTargetList);
    if (sportCourse != null) result.sportCourse = sportCourse;
    if (mainSportType != null) result.mainSportType = mainSportType;
    if (wearMode != null) result.wearMode = wearMode;
    if (extraData != null) result.extraData = extraData;
    return result;
  }

  SportRequest._();

  factory SportRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.QU3)
    ..aQM<$0.Timezone>(2, _omitFieldNames ? '' : 'timezone',
        subBuilder: $0.Timezone.create)
    ..aE<$0.SportType>(3, _omitFieldNames ? '' : 'sportType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportType.values)
    ..aE<$0.SportState>(4, _omitFieldNames ? '' : 'state',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportState.values)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.QY)
    ..aI(6, _omitFieldNames ? '' : 'supportVersions',
        fieldType: $pb.PbFieldType.OU3)
    ..pPM<SportTarget>(7, _omitFieldNames ? '' : 'sportTargetList',
        subBuilder: SportTarget.create)
    ..aOM<SportCourse>(8, _omitFieldNames ? '' : 'sportCourse',
        subBuilder: SportCourse.create)
    ..aE<$0.SportType>(9, _omitFieldNames ? '' : 'mainSportType',
        enumValues: $0.SportType.values)
    ..aE<$0.WearMode>(10, _omitFieldNames ? '' : 'wearMode',
        enumValues: $0.WearMode.values)
    ..aOM<SportExtraData>(11, _omitFieldNames ? '' : 'extraData',
        subBuilder: SportExtraData.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportRequest copyWith(void Function(SportRequest) updates) =>
      super.copyWith((message) => updates(message as SportRequest))
          as SportRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportRequest create() => SportRequest._();
  @$core.override
  SportRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportRequest>(create);
  static SportRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Timezone get timezone => $_getN(1);
  @$pb.TagNumber(2)
  set timezone($0.Timezone value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTimezone() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimezone() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timezone ensureTimezone() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.SportType get sportType => $_getN(2);
  @$pb.TagNumber(3)
  set sportType($0.SportType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSportType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSportType() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.SportState get state => $_getN(3);
  @$pb.TagNumber(4)
  set state($0.SportState value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get ids => $_getN(4);
  @$pb.TagNumber(5)
  set ids($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIds() => $_has(4);
  @$pb.TagNumber(5)
  void clearIds() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get supportVersions => $_getIZ(5);
  @$pb.TagNumber(6)
  set supportVersions($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSupportVersions() => $_has(5);
  @$pb.TagNumber(6)
  void clearSupportVersions() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<SportTarget> get sportTargetList => $_getList(6);

  @$pb.TagNumber(8)
  SportCourse get sportCourse => $_getN(7);
  @$pb.TagNumber(8)
  set sportCourse(SportCourse value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSportCourse() => $_has(7);
  @$pb.TagNumber(8)
  void clearSportCourse() => $_clearField(8);
  @$pb.TagNumber(8)
  SportCourse ensureSportCourse() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.SportType get mainSportType => $_getN(8);
  @$pb.TagNumber(9)
  set mainSportType($0.SportType value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasMainSportType() => $_has(8);
  @$pb.TagNumber(9)
  void clearMainSportType() => $_clearField(9);

  @$pb.TagNumber(10)
  $0.WearMode get wearMode => $_getN(9);
  @$pb.TagNumber(10)
  set wearMode($0.WearMode value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasWearMode() => $_has(9);
  @$pb.TagNumber(10)
  void clearWearMode() => $_clearField(10);

  @$pb.TagNumber(11)
  SportExtraData get extraData => $_getN(10);
  @$pb.TagNumber(11)
  set extraData(SportExtraData value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasExtraData() => $_has(10);
  @$pb.TagNumber(11)
  void clearExtraData() => $_clearField(11);
  @$pb.TagNumber(11)
  SportExtraData ensureExtraData() => $_ensure(10);
}

class SportResponse extends $pb.GeneratedMessage {
  factory SportResponse({
    SportResponse_Code? code,
    $core.List<$core.int>? ids,
    SportStatus? sportStatus,
    GpsAccuracy? gpsAccuracy,
    $core.int? selectVersion,
    $0.WearMode? currentWearMode,
    SportExtraData? extraData,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (ids != null) result.ids = ids;
    if (sportStatus != null) result.sportStatus = sportStatus;
    if (gpsAccuracy != null) result.gpsAccuracy = gpsAccuracy;
    if (selectVersion != null) result.selectVersion = selectVersion;
    if (currentWearMode != null) result.currentWearMode = currentWearMode;
    if (extraData != null) result.extraData = extraData;
    return result;
  }

  SportResponse._();

  factory SportResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<SportResponse_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: SportResponse_Code.values)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.QY)
    ..aOM<SportStatus>(3, _omitFieldNames ? '' : 'sportStatus',
        subBuilder: SportStatus.create)
    ..aE<GpsAccuracy>(4, _omitFieldNames ? '' : 'gpsAccuracy',
        enumValues: GpsAccuracy.values)
    ..aI(5, _omitFieldNames ? '' : 'selectVersion',
        fieldType: $pb.PbFieldType.OU3)
    ..aE<$0.WearMode>(6, _omitFieldNames ? '' : 'currentWearMode',
        enumValues: $0.WearMode.values)
    ..aOM<SportExtraData>(7, _omitFieldNames ? '' : 'extraData',
        subBuilder: SportExtraData.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportResponse copyWith(void Function(SportResponse) updates) =>
      super.copyWith((message) => updates(message as SportResponse))
          as SportResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportResponse create() => SportResponse._();
  @$core.override
  SportResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportResponse>(create);
  static SportResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SportResponse_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(SportResponse_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get ids => $_getN(1);
  @$pb.TagNumber(2)
  set ids($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIds() => $_clearField(2);

  @$pb.TagNumber(3)
  SportStatus get sportStatus => $_getN(2);
  @$pb.TagNumber(3)
  set sportStatus(SportStatus value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSportStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearSportStatus() => $_clearField(3);
  @$pb.TagNumber(3)
  SportStatus ensureSportStatus() => $_ensure(2);

  @$pb.TagNumber(4)
  GpsAccuracy get gpsAccuracy => $_getN(3);
  @$pb.TagNumber(4)
  set gpsAccuracy(GpsAccuracy value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasGpsAccuracy() => $_has(3);
  @$pb.TagNumber(4)
  void clearGpsAccuracy() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get selectVersion => $_getIZ(4);
  @$pb.TagNumber(5)
  set selectVersion($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSelectVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearSelectVersion() => $_clearField(5);

  @$pb.TagNumber(6)
  $0.WearMode get currentWearMode => $_getN(5);
  @$pb.TagNumber(6)
  set currentWearMode($0.WearMode value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCurrentWearMode() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentWearMode() => $_clearField(6);

  @$pb.TagNumber(7)
  SportExtraData get extraData => $_getN(6);
  @$pb.TagNumber(7)
  set extraData(SportExtraData value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasExtraData() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtraData() => $_clearField(7);
  @$pb.TagNumber(7)
  SportExtraData ensureExtraData() => $_ensure(6);
}

class PhoneSportData extends $pb.GeneratedMessage {
  factory PhoneSportData({
    $core.int? distance,
    $core.int? pace,
    GpsAccuracy? gpsAccuracy,
  }) {
    final result = create();
    if (distance != null) result.distance = distance;
    if (pace != null) result.pace = pace;
    if (gpsAccuracy != null) result.gpsAccuracy = gpsAccuracy;
    return result;
  }

  PhoneSportData._();

  factory PhoneSportData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneSportData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneSportData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'pace', fieldType: $pb.PbFieldType.QU3)
    ..aE<GpsAccuracy>(3, _omitFieldNames ? '' : 'gpsAccuracy',
        fieldType: $pb.PbFieldType.QE, enumValues: GpsAccuracy.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSportData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSportData copyWith(void Function(PhoneSportData) updates) =>
      super.copyWith((message) => updates(message as PhoneSportData))
          as PhoneSportData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneSportData create() => PhoneSportData._();
  @$core.override
  PhoneSportData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneSportData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneSportData>(create);
  static PhoneSportData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get distance => $_getIZ(0);
  @$pb.TagNumber(1)
  set distance($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDistance() => $_has(0);
  @$pb.TagNumber(1)
  void clearDistance() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get pace => $_getIZ(1);
  @$pb.TagNumber(2)
  set pace($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPace() => $_has(1);
  @$pb.TagNumber(2)
  void clearPace() => $_clearField(2);

  @$pb.TagNumber(3)
  GpsAccuracy get gpsAccuracy => $_getN(2);
  @$pb.TagNumber(3)
  set gpsAccuracy(GpsAccuracy value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGpsAccuracy() => $_has(2);
  @$pb.TagNumber(3)
  void clearGpsAccuracy() => $_clearField(3);
}

class WearSportData extends $pb.GeneratedMessage {
  factory WearSportData({
    $core.int? steps,
    $core.int? calories,
    $core.int? heartRate,
    $core.int? maxHeartRate,
    $core.int? minHeartRate,
  }) {
    final result = create();
    if (steps != null) result.steps = steps;
    if (calories != null) result.calories = calories;
    if (heartRate != null) result.heartRate = heartRate;
    if (maxHeartRate != null) result.maxHeartRate = maxHeartRate;
    if (minHeartRate != null) result.minHeartRate = minHeartRate;
    return result;
  }

  WearSportData._();

  factory WearSportData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearSportData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearSportData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'steps', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'calories', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'heartRate', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'maxHeartRate',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'minHeartRate',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearSportData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearSportData copyWith(void Function(WearSportData) updates) =>
      super.copyWith((message) => updates(message as WearSportData))
          as WearSportData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearSportData create() => WearSportData._();
  @$core.override
  WearSportData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearSportData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearSportData>(create);
  static WearSportData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get steps => $_getIZ(0);
  @$pb.TagNumber(1)
  set steps($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSteps() => $_has(0);
  @$pb.TagNumber(1)
  void clearSteps() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get calories => $_getIZ(1);
  @$pb.TagNumber(2)
  set calories($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCalories() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalories() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get heartRate => $_getIZ(2);
  @$pb.TagNumber(3)
  set heartRate($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHeartRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeartRate() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxHeartRate => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxHeartRate($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMaxHeartRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxHeartRate() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get minHeartRate => $_getIZ(4);
  @$pb.TagNumber(5)
  set minHeartRate($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMinHeartRate() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinHeartRate() => $_clearField(5);
}

class PhoneSportDataV2D extends $pb.GeneratedMessage {
  factory PhoneSportDataV2D({
    GpsAccuracy? gpsAccuracy,
    $core.int? timestamp,
    $core.double? longitude,
    $core.double? latitude,
    $core.double? altitude,
    $core.double? speed,
    $core.double? bearing,
    $core.double? horizontalAccuracy,
    $core.double? verticalAccuracy,
  }) {
    final result = create();
    if (gpsAccuracy != null) result.gpsAccuracy = gpsAccuracy;
    if (timestamp != null) result.timestamp = timestamp;
    if (longitude != null) result.longitude = longitude;
    if (latitude != null) result.latitude = latitude;
    if (altitude != null) result.altitude = altitude;
    if (speed != null) result.speed = speed;
    if (bearing != null) result.bearing = bearing;
    if (horizontalAccuracy != null)
      result.horizontalAccuracy = horizontalAccuracy;
    if (verticalAccuracy != null) result.verticalAccuracy = verticalAccuracy;
    return result;
  }

  PhoneSportDataV2D._();

  factory PhoneSportDataV2D.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneSportDataV2D.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneSportDataV2D',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<GpsAccuracy>(1, _omitFieldNames ? '' : 'gpsAccuracy',
        fieldType: $pb.PbFieldType.QE, enumValues: GpsAccuracy.values)
    ..aI(2, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.QU3)
    ..aD(3, _omitFieldNames ? '' : 'longitude', fieldType: $pb.PbFieldType.QD)
    ..aD(4, _omitFieldNames ? '' : 'latitude', fieldType: $pb.PbFieldType.QD)
    ..aD(5, _omitFieldNames ? '' : 'altitude')
    ..aD(6, _omitFieldNames ? '' : 'speed', fieldType: $pb.PbFieldType.OF)
    ..aD(7, _omitFieldNames ? '' : 'bearing', fieldType: $pb.PbFieldType.OF)
    ..aD(8, _omitFieldNames ? '' : 'horizontalAccuracy',
        fieldType: $pb.PbFieldType.OF)
    ..aD(9, _omitFieldNames ? '' : 'verticalAccuracy',
        fieldType: $pb.PbFieldType.OF);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSportDataV2D clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSportDataV2D copyWith(void Function(PhoneSportDataV2D) updates) =>
      super.copyWith((message) => updates(message as PhoneSportDataV2D))
          as PhoneSportDataV2D;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneSportDataV2D create() => PhoneSportDataV2D._();
  @$core.override
  PhoneSportDataV2D createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneSportDataV2D getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneSportDataV2D>(create);
  static PhoneSportDataV2D? _defaultInstance;

  @$pb.TagNumber(1)
  GpsAccuracy get gpsAccuracy => $_getN(0);
  @$pb.TagNumber(1)
  set gpsAccuracy(GpsAccuracy value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGpsAccuracy() => $_has(0);
  @$pb.TagNumber(1)
  void clearGpsAccuracy() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get timestamp => $_getIZ(1);
  @$pb.TagNumber(2)
  set timestamp($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get longitude => $_getN(2);
  @$pb.TagNumber(3)
  set longitude($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLongitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongitude() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get latitude => $_getN(3);
  @$pb.TagNumber(4)
  set latitude($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLatitude() => $_has(3);
  @$pb.TagNumber(4)
  void clearLatitude() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get altitude => $_getN(4);
  @$pb.TagNumber(5)
  set altitude($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAltitude() => $_has(4);
  @$pb.TagNumber(5)
  void clearAltitude() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get speed => $_getN(5);
  @$pb.TagNumber(6)
  set speed($core.double value) => $_setFloat(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSpeed() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpeed() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get bearing => $_getN(6);
  @$pb.TagNumber(7)
  set bearing($core.double value) => $_setFloat(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBearing() => $_has(6);
  @$pb.TagNumber(7)
  void clearBearing() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get horizontalAccuracy => $_getN(7);
  @$pb.TagNumber(8)
  set horizontalAccuracy($core.double value) => $_setFloat(7, value);
  @$pb.TagNumber(8)
  $core.bool hasHorizontalAccuracy() => $_has(7);
  @$pb.TagNumber(8)
  void clearHorizontalAccuracy() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get verticalAccuracy => $_getN(8);
  @$pb.TagNumber(9)
  set verticalAccuracy($core.double value) => $_setFloat(8, value);
  @$pb.TagNumber(9)
  $core.bool hasVerticalAccuracy() => $_has(8);
  @$pb.TagNumber(9)
  void clearVerticalAccuracy() => $_clearField(9);
}

class PhoneSportDataV2A extends $pb.GeneratedMessage {
  factory PhoneSportDataV2A({
    $core.int? duration,
    $core.int? heartRate,
    $core.int? calories,
    $core.int? distance,
    $core.int? currentPace,
    $core.int? averagePace,
    $core.int? steps,
    $core.int? stride,
    $core.int? strideFrequency,
    $core.double? rise,
    $core.double? decline,
    $core.int? reminderKilometreDuration,
    $core.int? reminderKilometrePace,
    $core.int? reminderPace,
    $core.int? reminderHeartRate,
    $0.SportTargetType? targetType,
    $core.int? targetValue,
    $core.int? currentValue,
    $0.HeartRateSection? heartRateSection,
  }) {
    final result = create();
    if (duration != null) result.duration = duration;
    if (heartRate != null) result.heartRate = heartRate;
    if (calories != null) result.calories = calories;
    if (distance != null) result.distance = distance;
    if (currentPace != null) result.currentPace = currentPace;
    if (averagePace != null) result.averagePace = averagePace;
    if (steps != null) result.steps = steps;
    if (stride != null) result.stride = stride;
    if (strideFrequency != null) result.strideFrequency = strideFrequency;
    if (rise != null) result.rise = rise;
    if (decline != null) result.decline = decline;
    if (reminderKilometreDuration != null)
      result.reminderKilometreDuration = reminderKilometreDuration;
    if (reminderKilometrePace != null)
      result.reminderKilometrePace = reminderKilometrePace;
    if (reminderPace != null) result.reminderPace = reminderPace;
    if (reminderHeartRate != null) result.reminderHeartRate = reminderHeartRate;
    if (targetType != null) result.targetType = targetType;
    if (targetValue != null) result.targetValue = targetValue;
    if (currentValue != null) result.currentValue = currentValue;
    if (heartRateSection != null) result.heartRateSection = heartRateSection;
    return result;
  }

  PhoneSportDataV2A._();

  factory PhoneSportDataV2A.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneSportDataV2A.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneSportDataV2A',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'heartRate', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'calories', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'currentPace',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'averagePace',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'steps', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'stride', fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'strideFrequency',
        fieldType: $pb.PbFieldType.OU3)
    ..aD(10, _omitFieldNames ? '' : 'rise', fieldType: $pb.PbFieldType.OF)
    ..aD(11, _omitFieldNames ? '' : 'decline', fieldType: $pb.PbFieldType.OF)
    ..aI(12, _omitFieldNames ? '' : 'reminderKilometreDuration',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(13, _omitFieldNames ? '' : 'reminderKilometrePace',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'reminderPace',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'reminderHeartRate',
        fieldType: $pb.PbFieldType.OU3)
    ..aE<$0.SportTargetType>(16, _omitFieldNames ? '' : 'targetType',
        enumValues: $0.SportTargetType.values)
    ..aI(17, _omitFieldNames ? '' : 'targetValue',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(18, _omitFieldNames ? '' : 'currentValue',
        fieldType: $pb.PbFieldType.OU3)
    ..aE<$0.HeartRateSection>(19, _omitFieldNames ? '' : 'heartRateSection',
        enumValues: $0.HeartRateSection.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSportDataV2A clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneSportDataV2A copyWith(void Function(PhoneSportDataV2A) updates) =>
      super.copyWith((message) => updates(message as PhoneSportDataV2A))
          as PhoneSportDataV2A;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneSportDataV2A create() => PhoneSportDataV2A._();
  @$core.override
  PhoneSportDataV2A createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneSportDataV2A getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneSportDataV2A>(create);
  static PhoneSportDataV2A? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get duration => $_getIZ(0);
  @$pb.TagNumber(1)
  set duration($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDuration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDuration() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get heartRate => $_getIZ(1);
  @$pb.TagNumber(2)
  set heartRate($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHeartRate() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeartRate() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get calories => $_getIZ(2);
  @$pb.TagNumber(3)
  set calories($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCalories() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalories() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get distance => $_getIZ(3);
  @$pb.TagNumber(4)
  set distance($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDistance() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistance() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get currentPace => $_getIZ(4);
  @$pb.TagNumber(5)
  set currentPace($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCurrentPace() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentPace() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get averagePace => $_getIZ(5);
  @$pb.TagNumber(6)
  set averagePace($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAveragePace() => $_has(5);
  @$pb.TagNumber(6)
  void clearAveragePace() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get steps => $_getIZ(6);
  @$pb.TagNumber(7)
  set steps($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSteps() => $_has(6);
  @$pb.TagNumber(7)
  void clearSteps() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get stride => $_getIZ(7);
  @$pb.TagNumber(8)
  set stride($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStride() => $_has(7);
  @$pb.TagNumber(8)
  void clearStride() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get strideFrequency => $_getIZ(8);
  @$pb.TagNumber(9)
  set strideFrequency($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasStrideFrequency() => $_has(8);
  @$pb.TagNumber(9)
  void clearStrideFrequency() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get rise => $_getN(9);
  @$pb.TagNumber(10)
  set rise($core.double value) => $_setFloat(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRise() => $_has(9);
  @$pb.TagNumber(10)
  void clearRise() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get decline => $_getN(10);
  @$pb.TagNumber(11)
  set decline($core.double value) => $_setFloat(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDecline() => $_has(10);
  @$pb.TagNumber(11)
  void clearDecline() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get reminderKilometreDuration => $_getIZ(11);
  @$pb.TagNumber(12)
  set reminderKilometreDuration($core.int value) =>
      $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasReminderKilometreDuration() => $_has(11);
  @$pb.TagNumber(12)
  void clearReminderKilometreDuration() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get reminderKilometrePace => $_getIZ(12);
  @$pb.TagNumber(13)
  set reminderKilometrePace($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasReminderKilometrePace() => $_has(12);
  @$pb.TagNumber(13)
  void clearReminderKilometrePace() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get reminderPace => $_getIZ(13);
  @$pb.TagNumber(14)
  set reminderPace($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasReminderPace() => $_has(13);
  @$pb.TagNumber(14)
  void clearReminderPace() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get reminderHeartRate => $_getIZ(14);
  @$pb.TagNumber(15)
  set reminderHeartRate($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasReminderHeartRate() => $_has(14);
  @$pb.TagNumber(15)
  void clearReminderHeartRate() => $_clearField(15);

  @$pb.TagNumber(16)
  $0.SportTargetType get targetType => $_getN(15);
  @$pb.TagNumber(16)
  set targetType($0.SportTargetType value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasTargetType() => $_has(15);
  @$pb.TagNumber(16)
  void clearTargetType() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get targetValue => $_getIZ(16);
  @$pb.TagNumber(17)
  set targetValue($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasTargetValue() => $_has(16);
  @$pb.TagNumber(17)
  void clearTargetValue() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get currentValue => $_getIZ(17);
  @$pb.TagNumber(18)
  set currentValue($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasCurrentValue() => $_has(17);
  @$pb.TagNumber(18)
  void clearCurrentValue() => $_clearField(18);

  @$pb.TagNumber(19)
  $0.HeartRateSection get heartRateSection => $_getN(18);
  @$pb.TagNumber(19)
  set heartRateSection($0.HeartRateSection value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasHeartRateSection() => $_has(18);
  @$pb.TagNumber(19)
  void clearHeartRateSection() => $_clearField(19);
}

class WearSportDataV2A_ErrorState extends $pb.GeneratedMessage {
  factory WearSportDataV2A_ErrorState({
    $core.bool? modeChanged,
    $core.int? lowBattery,
  }) {
    final result = create();
    if (modeChanged != null) result.modeChanged = modeChanged;
    if (lowBattery != null) result.lowBattery = lowBattery;
    return result;
  }

  WearSportDataV2A_ErrorState._();

  factory WearSportDataV2A_ErrorState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearSportDataV2A_ErrorState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearSportDataV2A.ErrorState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'modeChanged')
    ..aI(2, _omitFieldNames ? '' : 'lowBattery', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearSportDataV2A_ErrorState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearSportDataV2A_ErrorState copyWith(
          void Function(WearSportDataV2A_ErrorState) updates) =>
      super.copyWith(
              (message) => updates(message as WearSportDataV2A_ErrorState))
          as WearSportDataV2A_ErrorState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearSportDataV2A_ErrorState create() =>
      WearSportDataV2A_ErrorState._();
  @$core.override
  WearSportDataV2A_ErrorState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearSportDataV2A_ErrorState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearSportDataV2A_ErrorState>(create);
  static WearSportDataV2A_ErrorState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get modeChanged => $_getBF(0);
  @$pb.TagNumber(1)
  set modeChanged($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasModeChanged() => $_has(0);
  @$pb.TagNumber(1)
  void clearModeChanged() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get lowBattery => $_getIZ(1);
  @$pb.TagNumber(2)
  set lowBattery($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLowBattery() => $_has(1);
  @$pb.TagNumber(2)
  void clearLowBattery() => $_clearField(2);
}

class WearSportDataV2A extends $pb.GeneratedMessage {
  factory WearSportDataV2A({
    $core.int? heartRate,
    $core.int? calories,
    $core.int? steps,
    $core.int? distance,
    WearSportDataV2A_ErrorState? errorState,
    $core.int? stride,
    $core.int? revolutionCount,
    $core.int? frequency,
    $core.int? runStyle,
    $core.int? impact,
    $core.int? onGround,
    $core.int? offGround,
    $core.int? onOffRatio,
    $core.int? currentPace,
    $core.double? currentSpeed,
    $core.int? verticalStrideRatio,
    $core.int? verticalAmplitude,
  }) {
    final result = create();
    if (heartRate != null) result.heartRate = heartRate;
    if (calories != null) result.calories = calories;
    if (steps != null) result.steps = steps;
    if (distance != null) result.distance = distance;
    if (errorState != null) result.errorState = errorState;
    if (stride != null) result.stride = stride;
    if (revolutionCount != null) result.revolutionCount = revolutionCount;
    if (frequency != null) result.frequency = frequency;
    if (runStyle != null) result.runStyle = runStyle;
    if (impact != null) result.impact = impact;
    if (onGround != null) result.onGround = onGround;
    if (offGround != null) result.offGround = offGround;
    if (onOffRatio != null) result.onOffRatio = onOffRatio;
    if (currentPace != null) result.currentPace = currentPace;
    if (currentSpeed != null) result.currentSpeed = currentSpeed;
    if (verticalStrideRatio != null)
      result.verticalStrideRatio = verticalStrideRatio;
    if (verticalAmplitude != null) result.verticalAmplitude = verticalAmplitude;
    return result;
  }

  WearSportDataV2A._();

  factory WearSportDataV2A.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearSportDataV2A.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearSportDataV2A',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'heartRate', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'calories', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'steps', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.OU3)
    ..aOM<WearSportDataV2A_ErrorState>(5, _omitFieldNames ? '' : 'errorState',
        subBuilder: WearSportDataV2A_ErrorState.create)
    ..aI(6, _omitFieldNames ? '' : 'stride', fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'revolutionCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'frequency', fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'runStyle', fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'impact', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'onGround', fieldType: $pb.PbFieldType.OU3)
    ..aI(12, _omitFieldNames ? '' : 'offGround', fieldType: $pb.PbFieldType.OU3)
    ..aI(13, _omitFieldNames ? '' : 'onOffRatio',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'currentPace',
        fieldType: $pb.PbFieldType.OU3)
    ..aD(15, _omitFieldNames ? '' : 'currentSpeed',
        fieldType: $pb.PbFieldType.OF)
    ..aI(16, _omitFieldNames ? '' : 'verticalStrideRatio',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(17, _omitFieldNames ? '' : 'verticalAmplitude',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearSportDataV2A clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearSportDataV2A copyWith(void Function(WearSportDataV2A) updates) =>
      super.copyWith((message) => updates(message as WearSportDataV2A))
          as WearSportDataV2A;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearSportDataV2A create() => WearSportDataV2A._();
  @$core.override
  WearSportDataV2A createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearSportDataV2A getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearSportDataV2A>(create);
  static WearSportDataV2A? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get heartRate => $_getIZ(0);
  @$pb.TagNumber(1)
  set heartRate($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHeartRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeartRate() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get calories => $_getIZ(1);
  @$pb.TagNumber(2)
  set calories($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCalories() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalories() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get steps => $_getIZ(2);
  @$pb.TagNumber(3)
  set steps($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSteps() => $_has(2);
  @$pb.TagNumber(3)
  void clearSteps() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get distance => $_getIZ(3);
  @$pb.TagNumber(4)
  set distance($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDistance() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistance() => $_clearField(4);

  @$pb.TagNumber(5)
  WearSportDataV2A_ErrorState get errorState => $_getN(4);
  @$pb.TagNumber(5)
  set errorState(WearSportDataV2A_ErrorState value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasErrorState() => $_has(4);
  @$pb.TagNumber(5)
  void clearErrorState() => $_clearField(5);
  @$pb.TagNumber(5)
  WearSportDataV2A_ErrorState ensureErrorState() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get stride => $_getIZ(5);
  @$pb.TagNumber(6)
  set stride($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStride() => $_has(5);
  @$pb.TagNumber(6)
  void clearStride() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get revolutionCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set revolutionCount($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRevolutionCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearRevolutionCount() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get frequency => $_getIZ(7);
  @$pb.TagNumber(8)
  set frequency($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFrequency() => $_has(7);
  @$pb.TagNumber(8)
  void clearFrequency() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get runStyle => $_getIZ(8);
  @$pb.TagNumber(9)
  set runStyle($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRunStyle() => $_has(8);
  @$pb.TagNumber(9)
  void clearRunStyle() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get impact => $_getIZ(9);
  @$pb.TagNumber(10)
  set impact($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasImpact() => $_has(9);
  @$pb.TagNumber(10)
  void clearImpact() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get onGround => $_getIZ(10);
  @$pb.TagNumber(11)
  set onGround($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasOnGround() => $_has(10);
  @$pb.TagNumber(11)
  void clearOnGround() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get offGround => $_getIZ(11);
  @$pb.TagNumber(12)
  set offGround($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasOffGround() => $_has(11);
  @$pb.TagNumber(12)
  void clearOffGround() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get onOffRatio => $_getIZ(12);
  @$pb.TagNumber(13)
  set onOffRatio($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasOnOffRatio() => $_has(12);
  @$pb.TagNumber(13)
  void clearOnOffRatio() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get currentPace => $_getIZ(13);
  @$pb.TagNumber(14)
  set currentPace($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCurrentPace() => $_has(13);
  @$pb.TagNumber(14)
  void clearCurrentPace() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.double get currentSpeed => $_getN(14);
  @$pb.TagNumber(15)
  set currentSpeed($core.double value) => $_setFloat(14, value);
  @$pb.TagNumber(15)
  $core.bool hasCurrentSpeed() => $_has(14);
  @$pb.TagNumber(15)
  void clearCurrentSpeed() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get verticalStrideRatio => $_getIZ(15);
  @$pb.TagNumber(16)
  set verticalStrideRatio($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasVerticalStrideRatio() => $_has(15);
  @$pb.TagNumber(16)
  void clearVerticalStrideRatio() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get verticalAmplitude => $_getIZ(16);
  @$pb.TagNumber(17)
  set verticalAmplitude($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasVerticalAmplitude() => $_has(16);
  @$pb.TagNumber(17)
  void clearVerticalAmplitude() => $_clearField(17);
}

class GYMSetting_List extends $pb.GeneratedMessage {
  factory GYMSetting_List({
    $core.Iterable<GYMSetting>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  GYMSetting_List._();

  factory GYMSetting_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GYMSetting_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GYMSetting.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<GYMSetting>(1, _omitFieldNames ? '' : 'list',
        subBuilder: GYMSetting.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMSetting_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMSetting_List copyWith(void Function(GYMSetting_List) updates) =>
      super.copyWith((message) => updates(message as GYMSetting_List))
          as GYMSetting_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GYMSetting_List create() => GYMSetting_List._();
  @$core.override
  GYMSetting_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GYMSetting_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GYMSetting_List>(create);
  static GYMSetting_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<GYMSetting> get list => $_getList(0);
}

class GYMSetting extends $pb.GeneratedMessage {
  factory GYMSetting({
    GYMSetting_Key? key,
    $core.int? value,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    return result;
  }

  GYMSetting._();

  factory GYMSetting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GYMSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GYMSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<GYMSetting_Key>(1, _omitFieldNames ? '' : 'key',
        fieldType: $pb.PbFieldType.QE, enumValues: GYMSetting_Key.values)
    ..aI(2, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.QS3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMSetting copyWith(void Function(GYMSetting) updates) =>
      super.copyWith((message) => updates(message as GYMSetting)) as GYMSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GYMSetting create() => GYMSetting._();
  @$core.override
  GYMSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GYMSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GYMSetting>(create);
  static GYMSetting? _defaultInstance;

  @$pb.TagNumber(1)
  GYMSetting_Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(GYMSetting_Key value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get value => $_getIZ(1);
  @$pb.TagNumber(2)
  set value($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class GYMRequest extends $pb.GeneratedMessage {
  factory GYMRequest({
    $core.int? timestamp,
    $0.Timezone? timezone,
    $0.SportType? sportType,
    $0.SportState? state,
    $core.Iterable<SportTarget>? sportTargetList,
    SportCourse? sportCourse,
    $core.int? gymCapability,
    $core.List<$core.int>? ids,
    $0.SportType? mainSportType,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (timezone != null) result.timezone = timezone;
    if (sportType != null) result.sportType = sportType;
    if (state != null) result.state = state;
    if (sportTargetList != null) result.sportTargetList.addAll(sportTargetList);
    if (sportCourse != null) result.sportCourse = sportCourse;
    if (gymCapability != null) result.gymCapability = gymCapability;
    if (ids != null) result.ids = ids;
    if (mainSportType != null) result.mainSportType = mainSportType;
    return result;
  }

  GYMRequest._();

  factory GYMRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GYMRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GYMRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.QU3)
    ..aQM<$0.Timezone>(2, _omitFieldNames ? '' : 'timezone',
        subBuilder: $0.Timezone.create)
    ..aE<$0.SportType>(3, _omitFieldNames ? '' : 'sportType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportType.values)
    ..aE<$0.SportState>(4, _omitFieldNames ? '' : 'state',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportState.values)
    ..pPM<SportTarget>(5, _omitFieldNames ? '' : 'sportTargetList',
        subBuilder: SportTarget.create)
    ..aOM<SportCourse>(6, _omitFieldNames ? '' : 'sportCourse',
        subBuilder: SportCourse.create)
    ..aI(7, _omitFieldNames ? '' : 'gymCapability',
        fieldType: $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.QY)
    ..aE<$0.SportType>(9, _omitFieldNames ? '' : 'mainSportType',
        enumValues: $0.SportType.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMRequest copyWith(void Function(GYMRequest) updates) =>
      super.copyWith((message) => updates(message as GYMRequest)) as GYMRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GYMRequest create() => GYMRequest._();
  @$core.override
  GYMRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GYMRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GYMRequest>(create);
  static GYMRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Timezone get timezone => $_getN(1);
  @$pb.TagNumber(2)
  set timezone($0.Timezone value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTimezone() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimezone() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timezone ensureTimezone() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.SportType get sportType => $_getN(2);
  @$pb.TagNumber(3)
  set sportType($0.SportType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSportType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSportType() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.SportState get state => $_getN(3);
  @$pb.TagNumber(4)
  set state($0.SportState value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<SportTarget> get sportTargetList => $_getList(4);

  @$pb.TagNumber(6)
  SportCourse get sportCourse => $_getN(5);
  @$pb.TagNumber(6)
  set sportCourse(SportCourse value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSportCourse() => $_has(5);
  @$pb.TagNumber(6)
  void clearSportCourse() => $_clearField(6);
  @$pb.TagNumber(6)
  SportCourse ensureSportCourse() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.int get gymCapability => $_getIZ(6);
  @$pb.TagNumber(7)
  set gymCapability($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasGymCapability() => $_has(6);
  @$pb.TagNumber(7)
  void clearGymCapability() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get ids => $_getN(7);
  @$pb.TagNumber(8)
  set ids($core.List<$core.int> value) => $_setBytes(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIds() => $_has(7);
  @$pb.TagNumber(8)
  void clearIds() => $_clearField(8);

  @$pb.TagNumber(9)
  $0.SportType get mainSportType => $_getN(8);
  @$pb.TagNumber(9)
  set mainSportType($0.SportType value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasMainSportType() => $_has(8);
  @$pb.TagNumber(9)
  void clearMainSportType() => $_clearField(9);
}

class GYMResponse extends $pb.GeneratedMessage {
  factory GYMResponse({
    GYMResponse_Code? code,
    $core.int? gymCapability,
    $core.List<$core.int>? ids,
    SportStatus? sportStatus,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (gymCapability != null) result.gymCapability = gymCapability;
    if (ids != null) result.ids = ids;
    if (sportStatus != null) result.sportStatus = sportStatus;
    return result;
  }

  GYMResponse._();

  factory GYMResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GYMResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GYMResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<GYMResponse_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: GYMResponse_Code.values)
    ..aI(2, _omitFieldNames ? '' : 'gymCapability',
        fieldType: $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.QY)
    ..aOM<SportStatus>(4, _omitFieldNames ? '' : 'sportStatus',
        subBuilder: SportStatus.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMResponse copyWith(void Function(GYMResponse) updates) =>
      super.copyWith((message) => updates(message as GYMResponse))
          as GYMResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GYMResponse create() => GYMResponse._();
  @$core.override
  GYMResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GYMResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GYMResponse>(create);
  static GYMResponse? _defaultInstance;

  @$pb.TagNumber(1)
  GYMResponse_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(GYMResponse_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get gymCapability => $_getIZ(1);
  @$pb.TagNumber(2)
  set gymCapability($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGymCapability() => $_has(1);
  @$pb.TagNumber(2)
  void clearGymCapability() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get ids => $_getN(2);
  @$pb.TagNumber(3)
  set ids($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIds() => $_has(2);
  @$pb.TagNumber(3)
  void clearIds() => $_clearField(3);

  @$pb.TagNumber(4)
  SportStatus get sportStatus => $_getN(3);
  @$pb.TagNumber(4)
  set sportStatus(SportStatus value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSportStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearSportStatus() => $_clearField(4);
  @$pb.TagNumber(4)
  SportStatus ensureSportStatus() => $_ensure(3);
}

class GYMAssist extends $pb.GeneratedMessage {
  factory GYMAssist({
    $core.int? heartRate,
    $core.double? adjustSpeed,
    $core.int? adjustPace,
    $core.int? adjustResistanceLevel,
  }) {
    final result = create();
    if (heartRate != null) result.heartRate = heartRate;
    if (adjustSpeed != null) result.adjustSpeed = adjustSpeed;
    if (adjustPace != null) result.adjustPace = adjustPace;
    if (adjustResistanceLevel != null)
      result.adjustResistanceLevel = adjustResistanceLevel;
    return result;
  }

  GYMAssist._();

  factory GYMAssist.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GYMAssist.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GYMAssist',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'heartRate', fieldType: $pb.PbFieldType.OU3)
    ..aD(2, _omitFieldNames ? '' : 'adjustSpeed', fieldType: $pb.PbFieldType.OF)
    ..aI(3, _omitFieldNames ? '' : 'adjustPace', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'adjustResistanceLevel',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMAssist clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMAssist copyWith(void Function(GYMAssist) updates) =>
      super.copyWith((message) => updates(message as GYMAssist)) as GYMAssist;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GYMAssist create() => GYMAssist._();
  @$core.override
  GYMAssist createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GYMAssist getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GYMAssist>(create);
  static GYMAssist? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get heartRate => $_getIZ(0);
  @$pb.TagNumber(1)
  set heartRate($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHeartRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeartRate() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get adjustSpeed => $_getN(1);
  @$pb.TagNumber(2)
  set adjustSpeed($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAdjustSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdjustSpeed() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get adjustPace => $_getIZ(2);
  @$pb.TagNumber(3)
  set adjustPace($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAdjustPace() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdjustPace() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get adjustResistanceLevel => $_getIZ(3);
  @$pb.TagNumber(4)
  set adjustResistanceLevel($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAdjustResistanceLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdjustResistanceLevel() => $_clearField(4);
}

class GYMData extends $pb.GeneratedMessage {
  factory GYMData({
    $core.int? duration,
    $core.int? calories,
    $core.int? heartRate,
    $core.int? distance,
    $core.int? steps,
    $core.int? stepFrequency,
    $core.int? currentPace,
    $core.double? speed,
    $core.int? currentRpm,
    $core.int? revolutionCount,
    $core.int? currentPower,
    $core.int? currentResistanceLevel,
    $core.int? jumpCount,
    $core.int? jumpHeight,
    $core.int? stumbleCount,
  }) {
    final result = create();
    if (duration != null) result.duration = duration;
    if (calories != null) result.calories = calories;
    if (heartRate != null) result.heartRate = heartRate;
    if (distance != null) result.distance = distance;
    if (steps != null) result.steps = steps;
    if (stepFrequency != null) result.stepFrequency = stepFrequency;
    if (currentPace != null) result.currentPace = currentPace;
    if (speed != null) result.speed = speed;
    if (currentRpm != null) result.currentRpm = currentRpm;
    if (revolutionCount != null) result.revolutionCount = revolutionCount;
    if (currentPower != null) result.currentPower = currentPower;
    if (currentResistanceLevel != null)
      result.currentResistanceLevel = currentResistanceLevel;
    if (jumpCount != null) result.jumpCount = jumpCount;
    if (jumpHeight != null) result.jumpHeight = jumpHeight;
    if (stumbleCount != null) result.stumbleCount = stumbleCount;
    return result;
  }

  GYMData._();

  factory GYMData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GYMData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GYMData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'calories', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'heartRate', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'steps', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'stepFrequency',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'currentPace',
        fieldType: $pb.PbFieldType.OU3)
    ..aD(8, _omitFieldNames ? '' : 'speed', fieldType: $pb.PbFieldType.OF)
    ..aI(9, _omitFieldNames ? '' : 'currentRpm', fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'revolutionCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'currentPower',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(12, _omitFieldNames ? '' : 'currentResistanceLevel',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(13, _omitFieldNames ? '' : 'jumpCount', fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'jumpHeight',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'stumbleCount',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GYMData copyWith(void Function(GYMData) updates) =>
      super.copyWith((message) => updates(message as GYMData)) as GYMData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GYMData create() => GYMData._();
  @$core.override
  GYMData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GYMData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GYMData>(create);
  static GYMData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get duration => $_getIZ(0);
  @$pb.TagNumber(1)
  set duration($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDuration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDuration() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get calories => $_getIZ(1);
  @$pb.TagNumber(2)
  set calories($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCalories() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalories() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get heartRate => $_getIZ(2);
  @$pb.TagNumber(3)
  set heartRate($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHeartRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeartRate() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get distance => $_getIZ(3);
  @$pb.TagNumber(4)
  set distance($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDistance() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistance() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get steps => $_getIZ(4);
  @$pb.TagNumber(5)
  set steps($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSteps() => $_has(4);
  @$pb.TagNumber(5)
  void clearSteps() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get stepFrequency => $_getIZ(5);
  @$pb.TagNumber(6)
  set stepFrequency($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStepFrequency() => $_has(5);
  @$pb.TagNumber(6)
  void clearStepFrequency() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get currentPace => $_getIZ(6);
  @$pb.TagNumber(7)
  set currentPace($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCurrentPace() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurrentPace() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get speed => $_getN(7);
  @$pb.TagNumber(8)
  set speed($core.double value) => $_setFloat(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSpeed() => $_has(7);
  @$pb.TagNumber(8)
  void clearSpeed() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get currentRpm => $_getIZ(8);
  @$pb.TagNumber(9)
  set currentRpm($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCurrentRpm() => $_has(8);
  @$pb.TagNumber(9)
  void clearCurrentRpm() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get revolutionCount => $_getIZ(9);
  @$pb.TagNumber(10)
  set revolutionCount($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRevolutionCount() => $_has(9);
  @$pb.TagNumber(10)
  void clearRevolutionCount() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get currentPower => $_getIZ(10);
  @$pb.TagNumber(11)
  set currentPower($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCurrentPower() => $_has(10);
  @$pb.TagNumber(11)
  void clearCurrentPower() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get currentResistanceLevel => $_getIZ(11);
  @$pb.TagNumber(12)
  set currentResistanceLevel($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCurrentResistanceLevel() => $_has(11);
  @$pb.TagNumber(12)
  void clearCurrentResistanceLevel() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get jumpCount => $_getIZ(12);
  @$pb.TagNumber(13)
  set jumpCount($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasJumpCount() => $_has(12);
  @$pb.TagNumber(13)
  void clearJumpCount() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get jumpHeight => $_getIZ(13);
  @$pb.TagNumber(14)
  set jumpHeight($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasJumpHeight() => $_has(13);
  @$pb.TagNumber(14)
  void clearJumpHeight() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get stumbleCount => $_getIZ(14);
  @$pb.TagNumber(15)
  set stumbleCount($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasStumbleCount() => $_has(14);
  @$pb.TagNumber(15)
  void clearStumbleCount() => $_clearField(15);
}

class ECGRequest extends $pb.GeneratedMessage {
  factory ECGRequest({
    ECGRequest_Type? type,
    ECGRequest_State? state,
    $core.int? expectedDuration,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (state != null) result.state = state;
    if (expectedDuration != null) result.expectedDuration = expectedDuration;
    return result;
  }

  ECGRequest._();

  factory ECGRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ECGRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ECGRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ECGRequest_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: ECGRequest_Type.values)
    ..aE<ECGRequest_State>(2, _omitFieldNames ? '' : 'state',
        fieldType: $pb.PbFieldType.QE, enumValues: ECGRequest_State.values)
    ..aI(3, _omitFieldNames ? '' : 'expectedDuration',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGRequest copyWith(void Function(ECGRequest) updates) =>
      super.copyWith((message) => updates(message as ECGRequest)) as ECGRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ECGRequest create() => ECGRequest._();
  @$core.override
  ECGRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ECGRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ECGRequest>(create);
  static ECGRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ECGRequest_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ECGRequest_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  ECGRequest_State get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(ECGRequest_State value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get expectedDuration => $_getIZ(2);
  @$pb.TagNumber(3)
  set expectedDuration($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpectedDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectedDuration() => $_clearField(3);
}

class ECGResponse extends $pb.GeneratedMessage {
  factory ECGResponse({
    ECGResponse_Code? code,
  }) {
    final result = create();
    if (code != null) result.code = code;
    return result;
  }

  ECGResponse._();

  factory ECGResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ECGResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ECGResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ECGResponse_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: ECGResponse_Code.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGResponse copyWith(void Function(ECGResponse) updates) =>
      super.copyWith((message) => updates(message as ECGResponse))
          as ECGResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ECGResponse create() => ECGResponse._();
  @$core.override
  ECGResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ECGResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ECGResponse>(create);
  static ECGResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ECGResponse_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(ECGResponse_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);
}

class ECGData extends $pb.GeneratedMessage {
  factory ECGData({
    $core.List<$core.int>? samplingData,
    $core.int? heartRate,
  }) {
    final result = create();
    if (samplingData != null) result.samplingData = samplingData;
    if (heartRate != null) result.heartRate = heartRate;
    return result;
  }

  ECGData._();

  factory ECGData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ECGData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ECGData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'samplingData', $pb.PbFieldType.QY)
    ..aI(2, _omitFieldNames ? '' : 'heartRate', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGData copyWith(void Function(ECGData) updates) =>
      super.copyWith((message) => updates(message as ECGData)) as ECGData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ECGData create() => ECGData._();
  @$core.override
  ECGData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ECGData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ECGData>(create);
  static ECGData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get samplingData => $_getN(0);
  @$pb.TagNumber(1)
  set samplingData($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSamplingData() => $_has(0);
  @$pb.TagNumber(1)
  void clearSamplingData() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get heartRate => $_getIZ(1);
  @$pb.TagNumber(2)
  set heartRate($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHeartRate() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeartRate() => $_clearField(2);
}

class ECGStatus extends $pb.GeneratedMessage {
  factory ECGStatus({
    ECGStatus_Status? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  ECGStatus._();

  factory ECGStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ECGStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ECGStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ECGStatus_Status>(1, _omitFieldNames ? '' : 'status',
        fieldType: $pb.PbFieldType.QE, enumValues: ECGStatus_Status.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGStatus copyWith(void Function(ECGStatus) updates) =>
      super.copyWith((message) => updates(message as ECGStatus)) as ECGStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ECGStatus create() => ECGStatus._();
  @$core.override
  ECGStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ECGStatus getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ECGStatus>(create);
  static ECGStatus? _defaultInstance;

  @$pb.TagNumber(1)
  ECGStatus_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ECGStatus_Status value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

class WomenHealth_Reminder_List extends $pb.GeneratedMessage {
  factory WomenHealth_Reminder_List({
    $core.Iterable<WomenHealth_Reminder>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  WomenHealth_Reminder_List._();

  factory WomenHealth_Reminder_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WomenHealth_Reminder_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WomenHealth.Reminder.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WomenHealth_Reminder>(1, _omitFieldNames ? '' : 'list',
        subBuilder: WomenHealth_Reminder.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Reminder_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Reminder_List copyWith(
          void Function(WomenHealth_Reminder_List) updates) =>
      super.copyWith((message) => updates(message as WomenHealth_Reminder_List))
          as WomenHealth_Reminder_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WomenHealth_Reminder_List create() => WomenHealth_Reminder_List._();
  @$core.override
  WomenHealth_Reminder_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WomenHealth_Reminder_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WomenHealth_Reminder_List>(create);
  static WomenHealth_Reminder_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WomenHealth_Reminder> get list => $_getList(0);
}

class WomenHealth_Reminder extends $pb.GeneratedMessage {
  factory WomenHealth_Reminder({
    WomenHealth_Type? type,
    $core.int? advancedDays,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (advancedDays != null) result.advancedDays = advancedDays;
    return result;
  }

  WomenHealth_Reminder._();

  factory WomenHealth_Reminder.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WomenHealth_Reminder.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WomenHealth.Reminder',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<WomenHealth_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: WomenHealth_Type.values)
    ..aI(2, _omitFieldNames ? '' : 'advancedDays',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Reminder clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Reminder copyWith(void Function(WomenHealth_Reminder) updates) =>
      super.copyWith((message) => updates(message as WomenHealth_Reminder))
          as WomenHealth_Reminder;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WomenHealth_Reminder create() => WomenHealth_Reminder._();
  @$core.override
  WomenHealth_Reminder createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WomenHealth_Reminder getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WomenHealth_Reminder>(create);
  static WomenHealth_Reminder? _defaultInstance;

  @$pb.TagNumber(1)
  WomenHealth_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(WomenHealth_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get advancedDays => $_getIZ(1);
  @$pb.TagNumber(2)
  set advancedDays($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAdvancedDays() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdvancedDays() => $_clearField(2);
}

class WomenHealth_Data_List extends $pb.GeneratedMessage {
  factory WomenHealth_Data_List({
    $core.int? timestamp,
    $0.Timezone? timezone,
    $core.Iterable<WomenHealth_Data>? list,
    $core.int? lastTimestamp,
    $core.int? lastDays,
    $core.int? nextTimestamp,
    WomenHealth_Type? nextType,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (timezone != null) result.timezone = timezone;
    if (list != null) result.list.addAll(list);
    if (lastTimestamp != null) result.lastTimestamp = lastTimestamp;
    if (lastDays != null) result.lastDays = lastDays;
    if (nextTimestamp != null) result.nextTimestamp = nextTimestamp;
    if (nextType != null) result.nextType = nextType;
    return result;
  }

  WomenHealth_Data_List._();

  factory WomenHealth_Data_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WomenHealth_Data_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WomenHealth.Data.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.QU3)
    ..aQM<$0.Timezone>(2, _omitFieldNames ? '' : 'timezone',
        subBuilder: $0.Timezone.create)
    ..pPM<WomenHealth_Data>(3, _omitFieldNames ? '' : 'list',
        subBuilder: WomenHealth_Data.create)
    ..aI(4, _omitFieldNames ? '' : 'lastTimestamp',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'lastDays', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'nextTimestamp',
        fieldType: $pb.PbFieldType.OU3)
    ..aE<WomenHealth_Type>(7, _omitFieldNames ? '' : 'nextType',
        enumValues: WomenHealth_Type.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Data_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Data_List copyWith(
          void Function(WomenHealth_Data_List) updates) =>
      super.copyWith((message) => updates(message as WomenHealth_Data_List))
          as WomenHealth_Data_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WomenHealth_Data_List create() => WomenHealth_Data_List._();
  @$core.override
  WomenHealth_Data_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WomenHealth_Data_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WomenHealth_Data_List>(create);
  static WomenHealth_Data_List? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Timezone get timezone => $_getN(1);
  @$pb.TagNumber(2)
  set timezone($0.Timezone value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTimezone() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimezone() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timezone ensureTimezone() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<WomenHealth_Data> get list => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get lastTimestamp => $_getIZ(3);
  @$pb.TagNumber(4)
  set lastTimestamp($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLastTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastTimestamp() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get lastDays => $_getIZ(4);
  @$pb.TagNumber(5)
  set lastDays($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLastDays() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastDays() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get nextTimestamp => $_getIZ(5);
  @$pb.TagNumber(6)
  set nextTimestamp($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNextTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearNextTimestamp() => $_clearField(6);

  @$pb.TagNumber(7)
  WomenHealth_Type get nextType => $_getN(6);
  @$pb.TagNumber(7)
  set nextType(WomenHealth_Type value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasNextType() => $_has(6);
  @$pb.TagNumber(7)
  void clearNextType() => $_clearField(7);
}

class WomenHealth_Data extends $pb.GeneratedMessage {
  factory WomenHealth_Data({
    WomenHealth_Type? type,
    $core.bool? forcast,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (forcast != null) result.forcast = forcast;
    return result;
  }

  WomenHealth_Data._();

  factory WomenHealth_Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WomenHealth_Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WomenHealth.Data',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<WomenHealth_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: WomenHealth_Type.values)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'forcast', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Data clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Data copyWith(void Function(WomenHealth_Data) updates) =>
      super.copyWith((message) => updates(message as WomenHealth_Data))
          as WomenHealth_Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WomenHealth_Data create() => WomenHealth_Data._();
  @$core.override
  WomenHealth_Data createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WomenHealth_Data getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WomenHealth_Data>(create);
  static WomenHealth_Data? _defaultInstance;

  @$pb.TagNumber(1)
  WomenHealth_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(WomenHealth_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get forcast => $_getBF(1);
  @$pb.TagNumber(2)
  set forcast($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForcast() => $_has(1);
  @$pb.TagNumber(2)
  void clearForcast() => $_clearField(2);
}

class WomenHealth_Section_List extends $pb.GeneratedMessage {
  factory WomenHealth_Section_List({
    $core.Iterable<WomenHealth_Section>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  WomenHealth_Section_List._();

  factory WomenHealth_Section_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WomenHealth_Section_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WomenHealth.Section.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WomenHealth_Section>(1, _omitFieldNames ? '' : 'list',
        subBuilder: WomenHealth_Section.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Section_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Section_List copyWith(
          void Function(WomenHealth_Section_List) updates) =>
      super.copyWith((message) => updates(message as WomenHealth_Section_List))
          as WomenHealth_Section_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WomenHealth_Section_List create() => WomenHealth_Section_List._();
  @$core.override
  WomenHealth_Section_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WomenHealth_Section_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WomenHealth_Section_List>(create);
  static WomenHealth_Section_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WomenHealth_Section> get list => $_getList(0);
}

class WomenHealth_Section extends $pb.GeneratedMessage {
  factory WomenHealth_Section({
    $core.int? startTimestamp,
    $core.int? endTimestamp,
    $core.int? updateTimestamp,
    $core.bool? isDeleted,
  }) {
    final result = create();
    if (startTimestamp != null) result.startTimestamp = startTimestamp;
    if (endTimestamp != null) result.endTimestamp = endTimestamp;
    if (updateTimestamp != null) result.updateTimestamp = updateTimestamp;
    if (isDeleted != null) result.isDeleted = isDeleted;
    return result;
  }

  WomenHealth_Section._();

  factory WomenHealth_Section.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WomenHealth_Section.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WomenHealth.Section',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'startTimestamp',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'endTimestamp',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'updateTimestamp',
        fieldType: $pb.PbFieldType.QU3)
    ..aOB(4, _omitFieldNames ? '' : 'isDeleted');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Section clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth_Section copyWith(void Function(WomenHealth_Section) updates) =>
      super.copyWith((message) => updates(message as WomenHealth_Section))
          as WomenHealth_Section;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WomenHealth_Section create() => WomenHealth_Section._();
  @$core.override
  WomenHealth_Section createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WomenHealth_Section getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WomenHealth_Section>(create);
  static WomenHealth_Section? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get startTimestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set startTimestamp($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStartTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get endTimestamp => $_getIZ(1);
  @$pb.TagNumber(2)
  set endTimestamp($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEndTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTimestamp() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get updateTimestamp => $_getIZ(2);
  @$pb.TagNumber(3)
  set updateTimestamp($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdateTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateTimestamp() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isDeleted => $_getBF(3);
  @$pb.TagNumber(4)
  set isDeleted($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsDeleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsDeleted() => $_clearField(4);
}

class WomenHealth extends $pb.GeneratedMessage {
  factory WomenHealth({
    $core.bool? enabled,
    $core.bool? forcastOn,
    WomenHealth_Reminder_List? reminderList,
    WomenHealth_Data_List? dataList,
    $core.int? menstruationDays,
    $core.int? menstruationPeroid,
    $core.int? initTimestamp,
    WomenHealth_Section_List? sections,
  }) {
    final result = create();
    if (enabled != null) result.enabled = enabled;
    if (forcastOn != null) result.forcastOn = forcastOn;
    if (reminderList != null) result.reminderList = reminderList;
    if (dataList != null) result.dataList = dataList;
    if (menstruationDays != null) result.menstruationDays = menstruationDays;
    if (menstruationPeroid != null)
      result.menstruationPeroid = menstruationPeroid;
    if (initTimestamp != null) result.initTimestamp = initTimestamp;
    if (sections != null) result.sections = sections;
    return result;
  }

  WomenHealth._();

  factory WomenHealth.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WomenHealth.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WomenHealth',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'enabled', $pb.PbFieldType.QB)
    ..aOB(2, _omitFieldNames ? '' : 'forcastOn')
    ..aOM<WomenHealth_Reminder_List>(3, _omitFieldNames ? '' : 'reminderList',
        subBuilder: WomenHealth_Reminder_List.create)
    ..aOM<WomenHealth_Data_List>(4, _omitFieldNames ? '' : 'dataList',
        subBuilder: WomenHealth_Data_List.create)
    ..aI(5, _omitFieldNames ? '' : 'menstruationDays',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'menstruationPeroid',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'initTimestamp',
        fieldType: $pb.PbFieldType.OU3)
    ..aOM<WomenHealth_Section_List>(8, _omitFieldNames ? '' : 'sections',
        subBuilder: WomenHealth_Section_List.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WomenHealth copyWith(void Function(WomenHealth) updates) =>
      super.copyWith((message) => updates(message as WomenHealth))
          as WomenHealth;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WomenHealth create() => WomenHealth._();
  @$core.override
  WomenHealth createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WomenHealth getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WomenHealth>(create);
  static WomenHealth? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get forcastOn => $_getBF(1);
  @$pb.TagNumber(2)
  set forcastOn($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForcastOn() => $_has(1);
  @$pb.TagNumber(2)
  void clearForcastOn() => $_clearField(2);

  @$pb.TagNumber(3)
  WomenHealth_Reminder_List get reminderList => $_getN(2);
  @$pb.TagNumber(3)
  set reminderList(WomenHealth_Reminder_List value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasReminderList() => $_has(2);
  @$pb.TagNumber(3)
  void clearReminderList() => $_clearField(3);
  @$pb.TagNumber(3)
  WomenHealth_Reminder_List ensureReminderList() => $_ensure(2);

  @$pb.TagNumber(4)
  WomenHealth_Data_List get dataList => $_getN(3);
  @$pb.TagNumber(4)
  set dataList(WomenHealth_Data_List value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDataList() => $_has(3);
  @$pb.TagNumber(4)
  void clearDataList() => $_clearField(4);
  @$pb.TagNumber(4)
  WomenHealth_Data_List ensureDataList() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get menstruationDays => $_getIZ(4);
  @$pb.TagNumber(5)
  set menstruationDays($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMenstruationDays() => $_has(4);
  @$pb.TagNumber(5)
  void clearMenstruationDays() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get menstruationPeroid => $_getIZ(5);
  @$pb.TagNumber(6)
  set menstruationPeroid($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMenstruationPeroid() => $_has(5);
  @$pb.TagNumber(6)
  void clearMenstruationPeroid() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get initTimestamp => $_getIZ(6);
  @$pb.TagNumber(7)
  set initTimestamp($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasInitTimestamp() => $_has(6);
  @$pb.TagNumber(7)
  void clearInitTimestamp() => $_clearField(7);

  @$pb.TagNumber(8)
  WomenHealth_Section_List get sections => $_getN(7);
  @$pb.TagNumber(8)
  set sections(WomenHealth_Section_List value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSections() => $_has(7);
  @$pb.TagNumber(8)
  void clearSections() => $_clearField(8);
  @$pb.TagNumber(8)
  WomenHealth_Section_List ensureSections() => $_ensure(7);
}

class MeasureReminder extends $pb.GeneratedMessage {
  factory MeasureReminder({
    $core.bool? enable,
    MeasureReminder_Category? category,
    $0.ClockMode? clockMode,
    $core.int? weekDays,
    $core.Iterable<$0.Time>? times,
  }) {
    final result = create();
    if (enable != null) result.enable = enable;
    if (category != null) result.category = category;
    if (clockMode != null) result.clockMode = clockMode;
    if (weekDays != null) result.weekDays = weekDays;
    if (times != null) result.times.addAll(times);
    return result;
  }

  MeasureReminder._();

  factory MeasureReminder.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MeasureReminder.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MeasureReminder',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB)
    ..aE<MeasureReminder_Category>(2, _omitFieldNames ? '' : 'category',
        enumValues: MeasureReminder_Category.values)
    ..aE<$0.ClockMode>(3, _omitFieldNames ? '' : 'clockMode',
        enumValues: $0.ClockMode.values)
    ..aI(4, _omitFieldNames ? '' : 'weekDays', fieldType: $pb.PbFieldType.OU3)
    ..pPM<$0.Time>(5, _omitFieldNames ? '' : 'times',
        subBuilder: $0.Time.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MeasureReminder clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MeasureReminder copyWith(void Function(MeasureReminder) updates) =>
      super.copyWith((message) => updates(message as MeasureReminder))
          as MeasureReminder;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MeasureReminder create() => MeasureReminder._();
  @$core.override
  MeasureReminder createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MeasureReminder getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MeasureReminder>(create);
  static MeasureReminder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enable => $_getBF(0);
  @$pb.TagNumber(1)
  set enable($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnable() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnable() => $_clearField(1);

  @$pb.TagNumber(2)
  MeasureReminder_Category get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(MeasureReminder_Category value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => $_clearField(2);

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
  $pb.PbList<$0.Time> get times => $_getList(4);
}

class VitalityReminder extends $pb.GeneratedMessage {
  factory VitalityReminder({
    $core.bool? reachGoal,
    $core.bool? reachHelp,
  }) {
    final result = create();
    if (reachGoal != null) result.reachGoal = reachGoal;
    if (reachHelp != null) result.reachHelp = reachHelp;
    return result;
  }

  VitalityReminder._();

  factory VitalityReminder.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VitalityReminder.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VitalityReminder',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'reachGoal', $pb.PbFieldType.QB)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'reachHelp', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VitalityReminder clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VitalityReminder copyWith(void Function(VitalityReminder) updates) =>
      super.copyWith((message) => updates(message as VitalityReminder))
          as VitalityReminder;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VitalityReminder create() => VitalityReminder._();
  @$core.override
  VitalityReminder createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VitalityReminder getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VitalityReminder>(create);
  static VitalityReminder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get reachGoal => $_getBF(0);
  @$pb.TagNumber(1)
  set reachGoal($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasReachGoal() => $_has(0);
  @$pb.TagNumber(1)
  void clearReachGoal() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get reachHelp => $_getBF(1);
  @$pb.TagNumber(2)
  set reachHelp($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReachHelp() => $_has(1);
  @$pb.TagNumber(2)
  void clearReachHelp() => $_clearField(2);
}

class ActivityReminder extends $pb.GeneratedMessage {
  factory ActivityReminder({
    $core.bool? sevenDayStage,
    $core.bool? dayUpperLimit,
  }) {
    final result = create();
    if (sevenDayStage != null) result.sevenDayStage = sevenDayStage;
    if (dayUpperLimit != null) result.dayUpperLimit = dayUpperLimit;
    return result;
  }

  ActivityReminder._();

  factory ActivityReminder.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ActivityReminder.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActivityReminder',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(
        1, _omitFieldNames ? '' : 'sevenDayStage', $pb.PbFieldType.QB)
    ..a<$core.bool>(
        2, _omitFieldNames ? '' : 'dayUpperLimit', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityReminder clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityReminder copyWith(void Function(ActivityReminder) updates) =>
      super.copyWith((message) => updates(message as ActivityReminder))
          as ActivityReminder;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityReminder create() => ActivityReminder._();
  @$core.override
  ActivityReminder createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ActivityReminder getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActivityReminder>(create);
  static ActivityReminder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get sevenDayStage => $_getBF(0);
  @$pb.TagNumber(1)
  set sevenDayStage($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSevenDayStage() => $_has(0);
  @$pb.TagNumber(1)
  void clearSevenDayStage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get dayUpperLimit => $_getBF(1);
  @$pb.TagNumber(2)
  set dayUpperLimit($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDayUpperLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearDayUpperLimit() => $_clearField(2);
}

class AxisSensor extends $pb.GeneratedMessage {
  factory AxisSensor({
    $fixnum.Int64? timestamp,
    $core.double? x,
    $core.double? y,
    $core.double? z,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (z != null) result.z = z;
    return result;
  }

  AxisSensor._();

  factory AxisSensor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AxisSensor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AxisSensor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(2, _omitFieldNames ? '' : 'x', fieldType: $pb.PbFieldType.QF)
    ..aD(3, _omitFieldNames ? '' : 'y', fieldType: $pb.PbFieldType.QF)
    ..aD(4, _omitFieldNames ? '' : 'z', fieldType: $pb.PbFieldType.QF);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AxisSensor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AxisSensor copyWith(void Function(AxisSensor) updates) =>
      super.copyWith((message) => updates(message as AxisSensor)) as AxisSensor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AxisSensor create() => AxisSensor._();
  @$core.override
  AxisSensor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AxisSensor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AxisSensor>(create);
  static AxisSensor? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get x => $_getN(1);
  @$pb.TagNumber(2)
  set x($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get y => $_getN(2);
  @$pb.TagNumber(3)
  set y($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasY() => $_has(2);
  @$pb.TagNumber(3)
  void clearY() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get z => $_getN(3);
  @$pb.TagNumber(4)
  set z($core.double value) => $_setFloat(3, value);
  @$pb.TagNumber(4)
  $core.bool hasZ() => $_has(3);
  @$pb.TagNumber(4)
  void clearZ() => $_clearField(4);
}

class WearSensorData extends $pb.GeneratedMessage {
  factory WearSensorData({
    $core.Iterable<AxisSensor>? accel,
    $core.Iterable<AxisSensor>? gyro,
  }) {
    final result = create();
    if (accel != null) result.accel.addAll(accel);
    if (gyro != null) result.gyro.addAll(gyro);
    return result;
  }

  WearSensorData._();

  factory WearSensorData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearSensorData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearSensorData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AxisSensor>(1, _omitFieldNames ? '' : 'accel',
        subBuilder: AxisSensor.create)
    ..pPM<AxisSensor>(2, _omitFieldNames ? '' : 'gyro',
        subBuilder: AxisSensor.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearSensorData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearSensorData copyWith(void Function(WearSensorData) updates) =>
      super.copyWith((message) => updates(message as WearSensorData))
          as WearSensorData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearSensorData create() => WearSensorData._();
  @$core.override
  WearSensorData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearSensorData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearSensorData>(create);
  static WearSensorData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AxisSensor> get accel => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<AxisSensor> get gyro => $_getList(1);
}

class ECGActivation extends $pb.GeneratedMessage {
  factory ECGActivation({
    $core.bool? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  ECGActivation._();

  factory ECGActivation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ECGActivation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ECGActivation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGActivation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ECGActivation copyWith(void Function(ECGActivation) updates) =>
      super.copyWith((message) => updates(message as ECGActivation))
          as ECGActivation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ECGActivation create() => ECGActivation._();
  @$core.override
  ECGActivation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ECGActivation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ECGActivation>(create);
  static ECGActivation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

class MotionInteract extends $pb.GeneratedMessage {
  factory MotionInteract({
    $core.int? vibrateLevel,
  }) {
    final result = create();
    if (vibrateLevel != null) result.vibrateLevel = vibrateLevel;
    return result;
  }

  MotionInteract._();

  factory MotionInteract.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MotionInteract.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MotionInteract',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'vibrateLevel',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MotionInteract clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MotionInteract copyWith(void Function(MotionInteract) updates) =>
      super.copyWith((message) => updates(message as MotionInteract))
          as MotionInteract;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MotionInteract create() => MotionInteract._();
  @$core.override
  MotionInteract createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MotionInteract getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MotionInteract>(create);
  static MotionInteract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get vibrateLevel => $_getIZ(0);
  @$pb.TagNumber(1)
  set vibrateLevel($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVibrateLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearVibrateLevel() => $_clearField(1);
}

class NaviRoute_List extends $pb.GeneratedMessage {
  factory NaviRoute_List({
    $core.Iterable<NaviRoute>? list,
    $core.int? supportedMaxNumber,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (supportedMaxNumber != null)
      result.supportedMaxNumber = supportedMaxNumber;
    return result;
  }

  NaviRoute_List._();

  factory NaviRoute_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NaviRoute_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NaviRoute.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<NaviRoute>(1, _omitFieldNames ? '' : 'list',
        subBuilder: NaviRoute.create)
    ..aI(2, _omitFieldNames ? '' : 'supportedMaxNumber',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_List copyWith(void Function(NaviRoute_List) updates) =>
      super.copyWith((message) => updates(message as NaviRoute_List))
          as NaviRoute_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NaviRoute_List create() => NaviRoute_List._();
  @$core.override
  NaviRoute_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NaviRoute_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NaviRoute_List>(create);
  static NaviRoute_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<NaviRoute> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get supportedMaxNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set supportedMaxNumber($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportedMaxNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportedMaxNumber() => $_clearField(2);
}

class NaviRoute_AddRequest extends $pb.GeneratedMessage {
  factory NaviRoute_AddRequest({
    NaviRoute? naviRoute,
    $core.int? routeSize,
  }) {
    final result = create();
    if (naviRoute != null) result.naviRoute = naviRoute;
    if (routeSize != null) result.routeSize = routeSize;
    return result;
  }

  NaviRoute_AddRequest._();

  factory NaviRoute_AddRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NaviRoute_AddRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NaviRoute.AddRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<NaviRoute>(1, _omitFieldNames ? '' : 'naviRoute',
        subBuilder: NaviRoute.create)
    ..aI(2, _omitFieldNames ? '' : 'routeSize', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_AddRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_AddRequest copyWith(void Function(NaviRoute_AddRequest) updates) =>
      super.copyWith((message) => updates(message as NaviRoute_AddRequest))
          as NaviRoute_AddRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NaviRoute_AddRequest create() => NaviRoute_AddRequest._();
  @$core.override
  NaviRoute_AddRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NaviRoute_AddRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NaviRoute_AddRequest>(create);
  static NaviRoute_AddRequest? _defaultInstance;

  @$pb.TagNumber(1)
  NaviRoute get naviRoute => $_getN(0);
  @$pb.TagNumber(1)
  set naviRoute(NaviRoute value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNaviRoute() => $_has(0);
  @$pb.TagNumber(1)
  void clearNaviRoute() => $_clearField(1);
  @$pb.TagNumber(1)
  NaviRoute ensureNaviRoute() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get routeSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set routeSize($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRouteSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearRouteSize() => $_clearField(2);
}

class NaviRoute_AddResponse extends $pb.GeneratedMessage {
  factory NaviRoute_AddResponse({
    $core.String? id,
    $0.PrepareStatus? prepareStatus,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (prepareStatus != null) result.prepareStatus = prepareStatus;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  NaviRoute_AddResponse._();

  factory NaviRoute_AddResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NaviRoute_AddResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NaviRoute.AddResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aE<$0.PrepareStatus>(2, _omitFieldNames ? '' : 'prepareStatus',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.PrepareStatus.values)
    ..aI(3, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_AddResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_AddResponse copyWith(
          void Function(NaviRoute_AddResponse) updates) =>
      super.copyWith((message) => updates(message as NaviRoute_AddResponse))
          as NaviRoute_AddResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NaviRoute_AddResponse create() => NaviRoute_AddResponse._();
  @$core.override
  NaviRoute_AddResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NaviRoute_AddResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NaviRoute_AddResponse>(create);
  static NaviRoute_AddResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.PrepareStatus get prepareStatus => $_getN(1);
  @$pb.TagNumber(2)
  set prepareStatus($0.PrepareStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPrepareStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrepareStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get expectedSliceLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpectedSliceLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectedSliceLength() => $_clearField(3);
}

class NaviRoute_AddResult extends $pb.GeneratedMessage {
  factory NaviRoute_AddResult({
    $core.String? id,
    $core.int? code,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (code != null) result.code = code;
    return result;
  }

  NaviRoute_AddResult._();

  factory NaviRoute_AddResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NaviRoute_AddResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NaviRoute.AddResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aI(2, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_AddResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_AddResult copyWith(void Function(NaviRoute_AddResult) updates) =>
      super.copyWith((message) => updates(message as NaviRoute_AddResult))
          as NaviRoute_AddResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NaviRoute_AddResult create() => NaviRoute_AddResult._();
  @$core.override
  NaviRoute_AddResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NaviRoute_AddResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NaviRoute_AddResult>(create);
  static NaviRoute_AddResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);
}

class NaviRoute_RemoveRequest extends $pb.GeneratedMessage {
  factory NaviRoute_RemoveRequest({
    $core.Iterable<$core.String>? routerIdList,
  }) {
    final result = create();
    if (routerIdList != null) result.routerIdList.addAll(routerIdList);
    return result;
  }

  NaviRoute_RemoveRequest._();

  factory NaviRoute_RemoveRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NaviRoute_RemoveRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NaviRoute.RemoveRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'routerIdList')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_RemoveRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_RemoveRequest copyWith(
          void Function(NaviRoute_RemoveRequest) updates) =>
      super.copyWith((message) => updates(message as NaviRoute_RemoveRequest))
          as NaviRoute_RemoveRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NaviRoute_RemoveRequest create() => NaviRoute_RemoveRequest._();
  @$core.override
  NaviRoute_RemoveRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NaviRoute_RemoveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NaviRoute_RemoveRequest>(create);
  static NaviRoute_RemoveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get routerIdList => $_getList(0);
}

class NaviRoute_RemoveResponse extends $pb.GeneratedMessage {
  factory NaviRoute_RemoveResponse({
    $core.int? code,
  }) {
    final result = create();
    if (code != null) result.code = code;
    return result;
  }

  NaviRoute_RemoveResponse._();

  factory NaviRoute_RemoveResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NaviRoute_RemoveResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NaviRoute.RemoveResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_RemoveResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute_RemoveResponse copyWith(
          void Function(NaviRoute_RemoveResponse) updates) =>
      super.copyWith((message) => updates(message as NaviRoute_RemoveResponse))
          as NaviRoute_RemoveResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NaviRoute_RemoveResponse create() => NaviRoute_RemoveResponse._();
  @$core.override
  NaviRoute_RemoveResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NaviRoute_RemoveResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NaviRoute_RemoveResponse>(create);
  static NaviRoute_RemoveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);
}

class NaviRoute extends $pb.GeneratedMessage {
  factory NaviRoute({
    $core.String? id,
    $core.String? name,
    $core.int? distance,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (distance != null) result.distance = distance;
    return result;
  }

  NaviRoute._();

  factory NaviRoute.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NaviRoute.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NaviRoute',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..aI(3, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaviRoute copyWith(void Function(NaviRoute) updates) =>
      super.copyWith((message) => updates(message as NaviRoute)) as NaviRoute;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NaviRoute create() => NaviRoute._();
  @$core.override
  NaviRoute createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NaviRoute getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NaviRoute>(create);
  static NaviRoute? _defaultInstance;

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
  $core.int get distance => $_getIZ(2);
  @$pb.TagNumber(3)
  set distance($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDistance() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistance() => $_clearField(3);
}

class SleepRegularity extends $pb.GeneratedMessage {
  factory SleepRegularity({
    $core.bool? on,
    $core.int? measurePeriod,
  }) {
    final result = create();
    if (on != null) result.on = on;
    if (measurePeriod != null) result.measurePeriod = measurePeriod;
    return result;
  }

  SleepRegularity._();

  factory SleepRegularity.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SleepRegularity.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SleepRegularity',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'on', $pb.PbFieldType.QB)
    ..aI(2, _omitFieldNames ? '' : 'measurePeriod',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepRegularity clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepRegularity copyWith(void Function(SleepRegularity) updates) =>
      super.copyWith((message) => updates(message as SleepRegularity))
          as SleepRegularity;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SleepRegularity create() => SleepRegularity._();
  @$core.override
  SleepRegularity createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SleepRegularity getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SleepRegularity>(create);
  static SleepRegularity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get on => $_getBF(0);
  @$pb.TagNumber(1)
  set on($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearOn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get measurePeriod => $_getIZ(1);
  @$pb.TagNumber(2)
  set measurePeriod($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMeasurePeriod() => $_has(1);
  @$pb.TagNumber(2)
  void clearMeasurePeriod() => $_clearField(2);
}

class SleepDisorder extends $pb.GeneratedMessage {
  factory SleepDisorder({
    $core.bool? reminder,
    $core.Iterable<$0.Time>? times,
  }) {
    final result = create();
    if (reminder != null) result.reminder = reminder;
    if (times != null) result.times.addAll(times);
    return result;
  }

  SleepDisorder._();

  factory SleepDisorder.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SleepDisorder.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SleepDisorder',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'reminder', $pb.PbFieldType.QB)
    ..pPM<$0.Time>(2, _omitFieldNames ? '' : 'times',
        subBuilder: $0.Time.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepDisorder clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepDisorder copyWith(void Function(SleepDisorder) updates) =>
      super.copyWith((message) => updates(message as SleepDisorder))
          as SleepDisorder;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SleepDisorder create() => SleepDisorder._();
  @$core.override
  SleepDisorder createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SleepDisorder getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SleepDisorder>(create);
  static SleepDisorder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get reminder => $_getBF(0);
  @$pb.TagNumber(1)
  set reminder($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasReminder() => $_has(0);
  @$pb.TagNumber(1)
  void clearReminder() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.Time> get times => $_getList(1);
}

class Research_App_List extends $pb.GeneratedMessage {
  factory Research_App_List({
    $core.Iterable<Research_App>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  Research_App_List._();

  factory Research_App_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research_App_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research.App.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Research_App>(1, _omitFieldNames ? '' : 'list',
        subBuilder: Research_App.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_App_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_App_List copyWith(void Function(Research_App_List) updates) =>
      super.copyWith((message) => updates(message as Research_App_List))
          as Research_App_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research_App_List create() => Research_App_List._();
  @$core.override
  Research_App_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research_App_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Research_App_List>(create);
  static Research_App_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Research_App> get list => $_getList(0);
}

class Research_App extends $pb.GeneratedMessage {
  factory Research_App({
    $core.int? id,
    $core.int? type,
    $core.bool? enable,
    $core.int? timestamp,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (type != null) result.type = type;
    if (enable != null) result.enable = enable;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  Research_App._();

  factory Research_App.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research_App.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research.App',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(3, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB)
    ..aI(4, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_App clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_App copyWith(void Function(Research_App) updates) =>
      super.copyWith((message) => updates(message as Research_App))
          as Research_App;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research_App create() => Research_App._();
  @$core.override
  Research_App createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research_App getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Research_App>(create);
  static Research_App? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get enable => $_getBF(2);
  @$pb.TagNumber(3)
  set enable($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEnable() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnable() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get timestamp => $_getIZ(3);
  @$pb.TagNumber(4)
  set timestamp($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => $_clearField(4);
}

class Research_Device_List extends $pb.GeneratedMessage {
  factory Research_Device_List({
    $core.Iterable<Research_Device>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  Research_Device_List._();

  factory Research_Device_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research_Device_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research.Device.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Research_Device>(1, _omitFieldNames ? '' : 'list',
        subBuilder: Research_Device.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_Device_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_Device_List copyWith(void Function(Research_Device_List) updates) =>
      super.copyWith((message) => updates(message as Research_Device_List))
          as Research_Device_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research_Device_List create() => Research_Device_List._();
  @$core.override
  Research_Device_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research_Device_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Research_Device_List>(create);
  static Research_Device_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Research_Device> get list => $_getList(0);
}

class Research_Device extends $pb.GeneratedMessage {
  factory Research_Device({
    $core.int? type,
    $core.bool? enable,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (enable != null) result.enable = enable;
    return result;
  }

  Research_Device._();

  factory Research_Device.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research_Device.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research.Device',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_Device clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_Device copyWith(void Function(Research_Device) updates) =>
      super.copyWith((message) => updates(message as Research_Device))
          as Research_Device;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research_Device create() => Research_Device._();
  @$core.override
  Research_Device createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research_Device getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Research_Device>(create);
  static Research_Device? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enable => $_getBF(1);
  @$pb.TagNumber(2)
  set enable($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnable() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnable() => $_clearField(2);
}

class Research_CalibrationRequest extends $pb.GeneratedMessage {
  factory Research_CalibrationRequest({
    $core.int? researchId,
    $core.int? type,
  }) {
    final result = create();
    if (researchId != null) result.researchId = researchId;
    if (type != null) result.type = type;
    return result;
  }

  Research_CalibrationRequest._();

  factory Research_CalibrationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research_CalibrationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research.CalibrationRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'researchId', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_CalibrationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_CalibrationRequest copyWith(
          void Function(Research_CalibrationRequest) updates) =>
      super.copyWith(
              (message) => updates(message as Research_CalibrationRequest))
          as Research_CalibrationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research_CalibrationRequest create() =>
      Research_CalibrationRequest._();
  @$core.override
  Research_CalibrationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research_CalibrationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Research_CalibrationRequest>(create);
  static Research_CalibrationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get researchId => $_getIZ(0);
  @$pb.TagNumber(1)
  set researchId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResearchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResearchId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
}

class Research_CalibrationResponse extends $pb.GeneratedMessage {
  factory Research_CalibrationResponse({
    $core.int? researchId,
    $core.int? code,
  }) {
    final result = create();
    if (researchId != null) result.researchId = researchId;
    if (code != null) result.code = code;
    return result;
  }

  Research_CalibrationResponse._();

  factory Research_CalibrationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research_CalibrationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research.CalibrationResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'researchId', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_CalibrationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_CalibrationResponse copyWith(
          void Function(Research_CalibrationResponse) updates) =>
      super.copyWith(
              (message) => updates(message as Research_CalibrationResponse))
          as Research_CalibrationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research_CalibrationResponse create() =>
      Research_CalibrationResponse._();
  @$core.override
  Research_CalibrationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research_CalibrationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Research_CalibrationResponse>(create);
  static Research_CalibrationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get researchId => $_getIZ(0);
  @$pb.TagNumber(1)
  set researchId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResearchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResearchId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);
}

class Research_BpSetting extends $pb.GeneratedMessage {
  factory Research_BpSetting({
    $core.int? researchId,
    $0.Time? caliMorning,
    $0.Time? caliAfternoon,
    $core.int? reminderFrequence,
  }) {
    final result = create();
    if (researchId != null) result.researchId = researchId;
    if (caliMorning != null) result.caliMorning = caliMorning;
    if (caliAfternoon != null) result.caliAfternoon = caliAfternoon;
    if (reminderFrequence != null) result.reminderFrequence = reminderFrequence;
    return result;
  }

  Research_BpSetting._();

  factory Research_BpSetting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research_BpSetting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research.BpSetting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'researchId', fieldType: $pb.PbFieldType.QU3)
    ..aQM<$0.Time>(2, _omitFieldNames ? '' : 'caliMorning',
        subBuilder: $0.Time.create)
    ..aQM<$0.Time>(3, _omitFieldNames ? '' : 'caliAfternoon',
        subBuilder: $0.Time.create)
    ..aI(4, _omitFieldNames ? '' : 'reminderFrequence',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_BpSetting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_BpSetting copyWith(void Function(Research_BpSetting) updates) =>
      super.copyWith((message) => updates(message as Research_BpSetting))
          as Research_BpSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research_BpSetting create() => Research_BpSetting._();
  @$core.override
  Research_BpSetting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research_BpSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Research_BpSetting>(create);
  static Research_BpSetting? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get researchId => $_getIZ(0);
  @$pb.TagNumber(1)
  set researchId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResearchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResearchId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Time get caliMorning => $_getN(1);
  @$pb.TagNumber(2)
  set caliMorning($0.Time value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCaliMorning() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaliMorning() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureCaliMorning() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Time get caliAfternoon => $_getN(2);
  @$pb.TagNumber(3)
  set caliAfternoon($0.Time value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCaliAfternoon() => $_has(2);
  @$pb.TagNumber(3)
  void clearCaliAfternoon() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureCaliAfternoon() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get reminderFrequence => $_getIZ(3);
  @$pb.TagNumber(4)
  set reminderFrequence($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReminderFrequence() => $_has(3);
  @$pb.TagNumber(4)
  void clearReminderFrequence() => $_clearField(4);
}

class Research_BPGCalibrationRequest extends $pb.GeneratedMessage {
  factory Research_BPGCalibrationRequest({
    $core.int? researchId,
    $core.int? needCalibTimes,
    $core.int? currentCalibTimes,
    $core.int? systolicBp,
    $core.int? diastolicBp,
  }) {
    final result = create();
    if (researchId != null) result.researchId = researchId;
    if (needCalibTimes != null) result.needCalibTimes = needCalibTimes;
    if (currentCalibTimes != null) result.currentCalibTimes = currentCalibTimes;
    if (systolicBp != null) result.systolicBp = systolicBp;
    if (diastolicBp != null) result.diastolicBp = diastolicBp;
    return result;
  }

  Research_BPGCalibrationRequest._();

  factory Research_BPGCalibrationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research_BPGCalibrationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research.BPGCalibrationRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'researchId', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'needCalibTimes',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'currentCalibTimes',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'systolicBp', fieldType: $pb.PbFieldType.QU3)
    ..aI(5, _omitFieldNames ? '' : 'diastolicBp',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_BPGCalibrationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_BPGCalibrationRequest copyWith(
          void Function(Research_BPGCalibrationRequest) updates) =>
      super.copyWith(
              (message) => updates(message as Research_BPGCalibrationRequest))
          as Research_BPGCalibrationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research_BPGCalibrationRequest create() =>
      Research_BPGCalibrationRequest._();
  @$core.override
  Research_BPGCalibrationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research_BPGCalibrationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Research_BPGCalibrationRequest>(create);
  static Research_BPGCalibrationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get researchId => $_getIZ(0);
  @$pb.TagNumber(1)
  set researchId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResearchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResearchId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get needCalibTimes => $_getIZ(1);
  @$pb.TagNumber(2)
  set needCalibTimes($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNeedCalibTimes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeedCalibTimes() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get currentCalibTimes => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentCalibTimes($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrentCalibTimes() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentCalibTimes() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get systolicBp => $_getIZ(3);
  @$pb.TagNumber(4)
  set systolicBp($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSystolicBp() => $_has(3);
  @$pb.TagNumber(4)
  void clearSystolicBp() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get diastolicBp => $_getIZ(4);
  @$pb.TagNumber(5)
  set diastolicBp($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDiastolicBp() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiastolicBp() => $_clearField(5);
}

class Research_BPGCalibrationStatus extends $pb.GeneratedMessage {
  factory Research_BPGCalibrationStatus({
    $core.int? calibSuccessTimes,
    $core.int? calibSuccessTs,
  }) {
    final result = create();
    if (calibSuccessTimes != null) result.calibSuccessTimes = calibSuccessTimes;
    if (calibSuccessTs != null) result.calibSuccessTs = calibSuccessTs;
    return result;
  }

  Research_BPGCalibrationStatus._();

  factory Research_BPGCalibrationStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research_BPGCalibrationStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research.BPGCalibrationStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'calibSuccessTimes',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'calibSuccessTs',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_BPGCalibrationStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research_BPGCalibrationStatus copyWith(
          void Function(Research_BPGCalibrationStatus) updates) =>
      super.copyWith(
              (message) => updates(message as Research_BPGCalibrationStatus))
          as Research_BPGCalibrationStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research_BPGCalibrationStatus create() =>
      Research_BPGCalibrationStatus._();
  @$core.override
  Research_BPGCalibrationStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research_BPGCalibrationStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Research_BPGCalibrationStatus>(create);
  static Research_BPGCalibrationStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get calibSuccessTimes => $_getIZ(0);
  @$pb.TagNumber(1)
  set calibSuccessTimes($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCalibSuccessTimes() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalibSuccessTimes() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get calibSuccessTs => $_getIZ(1);
  @$pb.TagNumber(2)
  set calibSuccessTs($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCalibSuccessTs() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalibSuccessTs() => $_clearField(2);
}

class Research extends $pb.GeneratedMessage {
  factory Research() => create();

  Research._();

  factory Research.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Research.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Research',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Research copyWith(void Function(Research) updates) =>
      super.copyWith((message) => updates(message as Research)) as Research;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Research create() => Research._();
  @$core.override
  Research createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Research getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Research>(create);
  static Research? _defaultInstance;
}

class PhoneControlData extends $pb.GeneratedMessage {
  factory PhoneControlData({
    $core.int? userRole,
    $core.int? remoteControl,
    $core.int? vibrateLevel,
  }) {
    final result = create();
    if (userRole != null) result.userRole = userRole;
    if (remoteControl != null) result.remoteControl = remoteControl;
    if (vibrateLevel != null) result.vibrateLevel = vibrateLevel;
    return result;
  }

  PhoneControlData._();

  factory PhoneControlData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneControlData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneControlData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'userRole', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'remoteControl',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'vibrateLevel',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneControlData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneControlData copyWith(void Function(PhoneControlData) updates) =>
      super.copyWith((message) => updates(message as PhoneControlData))
          as PhoneControlData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneControlData create() => PhoneControlData._();
  @$core.override
  PhoneControlData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneControlData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneControlData>(create);
  static PhoneControlData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userRole => $_getIZ(0);
  @$pb.TagNumber(1)
  set userRole($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserRole() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get remoteControl => $_getIZ(1);
  @$pb.TagNumber(2)
  set remoteControl($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRemoteControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemoteControl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get vibrateLevel => $_getIZ(2);
  @$pb.TagNumber(3)
  set vibrateLevel($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVibrateLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearVibrateLevel() => $_clearField(3);
}

class WearControlData extends $pb.GeneratedMessage {
  factory WearControlData({
    $core.int? keyEvent,
  }) {
    final result = create();
    if (keyEvent != null) result.keyEvent = keyEvent;
    return result;
  }

  WearControlData._();

  factory WearControlData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearControlData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearControlData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'keyEvent', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearControlData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearControlData copyWith(void Function(WearControlData) updates) =>
      super.copyWith((message) => updates(message as WearControlData))
          as WearControlData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearControlData create() => WearControlData._();
  @$core.override
  WearControlData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearControlData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearControlData>(create);
  static WearControlData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get keyEvent => $_getIZ(0);
  @$pb.TagNumber(1)
  set keyEvent($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKeyEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyEvent() => $_clearField(1);
}

class Course_Target extends $pb.GeneratedMessage {
  factory Course_Target({
    $0.SportTargetType? targetType,
    $core.int? value1,
    $core.int? value2,
  }) {
    final result = create();
    if (targetType != null) result.targetType = targetType;
    if (value1 != null) result.value1 = value1;
    if (value2 != null) result.value2 = value2;
    return result;
  }

  Course_Target._();

  factory Course_Target.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Course_Target.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Course.Target',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.SportTargetType>(1, _omitFieldNames ? '' : 'targetType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportTargetType.values)
    ..aI(2, _omitFieldNames ? '' : 'value1', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'value2', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Course_Target clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Course_Target copyWith(void Function(Course_Target) updates) =>
      super.copyWith((message) => updates(message as Course_Target))
          as Course_Target;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Course_Target create() => Course_Target._();
  @$core.override
  Course_Target createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Course_Target getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Course_Target>(create);
  static Course_Target? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SportTargetType get targetType => $_getN(0);
  @$pb.TagNumber(1)
  set targetType($0.SportTargetType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get value1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set value1($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue1() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue1() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get value2 => $_getIZ(2);
  @$pb.TagNumber(3)
  set value2($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue2() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue2() => $_clearField(3);
}

class Course_Part extends $pb.GeneratedMessage {
  factory Course_Part({
    $core.int? type,
    $core.int? duration,
    Course_Target? target,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (duration != null) result.duration = duration;
    if (target != null) result.target = target;
    return result;
  }

  Course_Part._();

  factory Course_Part.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Course_Part.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Course.Part',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.QU3)
    ..aOM<Course_Target>(3, _omitFieldNames ? '' : 'target',
        subBuilder: Course_Target.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Course_Part clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Course_Part copyWith(void Function(Course_Part) updates) =>
      super.copyWith((message) => updates(message as Course_Part))
          as Course_Part;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Course_Part create() => Course_Part._();
  @$core.override
  Course_Part createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Course_Part getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Course_Part>(create);
  static Course_Part? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get duration => $_getIZ(1);
  @$pb.TagNumber(2)
  set duration($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => $_clearField(2);

  @$pb.TagNumber(3)
  Course_Target get target => $_getN(2);
  @$pb.TagNumber(3)
  set target(Course_Target value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearTarget() => $_clearField(3);
  @$pb.TagNumber(3)
  Course_Target ensureTarget() => $_ensure(2);
}

class Course_Detail extends $pb.GeneratedMessage {
  factory Course_Detail({
    $core.String? name,
    $core.int? duration,
    $core.int? distance,
    $core.String? description,
    $core.Iterable<Course_Part>? parts,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (duration != null) result.duration = duration;
    if (distance != null) result.distance = distance;
    if (description != null) result.description = description;
    if (parts != null) result.parts.addAll(parts);
    return result;
  }

  Course_Detail._();

  factory Course_Detail.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Course_Detail.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Course.Detail',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aI(2, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.OU3)
    ..aQS(4, _omitFieldNames ? '' : 'description')
    ..pPM<Course_Part>(5, _omitFieldNames ? '' : 'parts',
        subBuilder: Course_Part.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Course_Detail clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Course_Detail copyWith(void Function(Course_Detail) updates) =>
      super.copyWith((message) => updates(message as Course_Detail))
          as Course_Detail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Course_Detail create() => Course_Detail._();
  @$core.override
  Course_Detail createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Course_Detail getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Course_Detail>(create);
  static Course_Detail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get duration => $_getIZ(1);
  @$pb.TagNumber(2)
  set duration($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get distance => $_getIZ(2);
  @$pb.TagNumber(3)
  set distance($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDistance() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistance() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<Course_Part> get parts => $_getList(4);
}

class Course extends $pb.GeneratedMessage {
  factory Course({
    $core.int? type,
    $fixnum.Int64? id,
    Course_Detail? detail,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    if (detail != null) result.detail = detail;
    return result;
  }

  Course._();

  factory Course.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Course.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Course',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'id', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Course_Detail>(3, _omitFieldNames ? '' : 'detail',
        subBuilder: Course_Detail.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Course clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Course copyWith(void Function(Course) updates) =>
      super.copyWith((message) => updates(message as Course)) as Course;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Course create() => Course._();
  @$core.override
  Course createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Course getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Course>(create);
  static Course? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  Course_Detail get detail => $_getN(2);
  @$pb.TagNumber(3)
  set detail(Course_Detail value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDetail() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetail() => $_clearField(3);
  @$pb.TagNumber(3)
  Course_Detail ensureDetail() => $_ensure(2);
}

class Training_Item extends $pb.GeneratedMessage {
  factory Training_Item({
    Course? course,
    $core.bool? finished,
    $core.int? timestamp,
  }) {
    final result = create();
    if (course != null) result.course = course;
    if (finished != null) result.finished = finished;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  Training_Item._();

  factory Training_Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Training_Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Training.Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<Course>(1, _omitFieldNames ? '' : 'course', subBuilder: Course.create)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'finished', $pb.PbFieldType.QB)
    ..aI(3, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Training_Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Training_Item copyWith(void Function(Training_Item) updates) =>
      super.copyWith((message) => updates(message as Training_Item))
          as Training_Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Training_Item create() => Training_Item._();
  @$core.override
  Training_Item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Training_Item getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Training_Item>(create);
  static Training_Item? _defaultInstance;

  @$pb.TagNumber(1)
  Course get course => $_getN(0);
  @$pb.TagNumber(1)
  set course(Course value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCourse() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourse() => $_clearField(1);
  @$pb.TagNumber(1)
  Course ensureCourse() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get finished => $_getBF(1);
  @$pb.TagNumber(2)
  set finished($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFinished() => $_has(1);
  @$pb.TagNumber(2)
  void clearFinished() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get timestamp => $_getIZ(2);
  @$pb.TagNumber(3)
  set timestamp($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => $_clearField(3);
}

class Training_Plan extends $pb.GeneratedMessage {
  factory Training_Plan({
    $core.int? timestamp,
    $core.Iterable<Training_Item>? items,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (items != null) result.items.addAll(items);
    return result;
  }

  Training_Plan._();

  factory Training_Plan.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Training_Plan.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Training.Plan',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.QU3)
    ..pPM<Training_Item>(2, _omitFieldNames ? '' : 'items',
        subBuilder: Training_Item.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Training_Plan clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Training_Plan copyWith(void Function(Training_Plan) updates) =>
      super.copyWith((message) => updates(message as Training_Plan))
          as Training_Plan;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Training_Plan create() => Training_Plan._();
  @$core.override
  Training_Plan createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Training_Plan getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Training_Plan>(create);
  static Training_Plan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<Training_Item> get items => $_getList(1);
}

class Training extends $pb.GeneratedMessage {
  factory Training({
    $core.int? type,
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    return result;
  }

  Training._();

  factory Training.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Training.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Training',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'id', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Training clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Training copyWith(void Function(Training) updates) =>
      super.copyWith((message) => updates(message as Training)) as Training;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Training create() => Training._();
  @$core.override
  Training createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Training getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Training>(create);
  static Training? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
}

class SportExtraData extends $pb.GeneratedMessage {
  factory SportExtraData({
    $core.int? avgPace,
    $core.int? maxPace,
    $core.double? avgSpeed,
    $core.double? maxSpeed,
    $core.int? avgFrequency,
    $core.int? maxFrequency,
    $core.int? avgStride,
    $core.int? degree,
    $core.int? mainRunStyle,
    $core.int? forefootRatio,
    $core.int? heelRatio,
    $core.int? avgImpact,
    $core.int? maxImpact,
    $core.int? avgOnGround,
    $core.int? minOnGround,
    $core.int? avgOffGround,
    $core.int? maxOffGround,
    $core.int? avgOnOffRatio,
    $core.int? minOnOffRatio,
    $core.int? maxOnGround,
    $core.int? avgVerticalStrideRatio,
    $core.int? minVerticalStrideRatio,
    $core.int? maxVerticalStrideRatio,
    $core.int? avgVerticalAmplitude,
    $core.int? minVerticalAmplitude,
    $core.int? maxVerticalAmplitude,
  }) {
    final result = create();
    if (avgPace != null) result.avgPace = avgPace;
    if (maxPace != null) result.maxPace = maxPace;
    if (avgSpeed != null) result.avgSpeed = avgSpeed;
    if (maxSpeed != null) result.maxSpeed = maxSpeed;
    if (avgFrequency != null) result.avgFrequency = avgFrequency;
    if (maxFrequency != null) result.maxFrequency = maxFrequency;
    if (avgStride != null) result.avgStride = avgStride;
    if (degree != null) result.degree = degree;
    if (mainRunStyle != null) result.mainRunStyle = mainRunStyle;
    if (forefootRatio != null) result.forefootRatio = forefootRatio;
    if (heelRatio != null) result.heelRatio = heelRatio;
    if (avgImpact != null) result.avgImpact = avgImpact;
    if (maxImpact != null) result.maxImpact = maxImpact;
    if (avgOnGround != null) result.avgOnGround = avgOnGround;
    if (minOnGround != null) result.minOnGround = minOnGround;
    if (avgOffGround != null) result.avgOffGround = avgOffGround;
    if (maxOffGround != null) result.maxOffGround = maxOffGround;
    if (avgOnOffRatio != null) result.avgOnOffRatio = avgOnOffRatio;
    if (minOnOffRatio != null) result.minOnOffRatio = minOnOffRatio;
    if (maxOnGround != null) result.maxOnGround = maxOnGround;
    if (avgVerticalStrideRatio != null)
      result.avgVerticalStrideRatio = avgVerticalStrideRatio;
    if (minVerticalStrideRatio != null)
      result.minVerticalStrideRatio = minVerticalStrideRatio;
    if (maxVerticalStrideRatio != null)
      result.maxVerticalStrideRatio = maxVerticalStrideRatio;
    if (avgVerticalAmplitude != null)
      result.avgVerticalAmplitude = avgVerticalAmplitude;
    if (minVerticalAmplitude != null)
      result.minVerticalAmplitude = minVerticalAmplitude;
    if (maxVerticalAmplitude != null)
      result.maxVerticalAmplitude = maxVerticalAmplitude;
    return result;
  }

  SportExtraData._();

  factory SportExtraData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SportExtraData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SportExtraData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'avgPace', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'maxPace', fieldType: $pb.PbFieldType.OU3)
    ..aD(3, _omitFieldNames ? '' : 'avgSpeed', fieldType: $pb.PbFieldType.OF)
    ..aD(4, _omitFieldNames ? '' : 'maxSpeed', fieldType: $pb.PbFieldType.OF)
    ..aI(5, _omitFieldNames ? '' : 'avgFrequency',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'maxFrequency',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'avgStride', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'degree')
    ..aI(9, _omitFieldNames ? '' : 'mainRunStyle',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'forefootRatio',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'heelRatio', fieldType: $pb.PbFieldType.OU3)
    ..aI(12, _omitFieldNames ? '' : 'avgImpact', fieldType: $pb.PbFieldType.OU3)
    ..aI(13, _omitFieldNames ? '' : 'maxImpact', fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'avgOnGround',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'minOnGround',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(16, _omitFieldNames ? '' : 'avgOffGround',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(17, _omitFieldNames ? '' : 'maxOffGround',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(18, _omitFieldNames ? '' : 'avgOnOffRatio',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(19, _omitFieldNames ? '' : 'minOnOffRatio',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(20, _omitFieldNames ? '' : 'maxOnGround',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(21, _omitFieldNames ? '' : 'avgVerticalStrideRatio',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(22, _omitFieldNames ? '' : 'minVerticalStrideRatio',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(23, _omitFieldNames ? '' : 'maxVerticalStrideRatio',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(24, _omitFieldNames ? '' : 'avgVerticalAmplitude',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(25, _omitFieldNames ? '' : 'minVerticalAmplitude',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(26, _omitFieldNames ? '' : 'maxVerticalAmplitude',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportExtraData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SportExtraData copyWith(void Function(SportExtraData) updates) =>
      super.copyWith((message) => updates(message as SportExtraData))
          as SportExtraData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SportExtraData create() => SportExtraData._();
  @$core.override
  SportExtraData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SportExtraData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SportExtraData>(create);
  static SportExtraData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get avgPace => $_getIZ(0);
  @$pb.TagNumber(1)
  set avgPace($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAvgPace() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvgPace() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxPace => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxPace($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxPace() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxPace() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get avgSpeed => $_getN(2);
  @$pb.TagNumber(3)
  set avgSpeed($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAvgSpeed() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvgSpeed() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get maxSpeed => $_getN(3);
  @$pb.TagNumber(4)
  set maxSpeed($core.double value) => $_setFloat(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMaxSpeed() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxSpeed() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get avgFrequency => $_getIZ(4);
  @$pb.TagNumber(5)
  set avgFrequency($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAvgFrequency() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvgFrequency() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get maxFrequency => $_getIZ(5);
  @$pb.TagNumber(6)
  set maxFrequency($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMaxFrequency() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxFrequency() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get avgStride => $_getIZ(6);
  @$pb.TagNumber(7)
  set avgStride($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAvgStride() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvgStride() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get degree => $_getIZ(7);
  @$pb.TagNumber(8)
  set degree($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDegree() => $_has(7);
  @$pb.TagNumber(8)
  void clearDegree() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get mainRunStyle => $_getIZ(8);
  @$pb.TagNumber(9)
  set mainRunStyle($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMainRunStyle() => $_has(8);
  @$pb.TagNumber(9)
  void clearMainRunStyle() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get forefootRatio => $_getIZ(9);
  @$pb.TagNumber(10)
  set forefootRatio($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasForefootRatio() => $_has(9);
  @$pb.TagNumber(10)
  void clearForefootRatio() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get heelRatio => $_getIZ(10);
  @$pb.TagNumber(11)
  set heelRatio($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasHeelRatio() => $_has(10);
  @$pb.TagNumber(11)
  void clearHeelRatio() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get avgImpact => $_getIZ(11);
  @$pb.TagNumber(12)
  set avgImpact($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasAvgImpact() => $_has(11);
  @$pb.TagNumber(12)
  void clearAvgImpact() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get maxImpact => $_getIZ(12);
  @$pb.TagNumber(13)
  set maxImpact($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasMaxImpact() => $_has(12);
  @$pb.TagNumber(13)
  void clearMaxImpact() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get avgOnGround => $_getIZ(13);
  @$pb.TagNumber(14)
  set avgOnGround($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasAvgOnGround() => $_has(13);
  @$pb.TagNumber(14)
  void clearAvgOnGround() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get minOnGround => $_getIZ(14);
  @$pb.TagNumber(15)
  set minOnGround($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasMinOnGround() => $_has(14);
  @$pb.TagNumber(15)
  void clearMinOnGround() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get avgOffGround => $_getIZ(15);
  @$pb.TagNumber(16)
  set avgOffGround($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasAvgOffGround() => $_has(15);
  @$pb.TagNumber(16)
  void clearAvgOffGround() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get maxOffGround => $_getIZ(16);
  @$pb.TagNumber(17)
  set maxOffGround($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasMaxOffGround() => $_has(16);
  @$pb.TagNumber(17)
  void clearMaxOffGround() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get avgOnOffRatio => $_getIZ(17);
  @$pb.TagNumber(18)
  set avgOnOffRatio($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasAvgOnOffRatio() => $_has(17);
  @$pb.TagNumber(18)
  void clearAvgOnOffRatio() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get minOnOffRatio => $_getIZ(18);
  @$pb.TagNumber(19)
  set minOnOffRatio($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasMinOnOffRatio() => $_has(18);
  @$pb.TagNumber(19)
  void clearMinOnOffRatio() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get maxOnGround => $_getIZ(19);
  @$pb.TagNumber(20)
  set maxOnGround($core.int value) => $_setUnsignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasMaxOnGround() => $_has(19);
  @$pb.TagNumber(20)
  void clearMaxOnGround() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get avgVerticalStrideRatio => $_getIZ(20);
  @$pb.TagNumber(21)
  set avgVerticalStrideRatio($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasAvgVerticalStrideRatio() => $_has(20);
  @$pb.TagNumber(21)
  void clearAvgVerticalStrideRatio() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get minVerticalStrideRatio => $_getIZ(21);
  @$pb.TagNumber(22)
  set minVerticalStrideRatio($core.int value) => $_setUnsignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasMinVerticalStrideRatio() => $_has(21);
  @$pb.TagNumber(22)
  void clearMinVerticalStrideRatio() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get maxVerticalStrideRatio => $_getIZ(22);
  @$pb.TagNumber(23)
  set maxVerticalStrideRatio($core.int value) => $_setUnsignedInt32(22, value);
  @$pb.TagNumber(23)
  $core.bool hasMaxVerticalStrideRatio() => $_has(22);
  @$pb.TagNumber(23)
  void clearMaxVerticalStrideRatio() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.int get avgVerticalAmplitude => $_getIZ(23);
  @$pb.TagNumber(24)
  set avgVerticalAmplitude($core.int value) => $_setUnsignedInt32(23, value);
  @$pb.TagNumber(24)
  $core.bool hasAvgVerticalAmplitude() => $_has(23);
  @$pb.TagNumber(24)
  void clearAvgVerticalAmplitude() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.int get minVerticalAmplitude => $_getIZ(24);
  @$pb.TagNumber(25)
  set minVerticalAmplitude($core.int value) => $_setUnsignedInt32(24, value);
  @$pb.TagNumber(25)
  $core.bool hasMinVerticalAmplitude() => $_has(24);
  @$pb.TagNumber(25)
  void clearMinVerticalAmplitude() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.int get maxVerticalAmplitude => $_getIZ(25);
  @$pb.TagNumber(26)
  set maxVerticalAmplitude($core.int value) => $_setUnsignedInt32(25, value);
  @$pb.TagNumber(26)
  $core.bool hasMaxVerticalAmplitude() => $_has(25);
  @$pb.TagNumber(26)
  void clearMaxVerticalAmplitude() => $_clearField(26);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
