// This is a generated file - do not edit.
//
// Generated from wear_market.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_market.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_market.pbenum.dart';

enum Market_Payload { apk, apkList, installProgress, marketMessage, notSet }

class Market extends $pb.GeneratedMessage {
  factory Market({
    Apk? apk,
    Apk_List? apkList,
    InstallProgress? installProgress,
    MarketMessage? marketMessage,
  }) {
    final result = create();
    if (apk != null) result.apk = apk;
    if (apkList != null) result.apkList = apkList;
    if (installProgress != null) result.installProgress = installProgress;
    if (marketMessage != null) result.marketMessage = marketMessage;
    return result;
  }

  Market._();

  factory Market.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Market.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Market_Payload> _Market_PayloadByTag = {
    1: Market_Payload.apk,
    2: Market_Payload.apkList,
    3: Market_Payload.installProgress,
    4: Market_Payload.marketMessage,
    0: Market_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Market',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<Apk>(1, _omitFieldNames ? '' : 'apk', subBuilder: Apk.create)
    ..aOM<Apk_List>(2, _omitFieldNames ? '' : 'apkList',
        subBuilder: Apk_List.create)
    ..aOM<InstallProgress>(3, _omitFieldNames ? '' : 'installProgress',
        subBuilder: InstallProgress.create)
    ..aOM<MarketMessage>(4, _omitFieldNames ? '' : 'marketMessage',
        subBuilder: MarketMessage.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Market clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Market copyWith(void Function(Market) updates) =>
      super.copyWith((message) => updates(message as Market)) as Market;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Market create() => Market._();
  @$core.override
  Market createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Market getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Market>(create);
  static Market? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  Market_Payload whichPayload() => _Market_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Apk get apk => $_getN(0);
  @$pb.TagNumber(1)
  set apk(Apk value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasApk() => $_has(0);
  @$pb.TagNumber(1)
  void clearApk() => $_clearField(1);
  @$pb.TagNumber(1)
  Apk ensureApk() => $_ensure(0);

  @$pb.TagNumber(2)
  Apk_List get apkList => $_getN(1);
  @$pb.TagNumber(2)
  set apkList(Apk_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasApkList() => $_has(1);
  @$pb.TagNumber(2)
  void clearApkList() => $_clearField(2);
  @$pb.TagNumber(2)
  Apk_List ensureApkList() => $_ensure(1);

  @$pb.TagNumber(3)
  InstallProgress get installProgress => $_getN(2);
  @$pb.TagNumber(3)
  set installProgress(InstallProgress value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInstallProgress() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstallProgress() => $_clearField(3);
  @$pb.TagNumber(3)
  InstallProgress ensureInstallProgress() => $_ensure(2);

  @$pb.TagNumber(4)
  MarketMessage get marketMessage => $_getN(3);
  @$pb.TagNumber(4)
  set marketMessage(MarketMessage value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMarketMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarketMessage() => $_clearField(4);
  @$pb.TagNumber(4)
  MarketMessage ensureMarketMessage() => $_ensure(3);
}

class Apk_List extends $pb.GeneratedMessage {
  factory Apk_List({
    $core.Iterable<Apk>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  Apk_List._();

  factory Apk_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Apk_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Apk.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Apk>(1, _omitFieldNames ? '' : 'list', subBuilder: Apk.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Apk_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Apk_List copyWith(void Function(Apk_List) updates) =>
      super.copyWith((message) => updates(message as Apk_List)) as Apk_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Apk_List create() => Apk_List._();
  @$core.override
  Apk_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Apk_List getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Apk_List>(create);
  static Apk_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Apk> get list => $_getList(0);
}

enum Apk_Payload { packageName, url, apkInfo, notSet }

class Apk extends $pb.GeneratedMessage {
  factory Apk({
    ApkType? type,
    $core.String? packageName,
    $core.String? url,
    ApkInfo? apkInfo,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (packageName != null) result.packageName = packageName;
    if (url != null) result.url = url;
    if (apkInfo != null) result.apkInfo = apkInfo;
    return result;
  }

  Apk._();

  factory Apk.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Apk.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Apk_Payload> _Apk_PayloadByTag = {
    2: Apk_Payload.packageName,
    3: Apk_Payload.url,
    4: Apk_Payload.apkInfo,
    0: Apk_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Apk',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aE<ApkType>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: ApkType.values)
    ..aOS(2, _omitFieldNames ? '' : 'packageName')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..aOM<ApkInfo>(4, _omitFieldNames ? '' : 'apkInfo',
        subBuilder: ApkInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Apk clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Apk copyWith(void Function(Apk) updates) =>
      super.copyWith((message) => updates(message as Apk)) as Apk;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Apk create() => Apk._();
  @$core.override
  Apk createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Apk getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Apk>(create);
  static Apk? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  Apk_Payload whichPayload() => _Apk_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ApkType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ApkType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get packageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set packageName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPackageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackageName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  ApkInfo get apkInfo => $_getN(3);
  @$pb.TagNumber(4)
  set apkInfo(ApkInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasApkInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearApkInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  ApkInfo ensureApkInfo() => $_ensure(3);
}

class ApkInfo extends $pb.GeneratedMessage {
  factory ApkInfo({
    $core.String? packageName,
    $core.String? packageHash,
    $fixnum.Int64? versionCode,
  }) {
    final result = create();
    if (packageName != null) result.packageName = packageName;
    if (packageHash != null) result.packageHash = packageHash;
    if (versionCode != null) result.versionCode = versionCode;
    return result;
  }

  ApkInfo._();

  factory ApkInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApkInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApkInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'packageName')
    ..aQS(2, _omitFieldNames ? '' : 'packageHash')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'versionCode', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApkInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApkInfo copyWith(void Function(ApkInfo) updates) =>
      super.copyWith((message) => updates(message as ApkInfo)) as ApkInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApkInfo create() => ApkInfo._();
  @$core.override
  ApkInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApkInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApkInfo>(create);
  static ApkInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get packageName => $_getSZ(0);
  @$pb.TagNumber(1)
  set packageName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPackageName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get packageHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set packageHash($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPackageHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackageHash() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get versionCode => $_getI64(2);
  @$pb.TagNumber(3)
  set versionCode($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersionCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersionCode() => $_clearField(3);
}

class InstallProgress extends $pb.GeneratedMessage {
  factory InstallProgress({
    InstallCode? code,
    $core.String? packageName,
    $core.int? downloadProgress,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (packageName != null) result.packageName = packageName;
    if (downloadProgress != null) result.downloadProgress = downloadProgress;
    return result;
  }

  InstallProgress._();

  factory InstallProgress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InstallProgress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InstallProgress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<InstallCode>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: InstallCode.values)
    ..aQS(2, _omitFieldNames ? '' : 'packageName')
    ..aI(3, _omitFieldNames ? '' : 'downloadProgress',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstallProgress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstallProgress copyWith(void Function(InstallProgress) updates) =>
      super.copyWith((message) => updates(message as InstallProgress))
          as InstallProgress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallProgress create() => InstallProgress._();
  @$core.override
  InstallProgress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InstallProgress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InstallProgress>(create);
  static InstallProgress? _defaultInstance;

  @$pb.TagNumber(1)
  InstallCode get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(InstallCode value) => $_setField(1, value);
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
  $core.int get downloadProgress => $_getIZ(2);
  @$pb.TagNumber(3)
  set downloadProgress($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDownloadProgress() => $_has(2);
  @$pb.TagNumber(3)
  void clearDownloadProgress() => $_clearField(3);
}

class MarketMessage extends $pb.GeneratedMessage {
  factory MarketMessage({
    $core.List<$core.int>? content,
  }) {
    final result = create();
    if (content != null) result.content = content;
    return result;
  }

  MarketMessage._();

  factory MarketMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MarketMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MarketMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'content', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarketMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarketMessage copyWith(void Function(MarketMessage) updates) =>
      super.copyWith((message) => updates(message as MarketMessage))
          as MarketMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarketMessage create() => MarketMessage._();
  @$core.override
  MarketMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MarketMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MarketMessage>(create);
  static MarketMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get content => $_getN(0);
  @$pb.TagNumber(1)
  set content($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
