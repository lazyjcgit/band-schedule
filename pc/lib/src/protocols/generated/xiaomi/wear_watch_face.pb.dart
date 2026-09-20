// This is a generated file - do not edit.
//
// Generated from wear_watch_face.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pbenum.dart' as $0;
import 'wear_watch_face.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_watch_face.pbenum.dart';

enum WatchFace_Payload {
  watchFaceList,
  id,
  path,
  success,
  prepareStatus,
  prepareInfo,
  installResult,
  infoList,
  prepareReply,
  supportDataList,
  editRequest,
  editResponse,
  bgImageResult,
  fontResult,
  notSet
}

class WatchFace extends $pb.GeneratedMessage {
  factory WatchFace({
    WatchFaceItem_List? watchFaceList,
    $core.String? id,
    $core.String? path,
    $core.bool? success,
    $0.PrepareStatus? prepareStatus,
    PrepareInfo? prepareInfo,
    InstallResult? installResult,
    WatchFaceInfo_List? infoList,
    PrepareReply? prepareReply,
    WatchFaceSlot_List? supportDataList,
    EditRequest? editRequest,
    EditResponse? editResponse,
    BgImageResult? bgImageResult,
    FontResult? fontResult,
  }) {
    final result = create();
    if (watchFaceList != null) result.watchFaceList = watchFaceList;
    if (id != null) result.id = id;
    if (path != null) result.path = path;
    if (success != null) result.success = success;
    if (prepareStatus != null) result.prepareStatus = prepareStatus;
    if (prepareInfo != null) result.prepareInfo = prepareInfo;
    if (installResult != null) result.installResult = installResult;
    if (infoList != null) result.infoList = infoList;
    if (prepareReply != null) result.prepareReply = prepareReply;
    if (supportDataList != null) result.supportDataList = supportDataList;
    if (editRequest != null) result.editRequest = editRequest;
    if (editResponse != null) result.editResponse = editResponse;
    if (bgImageResult != null) result.bgImageResult = bgImageResult;
    if (fontResult != null) result.fontResult = fontResult;
    return result;
  }

  WatchFace._();

  factory WatchFace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, WatchFace_Payload> _WatchFace_PayloadByTag =
      {
    1: WatchFace_Payload.watchFaceList,
    2: WatchFace_Payload.id,
    3: WatchFace_Payload.path,
    4: WatchFace_Payload.success,
    5: WatchFace_Payload.prepareStatus,
    6: WatchFace_Payload.prepareInfo,
    7: WatchFace_Payload.installResult,
    8: WatchFace_Payload.infoList,
    9: WatchFace_Payload.prepareReply,
    11: WatchFace_Payload.supportDataList,
    12: WatchFace_Payload.editRequest,
    13: WatchFace_Payload.editResponse,
    14: WatchFace_Payload.bgImageResult,
    15: WatchFace_Payload.fontResult,
    0: WatchFace_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFace',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15])
    ..aOM<WatchFaceItem_List>(1, _omitFieldNames ? '' : 'watchFaceList',
        subBuilder: WatchFaceItem_List.create)
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'path')
    ..aOB(4, _omitFieldNames ? '' : 'success')
    ..aE<$0.PrepareStatus>(5, _omitFieldNames ? '' : 'prepareStatus',
        enumValues: $0.PrepareStatus.values)
    ..aOM<PrepareInfo>(6, _omitFieldNames ? '' : 'prepareInfo',
        subBuilder: PrepareInfo.create)
    ..aOM<InstallResult>(7, _omitFieldNames ? '' : 'installResult',
        subBuilder: InstallResult.create)
    ..aOM<WatchFaceInfo_List>(8, _omitFieldNames ? '' : 'infoList',
        subBuilder: WatchFaceInfo_List.create)
    ..aOM<PrepareReply>(9, _omitFieldNames ? '' : 'prepareReply',
        subBuilder: PrepareReply.create)
    ..aOM<WatchFaceSlot_List>(11, _omitFieldNames ? '' : 'supportDataList',
        subBuilder: WatchFaceSlot_List.create)
    ..aOM<EditRequest>(12, _omitFieldNames ? '' : 'editRequest',
        subBuilder: EditRequest.create)
    ..aOM<EditResponse>(13, _omitFieldNames ? '' : 'editResponse',
        subBuilder: EditResponse.create)
    ..aOM<BgImageResult>(14, _omitFieldNames ? '' : 'bgImageResult',
        subBuilder: BgImageResult.create)
    ..aOM<FontResult>(15, _omitFieldNames ? '' : 'fontResult',
        subBuilder: FontResult.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFace clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFace copyWith(void Function(WatchFace) updates) =>
      super.copyWith((message) => updates(message as WatchFace)) as WatchFace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFace create() => WatchFace._();
  @$core.override
  WatchFace createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFace getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchFace>(create);
  static WatchFace? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  WatchFace_Payload whichPayload() => _WatchFace_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WatchFaceItem_List get watchFaceList => $_getN(0);
  @$pb.TagNumber(1)
  set watchFaceList(WatchFaceItem_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasWatchFaceList() => $_has(0);
  @$pb.TagNumber(1)
  void clearWatchFaceList() => $_clearField(1);
  @$pb.TagNumber(1)
  WatchFaceItem_List ensureWatchFaceList() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get path => $_getSZ(2);
  @$pb.TagNumber(3)
  set path($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get success => $_getBF(3);
  @$pb.TagNumber(4)
  set success($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSuccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuccess() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.PrepareStatus get prepareStatus => $_getN(4);
  @$pb.TagNumber(5)
  set prepareStatus($0.PrepareStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPrepareStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrepareStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  PrepareInfo get prepareInfo => $_getN(5);
  @$pb.TagNumber(6)
  set prepareInfo(PrepareInfo value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPrepareInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrepareInfo() => $_clearField(6);
  @$pb.TagNumber(6)
  PrepareInfo ensurePrepareInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  InstallResult get installResult => $_getN(6);
  @$pb.TagNumber(7)
  set installResult(InstallResult value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasInstallResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearInstallResult() => $_clearField(7);
  @$pb.TagNumber(7)
  InstallResult ensureInstallResult() => $_ensure(6);

  @$pb.TagNumber(8)
  WatchFaceInfo_List get infoList => $_getN(7);
  @$pb.TagNumber(8)
  set infoList(WatchFaceInfo_List value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasInfoList() => $_has(7);
  @$pb.TagNumber(8)
  void clearInfoList() => $_clearField(8);
  @$pb.TagNumber(8)
  WatchFaceInfo_List ensureInfoList() => $_ensure(7);

  @$pb.TagNumber(9)
  PrepareReply get prepareReply => $_getN(8);
  @$pb.TagNumber(9)
  set prepareReply(PrepareReply value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasPrepareReply() => $_has(8);
  @$pb.TagNumber(9)
  void clearPrepareReply() => $_clearField(9);
  @$pb.TagNumber(9)
  PrepareReply ensurePrepareReply() => $_ensure(8);

  @$pb.TagNumber(11)
  WatchFaceSlot_List get supportDataList => $_getN(9);
  @$pb.TagNumber(11)
  set supportDataList(WatchFaceSlot_List value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSupportDataList() => $_has(9);
  @$pb.TagNumber(11)
  void clearSupportDataList() => $_clearField(11);
  @$pb.TagNumber(11)
  WatchFaceSlot_List ensureSupportDataList() => $_ensure(9);

  @$pb.TagNumber(12)
  EditRequest get editRequest => $_getN(10);
  @$pb.TagNumber(12)
  set editRequest(EditRequest value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasEditRequest() => $_has(10);
  @$pb.TagNumber(12)
  void clearEditRequest() => $_clearField(12);
  @$pb.TagNumber(12)
  EditRequest ensureEditRequest() => $_ensure(10);

  @$pb.TagNumber(13)
  EditResponse get editResponse => $_getN(11);
  @$pb.TagNumber(13)
  set editResponse(EditResponse value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasEditResponse() => $_has(11);
  @$pb.TagNumber(13)
  void clearEditResponse() => $_clearField(13);
  @$pb.TagNumber(13)
  EditResponse ensureEditResponse() => $_ensure(11);

  @$pb.TagNumber(14)
  BgImageResult get bgImageResult => $_getN(12);
  @$pb.TagNumber(14)
  set bgImageResult(BgImageResult value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBgImageResult() => $_has(12);
  @$pb.TagNumber(14)
  void clearBgImageResult() => $_clearField(14);
  @$pb.TagNumber(14)
  BgImageResult ensureBgImageResult() => $_ensure(12);

  @$pb.TagNumber(15)
  FontResult get fontResult => $_getN(13);
  @$pb.TagNumber(15)
  set fontResult(FontResult value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasFontResult() => $_has(13);
  @$pb.TagNumber(15)
  void clearFontResult() => $_clearField(15);
  @$pb.TagNumber(15)
  FontResult ensureFontResult() => $_ensure(13);
}

class WatchFaceSlot_List extends $pb.GeneratedMessage {
  factory WatchFaceSlot_List({
    $core.Iterable<WatchFaceSlot_Data>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  WatchFaceSlot_List._();

  factory WatchFaceSlot_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceSlot_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceSlot.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPE<WatchFaceSlot_Data>(1, _omitFieldNames ? '' : 'list',
        enumValues: WatchFaceSlot_Data.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceSlot_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceSlot_List copyWith(void Function(WatchFaceSlot_List) updates) =>
      super.copyWith((message) => updates(message as WatchFaceSlot_List))
          as WatchFaceSlot_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceSlot_List create() => WatchFaceSlot_List._();
  @$core.override
  WatchFaceSlot_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceSlot_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceSlot_List>(create);
  static WatchFaceSlot_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WatchFaceSlot_Data> get list => $_getList(0);
}

class WatchFaceSlot_Item extends $pb.GeneratedMessage {
  factory WatchFaceSlot_Item({
    $core.String? slotId,
    $core.String? widgetId,
  }) {
    final result = create();
    if (slotId != null) result.slotId = slotId;
    if (widgetId != null) result.widgetId = widgetId;
    return result;
  }

  WatchFaceSlot_Item._();

  factory WatchFaceSlot_Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceSlot_Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceSlot.Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'slotId')
    ..aQS(2, _omitFieldNames ? '' : 'widgetId');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceSlot_Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceSlot_Item copyWith(void Function(WatchFaceSlot_Item) updates) =>
      super.copyWith((message) => updates(message as WatchFaceSlot_Item))
          as WatchFaceSlot_Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceSlot_Item create() => WatchFaceSlot_Item._();
  @$core.override
  WatchFaceSlot_Item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceSlot_Item getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceSlot_Item>(create);
  static WatchFaceSlot_Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get slotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set slotId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSlotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSlotId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get widgetId => $_getSZ(1);
  @$pb.TagNumber(2)
  set widgetId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWidgetId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidgetId() => $_clearField(2);
}

class WatchFaceSlot extends $pb.GeneratedMessage {
  factory WatchFaceSlot() => create();

  WatchFaceSlot._();

  factory WatchFaceSlot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceSlot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceSlot',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceSlot clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceSlot copyWith(void Function(WatchFaceSlot) updates) =>
      super.copyWith((message) => updates(message as WatchFaceSlot))
          as WatchFaceSlot;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceSlot create() => WatchFaceSlot._();
  @$core.override
  WatchFaceSlot createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceSlot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceSlot>(create);
  static WatchFaceSlot? _defaultInstance;
}

class WatchFaceItem_List extends $pb.GeneratedMessage {
  factory WatchFaceItem_List({
    $core.Iterable<WatchFaceItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  WatchFaceItem_List._();

  factory WatchFaceItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WatchFaceItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: WatchFaceItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceItem_List copyWith(void Function(WatchFaceItem_List) updates) =>
      super.copyWith((message) => updates(message as WatchFaceItem_List))
          as WatchFaceItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceItem_List create() => WatchFaceItem_List._();
  @$core.override
  WatchFaceItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceItem_List>(create);
  static WatchFaceItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WatchFaceItem> get list => $_getList(0);
}

class WatchFaceItem extends $pb.GeneratedMessage {
  factory WatchFaceItem({
    $core.String? id,
    $core.String? name,
    $core.bool? isCurrent,
    $core.bool? canRemove,
    $fixnum.Int64? versionCode,
    $core.bool? canEdit,
    $core.String? backgroundColor,
    $core.String? backgroundImage,
    $core.String? style,
    $core.Iterable<WatchFaceSlot_Data>? dataList,
    $0.ImageFormat? supportImageFormat,
    $core.Iterable<$core.String>? backgroundImageList,
    $core.Iterable<WatchFaceSlot_Item>? slotItemList,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (isCurrent != null) result.isCurrent = isCurrent;
    if (canRemove != null) result.canRemove = canRemove;
    if (versionCode != null) result.versionCode = versionCode;
    if (canEdit != null) result.canEdit = canEdit;
    if (backgroundColor != null) result.backgroundColor = backgroundColor;
    if (backgroundImage != null) result.backgroundImage = backgroundImage;
    if (style != null) result.style = style;
    if (dataList != null) result.dataList.addAll(dataList);
    if (supportImageFormat != null)
      result.supportImageFormat = supportImageFormat;
    if (backgroundImageList != null)
      result.backgroundImageList.addAll(backgroundImageList);
    if (slotItemList != null) result.slotItemList.addAll(slotItemList);
    return result;
  }

  WatchFaceItem._();

  factory WatchFaceItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.bool>(3, _omitFieldNames ? '' : 'isCurrent', $pb.PbFieldType.QB)
    ..aOB(4, _omitFieldNames ? '' : 'canRemove')
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'versionCode', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(6, _omitFieldNames ? '' : 'canEdit')
    ..aQS(7, _omitFieldNames ? '' : 'backgroundColor')
    ..aQS(8, _omitFieldNames ? '' : 'backgroundImage')
    ..aQS(9, _omitFieldNames ? '' : 'style')
    ..pPE<WatchFaceSlot_Data>(10, _omitFieldNames ? '' : 'dataList',
        enumValues: WatchFaceSlot_Data.values)
    ..aE<$0.ImageFormat>(11, _omitFieldNames ? '' : 'supportImageFormat',
        enumValues: $0.ImageFormat.values)
    ..pPS(12, _omitFieldNames ? '' : 'backgroundImageList')
    ..pPM<WatchFaceSlot_Item>(13, _omitFieldNames ? '' : 'slotItemList',
        subBuilder: WatchFaceSlot_Item.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceItem copyWith(void Function(WatchFaceItem) updates) =>
      super.copyWith((message) => updates(message as WatchFaceItem))
          as WatchFaceItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceItem create() => WatchFaceItem._();
  @$core.override
  WatchFaceItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceItem>(create);
  static WatchFaceItem? _defaultInstance;

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
  $core.bool get isCurrent => $_getBF(2);
  @$pb.TagNumber(3)
  set isCurrent($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsCurrent() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsCurrent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get canRemove => $_getBF(3);
  @$pb.TagNumber(4)
  set canRemove($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCanRemove() => $_has(3);
  @$pb.TagNumber(4)
  void clearCanRemove() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get versionCode => $_getI64(4);
  @$pb.TagNumber(5)
  set versionCode($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVersionCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersionCode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get canEdit => $_getBF(5);
  @$pb.TagNumber(6)
  set canEdit($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCanEdit() => $_has(5);
  @$pb.TagNumber(6)
  void clearCanEdit() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get backgroundColor => $_getSZ(6);
  @$pb.TagNumber(7)
  set backgroundColor($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBackgroundColor() => $_has(6);
  @$pb.TagNumber(7)
  void clearBackgroundColor() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get backgroundImage => $_getSZ(7);
  @$pb.TagNumber(8)
  set backgroundImage($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBackgroundImage() => $_has(7);
  @$pb.TagNumber(8)
  void clearBackgroundImage() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get style => $_getSZ(8);
  @$pb.TagNumber(9)
  set style($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasStyle() => $_has(8);
  @$pb.TagNumber(9)
  void clearStyle() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<WatchFaceSlot_Data> get dataList => $_getList(9);

  @$pb.TagNumber(11)
  $0.ImageFormat get supportImageFormat => $_getN(10);
  @$pb.TagNumber(11)
  set supportImageFormat($0.ImageFormat value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSupportImageFormat() => $_has(10);
  @$pb.TagNumber(11)
  void clearSupportImageFormat() => $_clearField(11);

  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get backgroundImageList => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<WatchFaceSlot_Item> get slotItemList => $_getList(12);
}

class WatchFaceInfo_List extends $pb.GeneratedMessage {
  factory WatchFaceInfo_List({
    $core.Iterable<WatchFaceInfo>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  WatchFaceInfo_List._();

  factory WatchFaceInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WatchFaceInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: WatchFaceInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceInfo_List copyWith(void Function(WatchFaceInfo_List) updates) =>
      super.copyWith((message) => updates(message as WatchFaceInfo_List))
          as WatchFaceInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceInfo_List create() => WatchFaceInfo_List._();
  @$core.override
  WatchFaceInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceInfo_List>(create);
  static WatchFaceInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WatchFaceInfo> get list => $_getList(0);
}

class WatchFaceInfo extends $pb.GeneratedMessage {
  factory WatchFaceInfo({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  WatchFaceInfo._();

  factory WatchFaceInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceInfo copyWith(void Function(WatchFaceInfo) updates) =>
      super.copyWith((message) => updates(message as WatchFaceInfo))
          as WatchFaceInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceInfo create() => WatchFaceInfo._();
  @$core.override
  WatchFaceInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceInfo>(create);
  static WatchFaceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class PrepareInfo_Verification extends $pb.GeneratedMessage {
  factory PrepareInfo_Verification({
    $core.String? info,
    $core.String? sign,
    $core.int? trialDuration,
  }) {
    final result = create();
    if (info != null) result.info = info;
    if (sign != null) result.sign = sign;
    if (trialDuration != null) result.trialDuration = trialDuration;
    return result;
  }

  PrepareInfo_Verification._();

  factory PrepareInfo_Verification.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareInfo_Verification.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareInfo.Verification',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'info')
    ..aQS(2, _omitFieldNames ? '' : 'sign')
    ..aI(3, _omitFieldNames ? '' : 'trialDuration',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareInfo_Verification clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareInfo_Verification copyWith(
          void Function(PrepareInfo_Verification) updates) =>
      super.copyWith((message) => updates(message as PrepareInfo_Verification))
          as PrepareInfo_Verification;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareInfo_Verification create() => PrepareInfo_Verification._();
  @$core.override
  PrepareInfo_Verification createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareInfo_Verification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareInfo_Verification>(create);
  static PrepareInfo_Verification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get info => $_getSZ(0);
  @$pb.TagNumber(1)
  set info($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sign => $_getSZ(1);
  @$pb.TagNumber(2)
  set sign($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearSign() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get trialDuration => $_getIZ(2);
  @$pb.TagNumber(3)
  set trialDuration($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTrialDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearTrialDuration() => $_clearField(3);
}

class PrepareInfo extends $pb.GeneratedMessage {
  factory PrepareInfo({
    $core.String? id,
    $core.int? size,
    $fixnum.Int64? versionCode,
    $core.int? supportCompressMode,
    PrepareInfo_Verification? verification,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (size != null) result.size = size;
    if (versionCode != null) result.versionCode = versionCode;
    if (supportCompressMode != null)
      result.supportCompressMode = supportCompressMode;
    if (verification != null) result.verification = verification;
    return result;
  }

  PrepareInfo._();

  factory PrepareInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aI(2, _omitFieldNames ? '' : 'size', fieldType: $pb.PbFieldType.QU3)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'versionCode', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(4, _omitFieldNames ? '' : 'supportCompressMode',
        fieldType: $pb.PbFieldType.OU3)
    ..aOM<PrepareInfo_Verification>(5, _omitFieldNames ? '' : 'verification',
        subBuilder: PrepareInfo_Verification.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareInfo copyWith(void Function(PrepareInfo) updates) =>
      super.copyWith((message) => updates(message as PrepareInfo))
          as PrepareInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareInfo create() => PrepareInfo._();
  @$core.override
  PrepareInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareInfo>(create);
  static PrepareInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get size => $_getIZ(1);
  @$pb.TagNumber(2)
  set size($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get versionCode => $_getI64(2);
  @$pb.TagNumber(3)
  set versionCode($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersionCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersionCode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get supportCompressMode => $_getIZ(3);
  @$pb.TagNumber(4)
  set supportCompressMode($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSupportCompressMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupportCompressMode() => $_clearField(4);

  @$pb.TagNumber(5)
  PrepareInfo_Verification get verification => $_getN(4);
  @$pb.TagNumber(5)
  set verification(PrepareInfo_Verification value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasVerification() => $_has(4);
  @$pb.TagNumber(5)
  void clearVerification() => $_clearField(5);
  @$pb.TagNumber(5)
  PrepareInfo_Verification ensureVerification() => $_ensure(4);
}

class PrepareReply extends $pb.GeneratedMessage {
  factory PrepareReply({
    $core.String? id,
    $0.PrepareStatus? prepareStatus,
    $core.int? selectCompressMode,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (prepareStatus != null) result.prepareStatus = prepareStatus;
    if (selectCompressMode != null)
      result.selectCompressMode = selectCompressMode;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  PrepareReply._();

  factory PrepareReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareReply',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aE<$0.PrepareStatus>(2, _omitFieldNames ? '' : 'prepareStatus',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.PrepareStatus.values)
    ..aI(3, _omitFieldNames ? '' : 'selectCompressMode',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareReply clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareReply copyWith(void Function(PrepareReply) updates) =>
      super.copyWith((message) => updates(message as PrepareReply))
          as PrepareReply;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareReply create() => PrepareReply._();
  @$core.override
  PrepareReply createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareReply>(create);
  static PrepareReply? _defaultInstance;

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
  $core.int get selectCompressMode => $_getIZ(2);
  @$pb.TagNumber(3)
  set selectCompressMode($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSelectCompressMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelectCompressMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get expectedSliceLength => $_getIZ(3);
  @$pb.TagNumber(4)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExpectedSliceLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpectedSliceLength() => $_clearField(4);
}

class InstallResult extends $pb.GeneratedMessage {
  factory InstallResult({
    $core.String? id,
    InstallResult_Code? code,
    $core.bool? supportEdit,
    $0.ImageFormat? supportImageFormat,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (code != null) result.code = code;
    if (supportEdit != null) result.supportEdit = supportEdit;
    if (supportImageFormat != null)
      result.supportImageFormat = supportImageFormat;
    return result;
  }

  InstallResult._();

  factory InstallResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InstallResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InstallResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aE<InstallResult_Code>(2, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: InstallResult_Code.values)
    ..aOB(3, _omitFieldNames ? '' : 'supportEdit')
    ..aE<$0.ImageFormat>(4, _omitFieldNames ? '' : 'supportImageFormat',
        enumValues: $0.ImageFormat.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstallResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstallResult copyWith(void Function(InstallResult) updates) =>
      super.copyWith((message) => updates(message as InstallResult))
          as InstallResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallResult create() => InstallResult._();
  @$core.override
  InstallResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InstallResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InstallResult>(create);
  static InstallResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  InstallResult_Code get code => $_getN(1);
  @$pb.TagNumber(2)
  set code(InstallResult_Code value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get supportEdit => $_getBF(2);
  @$pb.TagNumber(3)
  set supportEdit($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSupportEdit() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupportEdit() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.ImageFormat get supportImageFormat => $_getN(3);
  @$pb.TagNumber(4)
  set supportImageFormat($0.ImageFormat value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSupportImageFormat() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupportImageFormat() => $_clearField(4);
}

class WatchFaceImage_Group extends $pb.GeneratedMessage {
  factory WatchFaceImage_Group({
    $core.String? id,
    $core.int? contentPosIndex,
    WatchFaceImage? bgImage,
    WatchFaceImage? fgImage,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (contentPosIndex != null) result.contentPosIndex = contentPosIndex;
    if (bgImage != null) result.bgImage = bgImage;
    if (fgImage != null) result.fgImage = fgImage;
    return result;
  }

  WatchFaceImage_Group._();

  factory WatchFaceImage_Group.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceImage_Group.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceImage.Group',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aI(2, _omitFieldNames ? '' : 'contentPosIndex',
        fieldType: $pb.PbFieldType.QU3)
    ..aQM<WatchFaceImage>(3, _omitFieldNames ? '' : 'bgImage',
        subBuilder: WatchFaceImage.create)
    ..aOM<WatchFaceImage>(4, _omitFieldNames ? '' : 'fgImage',
        subBuilder: WatchFaceImage.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceImage_Group clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceImage_Group copyWith(void Function(WatchFaceImage_Group) updates) =>
      super.copyWith((message) => updates(message as WatchFaceImage_Group))
          as WatchFaceImage_Group;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceImage_Group create() => WatchFaceImage_Group._();
  @$core.override
  WatchFaceImage_Group createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceImage_Group getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceImage_Group>(create);
  static WatchFaceImage_Group? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get contentPosIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set contentPosIndex($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContentPosIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearContentPosIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  WatchFaceImage get bgImage => $_getN(2);
  @$pb.TagNumber(3)
  set bgImage(WatchFaceImage value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBgImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearBgImage() => $_clearField(3);
  @$pb.TagNumber(3)
  WatchFaceImage ensureBgImage() => $_ensure(2);

  @$pb.TagNumber(4)
  WatchFaceImage get fgImage => $_getN(3);
  @$pb.TagNumber(4)
  set fgImage(WatchFaceImage value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFgImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearFgImage() => $_clearField(4);
  @$pb.TagNumber(4)
  WatchFaceImage ensureFgImage() => $_ensure(3);
}

class WatchFaceImage_GroupList extends $pb.GeneratedMessage {
  factory WatchFaceImage_GroupList({
    $core.Iterable<WatchFaceImage_Group>? list,
    $core.int? supportMaxCount,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (supportMaxCount != null) result.supportMaxCount = supportMaxCount;
    return result;
  }

  WatchFaceImage_GroupList._();

  factory WatchFaceImage_GroupList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceImage_GroupList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceImage.GroupList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WatchFaceImage_Group>(1, _omitFieldNames ? '' : 'list',
        subBuilder: WatchFaceImage_Group.create)
    ..aI(2, _omitFieldNames ? '' : 'supportMaxCount',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceImage_GroupList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceImage_GroupList copyWith(
          void Function(WatchFaceImage_GroupList) updates) =>
      super.copyWith((message) => updates(message as WatchFaceImage_GroupList))
          as WatchFaceImage_GroupList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceImage_GroupList create() => WatchFaceImage_GroupList._();
  @$core.override
  WatchFaceImage_GroupList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceImage_GroupList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceImage_GroupList>(create);
  static WatchFaceImage_GroupList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WatchFaceImage_Group> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get supportMaxCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set supportMaxCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportMaxCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportMaxCount() => $_clearField(2);
}

class WatchFaceImage extends $pb.GeneratedMessage {
  factory WatchFaceImage({
    $core.String? id,
    $core.int? size,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (size != null) result.size = size;
    return result;
  }

  WatchFaceImage._();

  factory WatchFaceImage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceImage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceImage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aI(2, _omitFieldNames ? '' : 'size', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceImage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceImage copyWith(void Function(WatchFaceImage) updates) =>
      super.copyWith((message) => updates(message as WatchFaceImage))
          as WatchFaceImage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceImage create() => WatchFaceImage._();
  @$core.override
  WatchFaceImage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceImage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceImage>(create);
  static WatchFaceImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get size => $_getIZ(1);
  @$pb.TagNumber(2)
  set size($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);
}

class WatchFaceLiteral_Item_List extends $pb.GeneratedMessage {
  factory WatchFaceLiteral_Item_List({
    $core.Iterable<WatchFaceLiteral_Item>? literalItems,
  }) {
    final result = create();
    if (literalItems != null) result.literalItems.addAll(literalItems);
    return result;
  }

  WatchFaceLiteral_Item_List._();

  factory WatchFaceLiteral_Item_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceLiteral_Item_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceLiteral.Item.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WatchFaceLiteral_Item>(1, _omitFieldNames ? '' : 'literalItems',
        subBuilder: WatchFaceLiteral_Item.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceLiteral_Item_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceLiteral_Item_List copyWith(
          void Function(WatchFaceLiteral_Item_List) updates) =>
      super.copyWith(
              (message) => updates(message as WatchFaceLiteral_Item_List))
          as WatchFaceLiteral_Item_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceLiteral_Item_List create() => WatchFaceLiteral_Item_List._();
  @$core.override
  WatchFaceLiteral_Item_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceLiteral_Item_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceLiteral_Item_List>(create);
  static WatchFaceLiteral_Item_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WatchFaceLiteral_Item> get literalItems => $_getList(0);
}

class WatchFaceLiteral_Item extends $pb.GeneratedMessage {
  factory WatchFaceLiteral_Item({
    $core.String? id,
    $core.Iterable<$core.String>? textList,
    $core.int? source,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (textList != null) result.textList.addAll(textList);
    if (source != null) result.source = source;
    return result;
  }

  WatchFaceLiteral_Item._();

  factory WatchFaceLiteral_Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceLiteral_Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceLiteral.Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..pPS(2, _omitFieldNames ? '' : 'textList')
    ..aI(3, _omitFieldNames ? '' : 'source', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceLiteral_Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceLiteral_Item copyWith(
          void Function(WatchFaceLiteral_Item) updates) =>
      super.copyWith((message) => updates(message as WatchFaceLiteral_Item))
          as WatchFaceLiteral_Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceLiteral_Item create() => WatchFaceLiteral_Item._();
  @$core.override
  WatchFaceLiteral_Item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceLiteral_Item getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceLiteral_Item>(create);
  static WatchFaceLiteral_Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get textList => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get source => $_getIZ(2);
  @$pb.TagNumber(3)
  set source($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => $_clearField(3);
}

class WatchFaceLiteral extends $pb.GeneratedMessage {
  factory WatchFaceLiteral({
    WatchFaceLiteral_Item_List? items,
    $core.String? font,
    $core.int? fontSize,
  }) {
    final result = create();
    if (items != null) result.items = items;
    if (font != null) result.font = font;
    if (fontSize != null) result.fontSize = fontSize;
    return result;
  }

  WatchFaceLiteral._();

  factory WatchFaceLiteral.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WatchFaceLiteral.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchFaceLiteral',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<WatchFaceLiteral_Item_List>(1, _omitFieldNames ? '' : 'items',
        subBuilder: WatchFaceLiteral_Item_List.create)
    ..aQS(2, _omitFieldNames ? '' : 'font')
    ..aI(3, _omitFieldNames ? '' : 'fontSize', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceLiteral clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchFaceLiteral copyWith(void Function(WatchFaceLiteral) updates) =>
      super.copyWith((message) => updates(message as WatchFaceLiteral))
          as WatchFaceLiteral;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchFaceLiteral create() => WatchFaceLiteral._();
  @$core.override
  WatchFaceLiteral createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WatchFaceLiteral getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchFaceLiteral>(create);
  static WatchFaceLiteral? _defaultInstance;

  @$pb.TagNumber(1)
  WatchFaceLiteral_Item_List get items => $_getN(0);
  @$pb.TagNumber(1)
  set items(WatchFaceLiteral_Item_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItems() => $_has(0);
  @$pb.TagNumber(1)
  void clearItems() => $_clearField(1);
  @$pb.TagNumber(1)
  WatchFaceLiteral_Item_List ensureItems() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get font => $_getSZ(1);
  @$pb.TagNumber(2)
  set font($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFont() => $_has(1);
  @$pb.TagNumber(2)
  void clearFont() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get fontSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set fontSize($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFontSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearFontSize() => $_clearField(3);
}

class EditRequest extends $pb.GeneratedMessage {
  factory EditRequest({
    $core.String? id,
    $core.bool? setCurrent,
    $core.String? backgroundColor,
    $core.String? backgroundImage,
    $core.int? backgroundImageSize,
    $core.String? style,
    $core.Iterable<WatchFaceSlot_Data>? dataList,
    $core.Iterable<$core.String>? backgroundImageList,
    $core.Iterable<$core.int>? backgroundImageSizeList,
    $core.Iterable<$core.String>? orderImageList,
    $core.bool? deleteAllImages,
    $core.Iterable<WatchFaceSlot_Item>? slotItemList,
    $core.List<$core.int>? foregroundColor,
    $core.int? styleColorIndex,
    WatchFaceImage_GroupList? imageGroupList,
    WatchFaceLiteral? literal,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (setCurrent != null) result.setCurrent = setCurrent;
    if (backgroundColor != null) result.backgroundColor = backgroundColor;
    if (backgroundImage != null) result.backgroundImage = backgroundImage;
    if (backgroundImageSize != null)
      result.backgroundImageSize = backgroundImageSize;
    if (style != null) result.style = style;
    if (dataList != null) result.dataList.addAll(dataList);
    if (backgroundImageList != null)
      result.backgroundImageList.addAll(backgroundImageList);
    if (backgroundImageSizeList != null)
      result.backgroundImageSizeList.addAll(backgroundImageSizeList);
    if (orderImageList != null) result.orderImageList.addAll(orderImageList);
    if (deleteAllImages != null) result.deleteAllImages = deleteAllImages;
    if (slotItemList != null) result.slotItemList.addAll(slotItemList);
    if (foregroundColor != null) result.foregroundColor = foregroundColor;
    if (styleColorIndex != null) result.styleColorIndex = styleColorIndex;
    if (imageGroupList != null) result.imageGroupList = imageGroupList;
    if (literal != null) result.literal = literal;
    return result;
  }

  EditRequest._();

  factory EditRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'setCurrent', $pb.PbFieldType.QB)
    ..aQS(3, _omitFieldNames ? '' : 'backgroundColor')
    ..aQS(4, _omitFieldNames ? '' : 'backgroundImage')
    ..aI(5, _omitFieldNames ? '' : 'backgroundImageSize',
        fieldType: $pb.PbFieldType.OU3)
    ..aQS(6, _omitFieldNames ? '' : 'style')
    ..pPE<WatchFaceSlot_Data>(7, _omitFieldNames ? '' : 'dataList',
        enumValues: WatchFaceSlot_Data.values)
    ..pPS(8, _omitFieldNames ? '' : 'backgroundImageList')
    ..p<$core.int>(9, _omitFieldNames ? '' : 'backgroundImageSizeList',
        $pb.PbFieldType.PU3)
    ..pPS(10, _omitFieldNames ? '' : 'orderImageList')
    ..aOB(11, _omitFieldNames ? '' : 'deleteAllImages')
    ..pPM<WatchFaceSlot_Item>(12, _omitFieldNames ? '' : 'slotItemList',
        subBuilder: WatchFaceSlot_Item.create)
    ..a<$core.List<$core.int>>(
        13, _omitFieldNames ? '' : 'foregroundColor', $pb.PbFieldType.OY)
    ..aI(14, _omitFieldNames ? '' : 'styleColorIndex',
        fieldType: $pb.PbFieldType.OU3)
    ..aOM<WatchFaceImage_GroupList>(15, _omitFieldNames ? '' : 'imageGroupList',
        subBuilder: WatchFaceImage_GroupList.create)
    ..aOM<WatchFaceLiteral>(16, _omitFieldNames ? '' : 'literal',
        subBuilder: WatchFaceLiteral.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditRequest copyWith(void Function(EditRequest) updates) =>
      super.copyWith((message) => updates(message as EditRequest))
          as EditRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditRequest create() => EditRequest._();
  @$core.override
  EditRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditRequest>(create);
  static EditRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get setCurrent => $_getBF(1);
  @$pb.TagNumber(2)
  set setCurrent($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSetCurrent() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetCurrent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get backgroundColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set backgroundColor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBackgroundColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearBackgroundColor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get backgroundImage => $_getSZ(3);
  @$pb.TagNumber(4)
  set backgroundImage($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBackgroundImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearBackgroundImage() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get backgroundImageSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set backgroundImageSize($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBackgroundImageSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearBackgroundImageSize() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get style => $_getSZ(5);
  @$pb.TagNumber(6)
  set style($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStyle() => $_has(5);
  @$pb.TagNumber(6)
  void clearStyle() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<WatchFaceSlot_Data> get dataList => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get backgroundImageList => $_getList(7);

  @$pb.TagNumber(9)
  $pb.PbList<$core.int> get backgroundImageSizeList => $_getList(8);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get orderImageList => $_getList(9);

  @$pb.TagNumber(11)
  $core.bool get deleteAllImages => $_getBF(10);
  @$pb.TagNumber(11)
  set deleteAllImages($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDeleteAllImages() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeleteAllImages() => $_clearField(11);

  @$pb.TagNumber(12)
  $pb.PbList<WatchFaceSlot_Item> get slotItemList => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<$core.int> get foregroundColor => $_getN(12);
  @$pb.TagNumber(13)
  set foregroundColor($core.List<$core.int> value) => $_setBytes(12, value);
  @$pb.TagNumber(13)
  $core.bool hasForegroundColor() => $_has(12);
  @$pb.TagNumber(13)
  void clearForegroundColor() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get styleColorIndex => $_getIZ(13);
  @$pb.TagNumber(14)
  set styleColorIndex($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasStyleColorIndex() => $_has(13);
  @$pb.TagNumber(14)
  void clearStyleColorIndex() => $_clearField(14);

  @$pb.TagNumber(15)
  WatchFaceImage_GroupList get imageGroupList => $_getN(14);
  @$pb.TagNumber(15)
  set imageGroupList(WatchFaceImage_GroupList value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasImageGroupList() => $_has(14);
  @$pb.TagNumber(15)
  void clearImageGroupList() => $_clearField(15);
  @$pb.TagNumber(15)
  WatchFaceImage_GroupList ensureImageGroupList() => $_ensure(14);

  @$pb.TagNumber(16)
  WatchFaceLiteral get literal => $_getN(15);
  @$pb.TagNumber(16)
  set literal(WatchFaceLiteral value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasLiteral() => $_has(15);
  @$pb.TagNumber(16)
  void clearLiteral() => $_clearField(16);
  @$pb.TagNumber(16)
  WatchFaceLiteral ensureLiteral() => $_ensure(15);
}

class EditResponse extends $pb.GeneratedMessage {
  factory EditResponse({
    $core.String? id,
    EditResponse_Code? code,
    $core.int? canAcceptImageCount,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (code != null) result.code = code;
    if (canAcceptImageCount != null)
      result.canAcceptImageCount = canAcceptImageCount;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  EditResponse._();

  factory EditResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aE<EditResponse_Code>(2, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: EditResponse_Code.values)
    ..aI(3, _omitFieldNames ? '' : 'canAcceptImageCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditResponse copyWith(void Function(EditResponse) updates) =>
      super.copyWith((message) => updates(message as EditResponse))
          as EditResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditResponse create() => EditResponse._();
  @$core.override
  EditResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditResponse>(create);
  static EditResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  EditResponse_Code get code => $_getN(1);
  @$pb.TagNumber(2)
  set code(EditResponse_Code value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get canAcceptImageCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set canAcceptImageCount($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCanAcceptImageCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCanAcceptImageCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get expectedSliceLength => $_getIZ(3);
  @$pb.TagNumber(4)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExpectedSliceLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpectedSliceLength() => $_clearField(4);
}

class BgImageResult extends $pb.GeneratedMessage {
  factory BgImageResult({
    BgImageResult_Code? code,
    $core.String? id,
    $core.String? backgroundImage,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (id != null) result.id = id;
    if (backgroundImage != null) result.backgroundImage = backgroundImage;
    return result;
  }

  BgImageResult._();

  factory BgImageResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BgImageResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BgImageResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<BgImageResult_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: BgImageResult_Code.values)
    ..aQS(2, _omitFieldNames ? '' : 'id')
    ..aQS(3, _omitFieldNames ? '' : 'backgroundImage');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BgImageResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BgImageResult copyWith(void Function(BgImageResult) updates) =>
      super.copyWith((message) => updates(message as BgImageResult))
          as BgImageResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BgImageResult create() => BgImageResult._();
  @$core.override
  BgImageResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BgImageResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BgImageResult>(create);
  static BgImageResult? _defaultInstance;

  @$pb.TagNumber(1)
  BgImageResult_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(BgImageResult_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get backgroundImage => $_getSZ(2);
  @$pb.TagNumber(3)
  set backgroundImage($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBackgroundImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearBackgroundImage() => $_clearField(3);
}

class FontResult extends $pb.GeneratedMessage {
  factory FontResult({
    $core.int? code,
    $core.String? id,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (id != null) result.id = id;
    return result;
  }

  FontResult._();

  factory FontResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FontResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FontResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'id');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FontResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FontResult copyWith(void Function(FontResult) updates) =>
      super.copyWith((message) => updates(message as FontResult)) as FontResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FontResult create() => FontResult._();
  @$core.override
  FontResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FontResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FontResult>(create);
  static FontResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
