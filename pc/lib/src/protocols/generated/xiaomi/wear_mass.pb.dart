// This is a generated file - do not edit.
//
// Generated from wear_mass.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pbenum.dart' as $0;
import 'wear_mass.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_mass.pbenum.dart';

enum Mass_Payload { prepareRequest, prepareResponse, massControl, notSet }

class Mass extends $pb.GeneratedMessage {
  factory Mass({
    PrepareRequest? prepareRequest,
    PrepareResponse? prepareResponse,
    MassControl? massControl,
  }) {
    final result = create();
    if (prepareRequest != null) result.prepareRequest = prepareRequest;
    if (prepareResponse != null) result.prepareResponse = prepareResponse;
    if (massControl != null) result.massControl = massControl;
    return result;
  }

  Mass._();

  factory Mass.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Mass.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Mass_Payload> _Mass_PayloadByTag = {
    1: Mass_Payload.prepareRequest,
    2: Mass_Payload.prepareResponse,
    3: Mass_Payload.massControl,
    0: Mass_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Mass',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<PrepareRequest>(1, _omitFieldNames ? '' : 'prepareRequest',
        subBuilder: PrepareRequest.create)
    ..aOM<PrepareResponse>(2, _omitFieldNames ? '' : 'prepareResponse',
        subBuilder: PrepareResponse.create)
    ..aOM<MassControl>(3, _omitFieldNames ? '' : 'massControl',
        subBuilder: MassControl.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mass clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mass copyWith(void Function(Mass) updates) =>
      super.copyWith((message) => updates(message as Mass)) as Mass;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mass create() => Mass._();
  @$core.override
  Mass createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Mass getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mass>(create);
  static Mass? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Mass_Payload whichPayload() => _Mass_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PrepareRequest get prepareRequest => $_getN(0);
  @$pb.TagNumber(1)
  set prepareRequest(PrepareRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPrepareRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrepareRequest() => $_clearField(1);
  @$pb.TagNumber(1)
  PrepareRequest ensurePrepareRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  PrepareResponse get prepareResponse => $_getN(1);
  @$pb.TagNumber(2)
  set prepareResponse(PrepareResponse value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPrepareResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrepareResponse() => $_clearField(2);
  @$pb.TagNumber(2)
  PrepareResponse ensurePrepareResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  MassControl get massControl => $_getN(2);
  @$pb.TagNumber(3)
  set massControl(MassControl value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMassControl() => $_has(2);
  @$pb.TagNumber(3)
  void clearMassControl() => $_clearField(3);
  @$pb.TagNumber(3)
  MassControl ensureMassControl() => $_ensure(2);
}

class PrepareRequest extends $pb.GeneratedMessage {
  factory PrepareRequest({
    $core.int? dataType,
    $core.List<$core.int>? dataId,
    $core.int? dataLength,
    $core.int? supportCompressMode,
  }) {
    final result = create();
    if (dataType != null) result.dataType = dataType;
    if (dataId != null) result.dataId = dataId;
    if (dataLength != null) result.dataLength = dataLength;
    if (supportCompressMode != null)
      result.supportCompressMode = supportCompressMode;
    return result;
  }

  PrepareRequest._();

  factory PrepareRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'dataType', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'dataId', $pb.PbFieldType.QY)
    ..aI(3, _omitFieldNames ? '' : 'dataLength', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'supportCompressMode',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareRequest copyWith(void Function(PrepareRequest) updates) =>
      super.copyWith((message) => updates(message as PrepareRequest))
          as PrepareRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareRequest create() => PrepareRequest._();
  @$core.override
  PrepareRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareRequest>(create);
  static PrepareRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dataType => $_getIZ(0);
  @$pb.TagNumber(1)
  set dataType($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDataType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dataId => $_getN(1);
  @$pb.TagNumber(2)
  set dataId($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDataId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get dataLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set dataLength($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDataLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataLength() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get supportCompressMode => $_getIZ(3);
  @$pb.TagNumber(4)
  set supportCompressMode($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSupportCompressMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupportCompressMode() => $_clearField(4);
}

class PrepareResponse extends $pb.GeneratedMessage {
  factory PrepareResponse({
    $core.List<$core.int>? dataId,
    $0.PrepareStatus? prepareStatus,
    $core.int? selectCompressMode,
    $core.int? remainedDataLength,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (dataId != null) result.dataId = dataId;
    if (prepareStatus != null) result.prepareStatus = prepareStatus;
    if (selectCompressMode != null)
      result.selectCompressMode = selectCompressMode;
    if (remainedDataLength != null)
      result.remainedDataLength = remainedDataLength;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  PrepareResponse._();

  factory PrepareResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'dataId', $pb.PbFieldType.QY)
    ..aE<$0.PrepareStatus>(2, _omitFieldNames ? '' : 'prepareStatus',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.PrepareStatus.values)
    ..aI(3, _omitFieldNames ? '' : 'selectCompressMode',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'remainedDataLength',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareResponse copyWith(void Function(PrepareResponse) updates) =>
      super.copyWith((message) => updates(message as PrepareResponse))
          as PrepareResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareResponse create() => PrepareResponse._();
  @$core.override
  PrepareResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareResponse>(create);
  static PrepareResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dataId => $_getN(0);
  @$pb.TagNumber(1)
  set dataId($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.PrepareStatus get prepareStatus => $_getN(1);
  @$pb.TagNumber(2)
  set prepareStatus($0.PrepareStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPrepareStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrepareStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get selectCompressMode => $_getIZ(2);
  @$pb.TagNumber(3)
  set selectCompressMode($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSelectCompressMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelectCompressMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get remainedDataLength => $_getIZ(3);
  @$pb.TagNumber(4)
  set remainedDataLength($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRemainedDataLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemainedDataLength() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get expectedSliceLength => $_getIZ(4);
  @$pb.TagNumber(5)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExpectedSliceLength() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpectedSliceLength() => $_clearField(5);
}

class MassControl extends $pb.GeneratedMessage {
  factory MassControl({
    MassControl_Op? op,
    $core.int? dataType,
    $core.List<$core.int>? dataId,
  }) {
    final result = create();
    if (op != null) result.op = op;
    if (dataType != null) result.dataType = dataType;
    if (dataId != null) result.dataId = dataId;
    return result;
  }

  MassControl._();

  factory MassControl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MassControl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MassControl',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<MassControl_Op>(1, _omitFieldNames ? '' : 'op',
        fieldType: $pb.PbFieldType.QE, enumValues: MassControl_Op.values)
    ..aI(2, _omitFieldNames ? '' : 'dataType', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'dataId', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MassControl clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MassControl copyWith(void Function(MassControl) updates) =>
      super.copyWith((message) => updates(message as MassControl))
          as MassControl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MassControl create() => MassControl._();
  @$core.override
  MassControl createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MassControl getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MassControl>(create);
  static MassControl? _defaultInstance;

  @$pb.TagNumber(1)
  MassControl_Op get op => $_getN(0);
  @$pb.TagNumber(1)
  set op(MassControl_Op value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOp() => $_has(0);
  @$pb.TagNumber(1)
  void clearOp() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get dataType => $_getIZ(1);
  @$pb.TagNumber(2)
  set dataType($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDataType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get dataId => $_getN(2);
  @$pb.TagNumber(3)
  set dataId($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDataId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataId() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
