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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pb.dart' as $0;
import 'wear_thirdparty_app.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_thirdparty_app.pbenum.dart';

enum ThirdpartyApp_Payload {
  appItemList,
  installRequest,
  installResponse,
  installResult,
  basicInfo,
  launchInfo,
  permissionInfoList,
  appStatus,
  messageContent,
  wechatLicenseRequest,
  wechatLicenseResponse,
  mihomeRequest,
  mihomeList,
  sceneRequest,
  sceneList,
  sceneExcutor,
  sceneResult,
  courseTable,
  bloodGlucose,
  notSet
}

class ThirdpartyApp extends $pb.GeneratedMessage {
  factory ThirdpartyApp({
    AppItem_List? appItemList,
    AppInstaller_Request? installRequest,
    AppInstaller_Response? installResponse,
    AppInstaller_Result? installResult,
    BasicInfo? basicInfo,
    LaunchInfo? launchInfo,
    PermissionInfo_List? permissionInfoList,
    PhoneAppStatus? appStatus,
    MessageContent? messageContent,
    WechatLicense_Request? wechatLicenseRequest,
    WechatLicense_Response? wechatLicenseResponse,
    MiHome_Request? mihomeRequest,
    MiHome_List? mihomeList,
    MiHome_Scene_Request? sceneRequest,
    MiHome_Scene_List? sceneList,
    MiHome_Scene_Executor? sceneExcutor,
    MiHome_Scene_Result? sceneResult,
    CourseTable? courseTable,
    BloodGlucose? bloodGlucose,
  }) {
    final result = create();
    if (appItemList != null) result.appItemList = appItemList;
    if (installRequest != null) result.installRequest = installRequest;
    if (installResponse != null) result.installResponse = installResponse;
    if (installResult != null) result.installResult = installResult;
    if (basicInfo != null) result.basicInfo = basicInfo;
    if (launchInfo != null) result.launchInfo = launchInfo;
    if (permissionInfoList != null)
      result.permissionInfoList = permissionInfoList;
    if (appStatus != null) result.appStatus = appStatus;
    if (messageContent != null) result.messageContent = messageContent;
    if (wechatLicenseRequest != null)
      result.wechatLicenseRequest = wechatLicenseRequest;
    if (wechatLicenseResponse != null)
      result.wechatLicenseResponse = wechatLicenseResponse;
    if (mihomeRequest != null) result.mihomeRequest = mihomeRequest;
    if (mihomeList != null) result.mihomeList = mihomeList;
    if (sceneRequest != null) result.sceneRequest = sceneRequest;
    if (sceneList != null) result.sceneList = sceneList;
    if (sceneExcutor != null) result.sceneExcutor = sceneExcutor;
    if (sceneResult != null) result.sceneResult = sceneResult;
    if (courseTable != null) result.courseTable = courseTable;
    if (bloodGlucose != null) result.bloodGlucose = bloodGlucose;
    return result;
  }

  ThirdpartyApp._();

  factory ThirdpartyApp.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThirdpartyApp.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ThirdpartyApp_Payload>
      _ThirdpartyApp_PayloadByTag = {
    1: ThirdpartyApp_Payload.appItemList,
    2: ThirdpartyApp_Payload.installRequest,
    3: ThirdpartyApp_Payload.installResponse,
    4: ThirdpartyApp_Payload.installResult,
    5: ThirdpartyApp_Payload.basicInfo,
    6: ThirdpartyApp_Payload.launchInfo,
    7: ThirdpartyApp_Payload.permissionInfoList,
    8: ThirdpartyApp_Payload.appStatus,
    9: ThirdpartyApp_Payload.messageContent,
    10: ThirdpartyApp_Payload.wechatLicenseRequest,
    12: ThirdpartyApp_Payload.wechatLicenseResponse,
    13: ThirdpartyApp_Payload.mihomeRequest,
    14: ThirdpartyApp_Payload.mihomeList,
    15: ThirdpartyApp_Payload.sceneRequest,
    16: ThirdpartyApp_Payload.sceneList,
    17: ThirdpartyApp_Payload.sceneExcutor,
    18: ThirdpartyApp_Payload.sceneResult,
    19: ThirdpartyApp_Payload.courseTable,
    20: ThirdpartyApp_Payload.bloodGlucose,
    0: ThirdpartyApp_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThirdpartyApp',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20])
    ..aOM<AppItem_List>(1, _omitFieldNames ? '' : 'appItemList',
        subBuilder: AppItem_List.create)
    ..aOM<AppInstaller_Request>(2, _omitFieldNames ? '' : 'installRequest',
        subBuilder: AppInstaller_Request.create)
    ..aOM<AppInstaller_Response>(3, _omitFieldNames ? '' : 'installResponse',
        subBuilder: AppInstaller_Response.create)
    ..aOM<AppInstaller_Result>(4, _omitFieldNames ? '' : 'installResult',
        subBuilder: AppInstaller_Result.create)
    ..aOM<BasicInfo>(5, _omitFieldNames ? '' : 'basicInfo',
        subBuilder: BasicInfo.create)
    ..aOM<LaunchInfo>(6, _omitFieldNames ? '' : 'launchInfo',
        subBuilder: LaunchInfo.create)
    ..aOM<PermissionInfo_List>(7, _omitFieldNames ? '' : 'permissionInfoList',
        subBuilder: PermissionInfo_List.create)
    ..aOM<PhoneAppStatus>(8, _omitFieldNames ? '' : 'appStatus',
        subBuilder: PhoneAppStatus.create)
    ..aOM<MessageContent>(9, _omitFieldNames ? '' : 'messageContent',
        subBuilder: MessageContent.create)
    ..aOM<WechatLicense_Request>(
        10, _omitFieldNames ? '' : 'wechatLicenseRequest',
        subBuilder: WechatLicense_Request.create)
    ..aOM<WechatLicense_Response>(
        12, _omitFieldNames ? '' : 'wechatLicenseResponse',
        subBuilder: WechatLicense_Response.create)
    ..aOM<MiHome_Request>(13, _omitFieldNames ? '' : 'mihomeRequest',
        subBuilder: MiHome_Request.create)
    ..aOM<MiHome_List>(14, _omitFieldNames ? '' : 'mihomeList',
        subBuilder: MiHome_List.create)
    ..aOM<MiHome_Scene_Request>(15, _omitFieldNames ? '' : 'sceneRequest',
        subBuilder: MiHome_Scene_Request.create)
    ..aOM<MiHome_Scene_List>(16, _omitFieldNames ? '' : 'sceneList',
        subBuilder: MiHome_Scene_List.create)
    ..aOM<MiHome_Scene_Executor>(17, _omitFieldNames ? '' : 'sceneExcutor',
        subBuilder: MiHome_Scene_Executor.create)
    ..aOM<MiHome_Scene_Result>(18, _omitFieldNames ? '' : 'sceneResult',
        subBuilder: MiHome_Scene_Result.create)
    ..aOM<CourseTable>(19, _omitFieldNames ? '' : 'courseTable',
        subBuilder: CourseTable.create)
    ..aOM<BloodGlucose>(20, _omitFieldNames ? '' : 'bloodGlucose',
        subBuilder: BloodGlucose.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThirdpartyApp clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThirdpartyApp copyWith(void Function(ThirdpartyApp) updates) =>
      super.copyWith((message) => updates(message as ThirdpartyApp))
          as ThirdpartyApp;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThirdpartyApp create() => ThirdpartyApp._();
  @$core.override
  ThirdpartyApp createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThirdpartyApp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThirdpartyApp>(create);
  static ThirdpartyApp? _defaultInstance;

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
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  ThirdpartyApp_Payload whichPayload() =>
      _ThirdpartyApp_PayloadByTag[$_whichOneof(0)]!;
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
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AppItem_List get appItemList => $_getN(0);
  @$pb.TagNumber(1)
  set appItemList(AppItem_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAppItemList() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppItemList() => $_clearField(1);
  @$pb.TagNumber(1)
  AppItem_List ensureAppItemList() => $_ensure(0);

  @$pb.TagNumber(2)
  AppInstaller_Request get installRequest => $_getN(1);
  @$pb.TagNumber(2)
  set installRequest(AppInstaller_Request value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasInstallRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearInstallRequest() => $_clearField(2);
  @$pb.TagNumber(2)
  AppInstaller_Request ensureInstallRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  AppInstaller_Response get installResponse => $_getN(2);
  @$pb.TagNumber(3)
  set installResponse(AppInstaller_Response value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInstallResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstallResponse() => $_clearField(3);
  @$pb.TagNumber(3)
  AppInstaller_Response ensureInstallResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  AppInstaller_Result get installResult => $_getN(3);
  @$pb.TagNumber(4)
  set installResult(AppInstaller_Result value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasInstallResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearInstallResult() => $_clearField(4);
  @$pb.TagNumber(4)
  AppInstaller_Result ensureInstallResult() => $_ensure(3);

  @$pb.TagNumber(5)
  BasicInfo get basicInfo => $_getN(4);
  @$pb.TagNumber(5)
  set basicInfo(BasicInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBasicInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearBasicInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  BasicInfo ensureBasicInfo() => $_ensure(4);

  @$pb.TagNumber(6)
  LaunchInfo get launchInfo => $_getN(5);
  @$pb.TagNumber(6)
  set launchInfo(LaunchInfo value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLaunchInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearLaunchInfo() => $_clearField(6);
  @$pb.TagNumber(6)
  LaunchInfo ensureLaunchInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  PermissionInfo_List get permissionInfoList => $_getN(6);
  @$pb.TagNumber(7)
  set permissionInfoList(PermissionInfo_List value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPermissionInfoList() => $_has(6);
  @$pb.TagNumber(7)
  void clearPermissionInfoList() => $_clearField(7);
  @$pb.TagNumber(7)
  PermissionInfo_List ensurePermissionInfoList() => $_ensure(6);

  @$pb.TagNumber(8)
  PhoneAppStatus get appStatus => $_getN(7);
  @$pb.TagNumber(8)
  set appStatus(PhoneAppStatus value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAppStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppStatus() => $_clearField(8);
  @$pb.TagNumber(8)
  PhoneAppStatus ensureAppStatus() => $_ensure(7);

  @$pb.TagNumber(9)
  MessageContent get messageContent => $_getN(8);
  @$pb.TagNumber(9)
  set messageContent(MessageContent value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasMessageContent() => $_has(8);
  @$pb.TagNumber(9)
  void clearMessageContent() => $_clearField(9);
  @$pb.TagNumber(9)
  MessageContent ensureMessageContent() => $_ensure(8);

  @$pb.TagNumber(10)
  WechatLicense_Request get wechatLicenseRequest => $_getN(9);
  @$pb.TagNumber(10)
  set wechatLicenseRequest(WechatLicense_Request value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasWechatLicenseRequest() => $_has(9);
  @$pb.TagNumber(10)
  void clearWechatLicenseRequest() => $_clearField(10);
  @$pb.TagNumber(10)
  WechatLicense_Request ensureWechatLicenseRequest() => $_ensure(9);

  @$pb.TagNumber(12)
  WechatLicense_Response get wechatLicenseResponse => $_getN(10);
  @$pb.TagNumber(12)
  set wechatLicenseResponse(WechatLicense_Response value) =>
      $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasWechatLicenseResponse() => $_has(10);
  @$pb.TagNumber(12)
  void clearWechatLicenseResponse() => $_clearField(12);
  @$pb.TagNumber(12)
  WechatLicense_Response ensureWechatLicenseResponse() => $_ensure(10);

  @$pb.TagNumber(13)
  MiHome_Request get mihomeRequest => $_getN(11);
  @$pb.TagNumber(13)
  set mihomeRequest(MiHome_Request value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasMihomeRequest() => $_has(11);
  @$pb.TagNumber(13)
  void clearMihomeRequest() => $_clearField(13);
  @$pb.TagNumber(13)
  MiHome_Request ensureMihomeRequest() => $_ensure(11);

  @$pb.TagNumber(14)
  MiHome_List get mihomeList => $_getN(12);
  @$pb.TagNumber(14)
  set mihomeList(MiHome_List value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasMihomeList() => $_has(12);
  @$pb.TagNumber(14)
  void clearMihomeList() => $_clearField(14);
  @$pb.TagNumber(14)
  MiHome_List ensureMihomeList() => $_ensure(12);

  @$pb.TagNumber(15)
  MiHome_Scene_Request get sceneRequest => $_getN(13);
  @$pb.TagNumber(15)
  set sceneRequest(MiHome_Scene_Request value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasSceneRequest() => $_has(13);
  @$pb.TagNumber(15)
  void clearSceneRequest() => $_clearField(15);
  @$pb.TagNumber(15)
  MiHome_Scene_Request ensureSceneRequest() => $_ensure(13);

  @$pb.TagNumber(16)
  MiHome_Scene_List get sceneList => $_getN(14);
  @$pb.TagNumber(16)
  set sceneList(MiHome_Scene_List value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasSceneList() => $_has(14);
  @$pb.TagNumber(16)
  void clearSceneList() => $_clearField(16);
  @$pb.TagNumber(16)
  MiHome_Scene_List ensureSceneList() => $_ensure(14);

  @$pb.TagNumber(17)
  MiHome_Scene_Executor get sceneExcutor => $_getN(15);
  @$pb.TagNumber(17)
  set sceneExcutor(MiHome_Scene_Executor value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasSceneExcutor() => $_has(15);
  @$pb.TagNumber(17)
  void clearSceneExcutor() => $_clearField(17);
  @$pb.TagNumber(17)
  MiHome_Scene_Executor ensureSceneExcutor() => $_ensure(15);

  @$pb.TagNumber(18)
  MiHome_Scene_Result get sceneResult => $_getN(16);
  @$pb.TagNumber(18)
  set sceneResult(MiHome_Scene_Result value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasSceneResult() => $_has(16);
  @$pb.TagNumber(18)
  void clearSceneResult() => $_clearField(18);
  @$pb.TagNumber(18)
  MiHome_Scene_Result ensureSceneResult() => $_ensure(16);

  @$pb.TagNumber(19)
  CourseTable get courseTable => $_getN(17);
  @$pb.TagNumber(19)
  set courseTable(CourseTable value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasCourseTable() => $_has(17);
  @$pb.TagNumber(19)
  void clearCourseTable() => $_clearField(19);
  @$pb.TagNumber(19)
  CourseTable ensureCourseTable() => $_ensure(17);

  @$pb.TagNumber(20)
  BloodGlucose get bloodGlucose => $_getN(18);
  @$pb.TagNumber(20)
  set bloodGlucose(BloodGlucose value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasBloodGlucose() => $_has(18);
  @$pb.TagNumber(20)
  void clearBloodGlucose() => $_clearField(20);
  @$pb.TagNumber(20)
  BloodGlucose ensureBloodGlucose() => $_ensure(18);
}

class AppItem_List extends $pb.GeneratedMessage {
  factory AppItem_List({
    $core.Iterable<AppItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  AppItem_List._();

  factory AppItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AppItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: AppItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppItem_List copyWith(void Function(AppItem_List) updates) =>
      super.copyWith((message) => updates(message as AppItem_List))
          as AppItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppItem_List create() => AppItem_List._();
  @$core.override
  AppItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppItem_List>(create);
  static AppItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AppItem> get list => $_getList(0);
}

class AppItem extends $pb.GeneratedMessage {
  factory AppItem({
    $core.String? packageName,
    $core.List<$core.int>? fingerprint,
    $core.int? versionCode,
    $core.bool? canRemove,
    $core.String? appName,
  }) {
    final result = create();
    if (packageName != null) result.packageName = packageName;
    if (fingerprint != null) result.fingerprint = fingerprint;
    if (versionCode != null) result.versionCode = versionCode;
    if (canRemove != null) result.canRemove = canRemove;
    if (appName != null) result.appName = appName;
    return result;
  }

  AppItem._();

  factory AppItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'packageName')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'fingerprint', $pb.PbFieldType.QY)
    ..aI(3, _omitFieldNames ? '' : 'versionCode',
        fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(4, _omitFieldNames ? '' : 'canRemove', $pb.PbFieldType.QB)
    ..aQS(5, _omitFieldNames ? '' : 'appName');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppItem copyWith(void Function(AppItem) updates) =>
      super.copyWith((message) => updates(message as AppItem)) as AppItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppItem create() => AppItem._();
  @$core.override
  AppItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppItem>(create);
  static AppItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get packageName => $_getSZ(0);
  @$pb.TagNumber(1)
  set packageName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPackageName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get fingerprint => $_getN(1);
  @$pb.TagNumber(2)
  set fingerprint($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFingerprint() => $_has(1);
  @$pb.TagNumber(2)
  void clearFingerprint() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get versionCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set versionCode($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersionCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersionCode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get canRemove => $_getBF(3);
  @$pb.TagNumber(4)
  set canRemove($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCanRemove() => $_has(3);
  @$pb.TagNumber(4)
  void clearCanRemove() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get appName => $_getSZ(4);
  @$pb.TagNumber(5)
  set appName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAppName() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppName() => $_clearField(5);
}

class AppInstaller_Request extends $pb.GeneratedMessage {
  factory AppInstaller_Request({
    $core.String? packageName,
    $core.int? versionCode,
    $core.int? packageSize,
  }) {
    final result = create();
    if (packageName != null) result.packageName = packageName;
    if (versionCode != null) result.versionCode = versionCode;
    if (packageSize != null) result.packageSize = packageSize;
    return result;
  }

  AppInstaller_Request._();

  factory AppInstaller_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppInstaller_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppInstaller.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'packageName')
    ..aI(2, _omitFieldNames ? '' : 'versionCode',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'packageSize',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInstaller_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInstaller_Request copyWith(void Function(AppInstaller_Request) updates) =>
      super.copyWith((message) => updates(message as AppInstaller_Request))
          as AppInstaller_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInstaller_Request create() => AppInstaller_Request._();
  @$core.override
  AppInstaller_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppInstaller_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppInstaller_Request>(create);
  static AppInstaller_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get packageName => $_getSZ(0);
  @$pb.TagNumber(1)
  set packageName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPackageName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get versionCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set versionCode($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersionCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get packageSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set packageSize($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPackageSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearPackageSize() => $_clearField(3);
}

class AppInstaller_Response extends $pb.GeneratedMessage {
  factory AppInstaller_Response({
    $0.PrepareStatus? prepareStatus,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (prepareStatus != null) result.prepareStatus = prepareStatus;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  AppInstaller_Response._();

  factory AppInstaller_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppInstaller_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppInstaller.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.PrepareStatus>(1, _omitFieldNames ? '' : 'prepareStatus',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.PrepareStatus.values)
    ..aI(2, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInstaller_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInstaller_Response copyWith(
          void Function(AppInstaller_Response) updates) =>
      super.copyWith((message) => updates(message as AppInstaller_Response))
          as AppInstaller_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInstaller_Response create() => AppInstaller_Response._();
  @$core.override
  AppInstaller_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppInstaller_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppInstaller_Response>(create);
  static AppInstaller_Response? _defaultInstance;

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
}

enum AppInstaller_Result_Payload { packageName, appItem, notSet }

class AppInstaller_Result extends $pb.GeneratedMessage {
  factory AppInstaller_Result({
    AppInstaller_Result_Code? code,
    $core.String? packageName,
    AppItem? appItem,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (packageName != null) result.packageName = packageName;
    if (appItem != null) result.appItem = appItem;
    return result;
  }

  AppInstaller_Result._();

  factory AppInstaller_Result.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppInstaller_Result.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AppInstaller_Result_Payload>
      _AppInstaller_Result_PayloadByTag = {
    2: AppInstaller_Result_Payload.packageName,
    3: AppInstaller_Result_Payload.appItem,
    0: AppInstaller_Result_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppInstaller.Result',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aE<AppInstaller_Result_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE,
        enumValues: AppInstaller_Result_Code.values)
    ..aOS(2, _omitFieldNames ? '' : 'packageName')
    ..aOM<AppItem>(3, _omitFieldNames ? '' : 'appItem',
        subBuilder: AppItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInstaller_Result clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInstaller_Result copyWith(void Function(AppInstaller_Result) updates) =>
      super.copyWith((message) => updates(message as AppInstaller_Result))
          as AppInstaller_Result;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInstaller_Result create() => AppInstaller_Result._();
  @$core.override
  AppInstaller_Result createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppInstaller_Result getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppInstaller_Result>(create);
  static AppInstaller_Result? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  AppInstaller_Result_Payload whichPayload() =>
      _AppInstaller_Result_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AppInstaller_Result_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(AppInstaller_Result_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get packageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set packageName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPackageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackageName() => $_clearField(2);

  @$pb.TagNumber(3)
  AppItem get appItem => $_getN(2);
  @$pb.TagNumber(3)
  set appItem(AppItem value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAppItem() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppItem() => $_clearField(3);
  @$pb.TagNumber(3)
  AppItem ensureAppItem() => $_ensure(2);
}

class AppInstaller extends $pb.GeneratedMessage {
  factory AppInstaller() => create();

  AppInstaller._();

  factory AppInstaller.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppInstaller.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppInstaller',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInstaller clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInstaller copyWith(void Function(AppInstaller) updates) =>
      super.copyWith((message) => updates(message as AppInstaller))
          as AppInstaller;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInstaller create() => AppInstaller._();
  @$core.override
  AppInstaller createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppInstaller getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppInstaller>(create);
  static AppInstaller? _defaultInstance;
}

class BasicInfo extends $pb.GeneratedMessage {
  factory BasicInfo({
    $core.String? packageName,
    $core.List<$core.int>? fingerprint,
  }) {
    final result = create();
    if (packageName != null) result.packageName = packageName;
    if (fingerprint != null) result.fingerprint = fingerprint;
    return result;
  }

  BasicInfo._();

  factory BasicInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BasicInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BasicInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'packageName')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'fingerprint', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicInfo copyWith(void Function(BasicInfo) updates) =>
      super.copyWith((message) => updates(message as BasicInfo)) as BasicInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicInfo create() => BasicInfo._();
  @$core.override
  BasicInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BasicInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BasicInfo>(create);
  static BasicInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get packageName => $_getSZ(0);
  @$pb.TagNumber(1)
  set packageName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPackageName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get fingerprint => $_getN(1);
  @$pb.TagNumber(2)
  set fingerprint($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFingerprint() => $_has(1);
  @$pb.TagNumber(2)
  void clearFingerprint() => $_clearField(2);
}

class LaunchInfo extends $pb.GeneratedMessage {
  factory LaunchInfo({
    BasicInfo? basicInfo,
    $core.String? uri,
  }) {
    final result = create();
    if (basicInfo != null) result.basicInfo = basicInfo;
    if (uri != null) result.uri = uri;
    return result;
  }

  LaunchInfo._();

  factory LaunchInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LaunchInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LaunchInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<BasicInfo>(1, _omitFieldNames ? '' : 'basicInfo',
        subBuilder: BasicInfo.create)
    ..aQS(2, _omitFieldNames ? '' : 'uri');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LaunchInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LaunchInfo copyWith(void Function(LaunchInfo) updates) =>
      super.copyWith((message) => updates(message as LaunchInfo)) as LaunchInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LaunchInfo create() => LaunchInfo._();
  @$core.override
  LaunchInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LaunchInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LaunchInfo>(create);
  static LaunchInfo? _defaultInstance;

  @$pb.TagNumber(1)
  BasicInfo get basicInfo => $_getN(0);
  @$pb.TagNumber(1)
  set basicInfo(BasicInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBasicInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasicInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  BasicInfo ensureBasicInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);
}

class PermissionInfo_List extends $pb.GeneratedMessage {
  factory PermissionInfo_List({
    $core.Iterable<PermissionInfo>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  PermissionInfo_List._();

  factory PermissionInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PermissionInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<PermissionInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: PermissionInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PermissionInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PermissionInfo_List copyWith(void Function(PermissionInfo_List) updates) =>
      super.copyWith((message) => updates(message as PermissionInfo_List))
          as PermissionInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionInfo_List create() => PermissionInfo_List._();
  @$core.override
  PermissionInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PermissionInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionInfo_List>(create);
  static PermissionInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PermissionInfo> get list => $_getList(0);
}

class PermissionInfo extends $pb.GeneratedMessage {
  factory PermissionInfo({
    BasicInfo? basicInfo,
    $core.Iterable<PermissionInfo_Permission>? grantPermissions,
  }) {
    final result = create();
    if (basicInfo != null) result.basicInfo = basicInfo;
    if (grantPermissions != null)
      result.grantPermissions.addAll(grantPermissions);
    return result;
  }

  PermissionInfo._();

  factory PermissionInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PermissionInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<BasicInfo>(1, _omitFieldNames ? '' : 'basicInfo',
        subBuilder: BasicInfo.create)
    ..pPE<PermissionInfo_Permission>(
        2, _omitFieldNames ? '' : 'grantPermissions',
        enumValues: PermissionInfo_Permission.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PermissionInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PermissionInfo copyWith(void Function(PermissionInfo) updates) =>
      super.copyWith((message) => updates(message as PermissionInfo))
          as PermissionInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionInfo create() => PermissionInfo._();
  @$core.override
  PermissionInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PermissionInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionInfo>(create);
  static PermissionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  BasicInfo get basicInfo => $_getN(0);
  @$pb.TagNumber(1)
  set basicInfo(BasicInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBasicInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasicInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  BasicInfo ensureBasicInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<PermissionInfo_Permission> get grantPermissions => $_getList(1);
}

class PhoneAppStatus extends $pb.GeneratedMessage {
  factory PhoneAppStatus({
    BasicInfo? basicInfo,
    PhoneAppStatus_Status? status,
  }) {
    final result = create();
    if (basicInfo != null) result.basicInfo = basicInfo;
    if (status != null) result.status = status;
    return result;
  }

  PhoneAppStatus._();

  factory PhoneAppStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneAppStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneAppStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<BasicInfo>(1, _omitFieldNames ? '' : 'basicInfo',
        subBuilder: BasicInfo.create)
    ..aE<PhoneAppStatus_Status>(2, _omitFieldNames ? '' : 'status',
        fieldType: $pb.PbFieldType.QE,
        enumValues: PhoneAppStatus_Status.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneAppStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneAppStatus copyWith(void Function(PhoneAppStatus) updates) =>
      super.copyWith((message) => updates(message as PhoneAppStatus))
          as PhoneAppStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneAppStatus create() => PhoneAppStatus._();
  @$core.override
  PhoneAppStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneAppStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneAppStatus>(create);
  static PhoneAppStatus? _defaultInstance;

  @$pb.TagNumber(1)
  BasicInfo get basicInfo => $_getN(0);
  @$pb.TagNumber(1)
  set basicInfo(BasicInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBasicInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasicInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  BasicInfo ensureBasicInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  PhoneAppStatus_Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(PhoneAppStatus_Status value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
}

class MessageContent extends $pb.GeneratedMessage {
  factory MessageContent({
    BasicInfo? basicInfo,
    $core.List<$core.int>? content,
  }) {
    final result = create();
    if (basicInfo != null) result.basicInfo = basicInfo;
    if (content != null) result.content = content;
    return result;
  }

  MessageContent._();

  factory MessageContent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageContent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageContent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<BasicInfo>(1, _omitFieldNames ? '' : 'basicInfo',
        subBuilder: BasicInfo.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'content', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageContent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageContent copyWith(void Function(MessageContent) updates) =>
      super.copyWith((message) => updates(message as MessageContent))
          as MessageContent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageContent create() => MessageContent._();
  @$core.override
  MessageContent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageContent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageContent>(create);
  static MessageContent? _defaultInstance;

  @$pb.TagNumber(1)
  BasicInfo get basicInfo => $_getN(0);
  @$pb.TagNumber(1)
  set basicInfo(BasicInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBasicInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasicInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  BasicInfo ensureBasicInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get content => $_getN(1);
  @$pb.TagNumber(2)
  set content($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => $_clearField(2);
}

class WechatLicense_Request extends $pb.GeneratedMessage {
  factory WechatLicense_Request() => create();

  WechatLicense_Request._();

  factory WechatLicense_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WechatLicense_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WechatLicense.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WechatLicense_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WechatLicense_Request copyWith(
          void Function(WechatLicense_Request) updates) =>
      super.copyWith((message) => updates(message as WechatLicense_Request))
          as WechatLicense_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WechatLicense_Request create() => WechatLicense_Request._();
  @$core.override
  WechatLicense_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WechatLicense_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WechatLicense_Request>(create);
  static WechatLicense_Request? _defaultInstance;
}

class WechatLicense_Response extends $pb.GeneratedMessage {
  factory WechatLicense_Response({
    $core.int? code,
    $core.int? keyVersion,
    $core.int? productId,
    $core.String? signature,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (keyVersion != null) result.keyVersion = keyVersion;
    if (productId != null) result.productId = productId;
    if (signature != null) result.signature = signature;
    return result;
  }

  WechatLicense_Response._();

  factory WechatLicense_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WechatLicense_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WechatLicense.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.Q3)
    ..aI(2, _omitFieldNames ? '' : 'keyVersion', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'productId', fieldType: $pb.PbFieldType.OU3)
    ..aQS(4, _omitFieldNames ? '' : 'signature');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WechatLicense_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WechatLicense_Response copyWith(
          void Function(WechatLicense_Response) updates) =>
      super.copyWith((message) => updates(message as WechatLicense_Response))
          as WechatLicense_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WechatLicense_Response create() => WechatLicense_Response._();
  @$core.override
  WechatLicense_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WechatLicense_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WechatLicense_Response>(create);
  static WechatLicense_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get keyVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set keyVersion($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKeyVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get productId => $_getIZ(2);
  @$pb.TagNumber(3)
  set productId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProductId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProductId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get signature => $_getSZ(3);
  @$pb.TagNumber(4)
  set signature($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignature() => $_clearField(4);
}

class WechatLicense extends $pb.GeneratedMessage {
  factory WechatLicense() => create();

  WechatLicense._();

  factory WechatLicense.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WechatLicense.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WechatLicense',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WechatLicense clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WechatLicense copyWith(void Function(WechatLicense) updates) =>
      super.copyWith((message) => updates(message as WechatLicense))
          as WechatLicense;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WechatLicense create() => WechatLicense._();
  @$core.override
  WechatLicense createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WechatLicense getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WechatLicense>(create);
  static WechatLicense? _defaultInstance;
}

class MiHome_Request extends $pb.GeneratedMessage {
  factory MiHome_Request() => create();

  MiHome_Request._();

  factory MiHome_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiHome_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiHome.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Request copyWith(void Function(MiHome_Request) updates) =>
      super.copyWith((message) => updates(message as MiHome_Request))
          as MiHome_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiHome_Request create() => MiHome_Request._();
  @$core.override
  MiHome_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiHome_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiHome_Request>(create);
  static MiHome_Request? _defaultInstance;
}

class MiHome_List extends $pb.GeneratedMessage {
  factory MiHome_List({
    $core.Iterable<MiHome>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  MiHome_List._();

  factory MiHome_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiHome_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiHome.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<MiHome>(1, _omitFieldNames ? '' : 'list', subBuilder: MiHome.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_List copyWith(void Function(MiHome_List) updates) =>
      super.copyWith((message) => updates(message as MiHome_List))
          as MiHome_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiHome_List create() => MiHome_List._();
  @$core.override
  MiHome_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiHome_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiHome_List>(create);
  static MiHome_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MiHome> get list => $_getList(0);
}

class MiHome_Scene_Request extends $pb.GeneratedMessage {
  factory MiHome_Scene_Request({
    $fixnum.Int64? homeId,
    $fixnum.Int64? uid,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (uid != null) result.uid = uid;
    return result;
  }

  MiHome_Scene_Request._();

  factory MiHome_Scene_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiHome_Scene_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiHome.Scene.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'homeId', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'uid', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene_Request copyWith(void Function(MiHome_Scene_Request) updates) =>
      super.copyWith((message) => updates(message as MiHome_Scene_Request))
          as MiHome_Scene_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiHome_Scene_Request create() => MiHome_Scene_Request._();
  @$core.override
  MiHome_Scene_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiHome_Scene_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiHome_Scene_Request>(create);
  static MiHome_Scene_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get homeId => $_getI64(0);
  @$pb.TagNumber(1)
  set homeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get uid => $_getI64(1);
  @$pb.TagNumber(2)
  set uid($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => $_clearField(2);
}

class MiHome_Scene_List extends $pb.GeneratedMessage {
  factory MiHome_Scene_List({
    $fixnum.Int64? homeId,
    $core.Iterable<MiHome_Scene>? list,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (list != null) result.list.addAll(list);
    return result;
  }

  MiHome_Scene_List._();

  factory MiHome_Scene_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiHome_Scene_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiHome.Scene.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'homeId', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<MiHome_Scene>(2, _omitFieldNames ? '' : 'list',
        subBuilder: MiHome_Scene.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene_List copyWith(void Function(MiHome_Scene_List) updates) =>
      super.copyWith((message) => updates(message as MiHome_Scene_List))
          as MiHome_Scene_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiHome_Scene_List create() => MiHome_Scene_List._();
  @$core.override
  MiHome_Scene_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiHome_Scene_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiHome_Scene_List>(create);
  static MiHome_Scene_List? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get homeId => $_getI64(0);
  @$pb.TagNumber(1)
  set homeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<MiHome_Scene> get list => $_getList(1);
}

class MiHome_Scene_Executor extends $pb.GeneratedMessage {
  factory MiHome_Scene_Executor({
    $fixnum.Int64? id,
    $core.int? type,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (type != null) result.type = type;
    return result;
  }

  MiHome_Scene_Executor._();

  factory MiHome_Scene_Executor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiHome_Scene_Executor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiHome.Scene.Executor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(2, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene_Executor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene_Executor copyWith(
          void Function(MiHome_Scene_Executor) updates) =>
      super.copyWith((message) => updates(message as MiHome_Scene_Executor))
          as MiHome_Scene_Executor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiHome_Scene_Executor create() => MiHome_Scene_Executor._();
  @$core.override
  MiHome_Scene_Executor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiHome_Scene_Executor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiHome_Scene_Executor>(create);
  static MiHome_Scene_Executor? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
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
}

class MiHome_Scene_Result extends $pb.GeneratedMessage {
  factory MiHome_Scene_Result({
    $core.bool? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  MiHome_Scene_Result._();

  factory MiHome_Scene_Result.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiHome_Scene_Result.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiHome.Scene.Result',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene_Result clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene_Result copyWith(void Function(MiHome_Scene_Result) updates) =>
      super.copyWith((message) => updates(message as MiHome_Scene_Result))
          as MiHome_Scene_Result;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiHome_Scene_Result create() => MiHome_Scene_Result._();
  @$core.override
  MiHome_Scene_Result createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiHome_Scene_Result getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiHome_Scene_Result>(create);
  static MiHome_Scene_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
}

class MiHome_Scene extends $pb.GeneratedMessage {
  factory MiHome_Scene() => create();

  MiHome_Scene._();

  factory MiHome_Scene.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiHome_Scene.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiHome.Scene',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome_Scene copyWith(void Function(MiHome_Scene) updates) =>
      super.copyWith((message) => updates(message as MiHome_Scene))
          as MiHome_Scene;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiHome_Scene create() => MiHome_Scene._();
  @$core.override
  MiHome_Scene createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiHome_Scene getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiHome_Scene>(create);
  static MiHome_Scene? _defaultInstance;
}

class MiHome extends $pb.GeneratedMessage {
  factory MiHome({
    $fixnum.Int64? id,
    $fixnum.Int64? uid,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (uid != null) result.uid = uid;
    if (name != null) result.name = name;
    return result;
  }

  MiHome._();

  factory MiHome.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiHome.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiHome',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'uid', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(3, _omitFieldNames ? '' : 'name');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiHome copyWith(void Function(MiHome) updates) =>
      super.copyWith((message) => updates(message as MiHome)) as MiHome;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiHome create() => MiHome._();
  @$core.override
  MiHome createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiHome getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiHome>(create);
  static MiHome? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get uid => $_getI64(1);
  @$pb.TagNumber(2)
  set uid($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);
}

class CourseTable_Section extends $pb.GeneratedMessage {
  factory CourseTable_Section({
    $0.Time? startTime,
    $0.Time? endTime,
  }) {
    final result = create();
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    return result;
  }

  CourseTable_Section._();

  factory CourseTable_Section.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CourseTable_Section.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CourseTable.Section',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<$0.Time>(1, _omitFieldNames ? '' : 'startTime',
        subBuilder: $0.Time.create)
    ..aQM<$0.Time>(2, _omitFieldNames ? '' : 'endTime',
        subBuilder: $0.Time.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CourseTable_Section clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CourseTable_Section copyWith(void Function(CourseTable_Section) updates) =>
      super.copyWith((message) => updates(message as CourseTable_Section))
          as CourseTable_Section;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourseTable_Section create() => CourseTable_Section._();
  @$core.override
  CourseTable_Section createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CourseTable_Section getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CourseTable_Section>(create);
  static CourseTable_Section? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Time get startTime => $_getN(0);
  @$pb.TagNumber(1)
  set startTime($0.Time value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Time ensureStartTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Time get endTime => $_getN(1);
  @$pb.TagNumber(2)
  set endTime($0.Time value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureEndTime() => $_ensure(1);
}

class CourseTable_Course extends $pb.GeneratedMessage {
  factory CourseTable_Course({
    $core.String? name,
    $core.int? weeks,
    $core.int? days,
    $core.int? sections,
    $core.String? teacher,
    $core.String? location,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (weeks != null) result.weeks = weeks;
    if (days != null) result.days = days;
    if (sections != null) result.sections = sections;
    if (teacher != null) result.teacher = teacher;
    if (location != null) result.location = location;
    return result;
  }

  CourseTable_Course._();

  factory CourseTable_Course.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CourseTable_Course.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CourseTable.Course',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aI(2, _omitFieldNames ? '' : 'weeks', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'days', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'sections', fieldType: $pb.PbFieldType.QU3)
    ..aQS(5, _omitFieldNames ? '' : 'teacher')
    ..aQS(6, _omitFieldNames ? '' : 'location');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CourseTable_Course clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CourseTable_Course copyWith(void Function(CourseTable_Course) updates) =>
      super.copyWith((message) => updates(message as CourseTable_Course))
          as CourseTable_Course;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourseTable_Course create() => CourseTable_Course._();
  @$core.override
  CourseTable_Course createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CourseTable_Course getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CourseTable_Course>(create);
  static CourseTable_Course? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get weeks => $_getIZ(1);
  @$pb.TagNumber(2)
  set weeks($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWeeks() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeeks() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get days => $_getIZ(2);
  @$pb.TagNumber(3)
  set days($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDays() => $_has(2);
  @$pb.TagNumber(3)
  void clearDays() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get sections => $_getIZ(3);
  @$pb.TagNumber(4)
  set sections($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSections() => $_has(3);
  @$pb.TagNumber(4)
  void clearSections() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get teacher => $_getSZ(4);
  @$pb.TagNumber(5)
  set teacher($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTeacher() => $_has(4);
  @$pb.TagNumber(5)
  void clearTeacher() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get location => $_getSZ(5);
  @$pb.TagNumber(6)
  set location($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLocation() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocation() => $_clearField(6);
}

class CourseTable extends $pb.GeneratedMessage {
  factory CourseTable({
    $fixnum.Int64? timestamp,
    $core.int? weekNumber,
    $core.Iterable<CourseTable_Section>? sectionList,
    $core.Iterable<CourseTable_Course>? courseList,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (weekNumber != null) result.weekNumber = weekNumber;
    if (sectionList != null) result.sectionList.addAll(sectionList);
    if (courseList != null) result.courseList.addAll(courseList);
    return result;
  }

  CourseTable._();

  factory CourseTable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CourseTable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CourseTable',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(2, _omitFieldNames ? '' : 'weekNumber', fieldType: $pb.PbFieldType.QU3)
    ..pPM<CourseTable_Section>(3, _omitFieldNames ? '' : 'sectionList',
        subBuilder: CourseTable_Section.create)
    ..pPM<CourseTable_Course>(4, _omitFieldNames ? '' : 'courseList',
        subBuilder: CourseTable_Course.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CourseTable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CourseTable copyWith(void Function(CourseTable) updates) =>
      super.copyWith((message) => updates(message as CourseTable))
          as CourseTable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourseTable create() => CourseTable._();
  @$core.override
  CourseTable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CourseTable getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CourseTable>(create);
  static CourseTable? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get weekNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set weekNumber($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWeekNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeekNumber() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<CourseTable_Section> get sectionList => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<CourseTable_Course> get courseList => $_getList(3);
}

class BloodGlucose extends $pb.GeneratedMessage {
  factory BloodGlucose({
    $fixnum.Int64? timestamp,
    $core.double? value,
    $core.int? status,
    $core.bool? alert,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (value != null) result.value = value;
    if (status != null) result.status = status;
    if (alert != null) result.alert = alert;
    return result;
  }

  BloodGlucose._();

  factory BloodGlucose.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BloodGlucose.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BloodGlucose',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(2, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.QF)
    ..aI(3, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3)
    ..aOB(4, _omitFieldNames ? '' : 'alert');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodGlucose clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodGlucose copyWith(void Function(BloodGlucose) updates) =>
      super.copyWith((message) => updates(message as BloodGlucose))
          as BloodGlucose;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BloodGlucose create() => BloodGlucose._();
  @$core.override
  BloodGlucose createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BloodGlucose getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BloodGlucose>(create);
  static BloodGlucose? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(2);
  @$pb.TagNumber(3)
  set status($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get alert => $_getBF(3);
  @$pb.TagNumber(4)
  set alert($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAlert() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlert() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
