// This is a generated file - do not edit.
//
// Generated from wear_notification.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pbenum.dart' as $0;
import 'wear_notification.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_notification.pbenum.dart';

enum Notification_Payload {
  data,
  id,
  dataList,
  idList,
  appInfo,
  appInfoList,
  enableAutoScreen,
  replyMsgTarget,
  replyMsg,
  replyMsgRemoval,
  replyMsgResult,
  replyRequest,
  replyResult,
  appIconRequest,
  appIconResponse,
  appIconApply,
  notSet
}

class Notification extends $pb.GeneratedMessage {
  factory Notification({
    NotifyData? data,
    NotifyId? id,
    NotifyData_List? dataList,
    NotifyId_List? idList,
    AppInfo? appInfo,
    AppInfo_List? appInfoList,
    $core.bool? enableAutoScreen,
    ReplyMsg_Target? replyMsgTarget,
    ReplyMsg? replyMsg,
    ReplyMsg_Removal? replyMsgRemoval,
    ReplyMsg_Result? replyMsgResult,
    ReplyRequest? replyRequest,
    ReplyResult? replyResult,
    PrepareAppIcon_Request? appIconRequest,
    PrepareAppIcon_Response? appIconResponse,
    AppIconApply? appIconApply,
  }) {
    final result = create();
    if (data != null) result.data = data;
    if (id != null) result.id = id;
    if (dataList != null) result.dataList = dataList;
    if (idList != null) result.idList = idList;
    if (appInfo != null) result.appInfo = appInfo;
    if (appInfoList != null) result.appInfoList = appInfoList;
    if (enableAutoScreen != null) result.enableAutoScreen = enableAutoScreen;
    if (replyMsgTarget != null) result.replyMsgTarget = replyMsgTarget;
    if (replyMsg != null) result.replyMsg = replyMsg;
    if (replyMsgRemoval != null) result.replyMsgRemoval = replyMsgRemoval;
    if (replyMsgResult != null) result.replyMsgResult = replyMsgResult;
    if (replyRequest != null) result.replyRequest = replyRequest;
    if (replyResult != null) result.replyResult = replyResult;
    if (appIconRequest != null) result.appIconRequest = appIconRequest;
    if (appIconResponse != null) result.appIconResponse = appIconResponse;
    if (appIconApply != null) result.appIconApply = appIconApply;
    return result;
  }

  Notification._();

  factory Notification.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Notification.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Notification_Payload>
      _Notification_PayloadByTag = {
    1: Notification_Payload.data,
    2: Notification_Payload.id,
    3: Notification_Payload.dataList,
    4: Notification_Payload.idList,
    5: Notification_Payload.appInfo,
    6: Notification_Payload.appInfoList,
    7: Notification_Payload.enableAutoScreen,
    8: Notification_Payload.replyMsgTarget,
    9: Notification_Payload.replyMsg,
    10: Notification_Payload.replyMsgRemoval,
    11: Notification_Payload.replyMsgResult,
    12: Notification_Payload.replyRequest,
    13: Notification_Payload.replyResult,
    14: Notification_Payload.appIconRequest,
    15: Notification_Payload.appIconResponse,
    16: Notification_Payload.appIconApply,
    0: Notification_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Notification',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
    ..aOM<NotifyData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: NotifyData.create)
    ..aOM<NotifyId>(2, _omitFieldNames ? '' : 'id', subBuilder: NotifyId.create)
    ..aOM<NotifyData_List>(3, _omitFieldNames ? '' : 'dataList',
        subBuilder: NotifyData_List.create)
    ..aOM<NotifyId_List>(4, _omitFieldNames ? '' : 'idList',
        subBuilder: NotifyId_List.create)
    ..aOM<AppInfo>(5, _omitFieldNames ? '' : 'appInfo',
        subBuilder: AppInfo.create)
    ..aOM<AppInfo_List>(6, _omitFieldNames ? '' : 'appInfoList',
        subBuilder: AppInfo_List.create)
    ..aOB(7, _omitFieldNames ? '' : 'enableAutoScreen')
    ..aE<ReplyMsg_Target>(8, _omitFieldNames ? '' : 'replyMsgTarget',
        enumValues: ReplyMsg_Target.values)
    ..aOM<ReplyMsg>(9, _omitFieldNames ? '' : 'replyMsg',
        subBuilder: ReplyMsg.create)
    ..aOM<ReplyMsg_Removal>(10, _omitFieldNames ? '' : 'replyMsgRemoval',
        subBuilder: ReplyMsg_Removal.create)
    ..aE<ReplyMsg_Result>(11, _omitFieldNames ? '' : 'replyMsgResult',
        enumValues: ReplyMsg_Result.values)
    ..aOM<ReplyRequest>(12, _omitFieldNames ? '' : 'replyRequest',
        subBuilder: ReplyRequest.create)
    ..aE<ReplyResult>(13, _omitFieldNames ? '' : 'replyResult',
        enumValues: ReplyResult.values)
    ..aOM<PrepareAppIcon_Request>(14, _omitFieldNames ? '' : 'appIconRequest',
        subBuilder: PrepareAppIcon_Request.create)
    ..aOM<PrepareAppIcon_Response>(15, _omitFieldNames ? '' : 'appIconResponse',
        subBuilder: PrepareAppIcon_Response.create)
    ..aOM<AppIconApply>(16, _omitFieldNames ? '' : 'appIconApply',
        subBuilder: AppIconApply.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Notification clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Notification copyWith(void Function(Notification) updates) =>
      super.copyWith((message) => updates(message as Notification))
          as Notification;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  @$core.override
  Notification createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification? _defaultInstance;

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
  Notification_Payload whichPayload() =>
      _Notification_PayloadByTag[$_whichOneof(0)]!;
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
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  NotifyData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(NotifyData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  NotifyData ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  NotifyId get id => $_getN(1);
  @$pb.TagNumber(2)
  set id(NotifyId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
  @$pb.TagNumber(2)
  NotifyId ensureId() => $_ensure(1);

  @$pb.TagNumber(3)
  NotifyData_List get dataList => $_getN(2);
  @$pb.TagNumber(3)
  set dataList(NotifyData_List value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDataList() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataList() => $_clearField(3);
  @$pb.TagNumber(3)
  NotifyData_List ensureDataList() => $_ensure(2);

  @$pb.TagNumber(4)
  NotifyId_List get idList => $_getN(3);
  @$pb.TagNumber(4)
  set idList(NotifyId_List value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasIdList() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdList() => $_clearField(4);
  @$pb.TagNumber(4)
  NotifyId_List ensureIdList() => $_ensure(3);

  @$pb.TagNumber(5)
  AppInfo get appInfo => $_getN(4);
  @$pb.TagNumber(5)
  set appInfo(AppInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAppInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  AppInfo ensureAppInfo() => $_ensure(4);

  @$pb.TagNumber(6)
  AppInfo_List get appInfoList => $_getN(5);
  @$pb.TagNumber(6)
  set appInfoList(AppInfo_List value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAppInfoList() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppInfoList() => $_clearField(6);
  @$pb.TagNumber(6)
  AppInfo_List ensureAppInfoList() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get enableAutoScreen => $_getBF(6);
  @$pb.TagNumber(7)
  set enableAutoScreen($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEnableAutoScreen() => $_has(6);
  @$pb.TagNumber(7)
  void clearEnableAutoScreen() => $_clearField(7);

  @$pb.TagNumber(8)
  ReplyMsg_Target get replyMsgTarget => $_getN(7);
  @$pb.TagNumber(8)
  set replyMsgTarget(ReplyMsg_Target value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasReplyMsgTarget() => $_has(7);
  @$pb.TagNumber(8)
  void clearReplyMsgTarget() => $_clearField(8);

  @$pb.TagNumber(9)
  ReplyMsg get replyMsg => $_getN(8);
  @$pb.TagNumber(9)
  set replyMsg(ReplyMsg value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasReplyMsg() => $_has(8);
  @$pb.TagNumber(9)
  void clearReplyMsg() => $_clearField(9);
  @$pb.TagNumber(9)
  ReplyMsg ensureReplyMsg() => $_ensure(8);

  @$pb.TagNumber(10)
  ReplyMsg_Removal get replyMsgRemoval => $_getN(9);
  @$pb.TagNumber(10)
  set replyMsgRemoval(ReplyMsg_Removal value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasReplyMsgRemoval() => $_has(9);
  @$pb.TagNumber(10)
  void clearReplyMsgRemoval() => $_clearField(10);
  @$pb.TagNumber(10)
  ReplyMsg_Removal ensureReplyMsgRemoval() => $_ensure(9);

  @$pb.TagNumber(11)
  ReplyMsg_Result get replyMsgResult => $_getN(10);
  @$pb.TagNumber(11)
  set replyMsgResult(ReplyMsg_Result value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasReplyMsgResult() => $_has(10);
  @$pb.TagNumber(11)
  void clearReplyMsgResult() => $_clearField(11);

  @$pb.TagNumber(12)
  ReplyRequest get replyRequest => $_getN(11);
  @$pb.TagNumber(12)
  set replyRequest(ReplyRequest value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasReplyRequest() => $_has(11);
  @$pb.TagNumber(12)
  void clearReplyRequest() => $_clearField(12);
  @$pb.TagNumber(12)
  ReplyRequest ensureReplyRequest() => $_ensure(11);

  @$pb.TagNumber(13)
  ReplyResult get replyResult => $_getN(12);
  @$pb.TagNumber(13)
  set replyResult(ReplyResult value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasReplyResult() => $_has(12);
  @$pb.TagNumber(13)
  void clearReplyResult() => $_clearField(13);

  @$pb.TagNumber(14)
  PrepareAppIcon_Request get appIconRequest => $_getN(13);
  @$pb.TagNumber(14)
  set appIconRequest(PrepareAppIcon_Request value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasAppIconRequest() => $_has(13);
  @$pb.TagNumber(14)
  void clearAppIconRequest() => $_clearField(14);
  @$pb.TagNumber(14)
  PrepareAppIcon_Request ensureAppIconRequest() => $_ensure(13);

  @$pb.TagNumber(15)
  PrepareAppIcon_Response get appIconResponse => $_getN(14);
  @$pb.TagNumber(15)
  set appIconResponse(PrepareAppIcon_Response value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasAppIconResponse() => $_has(14);
  @$pb.TagNumber(15)
  void clearAppIconResponse() => $_clearField(15);
  @$pb.TagNumber(15)
  PrepareAppIcon_Response ensureAppIconResponse() => $_ensure(14);

  @$pb.TagNumber(16)
  AppIconApply get appIconApply => $_getN(15);
  @$pb.TagNumber(16)
  set appIconApply(AppIconApply value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasAppIconApply() => $_has(15);
  @$pb.TagNumber(16)
  void clearAppIconApply() => $_clearField(16);
  @$pb.TagNumber(16)
  AppIconApply ensureAppIconApply() => $_ensure(15);
}

class NotifyData_List extends $pb.GeneratedMessage {
  factory NotifyData_List({
    $core.Iterable<NotifyData>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  NotifyData_List._();

  factory NotifyData_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NotifyData_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotifyData.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<NotifyData>(1, _omitFieldNames ? '' : 'list',
        subBuilder: NotifyData.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_List copyWith(void Function(NotifyData_List) updates) =>
      super.copyWith((message) => updates(message as NotifyData_List))
          as NotifyData_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyData_List create() => NotifyData_List._();
  @$core.override
  NotifyData_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NotifyData_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyData_List>(create);
  static NotifyData_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<NotifyData> get list => $_getList(0);
}

class NotifyData_Progress extends $pb.GeneratedMessage {
  factory NotifyData_Progress({
    $core.int? sectionCount,
    $core.int? progress,
    $core.List<$core.int>? color,
  }) {
    final result = create();
    if (sectionCount != null) result.sectionCount = sectionCount;
    if (progress != null) result.progress = progress;
    if (color != null) result.color = color;
    return result;
  }

  NotifyData_Progress._();

  factory NotifyData_Progress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NotifyData_Progress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotifyData.Progress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'sectionCount',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'progress', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'color', $pb.PbFieldType.OY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_Progress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_Progress copyWith(void Function(NotifyData_Progress) updates) =>
      super.copyWith((message) => updates(message as NotifyData_Progress))
          as NotifyData_Progress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyData_Progress create() => NotifyData_Progress._();
  @$core.override
  NotifyData_Progress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NotifyData_Progress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyData_Progress>(create);
  static NotifyData_Progress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sectionCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set sectionCount($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSectionCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearSectionCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get progress => $_getIZ(1);
  @$pb.TagNumber(2)
  set progress($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgress() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get color => $_getN(2);
  @$pb.TagNumber(3)
  set color($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => $_clearField(3);
}

class NotifyData_Text extends $pb.GeneratedMessage {
  factory NotifyData_Text({
    $core.String? chars,
    $core.List<$core.int>? color,
  }) {
    final result = create();
    if (chars != null) result.chars = chars;
    if (color != null) result.color = color;
    return result;
  }

  NotifyData_Text._();

  factory NotifyData_Text.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NotifyData_Text.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotifyData.Text',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'chars')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'color', $pb.PbFieldType.OY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_Text clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_Text copyWith(void Function(NotifyData_Text) updates) =>
      super.copyWith((message) => updates(message as NotifyData_Text))
          as NotifyData_Text;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyData_Text create() => NotifyData_Text._();
  @$core.override
  NotifyData_Text createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NotifyData_Text getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyData_Text>(create);
  static NotifyData_Text? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get chars => $_getSZ(0);
  @$pb.TagNumber(1)
  set chars($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChars() => $_has(0);
  @$pb.TagNumber(1)
  void clearChars() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get color => $_getN(1);
  @$pb.TagNumber(2)
  set color($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => $_clearField(2);
}

class NotifyData_Info extends $pb.GeneratedMessage {
  factory NotifyData_Info({
    NotifyData_Text? title,
    NotifyData_Text? subTitle,
    NotifyData_Text? content,
    NotifyData_Text? subContent,
    NotifyData_Text? specialTitle,
    $core.List<$core.int>? specialTitleBg,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (subTitle != null) result.subTitle = subTitle;
    if (content != null) result.content = content;
    if (subContent != null) result.subContent = subContent;
    if (specialTitle != null) result.specialTitle = specialTitle;
    if (specialTitleBg != null) result.specialTitleBg = specialTitleBg;
    return result;
  }

  NotifyData_Info._();

  factory NotifyData_Info.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NotifyData_Info.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotifyData.Info',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<NotifyData_Text>(1, _omitFieldNames ? '' : 'title',
        subBuilder: NotifyData_Text.create)
    ..aOM<NotifyData_Text>(2, _omitFieldNames ? '' : 'subTitle',
        subBuilder: NotifyData_Text.create)
    ..aOM<NotifyData_Text>(3, _omitFieldNames ? '' : 'content',
        subBuilder: NotifyData_Text.create)
    ..aOM<NotifyData_Text>(4, _omitFieldNames ? '' : 'subContent',
        subBuilder: NotifyData_Text.create)
    ..aOM<NotifyData_Text>(5, _omitFieldNames ? '' : 'specialTitle',
        subBuilder: NotifyData_Text.create)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'specialTitleBg', $pb.PbFieldType.OY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_Info clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_Info copyWith(void Function(NotifyData_Info) updates) =>
      super.copyWith((message) => updates(message as NotifyData_Info))
          as NotifyData_Info;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyData_Info create() => NotifyData_Info._();
  @$core.override
  NotifyData_Info createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NotifyData_Info getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyData_Info>(create);
  static NotifyData_Info? _defaultInstance;

  @$pb.TagNumber(1)
  NotifyData_Text get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(NotifyData_Text value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  NotifyData_Text ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  NotifyData_Text get subTitle => $_getN(1);
  @$pb.TagNumber(2)
  set subTitle(NotifyData_Text value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSubTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubTitle() => $_clearField(2);
  @$pb.TagNumber(2)
  NotifyData_Text ensureSubTitle() => $_ensure(1);

  @$pb.TagNumber(3)
  NotifyData_Text get content => $_getN(2);
  @$pb.TagNumber(3)
  set content(NotifyData_Text value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => $_clearField(3);
  @$pb.TagNumber(3)
  NotifyData_Text ensureContent() => $_ensure(2);

  @$pb.TagNumber(4)
  NotifyData_Text get subContent => $_getN(3);
  @$pb.TagNumber(4)
  set subContent(NotifyData_Text value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSubContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubContent() => $_clearField(4);
  @$pb.TagNumber(4)
  NotifyData_Text ensureSubContent() => $_ensure(3);

  @$pb.TagNumber(5)
  NotifyData_Text get specialTitle => $_getN(4);
  @$pb.TagNumber(5)
  set specialTitle(NotifyData_Text value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSpecialTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpecialTitle() => $_clearField(5);
  @$pb.TagNumber(5)
  NotifyData_Text ensureSpecialTitle() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get specialTitleBg => $_getN(5);
  @$pb.TagNumber(6)
  set specialTitleBg($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSpecialTitleBg() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpecialTitleBg() => $_clearField(6);
}

class NotifyData_Focus extends $pb.GeneratedMessage {
  factory NotifyData_Focus({
    $core.int? style,
    NotifyData_Text? title,
    NotifyData_Text? content,
    NotifyData_Text? desc,
    NotifyData_Progress? progress,
    $core.bool? updatable,
    $core.int? sequence,
  }) {
    final result = create();
    if (style != null) result.style = style;
    if (title != null) result.title = title;
    if (content != null) result.content = content;
    if (desc != null) result.desc = desc;
    if (progress != null) result.progress = progress;
    if (updatable != null) result.updatable = updatable;
    if (sequence != null) result.sequence = sequence;
    return result;
  }

  NotifyData_Focus._();

  factory NotifyData_Focus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NotifyData_Focus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotifyData.Focus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'style', fieldType: $pb.PbFieldType.QU3)
    ..aQM<NotifyData_Text>(2, _omitFieldNames ? '' : 'title',
        subBuilder: NotifyData_Text.create)
    ..aQM<NotifyData_Text>(3, _omitFieldNames ? '' : 'content',
        subBuilder: NotifyData_Text.create)
    ..aQM<NotifyData_Text>(4, _omitFieldNames ? '' : 'desc',
        subBuilder: NotifyData_Text.create)
    ..aOM<NotifyData_Progress>(5, _omitFieldNames ? '' : 'progress',
        subBuilder: NotifyData_Progress.create)
    ..aOB(6, _omitFieldNames ? '' : 'updatable')
    ..aI(7, _omitFieldNames ? '' : 'sequence', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_Focus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_Focus copyWith(void Function(NotifyData_Focus) updates) =>
      super.copyWith((message) => updates(message as NotifyData_Focus))
          as NotifyData_Focus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyData_Focus create() => NotifyData_Focus._();
  @$core.override
  NotifyData_Focus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NotifyData_Focus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyData_Focus>(create);
  static NotifyData_Focus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get style => $_getIZ(0);
  @$pb.TagNumber(1)
  set style($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStyle() => $_has(0);
  @$pb.TagNumber(1)
  void clearStyle() => $_clearField(1);

  @$pb.TagNumber(2)
  NotifyData_Text get title => $_getN(1);
  @$pb.TagNumber(2)
  set title(NotifyData_Text value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);
  @$pb.TagNumber(2)
  NotifyData_Text ensureTitle() => $_ensure(1);

  @$pb.TagNumber(3)
  NotifyData_Text get content => $_getN(2);
  @$pb.TagNumber(3)
  set content(NotifyData_Text value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => $_clearField(3);
  @$pb.TagNumber(3)
  NotifyData_Text ensureContent() => $_ensure(2);

  @$pb.TagNumber(4)
  NotifyData_Text get desc => $_getN(3);
  @$pb.TagNumber(4)
  set desc(NotifyData_Text value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc() => $_clearField(4);
  @$pb.TagNumber(4)
  NotifyData_Text ensureDesc() => $_ensure(3);

  @$pb.TagNumber(5)
  NotifyData_Progress get progress => $_getN(4);
  @$pb.TagNumber(5)
  set progress(NotifyData_Progress value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasProgress() => $_has(4);
  @$pb.TagNumber(5)
  void clearProgress() => $_clearField(5);
  @$pb.TagNumber(5)
  NotifyData_Progress ensureProgress() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get updatable => $_getBF(5);
  @$pb.TagNumber(6)
  set updatable($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUpdatable() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatable() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get sequence => $_getIZ(6);
  @$pb.TagNumber(7)
  set sequence($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSequence() => $_has(6);
  @$pb.TagNumber(7)
  void clearSequence() => $_clearField(7);
}

class NotifyData_FocusV2 extends $pb.GeneratedMessage {
  factory NotifyData_FocusV2({
    $core.int? scene,
    $core.String? ticker,
    NotifyData_Info? basicInfo,
    NotifyData_Info? hintInfo,
    NotifyData_Progress? progress,
    $core.bool? updatable,
    $core.int? sequence,
  }) {
    final result = create();
    if (scene != null) result.scene = scene;
    if (ticker != null) result.ticker = ticker;
    if (basicInfo != null) result.basicInfo = basicInfo;
    if (hintInfo != null) result.hintInfo = hintInfo;
    if (progress != null) result.progress = progress;
    if (updatable != null) result.updatable = updatable;
    if (sequence != null) result.sequence = sequence;
    return result;
  }

  NotifyData_FocusV2._();

  factory NotifyData_FocusV2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NotifyData_FocusV2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotifyData.FocusV2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'scene', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'ticker')
    ..aQM<NotifyData_Info>(3, _omitFieldNames ? '' : 'basicInfo',
        subBuilder: NotifyData_Info.create)
    ..aOM<NotifyData_Info>(4, _omitFieldNames ? '' : 'hintInfo',
        subBuilder: NotifyData_Info.create)
    ..aOM<NotifyData_Progress>(5, _omitFieldNames ? '' : 'progress',
        subBuilder: NotifyData_Progress.create)
    ..aOB(6, _omitFieldNames ? '' : 'updatable')
    ..aI(7, _omitFieldNames ? '' : 'sequence', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_FocusV2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData_FocusV2 copyWith(void Function(NotifyData_FocusV2) updates) =>
      super.copyWith((message) => updates(message as NotifyData_FocusV2))
          as NotifyData_FocusV2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyData_FocusV2 create() => NotifyData_FocusV2._();
  @$core.override
  NotifyData_FocusV2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NotifyData_FocusV2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyData_FocusV2>(create);
  static NotifyData_FocusV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get scene => $_getIZ(0);
  @$pb.TagNumber(1)
  set scene($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasScene() => $_has(0);
  @$pb.TagNumber(1)
  void clearScene() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get ticker => $_getSZ(1);
  @$pb.TagNumber(2)
  set ticker($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTicker() => $_has(1);
  @$pb.TagNumber(2)
  void clearTicker() => $_clearField(2);

  @$pb.TagNumber(3)
  NotifyData_Info get basicInfo => $_getN(2);
  @$pb.TagNumber(3)
  set basicInfo(NotifyData_Info value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBasicInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearBasicInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  NotifyData_Info ensureBasicInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  NotifyData_Info get hintInfo => $_getN(3);
  @$pb.TagNumber(4)
  set hintInfo(NotifyData_Info value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasHintInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearHintInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  NotifyData_Info ensureHintInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  NotifyData_Progress get progress => $_getN(4);
  @$pb.TagNumber(5)
  set progress(NotifyData_Progress value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasProgress() => $_has(4);
  @$pb.TagNumber(5)
  void clearProgress() => $_clearField(5);
  @$pb.TagNumber(5)
  NotifyData_Progress ensureProgress() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get updatable => $_getBF(5);
  @$pb.TagNumber(6)
  set updatable($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUpdatable() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatable() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get sequence => $_getIZ(6);
  @$pb.TagNumber(7)
  set sequence($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSequence() => $_has(6);
  @$pb.TagNumber(7)
  void clearSequence() => $_clearField(7);
}

class NotifyData extends $pb.GeneratedMessage {
  factory NotifyData({
    $core.String? appId,
    $core.String? appName,
    $core.String? title,
    $core.String? subTitle,
    $core.String? text,
    $core.String? date,
    $core.int? uid,
    CallType? callType,
    $core.String? appGroup,
    $core.String? callNumber,
    $core.bool? supportReply,
    $core.String? key,
    $core.bool? supportOpen,
    NotifyData_Focus? focus,
    NotifyData_FocusV2? focusV2,
  }) {
    final result = create();
    if (appId != null) result.appId = appId;
    if (appName != null) result.appName = appName;
    if (title != null) result.title = title;
    if (subTitle != null) result.subTitle = subTitle;
    if (text != null) result.text = text;
    if (date != null) result.date = date;
    if (uid != null) result.uid = uid;
    if (callType != null) result.callType = callType;
    if (appGroup != null) result.appGroup = appGroup;
    if (callNumber != null) result.callNumber = callNumber;
    if (supportReply != null) result.supportReply = supportReply;
    if (key != null) result.key = key;
    if (supportOpen != null) result.supportOpen = supportOpen;
    if (focus != null) result.focus = focus;
    if (focusV2 != null) result.focusV2 = focusV2;
    return result;
  }

  NotifyData._();

  factory NotifyData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NotifyData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotifyData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'appId')
    ..aQS(2, _omitFieldNames ? '' : 'appName')
    ..aQS(3, _omitFieldNames ? '' : 'title')
    ..aQS(4, _omitFieldNames ? '' : 'subTitle')
    ..aQS(5, _omitFieldNames ? '' : 'text')
    ..aQS(6, _omitFieldNames ? '' : 'date')
    ..aI(7, _omitFieldNames ? '' : 'uid', fieldType: $pb.PbFieldType.QU3)
    ..aE<CallType>(8, _omitFieldNames ? '' : 'callType',
        enumValues: CallType.values)
    ..aQS(9, _omitFieldNames ? '' : 'appGroup')
    ..aQS(10, _omitFieldNames ? '' : 'callNumber')
    ..aOB(11, _omitFieldNames ? '' : 'supportReply')
    ..aQS(12, _omitFieldNames ? '' : 'key')
    ..aOB(13, _omitFieldNames ? '' : 'supportOpen')
    ..aOM<NotifyData_Focus>(14, _omitFieldNames ? '' : 'focus',
        subBuilder: NotifyData_Focus.create)
    ..aOM<NotifyData_FocusV2>(15, _omitFieldNames ? '' : 'focusV2',
        subBuilder: NotifyData_FocusV2.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyData copyWith(void Function(NotifyData) updates) =>
      super.copyWith((message) => updates(message as NotifyData)) as NotifyData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyData create() => NotifyData._();
  @$core.override
  NotifyData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NotifyData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyData>(create);
  static NotifyData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get appName => $_getSZ(1);
  @$pb.TagNumber(2)
  set appName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subTitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get text => $_getSZ(4);
  @$pb.TagNumber(5)
  set text($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasText() => $_has(4);
  @$pb.TagNumber(5)
  void clearText() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get date => $_getSZ(5);
  @$pb.TagNumber(6)
  set date($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearDate() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get uid => $_getIZ(6);
  @$pb.TagNumber(7)
  set uid($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUid() => $_has(6);
  @$pb.TagNumber(7)
  void clearUid() => $_clearField(7);

  @$pb.TagNumber(8)
  CallType get callType => $_getN(7);
  @$pb.TagNumber(8)
  set callType(CallType value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCallType() => $_has(7);
  @$pb.TagNumber(8)
  void clearCallType() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get appGroup => $_getSZ(8);
  @$pb.TagNumber(9)
  set appGroup($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasAppGroup() => $_has(8);
  @$pb.TagNumber(9)
  void clearAppGroup() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get callNumber => $_getSZ(9);
  @$pb.TagNumber(10)
  set callNumber($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCallNumber() => $_has(9);
  @$pb.TagNumber(10)
  void clearCallNumber() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get supportReply => $_getBF(10);
  @$pb.TagNumber(11)
  set supportReply($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasSupportReply() => $_has(10);
  @$pb.TagNumber(11)
  void clearSupportReply() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get key => $_getSZ(11);
  @$pb.TagNumber(12)
  set key($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasKey() => $_has(11);
  @$pb.TagNumber(12)
  void clearKey() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.bool get supportOpen => $_getBF(12);
  @$pb.TagNumber(13)
  set supportOpen($core.bool value) => $_setBool(12, value);
  @$pb.TagNumber(13)
  $core.bool hasSupportOpen() => $_has(12);
  @$pb.TagNumber(13)
  void clearSupportOpen() => $_clearField(13);

  @$pb.TagNumber(14)
  NotifyData_Focus get focus => $_getN(13);
  @$pb.TagNumber(14)
  set focus(NotifyData_Focus value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasFocus() => $_has(13);
  @$pb.TagNumber(14)
  void clearFocus() => $_clearField(14);
  @$pb.TagNumber(14)
  NotifyData_Focus ensureFocus() => $_ensure(13);

  @$pb.TagNumber(15)
  NotifyData_FocusV2 get focusV2 => $_getN(14);
  @$pb.TagNumber(15)
  set focusV2(NotifyData_FocusV2 value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasFocusV2() => $_has(14);
  @$pb.TagNumber(15)
  void clearFocusV2() => $_clearField(15);
  @$pb.TagNumber(15)
  NotifyData_FocusV2 ensureFocusV2() => $_ensure(14);
}

class NotifyId_List extends $pb.GeneratedMessage {
  factory NotifyId_List({
    $core.Iterable<NotifyId>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  NotifyId_List._();

  factory NotifyId_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NotifyId_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotifyId.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<NotifyId>(1, _omitFieldNames ? '' : 'list',
        subBuilder: NotifyId.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyId_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyId_List copyWith(void Function(NotifyId_List) updates) =>
      super.copyWith((message) => updates(message as NotifyId_List))
          as NotifyId_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyId_List create() => NotifyId_List._();
  @$core.override
  NotifyId_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NotifyId_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyId_List>(create);
  static NotifyId_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<NotifyId> get list => $_getList(0);
}

class NotifyId extends $pb.GeneratedMessage {
  factory NotifyId({
    $core.int? uid,
    $core.String? appId,
    $core.String? appGroup,
    $core.String? key,
  }) {
    final result = create();
    if (uid != null) result.uid = uid;
    if (appId != null) result.appId = appId;
    if (appGroup != null) result.appGroup = appGroup;
    if (key != null) result.key = key;
    return result;
  }

  NotifyId._();

  factory NotifyId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NotifyId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotifyId',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'uid', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'appId')
    ..aQS(3, _omitFieldNames ? '' : 'appGroup')
    ..aQS(4, _omitFieldNames ? '' : 'key');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NotifyId copyWith(void Function(NotifyId) updates) =>
      super.copyWith((message) => updates(message as NotifyId)) as NotifyId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyId create() => NotifyId._();
  @$core.override
  NotifyId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NotifyId getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyId>(create);
  static NotifyId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get uid => $_getIZ(0);
  @$pb.TagNumber(1)
  set uid($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get appId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get appGroup => $_getSZ(2);
  @$pb.TagNumber(3)
  set appGroup($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAppGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppGroup() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get key => $_getSZ(3);
  @$pb.TagNumber(4)
  set key($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearKey() => $_clearField(4);
}

class ReplyMsg_Removal extends $pb.GeneratedMessage {
  factory ReplyMsg_Removal({
    ReplyMsg_Target? target,
    $core.Iterable<$core.int>? id,
  }) {
    final result = create();
    if (target != null) result.target = target;
    if (id != null) result.id.addAll(id);
    return result;
  }

  ReplyMsg_Removal._();

  factory ReplyMsg_Removal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplyMsg_Removal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplyMsg.Removal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ReplyMsg_Target>(1, _omitFieldNames ? '' : 'target',
        fieldType: $pb.PbFieldType.QE, enumValues: ReplyMsg_Target.values)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'id', $pb.PbFieldType.PU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyMsg_Removal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyMsg_Removal copyWith(void Function(ReplyMsg_Removal) updates) =>
      super.copyWith((message) => updates(message as ReplyMsg_Removal))
          as ReplyMsg_Removal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyMsg_Removal create() => ReplyMsg_Removal._();
  @$core.override
  ReplyMsg_Removal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplyMsg_Removal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReplyMsg_Removal>(create);
  static ReplyMsg_Removal? _defaultInstance;

  @$pb.TagNumber(1)
  ReplyMsg_Target get target => $_getN(0);
  @$pb.TagNumber(1)
  set target(ReplyMsg_Target value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get id => $_getList(1);
}

class ReplyMsg extends $pb.GeneratedMessage {
  factory ReplyMsg({
    ReplyMsg_Target? target,
    $core.Iterable<$core.String>? contents,
    $core.int? supportMaxNumbers,
  }) {
    final result = create();
    if (target != null) result.target = target;
    if (contents != null) result.contents.addAll(contents);
    if (supportMaxNumbers != null) result.supportMaxNumbers = supportMaxNumbers;
    return result;
  }

  ReplyMsg._();

  factory ReplyMsg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplyMsg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplyMsg',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ReplyMsg_Target>(1, _omitFieldNames ? '' : 'target',
        fieldType: $pb.PbFieldType.QE, enumValues: ReplyMsg_Target.values)
    ..pPS(2, _omitFieldNames ? '' : 'contents')
    ..aI(3, _omitFieldNames ? '' : 'supportMaxNumbers',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyMsg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyMsg copyWith(void Function(ReplyMsg) updates) =>
      super.copyWith((message) => updates(message as ReplyMsg)) as ReplyMsg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyMsg create() => ReplyMsg._();
  @$core.override
  ReplyMsg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplyMsg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyMsg>(create);
  static ReplyMsg? _defaultInstance;

  @$pb.TagNumber(1)
  ReplyMsg_Target get target => $_getN(0);
  @$pb.TagNumber(1)
  set target(ReplyMsg_Target value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get contents => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get supportMaxNumbers => $_getIZ(2);
  @$pb.TagNumber(3)
  set supportMaxNumbers($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSupportMaxNumbers() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupportMaxNumbers() => $_clearField(3);
}

enum ReplyRequest_Data { phoneNumber, notifyId, notSet }

class ReplyRequest extends $pb.GeneratedMessage {
  factory ReplyRequest({
    ReplyMsg_Target? target,
    $core.String? contents,
    $core.bool? needResult,
    $core.String? phoneNumber,
    NotifyId? notifyId,
  }) {
    final result = create();
    if (target != null) result.target = target;
    if (contents != null) result.contents = contents;
    if (needResult != null) result.needResult = needResult;
    if (phoneNumber != null) result.phoneNumber = phoneNumber;
    if (notifyId != null) result.notifyId = notifyId;
    return result;
  }

  ReplyRequest._();

  factory ReplyRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplyRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ReplyRequest_Data> _ReplyRequest_DataByTag =
      {
    4: ReplyRequest_Data.phoneNumber,
    5: ReplyRequest_Data.notifyId,
    0: ReplyRequest_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplyRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..aE<ReplyMsg_Target>(1, _omitFieldNames ? '' : 'target',
        fieldType: $pb.PbFieldType.QE, enumValues: ReplyMsg_Target.values)
    ..aQS(2, _omitFieldNames ? '' : 'contents')
    ..a<$core.bool>(3, _omitFieldNames ? '' : 'needResult', $pb.PbFieldType.QB)
    ..aOS(4, _omitFieldNames ? '' : 'phoneNumber')
    ..aOM<NotifyId>(5, _omitFieldNames ? '' : 'notifyId',
        subBuilder: NotifyId.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyRequest copyWith(void Function(ReplyRequest) updates) =>
      super.copyWith((message) => updates(message as ReplyRequest))
          as ReplyRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyRequest create() => ReplyRequest._();
  @$core.override
  ReplyRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReplyRequest>(create);
  static ReplyRequest? _defaultInstance;

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  ReplyRequest_Data whichData() => _ReplyRequest_DataByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearData() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ReplyMsg_Target get target => $_getN(0);
  @$pb.TagNumber(1)
  set target(ReplyMsg_Target value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get contents => $_getSZ(1);
  @$pb.TagNumber(2)
  set contents($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContents() => $_has(1);
  @$pb.TagNumber(2)
  void clearContents() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get needResult => $_getBF(2);
  @$pb.TagNumber(3)
  set needResult($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNeedResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedResult() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => $_clearField(4);

  @$pb.TagNumber(5)
  NotifyId get notifyId => $_getN(4);
  @$pb.TagNumber(5)
  set notifyId(NotifyId value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasNotifyId() => $_has(4);
  @$pb.TagNumber(5)
  void clearNotifyId() => $_clearField(5);
  @$pb.TagNumber(5)
  NotifyId ensureNotifyId() => $_ensure(4);
}

class PrepareAppIcon_Request extends $pb.GeneratedMessage {
  factory PrepareAppIcon_Request({
    $core.String? packageName,
    $core.int? supportCompressMode,
  }) {
    final result = create();
    if (packageName != null) result.packageName = packageName;
    if (supportCompressMode != null)
      result.supportCompressMode = supportCompressMode;
    return result;
  }

  PrepareAppIcon_Request._();

  factory PrepareAppIcon_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareAppIcon_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareAppIcon.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'packageName')
    ..aI(2, _omitFieldNames ? '' : 'supportCompressMode',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareAppIcon_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareAppIcon_Request copyWith(
          void Function(PrepareAppIcon_Request) updates) =>
      super.copyWith((message) => updates(message as PrepareAppIcon_Request))
          as PrepareAppIcon_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareAppIcon_Request create() => PrepareAppIcon_Request._();
  @$core.override
  PrepareAppIcon_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareAppIcon_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareAppIcon_Request>(create);
  static PrepareAppIcon_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get packageName => $_getSZ(0);
  @$pb.TagNumber(1)
  set packageName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPackageName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get supportCompressMode => $_getIZ(1);
  @$pb.TagNumber(2)
  set supportCompressMode($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportCompressMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportCompressMode() => $_clearField(2);
}

class PrepareAppIcon_Response extends $pb.GeneratedMessage {
  factory PrepareAppIcon_Response({
    $0.PrepareStatus? prepareStatus,
    $0.ImageFormat? supportImageFormat,
    $core.int? expectedMaxSize,
    $core.int? selectCompressMode,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (prepareStatus != null) result.prepareStatus = prepareStatus;
    if (supportImageFormat != null)
      result.supportImageFormat = supportImageFormat;
    if (expectedMaxSize != null) result.expectedMaxSize = expectedMaxSize;
    if (selectCompressMode != null)
      result.selectCompressMode = selectCompressMode;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  PrepareAppIcon_Response._();

  factory PrepareAppIcon_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareAppIcon_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareAppIcon.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.PrepareStatus>(1, _omitFieldNames ? '' : 'prepareStatus',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.PrepareStatus.values)
    ..aE<$0.ImageFormat>(2, _omitFieldNames ? '' : 'supportImageFormat',
        enumValues: $0.ImageFormat.values)
    ..aI(3, _omitFieldNames ? '' : 'expectedMaxSize',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'selectCompressMode',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareAppIcon_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareAppIcon_Response copyWith(
          void Function(PrepareAppIcon_Response) updates) =>
      super.copyWith((message) => updates(message as PrepareAppIcon_Response))
          as PrepareAppIcon_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareAppIcon_Response create() => PrepareAppIcon_Response._();
  @$core.override
  PrepareAppIcon_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareAppIcon_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareAppIcon_Response>(create);
  static PrepareAppIcon_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $0.PrepareStatus get prepareStatus => $_getN(0);
  @$pb.TagNumber(1)
  set prepareStatus($0.PrepareStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPrepareStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrepareStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.ImageFormat get supportImageFormat => $_getN(1);
  @$pb.TagNumber(2)
  set supportImageFormat($0.ImageFormat value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportImageFormat() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportImageFormat() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get expectedMaxSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set expectedMaxSize($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpectedMaxSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectedMaxSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get selectCompressMode => $_getIZ(3);
  @$pb.TagNumber(4)
  set selectCompressMode($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSelectCompressMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearSelectCompressMode() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get expectedSliceLength => $_getIZ(4);
  @$pb.TagNumber(5)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExpectedSliceLength() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpectedSliceLength() => $_clearField(5);
}

class PrepareAppIcon extends $pb.GeneratedMessage {
  factory PrepareAppIcon() => create();

  PrepareAppIcon._();

  factory PrepareAppIcon.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareAppIcon.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareAppIcon',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareAppIcon clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareAppIcon copyWith(void Function(PrepareAppIcon) updates) =>
      super.copyWith((message) => updates(message as PrepareAppIcon))
          as PrepareAppIcon;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareAppIcon create() => PrepareAppIcon._();
  @$core.override
  PrepareAppIcon createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareAppIcon getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareAppIcon>(create);
  static PrepareAppIcon? _defaultInstance;
}

class AppIconApply extends $pb.GeneratedMessage {
  factory AppIconApply({
    $core.String? packageName,
  }) {
    final result = create();
    if (packageName != null) result.packageName = packageName;
    return result;
  }

  AppIconApply._();

  factory AppIconApply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppIconApply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppIconApply',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'packageName');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppIconApply clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppIconApply copyWith(void Function(AppIconApply) updates) =>
      super.copyWith((message) => updates(message as AppIconApply))
          as AppIconApply;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppIconApply create() => AppIconApply._();
  @$core.override
  AppIconApply createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppIconApply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppIconApply>(create);
  static AppIconApply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get packageName => $_getSZ(0);
  @$pb.TagNumber(1)
  set packageName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPackageName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageName() => $_clearField(1);
}

class AppInfo_List extends $pb.GeneratedMessage {
  factory AppInfo_List({
    $core.Iterable<AppInfo>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  AppInfo_List._();

  factory AppInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AppInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: AppInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInfo_List copyWith(void Function(AppInfo_List) updates) =>
      super.copyWith((message) => updates(message as AppInfo_List))
          as AppInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInfo_List create() => AppInfo_List._();
  @$core.override
  AppInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppInfo_List>(create);
  static AppInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AppInfo> get list => $_getList(0);
}

class AppInfo extends $pb.GeneratedMessage {
  factory AppInfo({
    $core.int? appType,
    $core.bool? enable,
  }) {
    final result = create();
    if (appType != null) result.appType = appType;
    if (enable != null) result.enable = enable;
    return result;
  }

  AppInfo._();

  factory AppInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'appType', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'enable', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppInfo copyWith(void Function(AppInfo) updates) =>
      super.copyWith((message) => updates(message as AppInfo)) as AppInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInfo create() => AppInfo._();
  @$core.override
  AppInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppInfo>(create);
  static AppInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get appType => $_getIZ(0);
  @$pb.TagNumber(1)
  set appType($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppType() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enable => $_getBF(1);
  @$pb.TagNumber(2)
  set enable($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnable() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnable() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
