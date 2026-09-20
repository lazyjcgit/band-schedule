// This is a generated file - do not edit.
//
// Generated from wear_lpa.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_lpa.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_lpa.pbenum.dart';

enum Lpa_Payload {
  data,
  euiccInfo,
  profileList,
  profileOperator,
  operateResult,
  profilePrepare,
  profileDownload,
  downloadResult,
  httpRequest,
  httpResponse,
  notSet
}

class Lpa extends $pb.GeneratedMessage {
  factory Lpa({
    $core.String? data,
    EuiccInfo? euiccInfo,
    Profile_List? profileList,
    ProfileOperator? profileOperator,
    OperateResult? operateResult,
    ProfilePrepare? profilePrepare,
    ProfileDownload? profileDownload,
    DownloadProgress? downloadResult,
    HttpRequest? httpRequest,
    HttpResponse? httpResponse,
  }) {
    final result = create();
    if (data != null) result.data = data;
    if (euiccInfo != null) result.euiccInfo = euiccInfo;
    if (profileList != null) result.profileList = profileList;
    if (profileOperator != null) result.profileOperator = profileOperator;
    if (operateResult != null) result.operateResult = operateResult;
    if (profilePrepare != null) result.profilePrepare = profilePrepare;
    if (profileDownload != null) result.profileDownload = profileDownload;
    if (downloadResult != null) result.downloadResult = downloadResult;
    if (httpRequest != null) result.httpRequest = httpRequest;
    if (httpResponse != null) result.httpResponse = httpResponse;
    return result;
  }

  Lpa._();

  factory Lpa.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Lpa.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Lpa_Payload> _Lpa_PayloadByTag = {
    1: Lpa_Payload.data,
    2: Lpa_Payload.euiccInfo,
    3: Lpa_Payload.profileList,
    4: Lpa_Payload.profileOperator,
    5: Lpa_Payload.operateResult,
    6: Lpa_Payload.profilePrepare,
    7: Lpa_Payload.profileDownload,
    8: Lpa_Payload.downloadResult,
    9: Lpa_Payload.httpRequest,
    10: Lpa_Payload.httpResponse,
    0: Lpa_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Lpa',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOS(1, _omitFieldNames ? '' : 'data')
    ..aOM<EuiccInfo>(2, _omitFieldNames ? '' : 'euiccInfo',
        subBuilder: EuiccInfo.create)
    ..aOM<Profile_List>(3, _omitFieldNames ? '' : 'profileList',
        subBuilder: Profile_List.create)
    ..aOM<ProfileOperator>(4, _omitFieldNames ? '' : 'profileOperator',
        subBuilder: ProfileOperator.create)
    ..aOM<OperateResult>(5, _omitFieldNames ? '' : 'operateResult',
        subBuilder: OperateResult.create)
    ..aOM<ProfilePrepare>(6, _omitFieldNames ? '' : 'profilePrepare',
        subBuilder: ProfilePrepare.create)
    ..aOM<ProfileDownload>(7, _omitFieldNames ? '' : 'profileDownload',
        subBuilder: ProfileDownload.create)
    ..aOM<DownloadProgress>(8, _omitFieldNames ? '' : 'downloadResult',
        subBuilder: DownloadProgress.create)
    ..aOM<HttpRequest>(9, _omitFieldNames ? '' : 'httpRequest',
        subBuilder: HttpRequest.create)
    ..aOM<HttpResponse>(10, _omitFieldNames ? '' : 'httpResponse',
        subBuilder: HttpResponse.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Lpa clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Lpa copyWith(void Function(Lpa) updates) =>
      super.copyWith((message) => updates(message as Lpa)) as Lpa;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Lpa create() => Lpa._();
  @$core.override
  Lpa createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Lpa getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lpa>(create);
  static Lpa? _defaultInstance;

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
  Lpa_Payload whichPayload() => _Lpa_PayloadByTag[$_whichOneof(0)]!;
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
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);

  @$pb.TagNumber(2)
  EuiccInfo get euiccInfo => $_getN(1);
  @$pb.TagNumber(2)
  set euiccInfo(EuiccInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEuiccInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearEuiccInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  EuiccInfo ensureEuiccInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  Profile_List get profileList => $_getN(2);
  @$pb.TagNumber(3)
  set profileList(Profile_List value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasProfileList() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfileList() => $_clearField(3);
  @$pb.TagNumber(3)
  Profile_List ensureProfileList() => $_ensure(2);

  @$pb.TagNumber(4)
  ProfileOperator get profileOperator => $_getN(3);
  @$pb.TagNumber(4)
  set profileOperator(ProfileOperator value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasProfileOperator() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfileOperator() => $_clearField(4);
  @$pb.TagNumber(4)
  ProfileOperator ensureProfileOperator() => $_ensure(3);

  @$pb.TagNumber(5)
  OperateResult get operateResult => $_getN(4);
  @$pb.TagNumber(5)
  set operateResult(OperateResult value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOperateResult() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperateResult() => $_clearField(5);
  @$pb.TagNumber(5)
  OperateResult ensureOperateResult() => $_ensure(4);

  @$pb.TagNumber(6)
  ProfilePrepare get profilePrepare => $_getN(5);
  @$pb.TagNumber(6)
  set profilePrepare(ProfilePrepare value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasProfilePrepare() => $_has(5);
  @$pb.TagNumber(6)
  void clearProfilePrepare() => $_clearField(6);
  @$pb.TagNumber(6)
  ProfilePrepare ensureProfilePrepare() => $_ensure(5);

  @$pb.TagNumber(7)
  ProfileDownload get profileDownload => $_getN(6);
  @$pb.TagNumber(7)
  set profileDownload(ProfileDownload value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasProfileDownload() => $_has(6);
  @$pb.TagNumber(7)
  void clearProfileDownload() => $_clearField(7);
  @$pb.TagNumber(7)
  ProfileDownload ensureProfileDownload() => $_ensure(6);

  @$pb.TagNumber(8)
  DownloadProgress get downloadResult => $_getN(7);
  @$pb.TagNumber(8)
  set downloadResult(DownloadProgress value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasDownloadResult() => $_has(7);
  @$pb.TagNumber(8)
  void clearDownloadResult() => $_clearField(8);
  @$pb.TagNumber(8)
  DownloadProgress ensureDownloadResult() => $_ensure(7);

  @$pb.TagNumber(9)
  HttpRequest get httpRequest => $_getN(8);
  @$pb.TagNumber(9)
  set httpRequest(HttpRequest value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasHttpRequest() => $_has(8);
  @$pb.TagNumber(9)
  void clearHttpRequest() => $_clearField(9);
  @$pb.TagNumber(9)
  HttpRequest ensureHttpRequest() => $_ensure(8);

  @$pb.TagNumber(10)
  HttpResponse get httpResponse => $_getN(9);
  @$pb.TagNumber(10)
  set httpResponse(HttpResponse value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasHttpResponse() => $_has(9);
  @$pb.TagNumber(10)
  void clearHttpResponse() => $_clearField(10);
  @$pb.TagNumber(10)
  HttpResponse ensureHttpResponse() => $_ensure(9);
}

class EuiccInfo extends $pb.GeneratedMessage {
  factory EuiccInfo({
    $core.List<$core.int>? eid,
    $core.String? imei,
  }) {
    final result = create();
    if (eid != null) result.eid = eid;
    if (imei != null) result.imei = imei;
    return result;
  }

  EuiccInfo._();

  factory EuiccInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EuiccInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EuiccInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'eid', $pb.PbFieldType.QY)
    ..aQS(2, _omitFieldNames ? '' : 'imei');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EuiccInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EuiccInfo copyWith(void Function(EuiccInfo) updates) =>
      super.copyWith((message) => updates(message as EuiccInfo)) as EuiccInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EuiccInfo create() => EuiccInfo._();
  @$core.override
  EuiccInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EuiccInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EuiccInfo>(create);
  static EuiccInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get eid => $_getN(0);
  @$pb.TagNumber(1)
  set eid($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEid() => $_has(0);
  @$pb.TagNumber(1)
  void clearEid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get imei => $_getSZ(1);
  @$pb.TagNumber(2)
  set imei($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImei() => $_has(1);
  @$pb.TagNumber(2)
  void clearImei() => $_clearField(2);
}

class Profile_List extends $pb.GeneratedMessage {
  factory Profile_List({
    $core.Iterable<Profile>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  Profile_List._();

  factory Profile_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Profile_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Profile.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Profile>(1, _omitFieldNames ? '' : 'list',
        subBuilder: Profile.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Profile_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Profile_List copyWith(void Function(Profile_List) updates) =>
      super.copyWith((message) => updates(message as Profile_List))
          as Profile_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Profile_List create() => Profile_List._();
  @$core.override
  Profile_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Profile_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Profile_List>(create);
  static Profile_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Profile> get list => $_getList(0);
}

class Profile extends $pb.GeneratedMessage {
  factory Profile({
    $core.List<$core.int>? iccid,
    $core.String? imei,
    $core.String? name,
    $core.bool? enable,
  }) {
    final result = create();
    if (iccid != null) result.iccid = iccid;
    if (imei != null) result.imei = imei;
    if (name != null) result.name = name;
    if (enable != null) result.enable = enable;
    return result;
  }

  Profile._();

  factory Profile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Profile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Profile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'iccid', $pb.PbFieldType.QY)
    ..aQS(2, _omitFieldNames ? '' : 'imei')
    ..aQS(3, _omitFieldNames ? '' : 'name')
    ..a<$core.bool>(4, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Profile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Profile copyWith(void Function(Profile) updates) =>
      super.copyWith((message) => updates(message as Profile)) as Profile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  @$core.override
  Profile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get iccid => $_getN(0);
  @$pb.TagNumber(1)
  set iccid($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIccid() => $_has(0);
  @$pb.TagNumber(1)
  void clearIccid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get imei => $_getSZ(1);
  @$pb.TagNumber(2)
  set imei($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImei() => $_has(1);
  @$pb.TagNumber(2)
  void clearImei() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get enable => $_getBF(3);
  @$pb.TagNumber(4)
  set enable($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEnable() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnable() => $_clearField(4);
}

class ProfileOperator extends $pb.GeneratedMessage {
  factory ProfileOperator({
    ProfileOperator_Cmd? cmd,
    $core.List<$core.int>? iccid,
  }) {
    final result = create();
    if (cmd != null) result.cmd = cmd;
    if (iccid != null) result.iccid = iccid;
    return result;
  }

  ProfileOperator._();

  factory ProfileOperator.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProfileOperator.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProfileOperator',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ProfileOperator_Cmd>(1, _omitFieldNames ? '' : 'cmd',
        fieldType: $pb.PbFieldType.QE, enumValues: ProfileOperator_Cmd.values)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'iccid', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfileOperator clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfileOperator copyWith(void Function(ProfileOperator) updates) =>
      super.copyWith((message) => updates(message as ProfileOperator))
          as ProfileOperator;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProfileOperator create() => ProfileOperator._();
  @$core.override
  ProfileOperator createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProfileOperator getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProfileOperator>(create);
  static ProfileOperator? _defaultInstance;

  @$pb.TagNumber(1)
  ProfileOperator_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(ProfileOperator_Cmd value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get iccid => $_getN(1);
  @$pb.TagNumber(2)
  set iccid($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIccid() => $_has(1);
  @$pb.TagNumber(2)
  void clearIccid() => $_clearField(2);
}

class OperateResult extends $pb.GeneratedMessage {
  factory OperateResult({
    $core.bool? success,
  }) {
    final result = create();
    if (success != null) result.success = success;
    return result;
  }

  OperateResult._();

  factory OperateResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OperateResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OperateResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'success', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OperateResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OperateResult copyWith(void Function(OperateResult) updates) =>
      super.copyWith((message) => updates(message as OperateResult))
          as OperateResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperateResult create() => OperateResult._();
  @$core.override
  OperateResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OperateResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OperateResult>(create);
  static OperateResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

class ProfilePrepare extends $pb.GeneratedMessage {
  factory ProfilePrepare({
    TelecomOperator? telecomOperator,
  }) {
    final result = create();
    if (telecomOperator != null) result.telecomOperator = telecomOperator;
    return result;
  }

  ProfilePrepare._();

  factory ProfilePrepare.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProfilePrepare.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProfilePrepare',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<TelecomOperator>(1, _omitFieldNames ? '' : 'telecomOperator',
        fieldType: $pb.PbFieldType.QE, enumValues: TelecomOperator.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfilePrepare clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfilePrepare copyWith(void Function(ProfilePrepare) updates) =>
      super.copyWith((message) => updates(message as ProfilePrepare))
          as ProfilePrepare;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProfilePrepare create() => ProfilePrepare._();
  @$core.override
  ProfilePrepare createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProfilePrepare getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProfilePrepare>(create);
  static ProfilePrepare? _defaultInstance;

  @$pb.TagNumber(1)
  TelecomOperator get telecomOperator => $_getN(0);
  @$pb.TagNumber(1)
  set telecomOperator(TelecomOperator value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTelecomOperator() => $_has(0);
  @$pb.TagNumber(1)
  void clearTelecomOperator() => $_clearField(1);
}

class ProfileDownload extends $pb.GeneratedMessage {
  factory ProfileDownload({
    $core.String? activationCode,
    $core.String? confirmationCode,
  }) {
    final result = create();
    if (activationCode != null) result.activationCode = activationCode;
    if (confirmationCode != null) result.confirmationCode = confirmationCode;
    return result;
  }

  ProfileDownload._();

  factory ProfileDownload.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProfileDownload.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProfileDownload',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'activationCode')
    ..aQS(2, _omitFieldNames ? '' : 'confirmationCode');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfileDownload clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfileDownload copyWith(void Function(ProfileDownload) updates) =>
      super.copyWith((message) => updates(message as ProfileDownload))
          as ProfileDownload;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProfileDownload create() => ProfileDownload._();
  @$core.override
  ProfileDownload createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProfileDownload getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProfileDownload>(create);
  static ProfileDownload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get activationCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set activationCode($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasActivationCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearActivationCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get confirmationCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set confirmationCode($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasConfirmationCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfirmationCode() => $_clearField(2);
}

class DownloadProgress extends $pb.GeneratedMessage {
  factory DownloadProgress({
    $core.int? progress,
  }) {
    final result = create();
    if (progress != null) result.progress = progress;
    return result;
  }

  DownloadProgress._();

  factory DownloadProgress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DownloadProgress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DownloadProgress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'progress', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DownloadProgress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DownloadProgress copyWith(void Function(DownloadProgress) updates) =>
      super.copyWith((message) => updates(message as DownloadProgress))
          as DownloadProgress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DownloadProgress create() => DownloadProgress._();
  @$core.override
  DownloadProgress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DownloadProgress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DownloadProgress>(create);
  static DownloadProgress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get progress => $_getIZ(0);
  @$pb.TagNumber(1)
  set progress($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProgress() => $_has(0);
  @$pb.TagNumber(1)
  void clearProgress() => $_clearField(1);
}

class HttpRequest extends $pb.GeneratedMessage {
  factory HttpRequest({
    $fixnum.Int64? xid,
    $core.String? url,
    $core.String? payload,
  }) {
    final result = create();
    if (xid != null) result.xid = xid;
    if (url != null) result.url = url;
    if (payload != null) result.payload = payload;
    return result;
  }

  HttpRequest._();

  factory HttpRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HttpRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HttpRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'xid', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, _omitFieldNames ? '' : 'url')
    ..aQS(3, _omitFieldNames ? '' : 'payload');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HttpRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HttpRequest copyWith(void Function(HttpRequest) updates) =>
      super.copyWith((message) => updates(message as HttpRequest))
          as HttpRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpRequest create() => HttpRequest._();
  @$core.override
  HttpRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HttpRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HttpRequest>(create);
  static HttpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get xid => $_getI64(0);
  @$pb.TagNumber(1)
  set xid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasXid() => $_has(0);
  @$pb.TagNumber(1)
  void clearXid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get payload => $_getSZ(2);
  @$pb.TagNumber(3)
  set payload($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => $_clearField(3);
}

class HttpResponse extends $pb.GeneratedMessage {
  factory HttpResponse({
    $fixnum.Int64? xid,
    $core.int? statusCode,
    $core.String? result,
  }) {
    final result$ = create();
    if (xid != null) result$.xid = xid;
    if (statusCode != null) result$.statusCode = statusCode;
    if (result != null) result$.result = result;
    return result$;
  }

  HttpResponse._();

  factory HttpResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HttpResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HttpResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'xid', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(2, _omitFieldNames ? '' : 'statusCode', fieldType: $pb.PbFieldType.Q3)
    ..aQS(3, _omitFieldNames ? '' : 'result');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HttpResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HttpResponse copyWith(void Function(HttpResponse) updates) =>
      super.copyWith((message) => updates(message as HttpResponse))
          as HttpResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpResponse create() => HttpResponse._();
  @$core.override
  HttpResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HttpResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HttpResponse>(create);
  static HttpResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get xid => $_getI64(0);
  @$pb.TagNumber(1)
  set xid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasXid() => $_has(0);
  @$pb.TagNumber(1)
  void clearXid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get statusCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set statusCode($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatusCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatusCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get result => $_getSZ(2);
  @$pb.TagNumber(3)
  set result($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
