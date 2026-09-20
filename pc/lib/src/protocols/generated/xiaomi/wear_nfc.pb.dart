// This is a generated file - do not edit.
//
// Generated from wear_nfc.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pb.dart' as $0;
import 'wear_nfc.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_nfc.pbenum.dart';

enum Nfc_Payload {
  command,
  issueCard,
  cardData,
  cardInfo,
  cardInfoList,
  aid,
  balanceInfo,
  config,
  commandInfoList,
  capability,
  cardSwitcherList,
  cardSwitcher,
  cardSwitcherResult,
  superCardData,
  probeRequest,
  probeResponse,
  keyList,
  crackCardData,
  cardSwitcherSmart,
  notSet
}

class Nfc extends $pb.GeneratedMessage {
  factory Nfc({
    $core.List<$core.int>? command,
    IssueCard? issueCard,
    CardData? cardData,
    CardInfo? cardInfo,
    CardInfo_List? cardInfoList,
    $core.String? aid,
    BalanceInfo? balanceInfo,
    $core.String? config,
    CommandInfo_List? commandInfoList,
    $core.int? capability,
    CardSwitcher_List? cardSwitcherList,
    CardSwitcher? cardSwitcher,
    CardSwitcher_Result? cardSwitcherResult,
    SuperCardData? superCardData,
    ProbeSector_Request? probeRequest,
    ProbeSector_Response? probeResponse,
    SectorKey_List? keyList,
    CrackCardData? crackCardData,
    CardSwitcher_Smart? cardSwitcherSmart,
  }) {
    final result = create();
    if (command != null) result.command = command;
    if (issueCard != null) result.issueCard = issueCard;
    if (cardData != null) result.cardData = cardData;
    if (cardInfo != null) result.cardInfo = cardInfo;
    if (cardInfoList != null) result.cardInfoList = cardInfoList;
    if (aid != null) result.aid = aid;
    if (balanceInfo != null) result.balanceInfo = balanceInfo;
    if (config != null) result.config = config;
    if (commandInfoList != null) result.commandInfoList = commandInfoList;
    if (capability != null) result.capability = capability;
    if (cardSwitcherList != null) result.cardSwitcherList = cardSwitcherList;
    if (cardSwitcher != null) result.cardSwitcher = cardSwitcher;
    if (cardSwitcherResult != null)
      result.cardSwitcherResult = cardSwitcherResult;
    if (superCardData != null) result.superCardData = superCardData;
    if (probeRequest != null) result.probeRequest = probeRequest;
    if (probeResponse != null) result.probeResponse = probeResponse;
    if (keyList != null) result.keyList = keyList;
    if (crackCardData != null) result.crackCardData = crackCardData;
    if (cardSwitcherSmart != null) result.cardSwitcherSmart = cardSwitcherSmart;
    return result;
  }

  Nfc._();

  factory Nfc.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Nfc.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Nfc_Payload> _Nfc_PayloadByTag = {
    1: Nfc_Payload.command,
    2: Nfc_Payload.issueCard,
    3: Nfc_Payload.cardData,
    4: Nfc_Payload.cardInfo,
    5: Nfc_Payload.cardInfoList,
    6: Nfc_Payload.aid,
    7: Nfc_Payload.balanceInfo,
    8: Nfc_Payload.config,
    9: Nfc_Payload.commandInfoList,
    10: Nfc_Payload.capability,
    11: Nfc_Payload.cardSwitcherList,
    12: Nfc_Payload.cardSwitcher,
    13: Nfc_Payload.cardSwitcherResult,
    14: Nfc_Payload.superCardData,
    15: Nfc_Payload.probeRequest,
    16: Nfc_Payload.probeResponse,
    17: Nfc_Payload.keyList,
    18: Nfc_Payload.crackCardData,
    19: Nfc_Payload.cardSwitcherSmart,
    0: Nfc_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Nfc',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OY)
    ..aOM<IssueCard>(2, _omitFieldNames ? '' : 'issueCard',
        subBuilder: IssueCard.create)
    ..aOM<CardData>(3, _omitFieldNames ? '' : 'cardData',
        subBuilder: CardData.create)
    ..aOM<CardInfo>(4, _omitFieldNames ? '' : 'cardInfo',
        subBuilder: CardInfo.create)
    ..aOM<CardInfo_List>(5, _omitFieldNames ? '' : 'cardInfoList',
        subBuilder: CardInfo_List.create)
    ..aOS(6, _omitFieldNames ? '' : 'aid')
    ..aOM<BalanceInfo>(7, _omitFieldNames ? '' : 'balanceInfo',
        subBuilder: BalanceInfo.create)
    ..aOS(8, _omitFieldNames ? '' : 'config')
    ..aOM<CommandInfo_List>(9, _omitFieldNames ? '' : 'commandInfoList',
        subBuilder: CommandInfo_List.create)
    ..aI(10, _omitFieldNames ? '' : 'capability',
        fieldType: $pb.PbFieldType.OU3)
    ..aOM<CardSwitcher_List>(11, _omitFieldNames ? '' : 'cardSwitcherList',
        subBuilder: CardSwitcher_List.create)
    ..aOM<CardSwitcher>(12, _omitFieldNames ? '' : 'cardSwitcher',
        subBuilder: CardSwitcher.create)
    ..aOM<CardSwitcher_Result>(13, _omitFieldNames ? '' : 'cardSwitcherResult',
        subBuilder: CardSwitcher_Result.create)
    ..aOM<SuperCardData>(14, _omitFieldNames ? '' : 'superCardData',
        subBuilder: SuperCardData.create)
    ..aOM<ProbeSector_Request>(15, _omitFieldNames ? '' : 'probeRequest',
        subBuilder: ProbeSector_Request.create)
    ..aOM<ProbeSector_Response>(16, _omitFieldNames ? '' : 'probeResponse',
        subBuilder: ProbeSector_Response.create)
    ..aOM<SectorKey_List>(17, _omitFieldNames ? '' : 'keyList',
        subBuilder: SectorKey_List.create)
    ..aOM<CrackCardData>(18, _omitFieldNames ? '' : 'crackCardData',
        subBuilder: CrackCardData.create)
    ..aOM<CardSwitcher_Smart>(19, _omitFieldNames ? '' : 'cardSwitcherSmart',
        subBuilder: CardSwitcher_Smart.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Nfc clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Nfc copyWith(void Function(Nfc) updates) =>
      super.copyWith((message) => updates(message as Nfc)) as Nfc;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Nfc create() => Nfc._();
  @$core.override
  Nfc createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Nfc getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Nfc>(create);
  static Nfc? _defaultInstance;

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
  Nfc_Payload whichPayload() => _Nfc_PayloadByTag[$_whichOneof(0)]!;
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
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get command => $_getN(0);
  @$pb.TagNumber(1)
  set command($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommand() => $_clearField(1);

  @$pb.TagNumber(2)
  IssueCard get issueCard => $_getN(1);
  @$pb.TagNumber(2)
  set issueCard(IssueCard value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasIssueCard() => $_has(1);
  @$pb.TagNumber(2)
  void clearIssueCard() => $_clearField(2);
  @$pb.TagNumber(2)
  IssueCard ensureIssueCard() => $_ensure(1);

  @$pb.TagNumber(3)
  CardData get cardData => $_getN(2);
  @$pb.TagNumber(3)
  set cardData(CardData value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCardData() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardData() => $_clearField(3);
  @$pb.TagNumber(3)
  CardData ensureCardData() => $_ensure(2);

  @$pb.TagNumber(4)
  CardInfo get cardInfo => $_getN(3);
  @$pb.TagNumber(4)
  set cardInfo(CardInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCardInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  CardInfo ensureCardInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  CardInfo_List get cardInfoList => $_getN(4);
  @$pb.TagNumber(5)
  set cardInfoList(CardInfo_List value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCardInfoList() => $_has(4);
  @$pb.TagNumber(5)
  void clearCardInfoList() => $_clearField(5);
  @$pb.TagNumber(5)
  CardInfo_List ensureCardInfoList() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get aid => $_getSZ(5);
  @$pb.TagNumber(6)
  set aid($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAid() => $_has(5);
  @$pb.TagNumber(6)
  void clearAid() => $_clearField(6);

  @$pb.TagNumber(7)
  BalanceInfo get balanceInfo => $_getN(6);
  @$pb.TagNumber(7)
  set balanceInfo(BalanceInfo value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasBalanceInfo() => $_has(6);
  @$pb.TagNumber(7)
  void clearBalanceInfo() => $_clearField(7);
  @$pb.TagNumber(7)
  BalanceInfo ensureBalanceInfo() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get config => $_getSZ(7);
  @$pb.TagNumber(8)
  set config($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasConfig() => $_has(7);
  @$pb.TagNumber(8)
  void clearConfig() => $_clearField(8);

  @$pb.TagNumber(9)
  CommandInfo_List get commandInfoList => $_getN(8);
  @$pb.TagNumber(9)
  set commandInfoList(CommandInfo_List value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCommandInfoList() => $_has(8);
  @$pb.TagNumber(9)
  void clearCommandInfoList() => $_clearField(9);
  @$pb.TagNumber(9)
  CommandInfo_List ensureCommandInfoList() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get capability => $_getIZ(9);
  @$pb.TagNumber(10)
  set capability($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCapability() => $_has(9);
  @$pb.TagNumber(10)
  void clearCapability() => $_clearField(10);

  @$pb.TagNumber(11)
  CardSwitcher_List get cardSwitcherList => $_getN(10);
  @$pb.TagNumber(11)
  set cardSwitcherList(CardSwitcher_List value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasCardSwitcherList() => $_has(10);
  @$pb.TagNumber(11)
  void clearCardSwitcherList() => $_clearField(11);
  @$pb.TagNumber(11)
  CardSwitcher_List ensureCardSwitcherList() => $_ensure(10);

  @$pb.TagNumber(12)
  CardSwitcher get cardSwitcher => $_getN(11);
  @$pb.TagNumber(12)
  set cardSwitcher(CardSwitcher value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasCardSwitcher() => $_has(11);
  @$pb.TagNumber(12)
  void clearCardSwitcher() => $_clearField(12);
  @$pb.TagNumber(12)
  CardSwitcher ensureCardSwitcher() => $_ensure(11);

  @$pb.TagNumber(13)
  CardSwitcher_Result get cardSwitcherResult => $_getN(12);
  @$pb.TagNumber(13)
  set cardSwitcherResult(CardSwitcher_Result value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasCardSwitcherResult() => $_has(12);
  @$pb.TagNumber(13)
  void clearCardSwitcherResult() => $_clearField(13);
  @$pb.TagNumber(13)
  CardSwitcher_Result ensureCardSwitcherResult() => $_ensure(12);

  @$pb.TagNumber(14)
  SuperCardData get superCardData => $_getN(13);
  @$pb.TagNumber(14)
  set superCardData(SuperCardData value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasSuperCardData() => $_has(13);
  @$pb.TagNumber(14)
  void clearSuperCardData() => $_clearField(14);
  @$pb.TagNumber(14)
  SuperCardData ensureSuperCardData() => $_ensure(13);

  @$pb.TagNumber(15)
  ProbeSector_Request get probeRequest => $_getN(14);
  @$pb.TagNumber(15)
  set probeRequest(ProbeSector_Request value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasProbeRequest() => $_has(14);
  @$pb.TagNumber(15)
  void clearProbeRequest() => $_clearField(15);
  @$pb.TagNumber(15)
  ProbeSector_Request ensureProbeRequest() => $_ensure(14);

  @$pb.TagNumber(16)
  ProbeSector_Response get probeResponse => $_getN(15);
  @$pb.TagNumber(16)
  set probeResponse(ProbeSector_Response value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasProbeResponse() => $_has(15);
  @$pb.TagNumber(16)
  void clearProbeResponse() => $_clearField(16);
  @$pb.TagNumber(16)
  ProbeSector_Response ensureProbeResponse() => $_ensure(15);

  @$pb.TagNumber(17)
  SectorKey_List get keyList => $_getN(16);
  @$pb.TagNumber(17)
  set keyList(SectorKey_List value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasKeyList() => $_has(16);
  @$pb.TagNumber(17)
  void clearKeyList() => $_clearField(17);
  @$pb.TagNumber(17)
  SectorKey_List ensureKeyList() => $_ensure(16);

  @$pb.TagNumber(18)
  CrackCardData get crackCardData => $_getN(17);
  @$pb.TagNumber(18)
  set crackCardData(CrackCardData value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasCrackCardData() => $_has(17);
  @$pb.TagNumber(18)
  void clearCrackCardData() => $_clearField(18);
  @$pb.TagNumber(18)
  CrackCardData ensureCrackCardData() => $_ensure(17);

  @$pb.TagNumber(19)
  CardSwitcher_Smart get cardSwitcherSmart => $_getN(18);
  @$pb.TagNumber(19)
  set cardSwitcherSmart(CardSwitcher_Smart value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasCardSwitcherSmart() => $_has(18);
  @$pb.TagNumber(19)
  void clearCardSwitcherSmart() => $_clearField(19);
  @$pb.TagNumber(19)
  CardSwitcher_Smart ensureCardSwitcherSmart() => $_ensure(18);
}

class IssueCard extends $pb.GeneratedMessage {
  factory IssueCard({
    IssueCardStatus? status,
    IssueCardType? type,
    $core.bool? needReadCard,
    $core.String? iconUrl,
    $core.String? sid,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (type != null) result.type = type;
    if (needReadCard != null) result.needReadCard = needReadCard;
    if (iconUrl != null) result.iconUrl = iconUrl;
    if (sid != null) result.sid = sid;
    return result;
  }

  IssueCard._();

  factory IssueCard.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IssueCard.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IssueCard',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<IssueCardStatus>(1, _omitFieldNames ? '' : 'status',
        fieldType: $pb.PbFieldType.QE, enumValues: IssueCardStatus.values)
    ..aE<IssueCardType>(2, _omitFieldNames ? '' : 'type',
        enumValues: IssueCardType.values)
    ..aOB(3, _omitFieldNames ? '' : 'needReadCard')
    ..aQS(4, _omitFieldNames ? '' : 'iconUrl')
    ..aQS(5, _omitFieldNames ? '' : 'sid');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IssueCard clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IssueCard copyWith(void Function(IssueCard) updates) =>
      super.copyWith((message) => updates(message as IssueCard)) as IssueCard;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IssueCard create() => IssueCard._();
  @$core.override
  IssueCard createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IssueCard getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IssueCard>(create);
  static IssueCard? _defaultInstance;

  @$pb.TagNumber(1)
  IssueCardStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(IssueCardStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  IssueCardType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(IssueCardType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get needReadCard => $_getBF(2);
  @$pb.TagNumber(3)
  set needReadCard($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNeedReadCard() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedReadCard() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get iconUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set iconUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIconUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearIconUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sid => $_getSZ(4);
  @$pb.TagNumber(5)
  set sid($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSid() => $_has(4);
  @$pb.TagNumber(5)
  void clearSid() => $_clearField(5);
}

class CardData extends $pb.GeneratedMessage {
  factory CardData({
    $core.List<$core.int>? uid,
    $core.int? sak,
    $core.List<$core.int>? atqa,
    $core.int? size,
    $core.String? content,
  }) {
    final result = create();
    if (uid != null) result.uid = uid;
    if (sak != null) result.sak = sak;
    if (atqa != null) result.atqa = atqa;
    if (size != null) result.size = size;
    if (content != null) result.content = content;
    return result;
  }

  CardData._();

  factory CardData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'uid', $pb.PbFieldType.QY)
    ..aI(2, _omitFieldNames ? '' : 'sak', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'atqa', $pb.PbFieldType.QY)
    ..aI(4, _omitFieldNames ? '' : 'size', fieldType: $pb.PbFieldType.QU3)
    ..aQS(5, _omitFieldNames ? '' : 'content');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardData copyWith(void Function(CardData) updates) =>
      super.copyWith((message) => updates(message as CardData)) as CardData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardData create() => CardData._();
  @$core.override
  CardData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardData>(create);
  static CardData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get uid => $_getN(0);
  @$pb.TagNumber(1)
  set uid($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get sak => $_getIZ(1);
  @$pb.TagNumber(2)
  set sak($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSak() => $_has(1);
  @$pb.TagNumber(2)
  void clearSak() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get atqa => $_getN(2);
  @$pb.TagNumber(3)
  set atqa($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAtqa() => $_has(2);
  @$pb.TagNumber(3)
  void clearAtqa() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get size => $_getIZ(3);
  @$pb.TagNumber(4)
  set size($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get content => $_getSZ(4);
  @$pb.TagNumber(5)
  set content($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => $_clearField(5);
}

class CardInfo_TlvHciRule extends $pb.GeneratedMessage {
  factory CardInfo_TlvHciRule({
    $core.String? aid,
    $core.int? dataOffset,
    $core.String? hciPrefix,
    $core.Iterable<$core.String>? tradeAmountTags,
    $core.int? tradeAmountOffset,
    $core.Iterable<$core.String>? balanceTags,
    $core.int? balanceOffset,
  }) {
    final result = create();
    if (aid != null) result.aid = aid;
    if (dataOffset != null) result.dataOffset = dataOffset;
    if (hciPrefix != null) result.hciPrefix = hciPrefix;
    if (tradeAmountTags != null) result.tradeAmountTags.addAll(tradeAmountTags);
    if (tradeAmountOffset != null) result.tradeAmountOffset = tradeAmountOffset;
    if (balanceTags != null) result.balanceTags.addAll(balanceTags);
    if (balanceOffset != null) result.balanceOffset = balanceOffset;
    return result;
  }

  CardInfo_TlvHciRule._();

  factory CardInfo_TlvHciRule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardInfo_TlvHciRule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardInfo.TlvHciRule',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'aid')
    ..aI(2, _omitFieldNames ? '' : 'dataOffset', fieldType: $pb.PbFieldType.QU3)
    ..aQS(3, _omitFieldNames ? '' : 'hciPrefix')
    ..pPS(4, _omitFieldNames ? '' : 'tradeAmountTags')
    ..aI(5, _omitFieldNames ? '' : 'tradeAmountOffset',
        fieldType: $pb.PbFieldType.OU3)
    ..pPS(6, _omitFieldNames ? '' : 'balanceTags')
    ..aI(7, _omitFieldNames ? '' : 'balanceOffset',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardInfo_TlvHciRule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardInfo_TlvHciRule copyWith(void Function(CardInfo_TlvHciRule) updates) =>
      super.copyWith((message) => updates(message as CardInfo_TlvHciRule))
          as CardInfo_TlvHciRule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardInfo_TlvHciRule create() => CardInfo_TlvHciRule._();
  @$core.override
  CardInfo_TlvHciRule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardInfo_TlvHciRule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardInfo_TlvHciRule>(create);
  static CardInfo_TlvHciRule? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get aid => $_getSZ(0);
  @$pb.TagNumber(1)
  set aid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get dataOffset => $_getIZ(1);
  @$pb.TagNumber(2)
  set dataOffset($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDataOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataOffset() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get hciPrefix => $_getSZ(2);
  @$pb.TagNumber(3)
  set hciPrefix($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHciPrefix() => $_has(2);
  @$pb.TagNumber(3)
  void clearHciPrefix() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get tradeAmountTags => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get tradeAmountOffset => $_getIZ(4);
  @$pb.TagNumber(5)
  set tradeAmountOffset($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTradeAmountOffset() => $_has(4);
  @$pb.TagNumber(5)
  void clearTradeAmountOffset() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get balanceTags => $_getList(5);

  @$pb.TagNumber(7)
  $core.int get balanceOffset => $_getIZ(6);
  @$pb.TagNumber(7)
  set balanceOffset($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBalanceOffset() => $_has(6);
  @$pb.TagNumber(7)
  void clearBalanceOffset() => $_clearField(7);
}

class CardInfo_List extends $pb.GeneratedMessage {
  factory CardInfo_List({
    $core.Iterable<CardInfo>? list,
    $core.bool? full,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (full != null) result.full = full;
    return result;
  }

  CardInfo_List._();

  factory CardInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<CardInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: CardInfo.create)
    ..aOB(2, _omitFieldNames ? '' : 'full');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardInfo_List copyWith(void Function(CardInfo_List) updates) =>
      super.copyWith((message) => updates(message as CardInfo_List))
          as CardInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardInfo_List create() => CardInfo_List._();
  @$core.override
  CardInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardInfo_List>(create);
  static CardInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CardInfo> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get full => $_getBF(1);
  @$pb.TagNumber(2)
  set full($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFull() => $_has(1);
  @$pb.TagNumber(2)
  void clearFull() => $_clearField(2);
}

class CardInfo extends $pb.GeneratedMessage {
  factory CardInfo({
    IssueCardType? type,
    $core.String? aid,
    $core.String? name,
    $core.String? iconUrl,
    $core.String? sid,
    $core.int? balance,
    $core.bool? supportHci,
    $core.int? tradeLength,
    $core.int? tradeOffset,
    $core.int? balanceOffset,
    $core.Iterable<CardInfo_TlvHciRule>? tlvHciRule,
    $core.Iterable<$core.String>? balanceCommand,
    $core.List<$core.int>? carKeyId,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (aid != null) result.aid = aid;
    if (name != null) result.name = name;
    if (iconUrl != null) result.iconUrl = iconUrl;
    if (sid != null) result.sid = sid;
    if (balance != null) result.balance = balance;
    if (supportHci != null) result.supportHci = supportHci;
    if (tradeLength != null) result.tradeLength = tradeLength;
    if (tradeOffset != null) result.tradeOffset = tradeOffset;
    if (balanceOffset != null) result.balanceOffset = balanceOffset;
    if (tlvHciRule != null) result.tlvHciRule.addAll(tlvHciRule);
    if (balanceCommand != null) result.balanceCommand.addAll(balanceCommand);
    if (carKeyId != null) result.carKeyId = carKeyId;
    return result;
  }

  CardInfo._();

  factory CardInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<IssueCardType>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: IssueCardType.values)
    ..aQS(2, _omitFieldNames ? '' : 'aid')
    ..aQS(3, _omitFieldNames ? '' : 'name')
    ..aQS(4, _omitFieldNames ? '' : 'iconUrl')
    ..aQS(5, _omitFieldNames ? '' : 'sid')
    ..aI(6, _omitFieldNames ? '' : 'balance', fieldType: $pb.PbFieldType.OU3)
    ..aOB(7, _omitFieldNames ? '' : 'supportHci')
    ..aI(8, _omitFieldNames ? '' : 'tradeLength',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'tradeOffset',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'balanceOffset',
        fieldType: $pb.PbFieldType.OU3)
    ..pPM<CardInfo_TlvHciRule>(11, _omitFieldNames ? '' : 'tlvHciRule',
        subBuilder: CardInfo_TlvHciRule.create)
    ..pPS(12, _omitFieldNames ? '' : 'balanceCommand')
    ..a<$core.List<$core.int>>(
        13, _omitFieldNames ? '' : 'carKeyId', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardInfo copyWith(void Function(CardInfo) updates) =>
      super.copyWith((message) => updates(message as CardInfo)) as CardInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardInfo create() => CardInfo._();
  @$core.override
  CardInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardInfo>(create);
  static CardInfo? _defaultInstance;

  @$pb.TagNumber(1)
  IssueCardType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(IssueCardType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get aid => $_getSZ(1);
  @$pb.TagNumber(2)
  set aid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get iconUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set iconUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIconUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearIconUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sid => $_getSZ(4);
  @$pb.TagNumber(5)
  set sid($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSid() => $_has(4);
  @$pb.TagNumber(5)
  void clearSid() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get balance => $_getIZ(5);
  @$pb.TagNumber(6)
  set balance($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBalance() => $_has(5);
  @$pb.TagNumber(6)
  void clearBalance() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get supportHci => $_getBF(6);
  @$pb.TagNumber(7)
  set supportHci($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSupportHci() => $_has(6);
  @$pb.TagNumber(7)
  void clearSupportHci() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get tradeLength => $_getIZ(7);
  @$pb.TagNumber(8)
  set tradeLength($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTradeLength() => $_has(7);
  @$pb.TagNumber(8)
  void clearTradeLength() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get tradeOffset => $_getIZ(8);
  @$pb.TagNumber(9)
  set tradeOffset($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTradeOffset() => $_has(8);
  @$pb.TagNumber(9)
  void clearTradeOffset() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get balanceOffset => $_getIZ(9);
  @$pb.TagNumber(10)
  set balanceOffset($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasBalanceOffset() => $_has(9);
  @$pb.TagNumber(10)
  void clearBalanceOffset() => $_clearField(10);

  @$pb.TagNumber(11)
  $pb.PbList<CardInfo_TlvHciRule> get tlvHciRule => $_getList(10);

  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get balanceCommand => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<$core.int> get carKeyId => $_getN(12);
  @$pb.TagNumber(13)
  set carKeyId($core.List<$core.int> value) => $_setBytes(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCarKeyId() => $_has(12);
  @$pb.TagNumber(13)
  void clearCarKeyId() => $_clearField(13);
}

class BalanceInfo extends $pb.GeneratedMessage {
  factory BalanceInfo({
    $core.String? aid,
    $core.int? balance,
  }) {
    final result = create();
    if (aid != null) result.aid = aid;
    if (balance != null) result.balance = balance;
    return result;
  }

  BalanceInfo._();

  factory BalanceInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BalanceInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BalanceInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'aid')
    ..aI(2, _omitFieldNames ? '' : 'balance', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BalanceInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BalanceInfo copyWith(void Function(BalanceInfo) updates) =>
      super.copyWith((message) => updates(message as BalanceInfo))
          as BalanceInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BalanceInfo create() => BalanceInfo._();
  @$core.override
  BalanceInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BalanceInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BalanceInfo>(create);
  static BalanceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get aid => $_getSZ(0);
  @$pb.TagNumber(1)
  set aid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get balance => $_getIZ(1);
  @$pb.TagNumber(2)
  set balance($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => $_clearField(2);
}

class CommandInfo_List extends $pb.GeneratedMessage {
  factory CommandInfo_List({
    $core.Iterable<CommandInfo>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  CommandInfo_List._();

  factory CommandInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommandInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommandInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<CommandInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: CommandInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandInfo_List copyWith(void Function(CommandInfo_List) updates) =>
      super.copyWith((message) => updates(message as CommandInfo_List))
          as CommandInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommandInfo_List create() => CommandInfo_List._();
  @$core.override
  CommandInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommandInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommandInfo_List>(create);
  static CommandInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CommandInfo> get list => $_getList(0);
}

class CommandInfo extends $pb.GeneratedMessage {
  factory CommandInfo({
    $core.List<$core.int>? data,
    $core.String? expectStatus,
  }) {
    final result = create();
    if (data != null) result.data = data;
    if (expectStatus != null) result.expectStatus = expectStatus;
    return result;
  }

  CommandInfo._();

  factory CommandInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommandInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommandInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.QY)
    ..aQS(2, _omitFieldNames ? '' : 'expectStatus');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandInfo copyWith(void Function(CommandInfo) updates) =>
      super.copyWith((message) => updates(message as CommandInfo))
          as CommandInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommandInfo create() => CommandInfo._();
  @$core.override
  CommandInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommandInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommandInfo>(create);
  static CommandInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get expectStatus => $_getSZ(1);
  @$pb.TagNumber(2)
  set expectStatus($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExpectStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpectStatus() => $_clearField(2);
}

class CardSwitcher_List extends $pb.GeneratedMessage {
  factory CardSwitcher_List({
    $core.Iterable<CardSwitcher>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  CardSwitcher_List._();

  factory CardSwitcher_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardSwitcher_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardSwitcher.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<CardSwitcher>(1, _omitFieldNames ? '' : 'list',
        subBuilder: CardSwitcher.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardSwitcher_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardSwitcher_List copyWith(void Function(CardSwitcher_List) updates) =>
      super.copyWith((message) => updates(message as CardSwitcher_List))
          as CardSwitcher_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardSwitcher_List create() => CardSwitcher_List._();
  @$core.override
  CardSwitcher_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardSwitcher_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardSwitcher_List>(create);
  static CardSwitcher_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CardSwitcher> get list => $_getList(0);
}

class CardSwitcher_Result extends $pb.GeneratedMessage {
  factory CardSwitcher_Result({
    $core.int? code,
    $core.String? conflictAid,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (conflictAid != null) result.conflictAid = conflictAid;
    return result;
  }

  CardSwitcher_Result._();

  factory CardSwitcher_Result.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardSwitcher_Result.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardSwitcher.Result',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'conflictAid');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardSwitcher_Result clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardSwitcher_Result copyWith(void Function(CardSwitcher_Result) updates) =>
      super.copyWith((message) => updates(message as CardSwitcher_Result))
          as CardSwitcher_Result;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardSwitcher_Result create() => CardSwitcher_Result._();
  @$core.override
  CardSwitcher_Result createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardSwitcher_Result getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardSwitcher_Result>(create);
  static CardSwitcher_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get conflictAid => $_getSZ(1);
  @$pb.TagNumber(2)
  set conflictAid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasConflictAid() => $_has(1);
  @$pb.TagNumber(2)
  void clearConflictAid() => $_clearField(2);
}

class CardSwitcher_Smart extends $pb.GeneratedMessage {
  factory CardSwitcher_Smart({
    $core.bool? enabled,
    $core.Iterable<$core.String>? aid,
  }) {
    final result = create();
    if (enabled != null) result.enabled = enabled;
    if (aid != null) result.aid.addAll(aid);
    return result;
  }

  CardSwitcher_Smart._();

  factory CardSwitcher_Smart.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardSwitcher_Smart.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardSwitcher.Smart',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'enabled', $pb.PbFieldType.QB)
    ..pPS(2, _omitFieldNames ? '' : 'aid');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardSwitcher_Smart clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardSwitcher_Smart copyWith(void Function(CardSwitcher_Smart) updates) =>
      super.copyWith((message) => updates(message as CardSwitcher_Smart))
          as CardSwitcher_Smart;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardSwitcher_Smart create() => CardSwitcher_Smart._();
  @$core.override
  CardSwitcher_Smart createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardSwitcher_Smart getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardSwitcher_Smart>(create);
  static CardSwitcher_Smart? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get aid => $_getList(1);
}

class CardSwitcher extends $pb.GeneratedMessage {
  factory CardSwitcher({
    $core.String? aid,
    $core.Iterable<$0.Time>? time,
  }) {
    final result = create();
    if (aid != null) result.aid = aid;
    if (time != null) result.time.addAll(time);
    return result;
  }

  CardSwitcher._();

  factory CardSwitcher.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardSwitcher.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardSwitcher',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'aid')
    ..pPM<$0.Time>(2, _omitFieldNames ? '' : 'time',
        subBuilder: $0.Time.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardSwitcher clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardSwitcher copyWith(void Function(CardSwitcher) updates) =>
      super.copyWith((message) => updates(message as CardSwitcher))
          as CardSwitcher;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardSwitcher create() => CardSwitcher._();
  @$core.override
  CardSwitcher createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardSwitcher getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardSwitcher>(create);
  static CardSwitcher? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get aid => $_getSZ(0);
  @$pb.TagNumber(1)
  set aid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.Time> get time => $_getList(1);
}

class BasicCardData extends $pb.GeneratedMessage {
  factory BasicCardData({
    $core.List<$core.int>? uid,
    $core.int? sak,
    $core.List<$core.int>? atqa,
    $core.int? size,
  }) {
    final result = create();
    if (uid != null) result.uid = uid;
    if (sak != null) result.sak = sak;
    if (atqa != null) result.atqa = atqa;
    if (size != null) result.size = size;
    return result;
  }

  BasicCardData._();

  factory BasicCardData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BasicCardData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BasicCardData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'uid', $pb.PbFieldType.QY)
    ..aI(2, _omitFieldNames ? '' : 'sak', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'atqa', $pb.PbFieldType.QY)
    ..aI(4, _omitFieldNames ? '' : 'size', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicCardData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicCardData copyWith(void Function(BasicCardData) updates) =>
      super.copyWith((message) => updates(message as BasicCardData))
          as BasicCardData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicCardData create() => BasicCardData._();
  @$core.override
  BasicCardData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BasicCardData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BasicCardData>(create);
  static BasicCardData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get uid => $_getN(0);
  @$pb.TagNumber(1)
  set uid($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get sak => $_getIZ(1);
  @$pb.TagNumber(2)
  set sak($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSak() => $_has(1);
  @$pb.TagNumber(2)
  void clearSak() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get atqa => $_getN(2);
  @$pb.TagNumber(3)
  set atqa($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAtqa() => $_has(2);
  @$pb.TagNumber(3)
  void clearAtqa() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get size => $_getIZ(3);
  @$pb.TagNumber(4)
  set size($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => $_clearField(4);
}

class Sector extends $pb.GeneratedMessage {
  factory Sector({
    $core.int? index,
    $core.bool? enctypted,
    $core.List<$core.int>? keyA,
    $core.List<$core.int>? keyB,
    $core.List<$core.int>? content,
  }) {
    final result = create();
    if (index != null) result.index = index;
    if (enctypted != null) result.enctypted = enctypted;
    if (keyA != null) result.keyA = keyA;
    if (keyB != null) result.keyB = keyB;
    if (content != null) result.content = content;
    return result;
  }

  Sector._();

  factory Sector.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Sector.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Sector',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'index', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'enctypted', $pb.PbFieldType.QB)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'keyA', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'keyB', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Sector clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Sector copyWith(void Function(Sector) updates) =>
      super.copyWith((message) => updates(message as Sector)) as Sector;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Sector create() => Sector._();
  @$core.override
  Sector createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Sector getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sector>(create);
  static Sector? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enctypted => $_getBF(1);
  @$pb.TagNumber(2)
  set enctypted($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnctypted() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnctypted() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get keyA => $_getN(2);
  @$pb.TagNumber(3)
  set keyA($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasKeyA() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyA() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get keyB => $_getN(3);
  @$pb.TagNumber(4)
  set keyB($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasKeyB() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyB() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get content => $_getN(4);
  @$pb.TagNumber(5)
  set content($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => $_clearField(5);
}

class SuperCardData extends $pb.GeneratedMessage {
  factory SuperCardData({
    BasicCardData? basicCardData,
    $core.Iterable<Sector>? sectors,
  }) {
    final result = create();
    if (basicCardData != null) result.basicCardData = basicCardData;
    if (sectors != null) result.sectors.addAll(sectors);
    return result;
  }

  SuperCardData._();

  factory SuperCardData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SuperCardData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SuperCardData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<BasicCardData>(1, _omitFieldNames ? '' : 'basicCardData',
        subBuilder: BasicCardData.create)
    ..pPM<Sector>(2, _omitFieldNames ? '' : 'sectors',
        subBuilder: Sector.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SuperCardData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SuperCardData copyWith(void Function(SuperCardData) updates) =>
      super.copyWith((message) => updates(message as SuperCardData))
          as SuperCardData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuperCardData create() => SuperCardData._();
  @$core.override
  SuperCardData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SuperCardData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SuperCardData>(create);
  static SuperCardData? _defaultInstance;

  @$pb.TagNumber(1)
  BasicCardData get basicCardData => $_getN(0);
  @$pb.TagNumber(1)
  set basicCardData(BasicCardData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBasicCardData() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasicCardData() => $_clearField(1);
  @$pb.TagNumber(1)
  BasicCardData ensureBasicCardData() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<Sector> get sectors => $_getList(1);
}

class ProbeSector_KeyInfo extends $pb.GeneratedMessage {
  factory ProbeSector_KeyInfo({
    $core.bool? foundKeyA,
    $core.bool? foundKeyB,
    $core.List<$core.int>? keyAList,
    $core.List<$core.int>? keyBList,
  }) {
    final result = create();
    if (foundKeyA != null) result.foundKeyA = foundKeyA;
    if (foundKeyB != null) result.foundKeyB = foundKeyB;
    if (keyAList != null) result.keyAList = keyAList;
    if (keyBList != null) result.keyBList = keyBList;
    return result;
  }

  ProbeSector_KeyInfo._();

  factory ProbeSector_KeyInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProbeSector_KeyInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProbeSector.KeyInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'foundKeyA', $pb.PbFieldType.QB)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'foundKeyB', $pb.PbFieldType.QB)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'keyAList', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'keyBList', $pb.PbFieldType.OY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_KeyInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_KeyInfo copyWith(void Function(ProbeSector_KeyInfo) updates) =>
      super.copyWith((message) => updates(message as ProbeSector_KeyInfo))
          as ProbeSector_KeyInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProbeSector_KeyInfo create() => ProbeSector_KeyInfo._();
  @$core.override
  ProbeSector_KeyInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProbeSector_KeyInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProbeSector_KeyInfo>(create);
  static ProbeSector_KeyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get foundKeyA => $_getBF(0);
  @$pb.TagNumber(1)
  set foundKeyA($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFoundKeyA() => $_has(0);
  @$pb.TagNumber(1)
  void clearFoundKeyA() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get foundKeyB => $_getBF(1);
  @$pb.TagNumber(2)
  set foundKeyB($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFoundKeyB() => $_has(1);
  @$pb.TagNumber(2)
  void clearFoundKeyB() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get keyAList => $_getN(2);
  @$pb.TagNumber(3)
  set keyAList($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasKeyAList() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyAList() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get keyBList => $_getN(3);
  @$pb.TagNumber(4)
  set keyBList($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasKeyBList() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyBList() => $_clearField(4);
}

class ProbeSector_Tag extends $pb.GeneratedMessage {
  factory ProbeSector_Tag({
    $core.int? authUid,
    $core.int? index,
    ProbeSector_KeyInfo? keyInfo,
  }) {
    final result = create();
    if (authUid != null) result.authUid = authUid;
    if (index != null) result.index = index;
    if (keyInfo != null) result.keyInfo = keyInfo;
    return result;
  }

  ProbeSector_Tag._();

  factory ProbeSector_Tag.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProbeSector_Tag.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProbeSector.Tag',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'authUid', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'index', fieldType: $pb.PbFieldType.QU3)
    ..aQM<ProbeSector_KeyInfo>(3, _omitFieldNames ? '' : 'keyInfo',
        subBuilder: ProbeSector_KeyInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Tag clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Tag copyWith(void Function(ProbeSector_Tag) updates) =>
      super.copyWith((message) => updates(message as ProbeSector_Tag))
          as ProbeSector_Tag;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProbeSector_Tag create() => ProbeSector_Tag._();
  @$core.override
  ProbeSector_Tag createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProbeSector_Tag getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProbeSector_Tag>(create);
  static ProbeSector_Tag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get authUid => $_getIZ(0);
  @$pb.TagNumber(1)
  set authUid($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAuthUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  ProbeSector_KeyInfo get keyInfo => $_getN(2);
  @$pb.TagNumber(3)
  set keyInfo(ProbeSector_KeyInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKeyInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  ProbeSector_KeyInfo ensureKeyInfo() => $_ensure(2);
}

class ProbeSector_Nonce extends $pb.GeneratedMessage {
  factory ProbeSector_Nonce({
    $core.int? median,
    $core.int? deviation,
    $core.Iterable<$core.int>? distances,
  }) {
    final result = create();
    if (median != null) result.median = median;
    if (deviation != null) result.deviation = deviation;
    if (distances != null) result.distances.addAll(distances);
    return result;
  }

  ProbeSector_Nonce._();

  factory ProbeSector_Nonce.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProbeSector_Nonce.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProbeSector.Nonce',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'median', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'deviation', fieldType: $pb.PbFieldType.QU3)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'distances', $pb.PbFieldType.PU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Nonce clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Nonce copyWith(void Function(ProbeSector_Nonce) updates) =>
      super.copyWith((message) => updates(message as ProbeSector_Nonce))
          as ProbeSector_Nonce;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProbeSector_Nonce create() => ProbeSector_Nonce._();
  @$core.override
  ProbeSector_Nonce createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProbeSector_Nonce getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProbeSector_Nonce>(create);
  static ProbeSector_Nonce? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get median => $_getIZ(0);
  @$pb.TagNumber(1)
  set median($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMedian() => $_has(0);
  @$pb.TagNumber(1)
  void clearMedian() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get deviation => $_getIZ(1);
  @$pb.TagNumber(2)
  set deviation($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviation() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviation() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get distances => $_getList(2);
}

class ProbeSector_Data extends $pb.GeneratedMessage {
  factory ProbeSector_Data({
    $core.int? median,
    $core.int? deviation,
    $core.int? nt,
    $core.int? nte,
    $core.List<$core.int>? parity,
  }) {
    final result = create();
    if (median != null) result.median = median;
    if (deviation != null) result.deviation = deviation;
    if (nt != null) result.nt = nt;
    if (nte != null) result.nte = nte;
    if (parity != null) result.parity = parity;
    return result;
  }

  ProbeSector_Data._();

  factory ProbeSector_Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProbeSector_Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProbeSector.Data',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'median', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'deviation', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'nt', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'nte', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'parity', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Data clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Data copyWith(void Function(ProbeSector_Data) updates) =>
      super.copyWith((message) => updates(message as ProbeSector_Data))
          as ProbeSector_Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProbeSector_Data create() => ProbeSector_Data._();
  @$core.override
  ProbeSector_Data createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProbeSector_Data getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProbeSector_Data>(create);
  static ProbeSector_Data? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get median => $_getIZ(0);
  @$pb.TagNumber(1)
  set median($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMedian() => $_has(0);
  @$pb.TagNumber(1)
  void clearMedian() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get deviation => $_getIZ(1);
  @$pb.TagNumber(2)
  set deviation($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviation() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviation() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get nt => $_getIZ(2);
  @$pb.TagNumber(3)
  set nt($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNt() => $_has(2);
  @$pb.TagNumber(3)
  void clearNt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get nte => $_getIZ(3);
  @$pb.TagNumber(4)
  set nte($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNte() => $_has(3);
  @$pb.TagNumber(4)
  void clearNte() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get parity => $_getN(4);
  @$pb.TagNumber(5)
  set parity($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasParity() => $_has(4);
  @$pb.TagNumber(5)
  void clearParity() => $_clearField(5);
}

class ProbeSector_Request extends $pb.GeneratedMessage {
  factory ProbeSector_Request({
    $core.int? index,
    $core.int? mode,
    ProbeSector_Tag? tag,
    ProbeSector_Nonce? nonce,
    $core.bool? dumpKeyA,
  }) {
    final result = create();
    if (index != null) result.index = index;
    if (mode != null) result.mode = mode;
    if (tag != null) result.tag = tag;
    if (nonce != null) result.nonce = nonce;
    if (dumpKeyA != null) result.dumpKeyA = dumpKeyA;
    return result;
  }

  ProbeSector_Request._();

  factory ProbeSector_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProbeSector_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProbeSector.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'index', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'mode', fieldType: $pb.PbFieldType.QU3)
    ..aQM<ProbeSector_Tag>(3, _omitFieldNames ? '' : 'tag',
        subBuilder: ProbeSector_Tag.create)
    ..aQM<ProbeSector_Nonce>(4, _omitFieldNames ? '' : 'nonce',
        subBuilder: ProbeSector_Nonce.create)
    ..a<$core.bool>(5, _omitFieldNames ? '' : 'dumpKeyA', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Request copyWith(void Function(ProbeSector_Request) updates) =>
      super.copyWith((message) => updates(message as ProbeSector_Request))
          as ProbeSector_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProbeSector_Request create() => ProbeSector_Request._();
  @$core.override
  ProbeSector_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProbeSector_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProbeSector_Request>(create);
  static ProbeSector_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get mode => $_getIZ(1);
  @$pb.TagNumber(2)
  set mode($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => $_clearField(2);

  @$pb.TagNumber(3)
  ProbeSector_Tag get tag => $_getN(2);
  @$pb.TagNumber(3)
  set tag(ProbeSector_Tag value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTag() => $_has(2);
  @$pb.TagNumber(3)
  void clearTag() => $_clearField(3);
  @$pb.TagNumber(3)
  ProbeSector_Tag ensureTag() => $_ensure(2);

  @$pb.TagNumber(4)
  ProbeSector_Nonce get nonce => $_getN(3);
  @$pb.TagNumber(4)
  set nonce(ProbeSector_Nonce value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasNonce() => $_has(3);
  @$pb.TagNumber(4)
  void clearNonce() => $_clearField(4);
  @$pb.TagNumber(4)
  ProbeSector_Nonce ensureNonce() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get dumpKeyA => $_getBF(4);
  @$pb.TagNumber(5)
  set dumpKeyA($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDumpKeyA() => $_has(4);
  @$pb.TagNumber(5)
  void clearDumpKeyA() => $_clearField(5);
}

class ProbeSector_Response extends $pb.GeneratedMessage {
  factory ProbeSector_Response({
    $core.int? code,
    ProbeSector_Nonce? nonce,
    ProbeSector_Data? data,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (nonce != null) result.nonce = nonce;
    if (data != null) result.data = data;
    return result;
  }

  ProbeSector_Response._();

  factory ProbeSector_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProbeSector_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProbeSector.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.Q3)
    ..aOM<ProbeSector_Nonce>(2, _omitFieldNames ? '' : 'nonce',
        subBuilder: ProbeSector_Nonce.create)
    ..aOM<ProbeSector_Data>(3, _omitFieldNames ? '' : 'data',
        subBuilder: ProbeSector_Data.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector_Response copyWith(void Function(ProbeSector_Response) updates) =>
      super.copyWith((message) => updates(message as ProbeSector_Response))
          as ProbeSector_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProbeSector_Response create() => ProbeSector_Response._();
  @$core.override
  ProbeSector_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProbeSector_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProbeSector_Response>(create);
  static ProbeSector_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  ProbeSector_Nonce get nonce => $_getN(1);
  @$pb.TagNumber(2)
  set nonce(ProbeSector_Nonce value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNonce() => $_has(1);
  @$pb.TagNumber(2)
  void clearNonce() => $_clearField(2);
  @$pb.TagNumber(2)
  ProbeSector_Nonce ensureNonce() => $_ensure(1);

  @$pb.TagNumber(3)
  ProbeSector_Data get data => $_getN(2);
  @$pb.TagNumber(3)
  set data(ProbeSector_Data value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => $_clearField(3);
  @$pb.TagNumber(3)
  ProbeSector_Data ensureData() => $_ensure(2);
}

class ProbeSector extends $pb.GeneratedMessage {
  factory ProbeSector() => create();

  ProbeSector._();

  factory ProbeSector.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProbeSector.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProbeSector',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeSector copyWith(void Function(ProbeSector) updates) =>
      super.copyWith((message) => updates(message as ProbeSector))
          as ProbeSector;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProbeSector create() => ProbeSector._();
  @$core.override
  ProbeSector createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProbeSector getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProbeSector>(create);
  static ProbeSector? _defaultInstance;
}

class SectorKey_List extends $pb.GeneratedMessage {
  factory SectorKey_List({
    $core.Iterable<SectorKey>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  SectorKey_List._();

  factory SectorKey_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SectorKey_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SectorKey.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<SectorKey>(1, _omitFieldNames ? '' : 'list',
        subBuilder: SectorKey.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SectorKey_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SectorKey_List copyWith(void Function(SectorKey_List) updates) =>
      super.copyWith((message) => updates(message as SectorKey_List))
          as SectorKey_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SectorKey_List create() => SectorKey_List._();
  @$core.override
  SectorKey_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SectorKey_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SectorKey_List>(create);
  static SectorKey_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SectorKey> get list => $_getList(0);
}

class SectorKey extends $pb.GeneratedMessage {
  factory SectorKey({
    $core.int? index,
    $core.Iterable<$core.List<$core.int>>? keys,
  }) {
    final result = create();
    if (index != null) result.index = index;
    if (keys != null) result.keys.addAll(keys);
    return result;
  }

  SectorKey._();

  factory SectorKey.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SectorKey.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SectorKey',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'index', fieldType: $pb.PbFieldType.QU3)
    ..p<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'keys', $pb.PbFieldType.PY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SectorKey clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SectorKey copyWith(void Function(SectorKey) updates) =>
      super.copyWith((message) => updates(message as SectorKey)) as SectorKey;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SectorKey create() => SectorKey._();
  @$core.override
  SectorKey createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SectorKey getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SectorKey>(create);
  static SectorKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.List<$core.int>> get keys => $_getList(1);
}

class CrackSector extends $pb.GeneratedMessage {
  factory CrackSector({
    Sector? sector,
    $core.int? keyIndex,
  }) {
    final result = create();
    if (sector != null) result.sector = sector;
    if (keyIndex != null) result.keyIndex = keyIndex;
    return result;
  }

  CrackSector._();

  factory CrackSector.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CrackSector.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CrackSector',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<Sector>(1, _omitFieldNames ? '' : 'sector', subBuilder: Sector.create)
    ..aI(2, _omitFieldNames ? '' : 'keyIndex', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CrackSector clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CrackSector copyWith(void Function(CrackSector) updates) =>
      super.copyWith((message) => updates(message as CrackSector))
          as CrackSector;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CrackSector create() => CrackSector._();
  @$core.override
  CrackSector createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CrackSector getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CrackSector>(create);
  static CrackSector? _defaultInstance;

  @$pb.TagNumber(1)
  Sector get sector => $_getN(0);
  @$pb.TagNumber(1)
  set sector(Sector value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSector() => $_has(0);
  @$pb.TagNumber(1)
  void clearSector() => $_clearField(1);
  @$pb.TagNumber(1)
  Sector ensureSector() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get keyIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set keyIndex($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKeyIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyIndex() => $_clearField(2);
}

class CrackCardData extends $pb.GeneratedMessage {
  factory CrackCardData({
    BasicCardData? basicCardData,
    $core.Iterable<CrackSector>? crackSectors,
    $core.int? costTime,
  }) {
    final result = create();
    if (basicCardData != null) result.basicCardData = basicCardData;
    if (crackSectors != null) result.crackSectors.addAll(crackSectors);
    if (costTime != null) result.costTime = costTime;
    return result;
  }

  CrackCardData._();

  factory CrackCardData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CrackCardData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CrackCardData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<BasicCardData>(1, _omitFieldNames ? '' : 'basicCardData',
        subBuilder: BasicCardData.create)
    ..pPM<CrackSector>(2, _omitFieldNames ? '' : 'crackSectors',
        subBuilder: CrackSector.create)
    ..aI(3, _omitFieldNames ? '' : 'costTime', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CrackCardData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CrackCardData copyWith(void Function(CrackCardData) updates) =>
      super.copyWith((message) => updates(message as CrackCardData))
          as CrackCardData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CrackCardData create() => CrackCardData._();
  @$core.override
  CrackCardData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CrackCardData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CrackCardData>(create);
  static CrackCardData? _defaultInstance;

  @$pb.TagNumber(1)
  BasicCardData get basicCardData => $_getN(0);
  @$pb.TagNumber(1)
  set basicCardData(BasicCardData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBasicCardData() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasicCardData() => $_clearField(1);
  @$pb.TagNumber(1)
  BasicCardData ensureBasicCardData() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<CrackSector> get crackSectors => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get costTime => $_getIZ(2);
  @$pb.TagNumber(3)
  set costTime($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCostTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCostTime() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
