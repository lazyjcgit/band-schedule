// This is a generated file - do not edit.
//
// Generated from wear_factory.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pb.dart' as $0;
import 'wear_factory.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_factory.pbenum.dart';

enum Factory_Payload {
  mode,
  nfcList,
  file,
  imageRequest,
  imageResponse,
  brightness,
  selfCheckingRequest,
  selfCheckingResponse,
  selfCheckingResult,
  sensorCaptureRequest,
  sensorCaptureResponse,
  sensorConfirmRequest,
  sensorConfirmResponse,
  appInfoList,
  appBehavior,
  sensorReplayRequest,
  sensorReplayResponse,
  selfCheckingStepRequest,
  selfCheckingStepResult,
  attp,
  notSet
}

class Factory extends $pb.GeneratedMessage {
  factory Factory({
    FactoryMode? mode,
    NfcInfo_List? nfcList,
    FileInfo? file,
    PreviewImageRequest? imageRequest,
    PreviewImageResponse? imageResponse,
    $core.int? brightness,
    SelfChecking_Request? selfCheckingRequest,
    SelfChecking_Response? selfCheckingResponse,
    SelfChecking_Result? selfCheckingResult,
    SensorCaptureRequest? sensorCaptureRequest,
    SensorCaptureResponse? sensorCaptureResponse,
    SensorConfirmRequest? sensorConfirmRequest,
    SensorConfirmResponse? sensorConfirmResponse,
    CTA_AppInfo_List? appInfoList,
    CTA_AppBehavior? appBehavior,
    SensorReplayRequest? sensorReplayRequest,
    SensorReplayResponse? sensorReplayResponse,
    SelfChecking_StepRequest? selfCheckingStepRequest,
    SelfChecking_StepResult? selfCheckingStepResult,
    $core.String? attp,
  }) {
    final result = create();
    if (mode != null) result.mode = mode;
    if (nfcList != null) result.nfcList = nfcList;
    if (file != null) result.file = file;
    if (imageRequest != null) result.imageRequest = imageRequest;
    if (imageResponse != null) result.imageResponse = imageResponse;
    if (brightness != null) result.brightness = brightness;
    if (selfCheckingRequest != null)
      result.selfCheckingRequest = selfCheckingRequest;
    if (selfCheckingResponse != null)
      result.selfCheckingResponse = selfCheckingResponse;
    if (selfCheckingResult != null)
      result.selfCheckingResult = selfCheckingResult;
    if (sensorCaptureRequest != null)
      result.sensorCaptureRequest = sensorCaptureRequest;
    if (sensorCaptureResponse != null)
      result.sensorCaptureResponse = sensorCaptureResponse;
    if (sensorConfirmRequest != null)
      result.sensorConfirmRequest = sensorConfirmRequest;
    if (sensorConfirmResponse != null)
      result.sensorConfirmResponse = sensorConfirmResponse;
    if (appInfoList != null) result.appInfoList = appInfoList;
    if (appBehavior != null) result.appBehavior = appBehavior;
    if (sensorReplayRequest != null)
      result.sensorReplayRequest = sensorReplayRequest;
    if (sensorReplayResponse != null)
      result.sensorReplayResponse = sensorReplayResponse;
    if (selfCheckingStepRequest != null)
      result.selfCheckingStepRequest = selfCheckingStepRequest;
    if (selfCheckingStepResult != null)
      result.selfCheckingStepResult = selfCheckingStepResult;
    if (attp != null) result.attp = attp;
    return result;
  }

  Factory._();

  factory Factory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Factory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Factory_Payload> _Factory_PayloadByTag = {
    1: Factory_Payload.mode,
    2: Factory_Payload.nfcList,
    3: Factory_Payload.file,
    4: Factory_Payload.imageRequest,
    5: Factory_Payload.imageResponse,
    6: Factory_Payload.brightness,
    7: Factory_Payload.selfCheckingRequest,
    8: Factory_Payload.selfCheckingResponse,
    9: Factory_Payload.selfCheckingResult,
    10: Factory_Payload.sensorCaptureRequest,
    11: Factory_Payload.sensorCaptureResponse,
    12: Factory_Payload.sensorConfirmRequest,
    13: Factory_Payload.sensorConfirmResponse,
    14: Factory_Payload.appInfoList,
    15: Factory_Payload.appBehavior,
    16: Factory_Payload.sensorReplayRequest,
    17: Factory_Payload.sensorReplayResponse,
    18: Factory_Payload.selfCheckingStepRequest,
    19: Factory_Payload.selfCheckingStepResult,
    128: Factory_Payload.attp,
    0: Factory_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Factory',
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
      128
    ])
    ..aE<FactoryMode>(1, _omitFieldNames ? '' : 'mode',
        enumValues: FactoryMode.values)
    ..aOM<NfcInfo_List>(2, _omitFieldNames ? '' : 'nfcList',
        subBuilder: NfcInfo_List.create)
    ..aOM<FileInfo>(3, _omitFieldNames ? '' : 'file',
        subBuilder: FileInfo.create)
    ..aOM<PreviewImageRequest>(4, _omitFieldNames ? '' : 'imageRequest',
        subBuilder: PreviewImageRequest.create)
    ..aOM<PreviewImageResponse>(5, _omitFieldNames ? '' : 'imageResponse',
        subBuilder: PreviewImageResponse.create)
    ..aI(6, _omitFieldNames ? '' : 'brightness', fieldType: $pb.PbFieldType.OU3)
    ..aOM<SelfChecking_Request>(7, _omitFieldNames ? '' : 'selfCheckingRequest',
        subBuilder: SelfChecking_Request.create)
    ..aOM<SelfChecking_Response>(
        8, _omitFieldNames ? '' : 'selfCheckingResponse',
        subBuilder: SelfChecking_Response.create)
    ..aOM<SelfChecking_Result>(9, _omitFieldNames ? '' : 'selfCheckingResult',
        subBuilder: SelfChecking_Result.create)
    ..aOM<SensorCaptureRequest>(
        10, _omitFieldNames ? '' : 'sensorCaptureRequest',
        subBuilder: SensorCaptureRequest.create)
    ..aOM<SensorCaptureResponse>(
        11, _omitFieldNames ? '' : 'sensorCaptureResponse',
        subBuilder: SensorCaptureResponse.create)
    ..aOM<SensorConfirmRequest>(
        12, _omitFieldNames ? '' : 'sensorConfirmRequest',
        subBuilder: SensorConfirmRequest.create)
    ..aOM<SensorConfirmResponse>(
        13, _omitFieldNames ? '' : 'sensorConfirmResponse',
        subBuilder: SensorConfirmResponse.create)
    ..aOM<CTA_AppInfo_List>(14, _omitFieldNames ? '' : 'appInfoList',
        subBuilder: CTA_AppInfo_List.create)
    ..aOM<CTA_AppBehavior>(15, _omitFieldNames ? '' : 'appBehavior',
        subBuilder: CTA_AppBehavior.create)
    ..aOM<SensorReplayRequest>(16, _omitFieldNames ? '' : 'sensorReplayRequest',
        subBuilder: SensorReplayRequest.create)
    ..aOM<SensorReplayResponse>(
        17, _omitFieldNames ? '' : 'sensorReplayResponse',
        subBuilder: SensorReplayResponse.create)
    ..aOM<SelfChecking_StepRequest>(
        18, _omitFieldNames ? '' : 'selfCheckingStepRequest',
        subBuilder: SelfChecking_StepRequest.create)
    ..aOM<SelfChecking_StepResult>(
        19, _omitFieldNames ? '' : 'selfCheckingStepResult',
        subBuilder: SelfChecking_StepResult.create)
    ..aOS(128, _omitFieldNames ? '' : 'attp');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Factory clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Factory copyWith(void Function(Factory) updates) =>
      super.copyWith((message) => updates(message as Factory)) as Factory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Factory create() => Factory._();
  @$core.override
  Factory createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Factory getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Factory>(create);
  static Factory? _defaultInstance;

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
  @$pb.TagNumber(128)
  Factory_Payload whichPayload() => _Factory_PayloadByTag[$_whichOneof(0)]!;
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
  @$pb.TagNumber(128)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FactoryMode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(FactoryMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => $_clearField(1);

  @$pb.TagNumber(2)
  NfcInfo_List get nfcList => $_getN(1);
  @$pb.TagNumber(2)
  set nfcList(NfcInfo_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNfcList() => $_has(1);
  @$pb.TagNumber(2)
  void clearNfcList() => $_clearField(2);
  @$pb.TagNumber(2)
  NfcInfo_List ensureNfcList() => $_ensure(1);

  @$pb.TagNumber(3)
  FileInfo get file => $_getN(2);
  @$pb.TagNumber(3)
  set file(FileInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFile() => $_has(2);
  @$pb.TagNumber(3)
  void clearFile() => $_clearField(3);
  @$pb.TagNumber(3)
  FileInfo ensureFile() => $_ensure(2);

  @$pb.TagNumber(4)
  PreviewImageRequest get imageRequest => $_getN(3);
  @$pb.TagNumber(4)
  set imageRequest(PreviewImageRequest value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasImageRequest() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageRequest() => $_clearField(4);
  @$pb.TagNumber(4)
  PreviewImageRequest ensureImageRequest() => $_ensure(3);

  @$pb.TagNumber(5)
  PreviewImageResponse get imageResponse => $_getN(4);
  @$pb.TagNumber(5)
  set imageResponse(PreviewImageResponse value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasImageResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageResponse() => $_clearField(5);
  @$pb.TagNumber(5)
  PreviewImageResponse ensureImageResponse() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get brightness => $_getIZ(5);
  @$pb.TagNumber(6)
  set brightness($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBrightness() => $_has(5);
  @$pb.TagNumber(6)
  void clearBrightness() => $_clearField(6);

  @$pb.TagNumber(7)
  SelfChecking_Request get selfCheckingRequest => $_getN(6);
  @$pb.TagNumber(7)
  set selfCheckingRequest(SelfChecking_Request value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSelfCheckingRequest() => $_has(6);
  @$pb.TagNumber(7)
  void clearSelfCheckingRequest() => $_clearField(7);
  @$pb.TagNumber(7)
  SelfChecking_Request ensureSelfCheckingRequest() => $_ensure(6);

  @$pb.TagNumber(8)
  SelfChecking_Response get selfCheckingResponse => $_getN(7);
  @$pb.TagNumber(8)
  set selfCheckingResponse(SelfChecking_Response value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSelfCheckingResponse() => $_has(7);
  @$pb.TagNumber(8)
  void clearSelfCheckingResponse() => $_clearField(8);
  @$pb.TagNumber(8)
  SelfChecking_Response ensureSelfCheckingResponse() => $_ensure(7);

  @$pb.TagNumber(9)
  SelfChecking_Result get selfCheckingResult => $_getN(8);
  @$pb.TagNumber(9)
  set selfCheckingResult(SelfChecking_Result value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSelfCheckingResult() => $_has(8);
  @$pb.TagNumber(9)
  void clearSelfCheckingResult() => $_clearField(9);
  @$pb.TagNumber(9)
  SelfChecking_Result ensureSelfCheckingResult() => $_ensure(8);

  @$pb.TagNumber(10)
  SensorCaptureRequest get sensorCaptureRequest => $_getN(9);
  @$pb.TagNumber(10)
  set sensorCaptureRequest(SensorCaptureRequest value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasSensorCaptureRequest() => $_has(9);
  @$pb.TagNumber(10)
  void clearSensorCaptureRequest() => $_clearField(10);
  @$pb.TagNumber(10)
  SensorCaptureRequest ensureSensorCaptureRequest() => $_ensure(9);

  @$pb.TagNumber(11)
  SensorCaptureResponse get sensorCaptureResponse => $_getN(10);
  @$pb.TagNumber(11)
  set sensorCaptureResponse(SensorCaptureResponse value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSensorCaptureResponse() => $_has(10);
  @$pb.TagNumber(11)
  void clearSensorCaptureResponse() => $_clearField(11);
  @$pb.TagNumber(11)
  SensorCaptureResponse ensureSensorCaptureResponse() => $_ensure(10);

  @$pb.TagNumber(12)
  SensorConfirmRequest get sensorConfirmRequest => $_getN(11);
  @$pb.TagNumber(12)
  set sensorConfirmRequest(SensorConfirmRequest value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSensorConfirmRequest() => $_has(11);
  @$pb.TagNumber(12)
  void clearSensorConfirmRequest() => $_clearField(12);
  @$pb.TagNumber(12)
  SensorConfirmRequest ensureSensorConfirmRequest() => $_ensure(11);

  @$pb.TagNumber(13)
  SensorConfirmResponse get sensorConfirmResponse => $_getN(12);
  @$pb.TagNumber(13)
  set sensorConfirmResponse(SensorConfirmResponse value) =>
      $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasSensorConfirmResponse() => $_has(12);
  @$pb.TagNumber(13)
  void clearSensorConfirmResponse() => $_clearField(13);
  @$pb.TagNumber(13)
  SensorConfirmResponse ensureSensorConfirmResponse() => $_ensure(12);

  @$pb.TagNumber(14)
  CTA_AppInfo_List get appInfoList => $_getN(13);
  @$pb.TagNumber(14)
  set appInfoList(CTA_AppInfo_List value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasAppInfoList() => $_has(13);
  @$pb.TagNumber(14)
  void clearAppInfoList() => $_clearField(14);
  @$pb.TagNumber(14)
  CTA_AppInfo_List ensureAppInfoList() => $_ensure(13);

  @$pb.TagNumber(15)
  CTA_AppBehavior get appBehavior => $_getN(14);
  @$pb.TagNumber(15)
  set appBehavior(CTA_AppBehavior value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasAppBehavior() => $_has(14);
  @$pb.TagNumber(15)
  void clearAppBehavior() => $_clearField(15);
  @$pb.TagNumber(15)
  CTA_AppBehavior ensureAppBehavior() => $_ensure(14);

  @$pb.TagNumber(16)
  SensorReplayRequest get sensorReplayRequest => $_getN(15);
  @$pb.TagNumber(16)
  set sensorReplayRequest(SensorReplayRequest value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasSensorReplayRequest() => $_has(15);
  @$pb.TagNumber(16)
  void clearSensorReplayRequest() => $_clearField(16);
  @$pb.TagNumber(16)
  SensorReplayRequest ensureSensorReplayRequest() => $_ensure(15);

  @$pb.TagNumber(17)
  SensorReplayResponse get sensorReplayResponse => $_getN(16);
  @$pb.TagNumber(17)
  set sensorReplayResponse(SensorReplayResponse value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasSensorReplayResponse() => $_has(16);
  @$pb.TagNumber(17)
  void clearSensorReplayResponse() => $_clearField(17);
  @$pb.TagNumber(17)
  SensorReplayResponse ensureSensorReplayResponse() => $_ensure(16);

  @$pb.TagNumber(18)
  SelfChecking_StepRequest get selfCheckingStepRequest => $_getN(17);
  @$pb.TagNumber(18)
  set selfCheckingStepRequest(SelfChecking_StepRequest value) =>
      $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasSelfCheckingStepRequest() => $_has(17);
  @$pb.TagNumber(18)
  void clearSelfCheckingStepRequest() => $_clearField(18);
  @$pb.TagNumber(18)
  SelfChecking_StepRequest ensureSelfCheckingStepRequest() => $_ensure(17);

  @$pb.TagNumber(19)
  SelfChecking_StepResult get selfCheckingStepResult => $_getN(18);
  @$pb.TagNumber(19)
  set selfCheckingStepResult(SelfChecking_StepResult value) =>
      $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasSelfCheckingStepResult() => $_has(18);
  @$pb.TagNumber(19)
  void clearSelfCheckingStepResult() => $_clearField(19);
  @$pb.TagNumber(19)
  SelfChecking_StepResult ensureSelfCheckingStepResult() => $_ensure(18);

  @$pb.TagNumber(128)
  $core.String get attp => $_getSZ(19);
  @$pb.TagNumber(128)
  set attp($core.String value) => $_setString(19, value);
  @$pb.TagNumber(128)
  $core.bool hasAttp() => $_has(19);
  @$pb.TagNumber(128)
  void clearAttp() => $_clearField(128);
}

class NfcInfo_List extends $pb.GeneratedMessage {
  factory NfcInfo_List({
    $core.Iterable<NfcInfo>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  NfcInfo_List._();

  factory NfcInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NfcInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NfcInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<NfcInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: NfcInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NfcInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NfcInfo_List copyWith(void Function(NfcInfo_List) updates) =>
      super.copyWith((message) => updates(message as NfcInfo_List))
          as NfcInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NfcInfo_List create() => NfcInfo_List._();
  @$core.override
  NfcInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NfcInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NfcInfo_List>(create);
  static NfcInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<NfcInfo> get list => $_getList(0);
}

class NfcInfo extends $pb.GeneratedMessage {
  factory NfcInfo({
    $core.String? key,
    $core.List<$core.int>? value,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    return result;
  }

  NfcInfo._();

  factory NfcInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NfcInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NfcInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'key')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NfcInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NfcInfo copyWith(void Function(NfcInfo) updates) =>
      super.copyWith((message) => updates(message as NfcInfo)) as NfcInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NfcInfo create() => NfcInfo._();
  @$core.override
  NfcInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NfcInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NfcInfo>(create);
  static NfcInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class FileInfo extends $pb.GeneratedMessage {
  factory FileInfo({
    $core.String? name,
    $core.bool? isAppend,
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (isAppend != null) result.isAppend = isAppend;
    if (data != null) result.data = data;
    return result;
  }

  FileInfo._();

  factory FileInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'isAppend', $pb.PbFieldType.QB)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileInfo copyWith(void Function(FileInfo) updates) =>
      super.copyWith((message) => updates(message as FileInfo)) as FileInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileInfo create() => FileInfo._();
  @$core.override
  FileInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileInfo>(create);
  static FileInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isAppend => $_getBF(1);
  @$pb.TagNumber(2)
  set isAppend($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsAppend() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAppend() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => $_clearField(3);
}

class PreviewImageRequest extends $pb.GeneratedMessage {
  factory PreviewImageRequest({
    $core.String? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  PreviewImageRequest._();

  factory PreviewImageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PreviewImageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PreviewImageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aQS(2, _omitFieldNames ? '' : 'name');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreviewImageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreviewImageRequest copyWith(void Function(PreviewImageRequest) updates) =>
      super.copyWith((message) => updates(message as PreviewImageRequest))
          as PreviewImageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreviewImageRequest create() => PreviewImageRequest._();
  @$core.override
  PreviewImageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PreviewImageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PreviewImageRequest>(create);
  static PreviewImageRequest? _defaultInstance;

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
}

class PreviewImageResponse extends $pb.GeneratedMessage {
  factory PreviewImageResponse({
    $0.PrepareStatus? status,
    $0.ImageFormat? expectedImageFormat,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (expectedImageFormat != null)
      result.expectedImageFormat = expectedImageFormat;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  PreviewImageResponse._();

  factory PreviewImageResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PreviewImageResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PreviewImageResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.PrepareStatus>(1, _omitFieldNames ? '' : 'status',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.PrepareStatus.values)
    ..aE<$0.ImageFormat>(2, _omitFieldNames ? '' : 'expectedImageFormat',
        enumValues: $0.ImageFormat.values)
    ..aI(3, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreviewImageResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreviewImageResponse copyWith(void Function(PreviewImageResponse) updates) =>
      super.copyWith((message) => updates(message as PreviewImageResponse))
          as PreviewImageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreviewImageResponse create() => PreviewImageResponse._();
  @$core.override
  PreviewImageResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PreviewImageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PreviewImageResponse>(create);
  static PreviewImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.PrepareStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($0.PrepareStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.ImageFormat get expectedImageFormat => $_getN(1);
  @$pb.TagNumber(2)
  set expectedImageFormat($0.ImageFormat value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExpectedImageFormat() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpectedImageFormat() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get expectedSliceLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpectedSliceLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectedSliceLength() => $_clearField(3);
}

class SensorCaptureRequest_MetaInfo extends $pb.GeneratedMessage {
  factory SensorCaptureRequest_MetaInfo({
    $core.String? userId,
    $0.Sex? sex,
    $core.int? userAge,
    $core.int? height,
    $core.double? weight,
    $core.String? mainScene,
    $core.String? subScene,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (sex != null) result.sex = sex;
    if (userAge != null) result.userAge = userAge;
    if (height != null) result.height = height;
    if (weight != null) result.weight = weight;
    if (mainScene != null) result.mainScene = mainScene;
    if (subScene != null) result.subScene = subScene;
    return result;
  }

  SensorCaptureRequest_MetaInfo._();

  factory SensorCaptureRequest_MetaInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorCaptureRequest_MetaInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorCaptureRequest.MetaInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'userId')
    ..aE<$0.Sex>(2, _omitFieldNames ? '' : 'sex',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.Sex.values)
    ..aI(3, _omitFieldNames ? '' : 'userAge', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'height', fieldType: $pb.PbFieldType.QU3)
    ..aD(5, _omitFieldNames ? '' : 'weight', fieldType: $pb.PbFieldType.QF)
    ..aQS(6, _omitFieldNames ? '' : 'mainScene')
    ..aQS(7, _omitFieldNames ? '' : 'subScene');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureRequest_MetaInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureRequest_MetaInfo copyWith(
          void Function(SensorCaptureRequest_MetaInfo) updates) =>
      super.copyWith(
              (message) => updates(message as SensorCaptureRequest_MetaInfo))
          as SensorCaptureRequest_MetaInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorCaptureRequest_MetaInfo create() =>
      SensorCaptureRequest_MetaInfo._();
  @$core.override
  SensorCaptureRequest_MetaInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorCaptureRequest_MetaInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorCaptureRequest_MetaInfo>(create);
  static SensorCaptureRequest_MetaInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Sex get sex => $_getN(1);
  @$pb.TagNumber(2)
  set sex($0.Sex value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSex() => $_has(1);
  @$pb.TagNumber(2)
  void clearSex() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get userAge => $_getIZ(2);
  @$pb.TagNumber(3)
  set userAge($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserAge() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserAge() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get height => $_getIZ(3);
  @$pb.TagNumber(4)
  set height($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get weight => $_getN(4);
  @$pb.TagNumber(5)
  set weight($core.double value) => $_setFloat(4, value);
  @$pb.TagNumber(5)
  $core.bool hasWeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearWeight() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get mainScene => $_getSZ(5);
  @$pb.TagNumber(6)
  set mainScene($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMainScene() => $_has(5);
  @$pb.TagNumber(6)
  void clearMainScene() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get subScene => $_getSZ(6);
  @$pb.TagNumber(7)
  set subScene($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSubScene() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubScene() => $_clearField(7);
}

class SensorCaptureRequest_Sensor_List extends $pb.GeneratedMessage {
  factory SensorCaptureRequest_Sensor_List({
    $core.Iterable<SensorCaptureRequest_Sensor>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  SensorCaptureRequest_Sensor_List._();

  factory SensorCaptureRequest_Sensor_List.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorCaptureRequest_Sensor_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorCaptureRequest.Sensor.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<SensorCaptureRequest_Sensor>(1, _omitFieldNames ? '' : 'list',
        subBuilder: SensorCaptureRequest_Sensor.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureRequest_Sensor_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureRequest_Sensor_List copyWith(
          void Function(SensorCaptureRequest_Sensor_List) updates) =>
      super.copyWith(
              (message) => updates(message as SensorCaptureRequest_Sensor_List))
          as SensorCaptureRequest_Sensor_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorCaptureRequest_Sensor_List create() =>
      SensorCaptureRequest_Sensor_List._();
  @$core.override
  SensorCaptureRequest_Sensor_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorCaptureRequest_Sensor_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorCaptureRequest_Sensor_List>(
          create);
  static SensorCaptureRequest_Sensor_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SensorCaptureRequest_Sensor> get list => $_getList(0);
}

class SensorCaptureRequest_Sensor extends $pb.GeneratedMessage {
  factory SensorCaptureRequest_Sensor({
    $core.int? type,
    $core.int? frequence,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (frequence != null) result.frequence = frequence;
    return result;
  }

  SensorCaptureRequest_Sensor._();

  factory SensorCaptureRequest_Sensor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorCaptureRequest_Sensor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorCaptureRequest.Sensor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'frequence', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureRequest_Sensor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureRequest_Sensor copyWith(
          void Function(SensorCaptureRequest_Sensor) updates) =>
      super.copyWith(
              (message) => updates(message as SensorCaptureRequest_Sensor))
          as SensorCaptureRequest_Sensor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorCaptureRequest_Sensor create() =>
      SensorCaptureRequest_Sensor._();
  @$core.override
  SensorCaptureRequest_Sensor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorCaptureRequest_Sensor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorCaptureRequest_Sensor>(create);
  static SensorCaptureRequest_Sensor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get frequence => $_getIZ(1);
  @$pb.TagNumber(2)
  set frequence($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFrequence() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrequence() => $_clearField(2);
}

class SensorCaptureRequest extends $pb.GeneratedMessage {
  factory SensorCaptureRequest({
    SensorCaptureRequest_State? state,
    SensorCaptureRequest_Mode? mode,
    $core.int? timestamp,
    SensorCaptureRequest_MetaInfo? metaInfo,
    SensorCaptureRequest_Sensor_List? sensorList,
    $core.List<$core.int>? settingInfo,
  }) {
    final result = create();
    if (state != null) result.state = state;
    if (mode != null) result.mode = mode;
    if (timestamp != null) result.timestamp = timestamp;
    if (metaInfo != null) result.metaInfo = metaInfo;
    if (sensorList != null) result.sensorList = sensorList;
    if (settingInfo != null) result.settingInfo = settingInfo;
    return result;
  }

  SensorCaptureRequest._();

  factory SensorCaptureRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorCaptureRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorCaptureRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<SensorCaptureRequest_State>(1, _omitFieldNames ? '' : 'state',
        fieldType: $pb.PbFieldType.QE,
        enumValues: SensorCaptureRequest_State.values)
    ..aE<SensorCaptureRequest_Mode>(2, _omitFieldNames ? '' : 'mode',
        fieldType: $pb.PbFieldType.QE,
        enumValues: SensorCaptureRequest_Mode.values)
    ..aI(3, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.OU3)
    ..aOM<SensorCaptureRequest_MetaInfo>(4, _omitFieldNames ? '' : 'metaInfo',
        subBuilder: SensorCaptureRequest_MetaInfo.create)
    ..aOM<SensorCaptureRequest_Sensor_List>(
        5, _omitFieldNames ? '' : 'sensorList',
        subBuilder: SensorCaptureRequest_Sensor_List.create)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'settingInfo', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureRequest copyWith(void Function(SensorCaptureRequest) updates) =>
      super.copyWith((message) => updates(message as SensorCaptureRequest))
          as SensorCaptureRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorCaptureRequest create() => SensorCaptureRequest._();
  @$core.override
  SensorCaptureRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorCaptureRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorCaptureRequest>(create);
  static SensorCaptureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  SensorCaptureRequest_State get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(SensorCaptureRequest_State value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);

  @$pb.TagNumber(2)
  SensorCaptureRequest_Mode get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(SensorCaptureRequest_Mode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get timestamp => $_getIZ(2);
  @$pb.TagNumber(3)
  set timestamp($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => $_clearField(3);

  @$pb.TagNumber(4)
  SensorCaptureRequest_MetaInfo get metaInfo => $_getN(3);
  @$pb.TagNumber(4)
  set metaInfo(SensorCaptureRequest_MetaInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMetaInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetaInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  SensorCaptureRequest_MetaInfo ensureMetaInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  SensorCaptureRequest_Sensor_List get sensorList => $_getN(4);
  @$pb.TagNumber(5)
  set sensorList(SensorCaptureRequest_Sensor_List value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSensorList() => $_has(4);
  @$pb.TagNumber(5)
  void clearSensorList() => $_clearField(5);
  @$pb.TagNumber(5)
  SensorCaptureRequest_Sensor_List ensureSensorList() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get settingInfo => $_getN(5);
  @$pb.TagNumber(6)
  set settingInfo($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSettingInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearSettingInfo() => $_clearField(6);
}

class SensorCaptureResponse extends $pb.GeneratedMessage {
  factory SensorCaptureResponse({
    $core.int? code,
    $core.List<$core.int>? settingInfo,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (settingInfo != null) result.settingInfo = settingInfo;
    return result;
  }

  SensorCaptureResponse._();

  factory SensorCaptureResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorCaptureResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorCaptureResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'settingInfo', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorCaptureResponse copyWith(
          void Function(SensorCaptureResponse) updates) =>
      super.copyWith((message) => updates(message as SensorCaptureResponse))
          as SensorCaptureResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorCaptureResponse create() => SensorCaptureResponse._();
  @$core.override
  SensorCaptureResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorCaptureResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorCaptureResponse>(create);
  static SensorCaptureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get settingInfo => $_getN(1);
  @$pb.TagNumber(2)
  set settingInfo($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSettingInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearSettingInfo() => $_clearField(2);
}

class SensorConfirmRequest extends $pb.GeneratedMessage {
  factory SensorConfirmRequest({
    $core.List<$core.int>? dataId,
    $core.int? status,
  }) {
    final result = create();
    if (dataId != null) result.dataId = dataId;
    if (status != null) result.status = status;
    return result;
  }

  SensorConfirmRequest._();

  factory SensorConfirmRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorConfirmRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorConfirmRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'dataId', $pb.PbFieldType.QY)
    ..aI(2, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorConfirmRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorConfirmRequest copyWith(void Function(SensorConfirmRequest) updates) =>
      super.copyWith((message) => updates(message as SensorConfirmRequest))
          as SensorConfirmRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorConfirmRequest create() => SensorConfirmRequest._();
  @$core.override
  SensorConfirmRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorConfirmRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorConfirmRequest>(create);
  static SensorConfirmRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dataId => $_getN(0);
  @$pb.TagNumber(1)
  set dataId($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
}

class SensorConfirmResponse extends $pb.GeneratedMessage {
  factory SensorConfirmResponse({
    $core.int? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  SensorConfirmResponse._();

  factory SensorConfirmResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorConfirmResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorConfirmResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'result', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorConfirmResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorConfirmResponse copyWith(
          void Function(SensorConfirmResponse) updates) =>
      super.copyWith((message) => updates(message as SensorConfirmResponse))
          as SensorConfirmResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorConfirmResponse create() => SensorConfirmResponse._();
  @$core.override
  SensorConfirmResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorConfirmResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorConfirmResponse>(create);
  static SensorConfirmResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get result => $_getIZ(0);
  @$pb.TagNumber(1)
  set result($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
}

class SelfChecking_Request extends $pb.GeneratedMessage {
  factory SelfChecking_Request({
    SelfChecking_Cmd? cmd,
  }) {
    final result = create();
    if (cmd != null) result.cmd = cmd;
    return result;
  }

  SelfChecking_Request._();

  factory SelfChecking_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SelfChecking_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SelfChecking.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<SelfChecking_Cmd>(1, _omitFieldNames ? '' : 'cmd',
        fieldType: $pb.PbFieldType.QE, enumValues: SelfChecking_Cmd.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_Request copyWith(void Function(SelfChecking_Request) updates) =>
      super.copyWith((message) => updates(message as SelfChecking_Request))
          as SelfChecking_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfChecking_Request create() => SelfChecking_Request._();
  @$core.override
  SelfChecking_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SelfChecking_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SelfChecking_Request>(create);
  static SelfChecking_Request? _defaultInstance;

  @$pb.TagNumber(1)
  SelfChecking_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(SelfChecking_Cmd value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => $_clearField(1);
}

class SelfChecking_Response extends $pb.GeneratedMessage {
  factory SelfChecking_Response({
    SelfChecking_Cmd? cmd,
    SelfChecking_Status? status,
  }) {
    final result = create();
    if (cmd != null) result.cmd = cmd;
    if (status != null) result.status = status;
    return result;
  }

  SelfChecking_Response._();

  factory SelfChecking_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SelfChecking_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SelfChecking.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<SelfChecking_Cmd>(1, _omitFieldNames ? '' : 'cmd',
        fieldType: $pb.PbFieldType.QE, enumValues: SelfChecking_Cmd.values)
    ..aE<SelfChecking_Status>(2, _omitFieldNames ? '' : 'status',
        fieldType: $pb.PbFieldType.QE, enumValues: SelfChecking_Status.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_Response copyWith(
          void Function(SelfChecking_Response) updates) =>
      super.copyWith((message) => updates(message as SelfChecking_Response))
          as SelfChecking_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfChecking_Response create() => SelfChecking_Response._();
  @$core.override
  SelfChecking_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SelfChecking_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SelfChecking_Response>(create);
  static SelfChecking_Response? _defaultInstance;

  @$pb.TagNumber(1)
  SelfChecking_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(SelfChecking_Cmd value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => $_clearField(1);

  @$pb.TagNumber(2)
  SelfChecking_Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(SelfChecking_Status value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
}

class SelfChecking_Item extends $pb.GeneratedMessage {
  factory SelfChecking_Item({
    SelfChecking_Func? func,
    $core.bool? pass,
  }) {
    final result = create();
    if (func != null) result.func = func;
    if (pass != null) result.pass = pass;
    return result;
  }

  SelfChecking_Item._();

  factory SelfChecking_Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SelfChecking_Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SelfChecking.Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<SelfChecking_Func>(1, _omitFieldNames ? '' : 'func',
        fieldType: $pb.PbFieldType.QE, enumValues: SelfChecking_Func.values)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'pass', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_Item copyWith(void Function(SelfChecking_Item) updates) =>
      super.copyWith((message) => updates(message as SelfChecking_Item))
          as SelfChecking_Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfChecking_Item create() => SelfChecking_Item._();
  @$core.override
  SelfChecking_Item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SelfChecking_Item getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SelfChecking_Item>(create);
  static SelfChecking_Item? _defaultInstance;

  @$pb.TagNumber(1)
  SelfChecking_Func get func => $_getN(0);
  @$pb.TagNumber(1)
  set func(SelfChecking_Func value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFunc() => $_has(0);
  @$pb.TagNumber(1)
  void clearFunc() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get pass => $_getBF(1);
  @$pb.TagNumber(2)
  set pass($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPass() => $_has(1);
  @$pb.TagNumber(2)
  void clearPass() => $_clearField(2);
}

class SelfChecking_Result extends $pb.GeneratedMessage {
  factory SelfChecking_Result({
    $core.Iterable<SelfChecking_Item>? items,
    $core.bool? partial,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (partial != null) result.partial = partial;
    return result;
  }

  SelfChecking_Result._();

  factory SelfChecking_Result.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SelfChecking_Result.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SelfChecking.Result',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<SelfChecking_Item>(1, _omitFieldNames ? '' : 'items',
        subBuilder: SelfChecking_Item.create)
    ..aOB(2, _omitFieldNames ? '' : 'partial');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_Result clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_Result copyWith(void Function(SelfChecking_Result) updates) =>
      super.copyWith((message) => updates(message as SelfChecking_Result))
          as SelfChecking_Result;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfChecking_Result create() => SelfChecking_Result._();
  @$core.override
  SelfChecking_Result createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SelfChecking_Result getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SelfChecking_Result>(create);
  static SelfChecking_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SelfChecking_Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get partial => $_getBF(1);
  @$pb.TagNumber(2)
  set partial($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPartial() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartial() => $_clearField(2);
}

class SelfChecking_StepRequest extends $pb.GeneratedMessage {
  factory SelfChecking_StepRequest({
    SelfChecking_Func? func,
    $core.int? step,
  }) {
    final result = create();
    if (func != null) result.func = func;
    if (step != null) result.step = step;
    return result;
  }

  SelfChecking_StepRequest._();

  factory SelfChecking_StepRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SelfChecking_StepRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SelfChecking.StepRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<SelfChecking_Func>(1, _omitFieldNames ? '' : 'func',
        fieldType: $pb.PbFieldType.QE, enumValues: SelfChecking_Func.values)
    ..aI(2, _omitFieldNames ? '' : 'step', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_StepRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_StepRequest copyWith(
          void Function(SelfChecking_StepRequest) updates) =>
      super.copyWith((message) => updates(message as SelfChecking_StepRequest))
          as SelfChecking_StepRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfChecking_StepRequest create() => SelfChecking_StepRequest._();
  @$core.override
  SelfChecking_StepRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SelfChecking_StepRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SelfChecking_StepRequest>(create);
  static SelfChecking_StepRequest? _defaultInstance;

  @$pb.TagNumber(1)
  SelfChecking_Func get func => $_getN(0);
  @$pb.TagNumber(1)
  set func(SelfChecking_Func value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFunc() => $_has(0);
  @$pb.TagNumber(1)
  void clearFunc() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get step => $_getIZ(1);
  @$pb.TagNumber(2)
  set step($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStep() => $_has(1);
  @$pb.TagNumber(2)
  void clearStep() => $_clearField(2);
}

class SelfChecking_StepResult extends $pb.GeneratedMessage {
  factory SelfChecking_StepResult({
    SelfChecking_Func? func,
    $core.int? step,
    $core.int? result,
  }) {
    final result$ = create();
    if (func != null) result$.func = func;
    if (step != null) result$.step = step;
    if (result != null) result$.result = result;
    return result$;
  }

  SelfChecking_StepResult._();

  factory SelfChecking_StepResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SelfChecking_StepResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SelfChecking.StepResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<SelfChecking_Func>(1, _omitFieldNames ? '' : 'func',
        fieldType: $pb.PbFieldType.QE, enumValues: SelfChecking_Func.values)
    ..aI(2, _omitFieldNames ? '' : 'step', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'result', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_StepResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking_StepResult copyWith(
          void Function(SelfChecking_StepResult) updates) =>
      super.copyWith((message) => updates(message as SelfChecking_StepResult))
          as SelfChecking_StepResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfChecking_StepResult create() => SelfChecking_StepResult._();
  @$core.override
  SelfChecking_StepResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SelfChecking_StepResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SelfChecking_StepResult>(create);
  static SelfChecking_StepResult? _defaultInstance;

  @$pb.TagNumber(1)
  SelfChecking_Func get func => $_getN(0);
  @$pb.TagNumber(1)
  set func(SelfChecking_Func value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFunc() => $_has(0);
  @$pb.TagNumber(1)
  void clearFunc() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get step => $_getIZ(1);
  @$pb.TagNumber(2)
  set step($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStep() => $_has(1);
  @$pb.TagNumber(2)
  void clearStep() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get result => $_getIZ(2);
  @$pb.TagNumber(3)
  set result($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => $_clearField(3);
}

class SelfChecking extends $pb.GeneratedMessage {
  factory SelfChecking() => create();

  SelfChecking._();

  factory SelfChecking.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SelfChecking.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SelfChecking',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelfChecking copyWith(void Function(SelfChecking) updates) =>
      super.copyWith((message) => updates(message as SelfChecking))
          as SelfChecking;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfChecking create() => SelfChecking._();
  @$core.override
  SelfChecking createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SelfChecking getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SelfChecking>(create);
  static SelfChecking? _defaultInstance;
}

class CTA_AppInfo_List extends $pb.GeneratedMessage {
  factory CTA_AppInfo_List({
    $core.Iterable<CTA_AppInfo>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  CTA_AppInfo_List._();

  factory CTA_AppInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CTA_AppInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CTA.AppInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<CTA_AppInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: CTA_AppInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CTA_AppInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CTA_AppInfo_List copyWith(void Function(CTA_AppInfo_List) updates) =>
      super.copyWith((message) => updates(message as CTA_AppInfo_List))
          as CTA_AppInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CTA_AppInfo_List create() => CTA_AppInfo_List._();
  @$core.override
  CTA_AppInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CTA_AppInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CTA_AppInfo_List>(create);
  static CTA_AppInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CTA_AppInfo> get list => $_getList(0);
}

class CTA_AppInfo extends $pb.GeneratedMessage {
  factory CTA_AppInfo({
    $core.String? id,
    $core.String? name,
    $core.String? version,
    $core.String? updateTime,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    if (updateTime != null) result.updateTime = updateTime;
    return result;
  }

  CTA_AppInfo._();

  factory CTA_AppInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CTA_AppInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CTA.AppInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..aQS(3, _omitFieldNames ? '' : 'version')
    ..aQS(4, _omitFieldNames ? '' : 'updateTime');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CTA_AppInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CTA_AppInfo copyWith(void Function(CTA_AppInfo) updates) =>
      super.copyWith((message) => updates(message as CTA_AppInfo))
          as CTA_AppInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CTA_AppInfo create() => CTA_AppInfo._();
  @$core.override
  CTA_AppInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CTA_AppInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CTA_AppInfo>(create);
  static CTA_AppInfo? _defaultInstance;

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
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get updateTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set updateTime($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUpdateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateTime() => $_clearField(4);
}

class CTA_AppBehavior extends $pb.GeneratedMessage {
  factory CTA_AppBehavior({
    $core.String? name,
    $0.KeyValueStr? items,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (items != null) result.items = items;
    return result;
  }

  CTA_AppBehavior._();

  factory CTA_AppBehavior.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CTA_AppBehavior.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CTA.AppBehavior',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aQM<$0.KeyValueStr>(2, _omitFieldNames ? '' : 'items',
        subBuilder: $0.KeyValueStr.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CTA_AppBehavior clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CTA_AppBehavior copyWith(void Function(CTA_AppBehavior) updates) =>
      super.copyWith((message) => updates(message as CTA_AppBehavior))
          as CTA_AppBehavior;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CTA_AppBehavior create() => CTA_AppBehavior._();
  @$core.override
  CTA_AppBehavior createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CTA_AppBehavior getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CTA_AppBehavior>(create);
  static CTA_AppBehavior? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.KeyValueStr get items => $_getN(1);
  @$pb.TagNumber(2)
  set items($0.KeyValueStr value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasItems() => $_has(1);
  @$pb.TagNumber(2)
  void clearItems() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.KeyValueStr ensureItems() => $_ensure(1);
}

class CTA extends $pb.GeneratedMessage {
  factory CTA() => create();

  CTA._();

  factory CTA.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CTA.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CTA',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CTA clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CTA copyWith(void Function(CTA) updates) =>
      super.copyWith((message) => updates(message as CTA)) as CTA;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CTA create() => CTA._();
  @$core.override
  CTA createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CTA getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CTA>(create);
  static CTA? _defaultInstance;
}

class SensorReplayRequest extends $pb.GeneratedMessage {
  factory SensorReplayRequest({
    $core.int? type,
    $core.int? instance,
    $core.List<$core.int>? md5,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (instance != null) result.instance = instance;
    if (md5 != null) result.md5 = md5;
    return result;
  }

  SensorReplayRequest._();

  factory SensorReplayRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorReplayRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorReplayRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'instance', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'md5', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorReplayRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorReplayRequest copyWith(void Function(SensorReplayRequest) updates) =>
      super.copyWith((message) => updates(message as SensorReplayRequest))
          as SensorReplayRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorReplayRequest create() => SensorReplayRequest._();
  @$core.override
  SensorReplayRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorReplayRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorReplayRequest>(create);
  static SensorReplayRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get instance => $_getIZ(1);
  @$pb.TagNumber(2)
  set instance($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasInstance() => $_has(1);
  @$pb.TagNumber(2)
  void clearInstance() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get md5 => $_getN(2);
  @$pb.TagNumber(3)
  set md5($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMd5() => $_has(2);
  @$pb.TagNumber(3)
  void clearMd5() => $_clearField(3);
}

class SensorReplayResponse extends $pb.GeneratedMessage {
  factory SensorReplayResponse({
    $core.int? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  SensorReplayResponse._();

  factory SensorReplayResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorReplayResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorReplayResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorReplayResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorReplayResponse copyWith(void Function(SensorReplayResponse) updates) =>
      super.copyWith((message) => updates(message as SensorReplayResponse))
          as SensorReplayResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorReplayResponse create() => SensorReplayResponse._();
  @$core.override
  SensorReplayResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorReplayResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorReplayResponse>(create);
  static SensorReplayResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
