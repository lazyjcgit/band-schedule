// This is a generated file - do not edit.
//
// Generated from wear_aivs.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_aivs.pbenum.dart';
import 'wear_common.pbenum.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_aivs.pbenum.dart';

enum Aivs_Payload {
  instructionList,
  aivsConfig,
  imageConfig,
  multiModel,
  aivsStatus,
  aivsError,
  aflashSupportedLanguage,
  aflashConfirmResult,
  llmImageRequest,
  llmImageResponse,
  notSet
}

class Aivs extends $pb.GeneratedMessage {
  factory Aivs({
    AivsInstruction_List? instructionList,
    AivsConfig? aivsConfig,
    MediaConfig? imageConfig,
    MultiModal? multiModel,
    AivsStatus? aivsStatus,
    AivsError? aivsError,
    AFlash_SupportedLanguage? aflashSupportedLanguage,
    AFlash_ConfirmResult? aflashConfirmResult,
    LLM_IssueImage_Request? llmImageRequest,
    LLM_IssueImage_Response? llmImageResponse,
  }) {
    final result = create();
    if (instructionList != null) result.instructionList = instructionList;
    if (aivsConfig != null) result.aivsConfig = aivsConfig;
    if (imageConfig != null) result.imageConfig = imageConfig;
    if (multiModel != null) result.multiModel = multiModel;
    if (aivsStatus != null) result.aivsStatus = aivsStatus;
    if (aivsError != null) result.aivsError = aivsError;
    if (aflashSupportedLanguage != null)
      result.aflashSupportedLanguage = aflashSupportedLanguage;
    if (aflashConfirmResult != null)
      result.aflashConfirmResult = aflashConfirmResult;
    if (llmImageRequest != null) result.llmImageRequest = llmImageRequest;
    if (llmImageResponse != null) result.llmImageResponse = llmImageResponse;
    return result;
  }

  Aivs._();

  factory Aivs.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Aivs.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Aivs_Payload> _Aivs_PayloadByTag = {
    1: Aivs_Payload.instructionList,
    2: Aivs_Payload.aivsConfig,
    3: Aivs_Payload.imageConfig,
    4: Aivs_Payload.multiModel,
    5: Aivs_Payload.aivsStatus,
    6: Aivs_Payload.aivsError,
    7: Aivs_Payload.aflashSupportedLanguage,
    8: Aivs_Payload.aflashConfirmResult,
    9: Aivs_Payload.llmImageRequest,
    10: Aivs_Payload.llmImageResponse,
    0: Aivs_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Aivs',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOM<AivsInstruction_List>(1, _omitFieldNames ? '' : 'instructionList',
        subBuilder: AivsInstruction_List.create)
    ..aOM<AivsConfig>(2, _omitFieldNames ? '' : 'aivsConfig',
        subBuilder: AivsConfig.create)
    ..aOM<MediaConfig>(3, _omitFieldNames ? '' : 'imageConfig',
        subBuilder: MediaConfig.create)
    ..aOM<MultiModal>(4, _omitFieldNames ? '' : 'multiModel',
        subBuilder: MultiModal.create)
    ..aOM<AivsStatus>(5, _omitFieldNames ? '' : 'aivsStatus',
        subBuilder: AivsStatus.create)
    ..aOM<AivsError>(6, _omitFieldNames ? '' : 'aivsError',
        subBuilder: AivsError.create)
    ..aOM<AFlash_SupportedLanguage>(
        7, _omitFieldNames ? '' : 'aflashSupportedLanguage',
        subBuilder: AFlash_SupportedLanguage.create)
    ..aOM<AFlash_ConfirmResult>(8, _omitFieldNames ? '' : 'aflashConfirmResult',
        subBuilder: AFlash_ConfirmResult.create)
    ..aOM<LLM_IssueImage_Request>(9, _omitFieldNames ? '' : 'llmImageRequest',
        subBuilder: LLM_IssueImage_Request.create)
    ..aOM<LLM_IssueImage_Response>(
        10, _omitFieldNames ? '' : 'llmImageResponse',
        subBuilder: LLM_IssueImage_Response.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Aivs clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Aivs copyWith(void Function(Aivs) updates) =>
      super.copyWith((message) => updates(message as Aivs)) as Aivs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Aivs create() => Aivs._();
  @$core.override
  Aivs createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Aivs getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Aivs>(create);
  static Aivs? _defaultInstance;

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
  Aivs_Payload whichPayload() => _Aivs_PayloadByTag[$_whichOneof(0)]!;
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
  AivsInstruction_List get instructionList => $_getN(0);
  @$pb.TagNumber(1)
  set instructionList(AivsInstruction_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInstructionList() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstructionList() => $_clearField(1);
  @$pb.TagNumber(1)
  AivsInstruction_List ensureInstructionList() => $_ensure(0);

  @$pb.TagNumber(2)
  AivsConfig get aivsConfig => $_getN(1);
  @$pb.TagNumber(2)
  set aivsConfig(AivsConfig value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAivsConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearAivsConfig() => $_clearField(2);
  @$pb.TagNumber(2)
  AivsConfig ensureAivsConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  MediaConfig get imageConfig => $_getN(2);
  @$pb.TagNumber(3)
  set imageConfig(MediaConfig value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasImageConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageConfig() => $_clearField(3);
  @$pb.TagNumber(3)
  MediaConfig ensureImageConfig() => $_ensure(2);

  @$pb.TagNumber(4)
  MultiModal get multiModel => $_getN(3);
  @$pb.TagNumber(4)
  set multiModel(MultiModal value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMultiModel() => $_has(3);
  @$pb.TagNumber(4)
  void clearMultiModel() => $_clearField(4);
  @$pb.TagNumber(4)
  MultiModal ensureMultiModel() => $_ensure(3);

  @$pb.TagNumber(5)
  AivsStatus get aivsStatus => $_getN(4);
  @$pb.TagNumber(5)
  set aivsStatus(AivsStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAivsStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearAivsStatus() => $_clearField(5);
  @$pb.TagNumber(5)
  AivsStatus ensureAivsStatus() => $_ensure(4);

  @$pb.TagNumber(6)
  AivsError get aivsError => $_getN(5);
  @$pb.TagNumber(6)
  set aivsError(AivsError value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAivsError() => $_has(5);
  @$pb.TagNumber(6)
  void clearAivsError() => $_clearField(6);
  @$pb.TagNumber(6)
  AivsError ensureAivsError() => $_ensure(5);

  @$pb.TagNumber(7)
  AFlash_SupportedLanguage get aflashSupportedLanguage => $_getN(6);
  @$pb.TagNumber(7)
  set aflashSupportedLanguage(AFlash_SupportedLanguage value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAflashSupportedLanguage() => $_has(6);
  @$pb.TagNumber(7)
  void clearAflashSupportedLanguage() => $_clearField(7);
  @$pb.TagNumber(7)
  AFlash_SupportedLanguage ensureAflashSupportedLanguage() => $_ensure(6);

  @$pb.TagNumber(8)
  AFlash_ConfirmResult get aflashConfirmResult => $_getN(7);
  @$pb.TagNumber(8)
  set aflashConfirmResult(AFlash_ConfirmResult value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAflashConfirmResult() => $_has(7);
  @$pb.TagNumber(8)
  void clearAflashConfirmResult() => $_clearField(8);
  @$pb.TagNumber(8)
  AFlash_ConfirmResult ensureAflashConfirmResult() => $_ensure(7);

  @$pb.TagNumber(9)
  LLM_IssueImage_Request get llmImageRequest => $_getN(8);
  @$pb.TagNumber(9)
  set llmImageRequest(LLM_IssueImage_Request value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasLlmImageRequest() => $_has(8);
  @$pb.TagNumber(9)
  void clearLlmImageRequest() => $_clearField(9);
  @$pb.TagNumber(9)
  LLM_IssueImage_Request ensureLlmImageRequest() => $_ensure(8);

  @$pb.TagNumber(10)
  LLM_IssueImage_Response get llmImageResponse => $_getN(9);
  @$pb.TagNumber(10)
  set llmImageResponse(LLM_IssueImage_Response value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasLlmImageResponse() => $_has(9);
  @$pb.TagNumber(10)
  void clearLlmImageResponse() => $_clearField(10);
  @$pb.TagNumber(10)
  LLM_IssueImage_Response ensureLlmImageResponse() => $_ensure(9);
}

class AivsConfig extends $pb.GeneratedMessage {
  factory AivsConfig({
    $core.bool? enableTts,
  }) {
    final result = create();
    if (enableTts != null) result.enableTts = enableTts;
    return result;
  }

  AivsConfig._();

  factory AivsConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AivsConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AivsConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'enableTts', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsConfig copyWith(void Function(AivsConfig) updates) =>
      super.copyWith((message) => updates(message as AivsConfig)) as AivsConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AivsConfig create() => AivsConfig._();
  @$core.override
  AivsConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AivsConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AivsConfig>(create);
  static AivsConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enableTts => $_getBF(0);
  @$pb.TagNumber(1)
  set enableTts($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnableTts() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnableTts() => $_clearField(1);
}

class AivsInstruction_List extends $pb.GeneratedMessage {
  factory AivsInstruction_List({
    $core.Iterable<AivsInstruction>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  AivsInstruction_List._();

  factory AivsInstruction_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AivsInstruction_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AivsInstruction.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AivsInstruction>(1, _omitFieldNames ? '' : 'list',
        subBuilder: AivsInstruction.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsInstruction_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsInstruction_List copyWith(void Function(AivsInstruction_List) updates) =>
      super.copyWith((message) => updates(message as AivsInstruction_List))
          as AivsInstruction_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AivsInstruction_List create() => AivsInstruction_List._();
  @$core.override
  AivsInstruction_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AivsInstruction_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AivsInstruction_List>(create);
  static AivsInstruction_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AivsInstruction> get list => $_getList(0);
}

class AivsInstruction extends $pb.GeneratedMessage {
  factory AivsInstruction({
    ResultType? resultType,
    SpeechRecognizeResult? recognizeResult,
    TemplateToast? templateToast,
    TemplateGeneral? templateGeneral,
    TemplateGeneral2? templateGeneral2,
    TemplateWeather? templateWeather,
    TemplatePlayInfo? templatePlayinfo,
    TemplateLists? templateLists,
    TemplateSwitchPanel? templateSwitchpanel,
    AlertsSetAlert? alertsSetalert,
    SpeechSynthesizerSpeak? speechsynthesizerSpeak,
    $core.int? sessionId,
    LauncherLaunchApp? laucherLauchapp,
    TemplateSwitchPanelList? templateSwitchpanellist,
    BrightnessControllerAjustBrightness? brightnesscontrollerAjustbrightness,
    SystemSetProperty? systemSetproperty,
    ApplicationOperate? applicationOperate,
    AlertsDeliverAlertIntention? alertsDeliveralertintention,
    MediaErrorType? mediaErrortype,
    SpeakerSetMute? speakerSetmute,
    SpeakerSetVolume? speakerSetvolume,
    SpeakerAjustVolume? speakerAjustvolume,
    TemplateDeviceList? templateDevicelist,
    ExecuteDeviceSkill? executeDeviceskill,
    ShowContacts? showContacts,
    ShowContacts_ContactData? contactData,
    WearableController_Switch? wearableControllerSwitch,
    WearableController_Execute? wearableControllerExecute,
    LLM_LoadingCard? llmLoadingCard,
    LLM_DeclarationContent? llmDeclarationContent,
    LLM_IllegalContent? llmIllegalContent,
    LLM_ToastStream? llmToastStream,
    WearableController_Action? wearableControllerAction,
  }) {
    final result = create();
    if (resultType != null) result.resultType = resultType;
    if (recognizeResult != null) result.recognizeResult = recognizeResult;
    if (templateToast != null) result.templateToast = templateToast;
    if (templateGeneral != null) result.templateGeneral = templateGeneral;
    if (templateGeneral2 != null) result.templateGeneral2 = templateGeneral2;
    if (templateWeather != null) result.templateWeather = templateWeather;
    if (templatePlayinfo != null) result.templatePlayinfo = templatePlayinfo;
    if (templateLists != null) result.templateLists = templateLists;
    if (templateSwitchpanel != null)
      result.templateSwitchpanel = templateSwitchpanel;
    if (alertsSetalert != null) result.alertsSetalert = alertsSetalert;
    if (speechsynthesizerSpeak != null)
      result.speechsynthesizerSpeak = speechsynthesizerSpeak;
    if (sessionId != null) result.sessionId = sessionId;
    if (laucherLauchapp != null) result.laucherLauchapp = laucherLauchapp;
    if (templateSwitchpanellist != null)
      result.templateSwitchpanellist = templateSwitchpanellist;
    if (brightnesscontrollerAjustbrightness != null)
      result.brightnesscontrollerAjustbrightness =
          brightnesscontrollerAjustbrightness;
    if (systemSetproperty != null) result.systemSetproperty = systemSetproperty;
    if (applicationOperate != null)
      result.applicationOperate = applicationOperate;
    if (alertsDeliveralertintention != null)
      result.alertsDeliveralertintention = alertsDeliveralertintention;
    if (mediaErrortype != null) result.mediaErrortype = mediaErrortype;
    if (speakerSetmute != null) result.speakerSetmute = speakerSetmute;
    if (speakerSetvolume != null) result.speakerSetvolume = speakerSetvolume;
    if (speakerAjustvolume != null)
      result.speakerAjustvolume = speakerAjustvolume;
    if (templateDevicelist != null)
      result.templateDevicelist = templateDevicelist;
    if (executeDeviceskill != null)
      result.executeDeviceskill = executeDeviceskill;
    if (showContacts != null) result.showContacts = showContacts;
    if (contactData != null) result.contactData = contactData;
    if (wearableControllerSwitch != null)
      result.wearableControllerSwitch = wearableControllerSwitch;
    if (wearableControllerExecute != null)
      result.wearableControllerExecute = wearableControllerExecute;
    if (llmLoadingCard != null) result.llmLoadingCard = llmLoadingCard;
    if (llmDeclarationContent != null)
      result.llmDeclarationContent = llmDeclarationContent;
    if (llmIllegalContent != null) result.llmIllegalContent = llmIllegalContent;
    if (llmToastStream != null) result.llmToastStream = llmToastStream;
    if (wearableControllerAction != null)
      result.wearableControllerAction = wearableControllerAction;
    return result;
  }

  AivsInstruction._();

  factory AivsInstruction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AivsInstruction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AivsInstruction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ResultType>(1, _omitFieldNames ? '' : 'resultType',
        fieldType: $pb.PbFieldType.QE, enumValues: ResultType.values)
    ..aOM<SpeechRecognizeResult>(2, _omitFieldNames ? '' : 'recognizeResult',
        subBuilder: SpeechRecognizeResult.create)
    ..aOM<TemplateToast>(3, _omitFieldNames ? '' : 'templateToast',
        subBuilder: TemplateToast.create)
    ..aOM<TemplateGeneral>(4, _omitFieldNames ? '' : 'templateGeneral',
        subBuilder: TemplateGeneral.create)
    ..aOM<TemplateGeneral2>(5, _omitFieldNames ? '' : 'templateGeneral2',
        subBuilder: TemplateGeneral2.create)
    ..aOM<TemplateWeather>(6, _omitFieldNames ? '' : 'templateWeather',
        subBuilder: TemplateWeather.create)
    ..aOM<TemplatePlayInfo>(7, _omitFieldNames ? '' : 'templatePlayinfo',
        subBuilder: TemplatePlayInfo.create)
    ..aOM<TemplateLists>(8, _omitFieldNames ? '' : 'templateLists',
        subBuilder: TemplateLists.create)
    ..aOM<TemplateSwitchPanel>(9, _omitFieldNames ? '' : 'templateSwitchpanel',
        subBuilder: TemplateSwitchPanel.create)
    ..aOM<AlertsSetAlert>(10, _omitFieldNames ? '' : 'alertsSetalert',
        subBuilder: AlertsSetAlert.create)
    ..aOM<SpeechSynthesizerSpeak>(
        11, _omitFieldNames ? '' : 'speechsynthesizerSpeak',
        subBuilder: SpeechSynthesizerSpeak.create)
    ..aI(13, _omitFieldNames ? '' : 'sessionId', fieldType: $pb.PbFieldType.QU3)
    ..aOM<LauncherLaunchApp>(14, _omitFieldNames ? '' : 'laucherLauchapp',
        subBuilder: LauncherLaunchApp.create)
    ..aOM<TemplateSwitchPanelList>(
        15, _omitFieldNames ? '' : 'templateSwitchpanellist',
        subBuilder: TemplateSwitchPanelList.create)
    ..aOM<BrightnessControllerAjustBrightness>(
        16, _omitFieldNames ? '' : 'brightnesscontrollerAjustbrightness',
        subBuilder: BrightnessControllerAjustBrightness.create)
    ..aOM<SystemSetProperty>(17, _omitFieldNames ? '' : 'systemSetproperty',
        subBuilder: SystemSetProperty.create)
    ..aOM<ApplicationOperate>(18, _omitFieldNames ? '' : 'applicationOperate',
        subBuilder: ApplicationOperate.create)
    ..aOM<AlertsDeliverAlertIntention>(
        19, _omitFieldNames ? '' : 'alertsDeliveralertintention',
        subBuilder: AlertsDeliverAlertIntention.create)
    ..aE<MediaErrorType>(20, _omitFieldNames ? '' : 'mediaErrortype',
        enumValues: MediaErrorType.values)
    ..aOM<SpeakerSetMute>(21, _omitFieldNames ? '' : 'speakerSetmute',
        subBuilder: SpeakerSetMute.create)
    ..aOM<SpeakerSetVolume>(22, _omitFieldNames ? '' : 'speakerSetvolume',
        subBuilder: SpeakerSetVolume.create)
    ..aOM<SpeakerAjustVolume>(23, _omitFieldNames ? '' : 'speakerAjustvolume',
        subBuilder: SpeakerAjustVolume.create)
    ..aOM<TemplateDeviceList>(24, _omitFieldNames ? '' : 'templateDevicelist',
        subBuilder: TemplateDeviceList.create)
    ..aOM<ExecuteDeviceSkill>(25, _omitFieldNames ? '' : 'executeDeviceskill',
        subBuilder: ExecuteDeviceSkill.create)
    ..aOM<ShowContacts>(26, _omitFieldNames ? '' : 'showContacts',
        subBuilder: ShowContacts.create)
    ..aOM<ShowContacts_ContactData>(27, _omitFieldNames ? '' : 'contactData',
        subBuilder: ShowContacts_ContactData.create)
    ..aOM<WearableController_Switch>(
        28, _omitFieldNames ? '' : 'wearableControllerSwitch',
        subBuilder: WearableController_Switch.create)
    ..aOM<WearableController_Execute>(
        29, _omitFieldNames ? '' : 'wearableControllerExecute',
        subBuilder: WearableController_Execute.create)
    ..aOM<LLM_LoadingCard>(30, _omitFieldNames ? '' : 'llmLoadingCard',
        subBuilder: LLM_LoadingCard.create)
    ..aOM<LLM_DeclarationContent>(
        31, _omitFieldNames ? '' : 'llmDeclarationContent',
        subBuilder: LLM_DeclarationContent.create)
    ..aOM<LLM_IllegalContent>(32, _omitFieldNames ? '' : 'llmIllegalContent',
        subBuilder: LLM_IllegalContent.create)
    ..aOM<LLM_ToastStream>(33, _omitFieldNames ? '' : 'llmToastStream',
        subBuilder: LLM_ToastStream.create)
    ..aOM<WearableController_Action>(
        34, _omitFieldNames ? '' : 'wearableControllerAction',
        subBuilder: WearableController_Action.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsInstruction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsInstruction copyWith(void Function(AivsInstruction) updates) =>
      super.copyWith((message) => updates(message as AivsInstruction))
          as AivsInstruction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AivsInstruction create() => AivsInstruction._();
  @$core.override
  AivsInstruction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AivsInstruction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AivsInstruction>(create);
  static AivsInstruction? _defaultInstance;

  @$pb.TagNumber(1)
  ResultType get resultType => $_getN(0);
  @$pb.TagNumber(1)
  set resultType(ResultType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResultType() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultType() => $_clearField(1);

  @$pb.TagNumber(2)
  SpeechRecognizeResult get recognizeResult => $_getN(1);
  @$pb.TagNumber(2)
  set recognizeResult(SpeechRecognizeResult value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRecognizeResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecognizeResult() => $_clearField(2);
  @$pb.TagNumber(2)
  SpeechRecognizeResult ensureRecognizeResult() => $_ensure(1);

  @$pb.TagNumber(3)
  TemplateToast get templateToast => $_getN(2);
  @$pb.TagNumber(3)
  set templateToast(TemplateToast value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTemplateToast() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemplateToast() => $_clearField(3);
  @$pb.TagNumber(3)
  TemplateToast ensureTemplateToast() => $_ensure(2);

  @$pb.TagNumber(4)
  TemplateGeneral get templateGeneral => $_getN(3);
  @$pb.TagNumber(4)
  set templateGeneral(TemplateGeneral value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTemplateGeneral() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemplateGeneral() => $_clearField(4);
  @$pb.TagNumber(4)
  TemplateGeneral ensureTemplateGeneral() => $_ensure(3);

  @$pb.TagNumber(5)
  TemplateGeneral2 get templateGeneral2 => $_getN(4);
  @$pb.TagNumber(5)
  set templateGeneral2(TemplateGeneral2 value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasTemplateGeneral2() => $_has(4);
  @$pb.TagNumber(5)
  void clearTemplateGeneral2() => $_clearField(5);
  @$pb.TagNumber(5)
  TemplateGeneral2 ensureTemplateGeneral2() => $_ensure(4);

  @$pb.TagNumber(6)
  TemplateWeather get templateWeather => $_getN(5);
  @$pb.TagNumber(6)
  set templateWeather(TemplateWeather value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTemplateWeather() => $_has(5);
  @$pb.TagNumber(6)
  void clearTemplateWeather() => $_clearField(6);
  @$pb.TagNumber(6)
  TemplateWeather ensureTemplateWeather() => $_ensure(5);

  @$pb.TagNumber(7)
  TemplatePlayInfo get templatePlayinfo => $_getN(6);
  @$pb.TagNumber(7)
  set templatePlayinfo(TemplatePlayInfo value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasTemplatePlayinfo() => $_has(6);
  @$pb.TagNumber(7)
  void clearTemplatePlayinfo() => $_clearField(7);
  @$pb.TagNumber(7)
  TemplatePlayInfo ensureTemplatePlayinfo() => $_ensure(6);

  @$pb.TagNumber(8)
  TemplateLists get templateLists => $_getN(7);
  @$pb.TagNumber(8)
  set templateLists(TemplateLists value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasTemplateLists() => $_has(7);
  @$pb.TagNumber(8)
  void clearTemplateLists() => $_clearField(8);
  @$pb.TagNumber(8)
  TemplateLists ensureTemplateLists() => $_ensure(7);

  @$pb.TagNumber(9)
  TemplateSwitchPanel get templateSwitchpanel => $_getN(8);
  @$pb.TagNumber(9)
  set templateSwitchpanel(TemplateSwitchPanel value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasTemplateSwitchpanel() => $_has(8);
  @$pb.TagNumber(9)
  void clearTemplateSwitchpanel() => $_clearField(9);
  @$pb.TagNumber(9)
  TemplateSwitchPanel ensureTemplateSwitchpanel() => $_ensure(8);

  @$pb.TagNumber(10)
  AlertsSetAlert get alertsSetalert => $_getN(9);
  @$pb.TagNumber(10)
  set alertsSetalert(AlertsSetAlert value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAlertsSetalert() => $_has(9);
  @$pb.TagNumber(10)
  void clearAlertsSetalert() => $_clearField(10);
  @$pb.TagNumber(10)
  AlertsSetAlert ensureAlertsSetalert() => $_ensure(9);

  @$pb.TagNumber(11)
  SpeechSynthesizerSpeak get speechsynthesizerSpeak => $_getN(10);
  @$pb.TagNumber(11)
  set speechsynthesizerSpeak(SpeechSynthesizerSpeak value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSpeechsynthesizerSpeak() => $_has(10);
  @$pb.TagNumber(11)
  void clearSpeechsynthesizerSpeak() => $_clearField(11);
  @$pb.TagNumber(11)
  SpeechSynthesizerSpeak ensureSpeechsynthesizerSpeak() => $_ensure(10);

  @$pb.TagNumber(13)
  $core.int get sessionId => $_getIZ(11);
  @$pb.TagNumber(13)
  set sessionId($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(13)
  $core.bool hasSessionId() => $_has(11);
  @$pb.TagNumber(13)
  void clearSessionId() => $_clearField(13);

  @$pb.TagNumber(14)
  LauncherLaunchApp get laucherLauchapp => $_getN(12);
  @$pb.TagNumber(14)
  set laucherLauchapp(LauncherLaunchApp value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasLaucherLauchapp() => $_has(12);
  @$pb.TagNumber(14)
  void clearLaucherLauchapp() => $_clearField(14);
  @$pb.TagNumber(14)
  LauncherLaunchApp ensureLaucherLauchapp() => $_ensure(12);

  @$pb.TagNumber(15)
  TemplateSwitchPanelList get templateSwitchpanellist => $_getN(13);
  @$pb.TagNumber(15)
  set templateSwitchpanellist(TemplateSwitchPanelList value) =>
      $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasTemplateSwitchpanellist() => $_has(13);
  @$pb.TagNumber(15)
  void clearTemplateSwitchpanellist() => $_clearField(15);
  @$pb.TagNumber(15)
  TemplateSwitchPanelList ensureTemplateSwitchpanellist() => $_ensure(13);

  @$pb.TagNumber(16)
  BrightnessControllerAjustBrightness get brightnesscontrollerAjustbrightness =>
      $_getN(14);
  @$pb.TagNumber(16)
  set brightnesscontrollerAjustbrightness(
          BrightnessControllerAjustBrightness value) =>
      $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasBrightnesscontrollerAjustbrightness() => $_has(14);
  @$pb.TagNumber(16)
  void clearBrightnesscontrollerAjustbrightness() => $_clearField(16);
  @$pb.TagNumber(16)
  BrightnessControllerAjustBrightness
      ensureBrightnesscontrollerAjustbrightness() => $_ensure(14);

  @$pb.TagNumber(17)
  SystemSetProperty get systemSetproperty => $_getN(15);
  @$pb.TagNumber(17)
  set systemSetproperty(SystemSetProperty value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasSystemSetproperty() => $_has(15);
  @$pb.TagNumber(17)
  void clearSystemSetproperty() => $_clearField(17);
  @$pb.TagNumber(17)
  SystemSetProperty ensureSystemSetproperty() => $_ensure(15);

  @$pb.TagNumber(18)
  ApplicationOperate get applicationOperate => $_getN(16);
  @$pb.TagNumber(18)
  set applicationOperate(ApplicationOperate value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasApplicationOperate() => $_has(16);
  @$pb.TagNumber(18)
  void clearApplicationOperate() => $_clearField(18);
  @$pb.TagNumber(18)
  ApplicationOperate ensureApplicationOperate() => $_ensure(16);

  @$pb.TagNumber(19)
  AlertsDeliverAlertIntention get alertsDeliveralertintention => $_getN(17);
  @$pb.TagNumber(19)
  set alertsDeliveralertintention(AlertsDeliverAlertIntention value) =>
      $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasAlertsDeliveralertintention() => $_has(17);
  @$pb.TagNumber(19)
  void clearAlertsDeliveralertintention() => $_clearField(19);
  @$pb.TagNumber(19)
  AlertsDeliverAlertIntention ensureAlertsDeliveralertintention() =>
      $_ensure(17);

  @$pb.TagNumber(20)
  MediaErrorType get mediaErrortype => $_getN(18);
  @$pb.TagNumber(20)
  set mediaErrortype(MediaErrorType value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasMediaErrortype() => $_has(18);
  @$pb.TagNumber(20)
  void clearMediaErrortype() => $_clearField(20);

  @$pb.TagNumber(21)
  SpeakerSetMute get speakerSetmute => $_getN(19);
  @$pb.TagNumber(21)
  set speakerSetmute(SpeakerSetMute value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasSpeakerSetmute() => $_has(19);
  @$pb.TagNumber(21)
  void clearSpeakerSetmute() => $_clearField(21);
  @$pb.TagNumber(21)
  SpeakerSetMute ensureSpeakerSetmute() => $_ensure(19);

  @$pb.TagNumber(22)
  SpeakerSetVolume get speakerSetvolume => $_getN(20);
  @$pb.TagNumber(22)
  set speakerSetvolume(SpeakerSetVolume value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasSpeakerSetvolume() => $_has(20);
  @$pb.TagNumber(22)
  void clearSpeakerSetvolume() => $_clearField(22);
  @$pb.TagNumber(22)
  SpeakerSetVolume ensureSpeakerSetvolume() => $_ensure(20);

  @$pb.TagNumber(23)
  SpeakerAjustVolume get speakerAjustvolume => $_getN(21);
  @$pb.TagNumber(23)
  set speakerAjustvolume(SpeakerAjustVolume value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasSpeakerAjustvolume() => $_has(21);
  @$pb.TagNumber(23)
  void clearSpeakerAjustvolume() => $_clearField(23);
  @$pb.TagNumber(23)
  SpeakerAjustVolume ensureSpeakerAjustvolume() => $_ensure(21);

  @$pb.TagNumber(24)
  TemplateDeviceList get templateDevicelist => $_getN(22);
  @$pb.TagNumber(24)
  set templateDevicelist(TemplateDeviceList value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasTemplateDevicelist() => $_has(22);
  @$pb.TagNumber(24)
  void clearTemplateDevicelist() => $_clearField(24);
  @$pb.TagNumber(24)
  TemplateDeviceList ensureTemplateDevicelist() => $_ensure(22);

  @$pb.TagNumber(25)
  ExecuteDeviceSkill get executeDeviceskill => $_getN(23);
  @$pb.TagNumber(25)
  set executeDeviceskill(ExecuteDeviceSkill value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasExecuteDeviceskill() => $_has(23);
  @$pb.TagNumber(25)
  void clearExecuteDeviceskill() => $_clearField(25);
  @$pb.TagNumber(25)
  ExecuteDeviceSkill ensureExecuteDeviceskill() => $_ensure(23);

  @$pb.TagNumber(26)
  ShowContacts get showContacts => $_getN(24);
  @$pb.TagNumber(26)
  set showContacts(ShowContacts value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasShowContacts() => $_has(24);
  @$pb.TagNumber(26)
  void clearShowContacts() => $_clearField(26);
  @$pb.TagNumber(26)
  ShowContacts ensureShowContacts() => $_ensure(24);

  @$pb.TagNumber(27)
  ShowContacts_ContactData get contactData => $_getN(25);
  @$pb.TagNumber(27)
  set contactData(ShowContacts_ContactData value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasContactData() => $_has(25);
  @$pb.TagNumber(27)
  void clearContactData() => $_clearField(27);
  @$pb.TagNumber(27)
  ShowContacts_ContactData ensureContactData() => $_ensure(25);

  @$pb.TagNumber(28)
  WearableController_Switch get wearableControllerSwitch => $_getN(26);
  @$pb.TagNumber(28)
  set wearableControllerSwitch(WearableController_Switch value) =>
      $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasWearableControllerSwitch() => $_has(26);
  @$pb.TagNumber(28)
  void clearWearableControllerSwitch() => $_clearField(28);
  @$pb.TagNumber(28)
  WearableController_Switch ensureWearableControllerSwitch() => $_ensure(26);

  @$pb.TagNumber(29)
  WearableController_Execute get wearableControllerExecute => $_getN(27);
  @$pb.TagNumber(29)
  set wearableControllerExecute(WearableController_Execute value) =>
      $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasWearableControllerExecute() => $_has(27);
  @$pb.TagNumber(29)
  void clearWearableControllerExecute() => $_clearField(29);
  @$pb.TagNumber(29)
  WearableController_Execute ensureWearableControllerExecute() => $_ensure(27);

  @$pb.TagNumber(30)
  LLM_LoadingCard get llmLoadingCard => $_getN(28);
  @$pb.TagNumber(30)
  set llmLoadingCard(LLM_LoadingCard value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasLlmLoadingCard() => $_has(28);
  @$pb.TagNumber(30)
  void clearLlmLoadingCard() => $_clearField(30);
  @$pb.TagNumber(30)
  LLM_LoadingCard ensureLlmLoadingCard() => $_ensure(28);

  @$pb.TagNumber(31)
  LLM_DeclarationContent get llmDeclarationContent => $_getN(29);
  @$pb.TagNumber(31)
  set llmDeclarationContent(LLM_DeclarationContent value) =>
      $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasLlmDeclarationContent() => $_has(29);
  @$pb.TagNumber(31)
  void clearLlmDeclarationContent() => $_clearField(31);
  @$pb.TagNumber(31)
  LLM_DeclarationContent ensureLlmDeclarationContent() => $_ensure(29);

  @$pb.TagNumber(32)
  LLM_IllegalContent get llmIllegalContent => $_getN(30);
  @$pb.TagNumber(32)
  set llmIllegalContent(LLM_IllegalContent value) => $_setField(32, value);
  @$pb.TagNumber(32)
  $core.bool hasLlmIllegalContent() => $_has(30);
  @$pb.TagNumber(32)
  void clearLlmIllegalContent() => $_clearField(32);
  @$pb.TagNumber(32)
  LLM_IllegalContent ensureLlmIllegalContent() => $_ensure(30);

  @$pb.TagNumber(33)
  LLM_ToastStream get llmToastStream => $_getN(31);
  @$pb.TagNumber(33)
  set llmToastStream(LLM_ToastStream value) => $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasLlmToastStream() => $_has(31);
  @$pb.TagNumber(33)
  void clearLlmToastStream() => $_clearField(33);
  @$pb.TagNumber(33)
  LLM_ToastStream ensureLlmToastStream() => $_ensure(31);

  @$pb.TagNumber(34)
  WearableController_Action get wearableControllerAction => $_getN(32);
  @$pb.TagNumber(34)
  set wearableControllerAction(WearableController_Action value) =>
      $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasWearableControllerAction() => $_has(32);
  @$pb.TagNumber(34)
  void clearWearableControllerAction() => $_clearField(34);
  @$pb.TagNumber(34)
  WearableController_Action ensureWearableControllerAction() => $_ensure(32);
}

class SpeechRecognizeResult extends $pb.GeneratedMessage {
  factory SpeechRecognizeResult({
    $core.bool? isFinal,
    SpeechRecognizeResultItem_List? results,
  }) {
    final result = create();
    if (isFinal != null) result.isFinal = isFinal;
    if (results != null) result.results = results;
    return result;
  }

  SpeechRecognizeResult._();

  factory SpeechRecognizeResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpeechRecognizeResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechRecognizeResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'isFinal', $pb.PbFieldType.QB)
    ..aQM<SpeechRecognizeResultItem_List>(2, _omitFieldNames ? '' : 'results',
        subBuilder: SpeechRecognizeResultItem_List.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeechRecognizeResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeechRecognizeResult copyWith(
          void Function(SpeechRecognizeResult) updates) =>
      super.copyWith((message) => updates(message as SpeechRecognizeResult))
          as SpeechRecognizeResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeechRecognizeResult create() => SpeechRecognizeResult._();
  @$core.override
  SpeechRecognizeResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SpeechRecognizeResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeechRecognizeResult>(create);
  static SpeechRecognizeResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isFinal => $_getBF(0);
  @$pb.TagNumber(1)
  set isFinal($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsFinal() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsFinal() => $_clearField(1);

  @$pb.TagNumber(2)
  SpeechRecognizeResultItem_List get results => $_getN(1);
  @$pb.TagNumber(2)
  set results(SpeechRecognizeResultItem_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasResults() => $_has(1);
  @$pb.TagNumber(2)
  void clearResults() => $_clearField(2);
  @$pb.TagNumber(2)
  SpeechRecognizeResultItem_List ensureResults() => $_ensure(1);
}

class TemplateToast extends $pb.GeneratedMessage {
  factory TemplateToast({
    $core.String? text,
  }) {
    final result = create();
    if (text != null) result.text = text;
    return result;
  }

  TemplateToast._();

  factory TemplateToast.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateToast.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateToast',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateToast clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateToast copyWith(void Function(TemplateToast) updates) =>
      super.copyWith((message) => updates(message as TemplateToast))
          as TemplateToast;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateToast create() => TemplateToast._();
  @$core.override
  TemplateToast createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateToast getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateToast>(create);
  static TemplateToast? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class TemplateGeneral extends $pb.GeneratedMessage {
  factory TemplateGeneral({
    Title? title,
    $core.String? text,
    AbstractItem_List? results,
    $core.String? skillDescription,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (text != null) result.text = text;
    if (results != null) result.results = results;
    if (skillDescription != null) result.skillDescription = skillDescription;
    return result;
  }

  TemplateGeneral._();

  factory TemplateGeneral.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateGeneral.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateGeneral',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<Title>(1, _omitFieldNames ? '' : 'title', subBuilder: Title.create)
    ..aQS(2, _omitFieldNames ? '' : 'text')
    ..aOM<AbstractItem_List>(3, _omitFieldNames ? '' : 'results',
        subBuilder: AbstractItem_List.create)
    ..aQS(4, _omitFieldNames ? '' : 'skillDescription');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateGeneral clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateGeneral copyWith(void Function(TemplateGeneral) updates) =>
      super.copyWith((message) => updates(message as TemplateGeneral))
          as TemplateGeneral;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateGeneral create() => TemplateGeneral._();
  @$core.override
  TemplateGeneral createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateGeneral getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateGeneral>(create);
  static TemplateGeneral? _defaultInstance;

  @$pb.TagNumber(1)
  Title get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(Title value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  Title ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);

  @$pb.TagNumber(3)
  AbstractItem_List get results => $_getN(2);
  @$pb.TagNumber(3)
  set results(AbstractItem_List value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasResults() => $_has(2);
  @$pb.TagNumber(3)
  void clearResults() => $_clearField(3);
  @$pb.TagNumber(3)
  AbstractItem_List ensureResults() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get skillDescription => $_getSZ(3);
  @$pb.TagNumber(4)
  set skillDescription($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSkillDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkillDescription() => $_clearField(4);
}

class TemplateGeneral2 extends $pb.GeneratedMessage {
  factory TemplateGeneral2({
    RichText? mainTitle,
    RichText_List? subTitles,
    RichText_List? texts,
    $core.String? skillDescription,
  }) {
    final result = create();
    if (mainTitle != null) result.mainTitle = mainTitle;
    if (subTitles != null) result.subTitles = subTitles;
    if (texts != null) result.texts = texts;
    if (skillDescription != null) result.skillDescription = skillDescription;
    return result;
  }

  TemplateGeneral2._();

  factory TemplateGeneral2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateGeneral2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateGeneral2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<RichText>(1, _omitFieldNames ? '' : 'mainTitle',
        subBuilder: RichText.create)
    ..aQM<RichText_List>(2, _omitFieldNames ? '' : 'subTitles',
        subBuilder: RichText_List.create)
    ..aQM<RichText_List>(3, _omitFieldNames ? '' : 'texts',
        subBuilder: RichText_List.create)
    ..aQS(4, _omitFieldNames ? '' : 'skillDescription');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateGeneral2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateGeneral2 copyWith(void Function(TemplateGeneral2) updates) =>
      super.copyWith((message) => updates(message as TemplateGeneral2))
          as TemplateGeneral2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateGeneral2 create() => TemplateGeneral2._();
  @$core.override
  TemplateGeneral2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateGeneral2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateGeneral2>(create);
  static TemplateGeneral2? _defaultInstance;

  @$pb.TagNumber(1)
  RichText get mainTitle => $_getN(0);
  @$pb.TagNumber(1)
  set mainTitle(RichText value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMainTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearMainTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  RichText ensureMainTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  RichText_List get subTitles => $_getN(1);
  @$pb.TagNumber(2)
  set subTitles(RichText_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSubTitles() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubTitles() => $_clearField(2);
  @$pb.TagNumber(2)
  RichText_List ensureSubTitles() => $_ensure(1);

  @$pb.TagNumber(3)
  RichText_List get texts => $_getN(2);
  @$pb.TagNumber(3)
  set texts(RichText_List value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTexts() => $_has(2);
  @$pb.TagNumber(3)
  void clearTexts() => $_clearField(3);
  @$pb.TagNumber(3)
  RichText_List ensureTexts() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get skillDescription => $_getSZ(3);
  @$pb.TagNumber(4)
  set skillDescription($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSkillDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkillDescription() => $_clearField(4);
}

class TemplateWeather extends $pb.GeneratedMessage {
  factory TemplateWeather({
    WeatherItem_List? weather,
    $core.String? skillDescription,
  }) {
    final result = create();
    if (weather != null) result.weather = weather;
    if (skillDescription != null) result.skillDescription = skillDescription;
    return result;
  }

  TemplateWeather._();

  factory TemplateWeather.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateWeather.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateWeather',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<WeatherItem_List>(1, _omitFieldNames ? '' : 'weather',
        subBuilder: WeatherItem_List.create)
    ..aQS(2, _omitFieldNames ? '' : 'skillDescription');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateWeather clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateWeather copyWith(void Function(TemplateWeather) updates) =>
      super.copyWith((message) => updates(message as TemplateWeather))
          as TemplateWeather;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateWeather create() => TemplateWeather._();
  @$core.override
  TemplateWeather createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateWeather getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateWeather>(create);
  static TemplateWeather? _defaultInstance;

  @$pb.TagNumber(1)
  WeatherItem_List get weather => $_getN(0);
  @$pb.TagNumber(1)
  set weather(WeatherItem_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasWeather() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeather() => $_clearField(1);
  @$pb.TagNumber(1)
  WeatherItem_List ensureWeather() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get skillDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set skillDescription($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSkillDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearSkillDescription() => $_clearField(2);
}

class TemplatePlayInfo extends $pb.GeneratedMessage {
  factory TemplatePlayInfo({
    PlayInfoItem_List? items,
    PlayInfoType? type,
    $core.String? skillDescription,
  }) {
    final result = create();
    if (items != null) result.items = items;
    if (type != null) result.type = type;
    if (skillDescription != null) result.skillDescription = skillDescription;
    return result;
  }

  TemplatePlayInfo._();

  factory TemplatePlayInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplatePlayInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplatePlayInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<PlayInfoItem_List>(1, _omitFieldNames ? '' : 'items',
        subBuilder: PlayInfoItem_List.create)
    ..aE<PlayInfoType>(2, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: PlayInfoType.values)
    ..aQS(3, _omitFieldNames ? '' : 'skillDescription');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplatePlayInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplatePlayInfo copyWith(void Function(TemplatePlayInfo) updates) =>
      super.copyWith((message) => updates(message as TemplatePlayInfo))
          as TemplatePlayInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplatePlayInfo create() => TemplatePlayInfo._();
  @$core.override
  TemplatePlayInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplatePlayInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplatePlayInfo>(create);
  static TemplatePlayInfo? _defaultInstance;

  @$pb.TagNumber(1)
  PlayInfoItem_List get items => $_getN(0);
  @$pb.TagNumber(1)
  set items(PlayInfoItem_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItems() => $_has(0);
  @$pb.TagNumber(1)
  void clearItems() => $_clearField(1);
  @$pb.TagNumber(1)
  PlayInfoItem_List ensureItems() => $_ensure(0);

  @$pb.TagNumber(2)
  PlayInfoType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(PlayInfoType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get skillDescription => $_getSZ(2);
  @$pb.TagNumber(3)
  set skillDescription($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSkillDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkillDescription() => $_clearField(3);
}

class TemplateLists extends $pb.GeneratedMessage {
  factory TemplateLists({
    $core.String? skillDescription,
    ListsItem_List? items,
    Title? title,
  }) {
    final result = create();
    if (skillDescription != null) result.skillDescription = skillDescription;
    if (items != null) result.items = items;
    if (title != null) result.title = title;
    return result;
  }

  TemplateLists._();

  factory TemplateLists.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateLists.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateLists',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'skillDescription')
    ..aQM<ListsItem_List>(2, _omitFieldNames ? '' : 'items',
        subBuilder: ListsItem_List.create)
    ..aOM<Title>(3, _omitFieldNames ? '' : 'title', subBuilder: Title.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateLists clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateLists copyWith(void Function(TemplateLists) updates) =>
      super.copyWith((message) => updates(message as TemplateLists))
          as TemplateLists;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateLists create() => TemplateLists._();
  @$core.override
  TemplateLists createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateLists getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateLists>(create);
  static TemplateLists? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get skillDescription => $_getSZ(0);
  @$pb.TagNumber(1)
  set skillDescription($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSkillDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkillDescription() => $_clearField(1);

  @$pb.TagNumber(2)
  ListsItem_List get items => $_getN(1);
  @$pb.TagNumber(2)
  set items(ListsItem_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasItems() => $_has(1);
  @$pb.TagNumber(2)
  void clearItems() => $_clearField(2);
  @$pb.TagNumber(2)
  ListsItem_List ensureItems() => $_ensure(1);

  @$pb.TagNumber(3)
  Title get title => $_getN(2);
  @$pb.TagNumber(3)
  set title(Title value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);
  @$pb.TagNumber(3)
  Title ensureTitle() => $_ensure(2);
}

class TemplateSwitchPanel extends $pb.GeneratedMessage {
  factory TemplateSwitchPanel({
    Title? title,
    $core.String? skillDescription,
    $core.String? status,
    SwitchPanelType? type,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (skillDescription != null) result.skillDescription = skillDescription;
    if (status != null) result.status = status;
    if (type != null) result.type = type;
    return result;
  }

  TemplateSwitchPanel._();

  factory TemplateSwitchPanel.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateSwitchPanel.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateSwitchPanel',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<Title>(1, _omitFieldNames ? '' : 'title', subBuilder: Title.create)
    ..aQS(2, _omitFieldNames ? '' : 'skillDescription')
    ..aQS(3, _omitFieldNames ? '' : 'status')
    ..aE<SwitchPanelType>(4, _omitFieldNames ? '' : 'type',
        enumValues: SwitchPanelType.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateSwitchPanel clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateSwitchPanel copyWith(void Function(TemplateSwitchPanel) updates) =>
      super.copyWith((message) => updates(message as TemplateSwitchPanel))
          as TemplateSwitchPanel;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateSwitchPanel create() => TemplateSwitchPanel._();
  @$core.override
  TemplateSwitchPanel createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateSwitchPanel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateSwitchPanel>(create);
  static TemplateSwitchPanel? _defaultInstance;

  @$pb.TagNumber(1)
  Title get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(Title value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  Title ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get skillDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set skillDescription($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSkillDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearSkillDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  SwitchPanelType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(SwitchPanelType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);
}

class TemplateSwitchPanelList extends $pb.GeneratedMessage {
  factory TemplateSwitchPanelList({
    SwitchItem_List? titles,
    $core.String? skillDescription,
    SwitchPanelType? type,
    SwitchItem_List? items,
  }) {
    final result = create();
    if (titles != null) result.titles = titles;
    if (skillDescription != null) result.skillDescription = skillDescription;
    if (type != null) result.type = type;
    if (items != null) result.items = items;
    return result;
  }

  TemplateSwitchPanelList._();

  factory TemplateSwitchPanelList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateSwitchPanelList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateSwitchPanelList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<SwitchItem_List>(1, _omitFieldNames ? '' : 'titles',
        subBuilder: SwitchItem_List.create)
    ..aQS(2, _omitFieldNames ? '' : 'skillDescription')
    ..aE<SwitchPanelType>(3, _omitFieldNames ? '' : 'type',
        enumValues: SwitchPanelType.values)
    ..aOM<SwitchItem_List>(4, _omitFieldNames ? '' : 'items',
        subBuilder: SwitchItem_List.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateSwitchPanelList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateSwitchPanelList copyWith(
          void Function(TemplateSwitchPanelList) updates) =>
      super.copyWith((message) => updates(message as TemplateSwitchPanelList))
          as TemplateSwitchPanelList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateSwitchPanelList create() => TemplateSwitchPanelList._();
  @$core.override
  TemplateSwitchPanelList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateSwitchPanelList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateSwitchPanelList>(create);
  static TemplateSwitchPanelList? _defaultInstance;

  @$pb.TagNumber(1)
  SwitchItem_List get titles => $_getN(0);
  @$pb.TagNumber(1)
  set titles(SwitchItem_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitles() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitles() => $_clearField(1);
  @$pb.TagNumber(1)
  SwitchItem_List ensureTitles() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get skillDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set skillDescription($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSkillDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearSkillDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  SwitchPanelType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(SwitchPanelType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(4)
  SwitchItem_List get items => $_getN(3);
  @$pb.TagNumber(4)
  set items(SwitchItem_List value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasItems() => $_has(3);
  @$pb.TagNumber(4)
  void clearItems() => $_clearField(4);
  @$pb.TagNumber(4)
  SwitchItem_List ensureItems() => $_ensure(3);
}

class SwitchItem_List extends $pb.GeneratedMessage {
  factory SwitchItem_List({
    $core.Iterable<SwitchItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  SwitchItem_List._();

  factory SwitchItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SwitchItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SwitchItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<SwitchItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: SwitchItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwitchItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwitchItem_List copyWith(void Function(SwitchItem_List) updates) =>
      super.copyWith((message) => updates(message as SwitchItem_List))
          as SwitchItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SwitchItem_List create() => SwitchItem_List._();
  @$core.override
  SwitchItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SwitchItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwitchItem_List>(create);
  static SwitchItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SwitchItem> get list => $_getList(0);
}

class SwitchItem extends $pb.GeneratedMessage {
  factory SwitchItem({
    Title? title,
    $core.String? status,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (status != null) result.status = status;
    return result;
  }

  SwitchItem._();

  factory SwitchItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SwitchItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SwitchItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<Title>(1, _omitFieldNames ? '' : 'title', subBuilder: Title.create)
    ..aQS(2, _omitFieldNames ? '' : 'status');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwitchItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwitchItem copyWith(void Function(SwitchItem) updates) =>
      super.copyWith((message) => updates(message as SwitchItem)) as SwitchItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SwitchItem create() => SwitchItem._();
  @$core.override
  SwitchItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SwitchItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwitchItem>(create);
  static SwitchItem? _defaultInstance;

  @$pb.TagNumber(1)
  Title get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(Title value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  Title ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
}

class AlertsSetAlert extends $pb.GeneratedMessage {
  factory AlertsSetAlert({
    $core.String? id,
    AlertType? type,
    $core.String? datetime,
    AlertCircleType? circle,
    $core.String? circleExtra,
    $core.String? offset,
    $core.String? event,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (type != null) result.type = type;
    if (datetime != null) result.datetime = datetime;
    if (circle != null) result.circle = circle;
    if (circleExtra != null) result.circleExtra = circleExtra;
    if (offset != null) result.offset = offset;
    if (event != null) result.event = event;
    return result;
  }

  AlertsSetAlert._();

  factory AlertsSetAlert.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertsSetAlert.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertsSetAlert',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aE<AlertType>(2, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: AlertType.values)
    ..aQS(3, _omitFieldNames ? '' : 'datetime')
    ..aE<AlertCircleType>(4, _omitFieldNames ? '' : 'circle',
        enumValues: AlertCircleType.values)
    ..aQS(5, _omitFieldNames ? '' : 'circleExtra')
    ..aQS(6, _omitFieldNames ? '' : 'offset')
    ..aQS(7, _omitFieldNames ? '' : 'event');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertsSetAlert clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertsSetAlert copyWith(void Function(AlertsSetAlert) updates) =>
      super.copyWith((message) => updates(message as AlertsSetAlert))
          as AlertsSetAlert;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertsSetAlert create() => AlertsSetAlert._();
  @$core.override
  AlertsSetAlert createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertsSetAlert getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertsSetAlert>(create);
  static AlertsSetAlert? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  AlertType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(AlertType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get datetime => $_getSZ(2);
  @$pb.TagNumber(3)
  set datetime($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDatetime() => $_has(2);
  @$pb.TagNumber(3)
  void clearDatetime() => $_clearField(3);

  @$pb.TagNumber(4)
  AlertCircleType get circle => $_getN(3);
  @$pb.TagNumber(4)
  set circle(AlertCircleType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCircle() => $_has(3);
  @$pb.TagNumber(4)
  void clearCircle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get circleExtra => $_getSZ(4);
  @$pb.TagNumber(5)
  set circleExtra($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCircleExtra() => $_has(4);
  @$pb.TagNumber(5)
  void clearCircleExtra() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get offset => $_getSZ(5);
  @$pb.TagNumber(6)
  set offset($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasOffset() => $_has(5);
  @$pb.TagNumber(6)
  void clearOffset() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get event => $_getSZ(6);
  @$pb.TagNumber(7)
  set event($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEvent() => $_has(6);
  @$pb.TagNumber(7)
  void clearEvent() => $_clearField(7);
}

class AlertsDeliverAlertIntention extends $pb.GeneratedMessage {
  factory AlertsDeliverAlertIntention({
    AlertType? type,
    AlertOperation? operation,
    $core.bool? operateAll,
    AlertCircleType? circle,
    $core.String? circleExtra,
    $core.String? event,
    AlertFilterType? filterType,
    AlertTimeInfo? time,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (operation != null) result.operation = operation;
    if (operateAll != null) result.operateAll = operateAll;
    if (circle != null) result.circle = circle;
    if (circleExtra != null) result.circleExtra = circleExtra;
    if (event != null) result.event = event;
    if (filterType != null) result.filterType = filterType;
    if (time != null) result.time = time;
    return result;
  }

  AlertsDeliverAlertIntention._();

  factory AlertsDeliverAlertIntention.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertsDeliverAlertIntention.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertsDeliverAlertIntention',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<AlertType>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: AlertType.values)
    ..aE<AlertOperation>(2, _omitFieldNames ? '' : 'operation',
        fieldType: $pb.PbFieldType.QE, enumValues: AlertOperation.values)
    ..a<$core.bool>(3, _omitFieldNames ? '' : 'operateAll', $pb.PbFieldType.QB)
    ..aE<AlertCircleType>(4, _omitFieldNames ? '' : 'circle',
        enumValues: AlertCircleType.values)
    ..aQS(5, _omitFieldNames ? '' : 'circleExtra')
    ..aQS(6, _omitFieldNames ? '' : 'event')
    ..aE<AlertFilterType>(7, _omitFieldNames ? '' : 'filterType',
        enumValues: AlertFilterType.values)
    ..aOM<AlertTimeInfo>(8, _omitFieldNames ? '' : 'time',
        subBuilder: AlertTimeInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertsDeliverAlertIntention clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertsDeliverAlertIntention copyWith(
          void Function(AlertsDeliverAlertIntention) updates) =>
      super.copyWith(
              (message) => updates(message as AlertsDeliverAlertIntention))
          as AlertsDeliverAlertIntention;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertsDeliverAlertIntention create() =>
      AlertsDeliverAlertIntention._();
  @$core.override
  AlertsDeliverAlertIntention createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertsDeliverAlertIntention getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertsDeliverAlertIntention>(create);
  static AlertsDeliverAlertIntention? _defaultInstance;

  @$pb.TagNumber(1)
  AlertType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(AlertType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  AlertOperation get operation => $_getN(1);
  @$pb.TagNumber(2)
  set operation(AlertOperation value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOperation() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperation() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get operateAll => $_getBF(2);
  @$pb.TagNumber(3)
  set operateAll($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOperateAll() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperateAll() => $_clearField(3);

  @$pb.TagNumber(4)
  AlertCircleType get circle => $_getN(3);
  @$pb.TagNumber(4)
  set circle(AlertCircleType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCircle() => $_has(3);
  @$pb.TagNumber(4)
  void clearCircle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get circleExtra => $_getSZ(4);
  @$pb.TagNumber(5)
  set circleExtra($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCircleExtra() => $_has(4);
  @$pb.TagNumber(5)
  void clearCircleExtra() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get event => $_getSZ(5);
  @$pb.TagNumber(6)
  set event($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEvent() => $_has(5);
  @$pb.TagNumber(6)
  void clearEvent() => $_clearField(6);

  @$pb.TagNumber(7)
  AlertFilterType get filterType => $_getN(6);
  @$pb.TagNumber(7)
  set filterType(AlertFilterType value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFilterType() => $_has(6);
  @$pb.TagNumber(7)
  void clearFilterType() => $_clearField(7);

  @$pb.TagNumber(8)
  AlertTimeInfo get time => $_getN(7);
  @$pb.TagNumber(8)
  set time(AlertTimeInfo value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearTime() => $_clearField(8);
  @$pb.TagNumber(8)
  AlertTimeInfo ensureTime() => $_ensure(7);
}

class SpeechSynthesizerSpeak extends $pb.GeneratedMessage {
  factory SpeechSynthesizerSpeak({
    $core.String? text,
  }) {
    final result = create();
    if (text != null) result.text = text;
    return result;
  }

  SpeechSynthesizerSpeak._();

  factory SpeechSynthesizerSpeak.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpeechSynthesizerSpeak.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechSynthesizerSpeak',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeechSynthesizerSpeak clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeechSynthesizerSpeak copyWith(
          void Function(SpeechSynthesizerSpeak) updates) =>
      super.copyWith((message) => updates(message as SpeechSynthesizerSpeak))
          as SpeechSynthesizerSpeak;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeechSynthesizerSpeak create() => SpeechSynthesizerSpeak._();
  @$core.override
  SpeechSynthesizerSpeak createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SpeechSynthesizerSpeak getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeechSynthesizerSpeak>(create);
  static SpeechSynthesizerSpeak? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class SpeechRecognizeResultItem_List extends $pb.GeneratedMessage {
  factory SpeechRecognizeResultItem_List({
    $core.Iterable<SpeechRecognizeResultItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  SpeechRecognizeResultItem_List._();

  factory SpeechRecognizeResultItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpeechRecognizeResultItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechRecognizeResultItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<SpeechRecognizeResultItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: SpeechRecognizeResultItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeechRecognizeResultItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeechRecognizeResultItem_List copyWith(
          void Function(SpeechRecognizeResultItem_List) updates) =>
      super.copyWith(
              (message) => updates(message as SpeechRecognizeResultItem_List))
          as SpeechRecognizeResultItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeechRecognizeResultItem_List create() =>
      SpeechRecognizeResultItem_List._();
  @$core.override
  SpeechRecognizeResultItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SpeechRecognizeResultItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeechRecognizeResultItem_List>(create);
  static SpeechRecognizeResultItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SpeechRecognizeResultItem> get list => $_getList(0);
}

class SpeechRecognizeResultItem extends $pb.GeneratedMessage {
  factory SpeechRecognizeResultItem({
    $core.String? text,
  }) {
    final result = create();
    if (text != null) result.text = text;
    return result;
  }

  SpeechRecognizeResultItem._();

  factory SpeechRecognizeResultItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpeechRecognizeResultItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechRecognizeResultItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeechRecognizeResultItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeechRecognizeResultItem copyWith(
          void Function(SpeechRecognizeResultItem) updates) =>
      super.copyWith((message) => updates(message as SpeechRecognizeResultItem))
          as SpeechRecognizeResultItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeechRecognizeResultItem create() => SpeechRecognizeResultItem._();
  @$core.override
  SpeechRecognizeResultItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SpeechRecognizeResultItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeechRecognizeResultItem>(create);
  static SpeechRecognizeResultItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class SystemSetProperty extends $pb.GeneratedMessage {
  factory SystemSetProperty({
    $core.String? name,
    $core.String? value,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (value != null) result.value = value;
    return result;
  }

  SystemSetProperty._();

  factory SystemSetProperty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SystemSetProperty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SystemSetProperty',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aQS(2, _omitFieldNames ? '' : 'value');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetProperty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetProperty copyWith(void Function(SystemSetProperty) updates) =>
      super.copyWith((message) => updates(message as SystemSetProperty))
          as SystemSetProperty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetProperty create() => SystemSetProperty._();
  @$core.override
  SystemSetProperty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SystemSetProperty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SystemSetProperty>(create);
  static SystemSetProperty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class LauncherLaunchApp extends $pb.GeneratedMessage {
  factory LauncherLaunchApp({
    AndroidIntent? intent,
  }) {
    final result = create();
    if (intent != null) result.intent = intent;
    return result;
  }

  LauncherLaunchApp._();

  factory LauncherLaunchApp.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LauncherLaunchApp.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LauncherLaunchApp',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<AndroidIntent>(1, _omitFieldNames ? '' : 'intent',
        subBuilder: AndroidIntent.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LauncherLaunchApp clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LauncherLaunchApp copyWith(void Function(LauncherLaunchApp) updates) =>
      super.copyWith((message) => updates(message as LauncherLaunchApp))
          as LauncherLaunchApp;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LauncherLaunchApp create() => LauncherLaunchApp._();
  @$core.override
  LauncherLaunchApp createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LauncherLaunchApp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LauncherLaunchApp>(create);
  static LauncherLaunchApp? _defaultInstance;

  @$pb.TagNumber(1)
  AndroidIntent get intent => $_getN(0);
  @$pb.TagNumber(1)
  set intent(AndroidIntent value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasIntent() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntent() => $_clearField(1);
  @$pb.TagNumber(1)
  AndroidIntent ensureIntent() => $_ensure(0);
}

class ExecuteDeviceSkill extends $pb.GeneratedMessage {
  factory ExecuteDeviceSkill({
    AndroidIntent? intent,
  }) {
    final result = create();
    if (intent != null) result.intent = intent;
    return result;
  }

  ExecuteDeviceSkill._();

  factory ExecuteDeviceSkill.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteDeviceSkill.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteDeviceSkill',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<AndroidIntent>(1, _omitFieldNames ? '' : 'intent',
        subBuilder: AndroidIntent.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteDeviceSkill clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteDeviceSkill copyWith(void Function(ExecuteDeviceSkill) updates) =>
      super.copyWith((message) => updates(message as ExecuteDeviceSkill))
          as ExecuteDeviceSkill;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteDeviceSkill create() => ExecuteDeviceSkill._();
  @$core.override
  ExecuteDeviceSkill createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteDeviceSkill getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteDeviceSkill>(create);
  static ExecuteDeviceSkill? _defaultInstance;

  @$pb.TagNumber(1)
  AndroidIntent get intent => $_getN(0);
  @$pb.TagNumber(1)
  set intent(AndroidIntent value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasIntent() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntent() => $_clearField(1);
  @$pb.TagNumber(1)
  AndroidIntent ensureIntent() => $_ensure(0);
}

class BrightnessControllerAjustBrightness extends $pb.GeneratedMessage {
  factory BrightnessControllerAjustBrightness({
    $core.int? brightnessDelta,
  }) {
    final result = create();
    if (brightnessDelta != null) result.brightnessDelta = brightnessDelta;
    return result;
  }

  BrightnessControllerAjustBrightness._();

  factory BrightnessControllerAjustBrightness.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BrightnessControllerAjustBrightness.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BrightnessControllerAjustBrightness',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'brightnessDelta',
        fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BrightnessControllerAjustBrightness clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BrightnessControllerAjustBrightness copyWith(
          void Function(BrightnessControllerAjustBrightness) updates) =>
      super.copyWith((message) =>
              updates(message as BrightnessControllerAjustBrightness))
          as BrightnessControllerAjustBrightness;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BrightnessControllerAjustBrightness create() =>
      BrightnessControllerAjustBrightness._();
  @$core.override
  BrightnessControllerAjustBrightness createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BrightnessControllerAjustBrightness getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          BrightnessControllerAjustBrightness>(create);
  static BrightnessControllerAjustBrightness? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get brightnessDelta => $_getIZ(0);
  @$pb.TagNumber(1)
  set brightnessDelta($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBrightnessDelta() => $_has(0);
  @$pb.TagNumber(1)
  void clearBrightnessDelta() => $_clearField(1);
}

class ApplicationOperate extends $pb.GeneratedMessage {
  factory ApplicationOperate({
    ApplictionOp? operation,
    $core.String? keyword,
    $core.String? appPkgName,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    if (keyword != null) result.keyword = keyword;
    if (appPkgName != null) result.appPkgName = appPkgName;
    return result;
  }

  ApplicationOperate._();

  factory ApplicationOperate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApplicationOperate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApplicationOperate',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ApplictionOp>(1, _omitFieldNames ? '' : 'operation',
        fieldType: $pb.PbFieldType.QE, enumValues: ApplictionOp.values)
    ..aQS(2, _omitFieldNames ? '' : 'keyword')
    ..aQS(3, _omitFieldNames ? '' : 'appPkgName');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplicationOperate clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplicationOperate copyWith(void Function(ApplicationOperate) updates) =>
      super.copyWith((message) => updates(message as ApplicationOperate))
          as ApplicationOperate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplicationOperate create() => ApplicationOperate._();
  @$core.override
  ApplicationOperate createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApplicationOperate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplicationOperate>(create);
  static ApplicationOperate? _defaultInstance;

  @$pb.TagNumber(1)
  ApplictionOp get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation(ApplictionOp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get keyword => $_getSZ(1);
  @$pb.TagNumber(2)
  set keyword($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKeyword() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyword() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get appPkgName => $_getSZ(2);
  @$pb.TagNumber(3)
  set appPkgName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAppPkgName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppPkgName() => $_clearField(3);
}

class AndroidIntent extends $pb.GeneratedMessage {
  factory AndroidIntent({
    $core.String? pkgName,
    $core.String? uri,
  }) {
    final result = create();
    if (pkgName != null) result.pkgName = pkgName;
    if (uri != null) result.uri = uri;
    return result;
  }

  AndroidIntent._();

  factory AndroidIntent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AndroidIntent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AndroidIntent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'pkgName')
    ..aQS(2, _omitFieldNames ? '' : 'uri');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AndroidIntent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AndroidIntent copyWith(void Function(AndroidIntent) updates) =>
      super.copyWith((message) => updates(message as AndroidIntent))
          as AndroidIntent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AndroidIntent create() => AndroidIntent._();
  @$core.override
  AndroidIntent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AndroidIntent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AndroidIntent>(create);
  static AndroidIntent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pkgName => $_getSZ(0);
  @$pb.TagNumber(1)
  set pkgName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPkgName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkgName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);
}

class AbstractItem_List extends $pb.GeneratedMessage {
  factory AbstractItem_List({
    $core.Iterable<AbstractItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  AbstractItem_List._();

  factory AbstractItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AbstractItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AbstractItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AbstractItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: AbstractItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AbstractItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AbstractItem_List copyWith(void Function(AbstractItem_List) updates) =>
      super.copyWith((message) => updates(message as AbstractItem_List))
          as AbstractItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AbstractItem_List create() => AbstractItem_List._();
  @$core.override
  AbstractItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AbstractItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AbstractItem_List>(create);
  static AbstractItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AbstractItem> get list => $_getList(0);
}

class AbstractItem extends $pb.GeneratedMessage {
  factory AbstractItem({
    $core.String? k,
    $core.String? v,
  }) {
    final result = create();
    if (k != null) result.k = k;
    if (v != null) result.v = v;
    return result;
  }

  AbstractItem._();

  factory AbstractItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AbstractItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AbstractItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'k')
    ..aQS(2, _omitFieldNames ? '' : 'v');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AbstractItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AbstractItem copyWith(void Function(AbstractItem) updates) =>
      super.copyWith((message) => updates(message as AbstractItem))
          as AbstractItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AbstractItem create() => AbstractItem._();
  @$core.override
  AbstractItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AbstractItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AbstractItem>(create);
  static AbstractItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get k => $_getSZ(0);
  @$pb.TagNumber(1)
  set k($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasK() => $_has(0);
  @$pb.TagNumber(1)
  void clearK() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get v => $_getSZ(1);
  @$pb.TagNumber(2)
  set v($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasV() => $_has(1);
  @$pb.TagNumber(2)
  void clearV() => $_clearField(2);
}

class Title extends $pb.GeneratedMessage {
  factory Title({
    $core.String? mainTitle,
    $core.String? subTitle,
  }) {
    final result = create();
    if (mainTitle != null) result.mainTitle = mainTitle;
    if (subTitle != null) result.subTitle = subTitle;
    return result;
  }

  Title._();

  factory Title.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Title.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Title',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'mainTitle')
    ..aQS(2, _omitFieldNames ? '' : 'subTitle');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Title clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Title copyWith(void Function(Title) updates) =>
      super.copyWith((message) => updates(message as Title)) as Title;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Title create() => Title._();
  @$core.override
  Title createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Title getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Title>(create);
  static Title? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mainTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set mainTitle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMainTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearMainTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get subTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set subTitle($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubTitle() => $_clearField(2);
}

class RichText_List extends $pb.GeneratedMessage {
  factory RichText_List({
    $core.Iterable<RichText>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  RichText_List._();

  factory RichText_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RichText_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RichText.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<RichText>(1, _omitFieldNames ? '' : 'list',
        subBuilder: RichText.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RichText_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RichText_List copyWith(void Function(RichText_List) updates) =>
      super.copyWith((message) => updates(message as RichText_List))
          as RichText_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RichText_List create() => RichText_List._();
  @$core.override
  RichText_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RichText_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RichText_List>(create);
  static RichText_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RichText> get list => $_getList(0);
}

class RichText extends $pb.GeneratedMessage {
  factory RichText({
    $core.String? text,
    $core.String? color,
    $core.String? bgColor,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (color != null) result.color = color;
    if (bgColor != null) result.bgColor = bgColor;
    return result;
  }

  RichText._();

  factory RichText.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RichText.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RichText',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text')
    ..aQS(2, _omitFieldNames ? '' : 'color')
    ..aQS(3, _omitFieldNames ? '' : 'bgColor');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RichText clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RichText copyWith(void Function(RichText) updates) =>
      super.copyWith((message) => updates(message as RichText)) as RichText;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RichText create() => RichText._();
  @$core.override
  RichText createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RichText getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RichText>(create);
  static RichText? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get color => $_getSZ(1);
  @$pb.TagNumber(2)
  set color($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get bgColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set bgColor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBgColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearBgColor() => $_clearField(3);
}

class WeatherItem_List extends $pb.GeneratedMessage {
  factory WeatherItem_List({
    $core.Iterable<WeatherItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  WeatherItem_List._();

  factory WeatherItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WeatherItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: WeatherItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherItem_List copyWith(void Function(WeatherItem_List) updates) =>
      super.copyWith((message) => updates(message as WeatherItem_List))
          as WeatherItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherItem_List create() => WeatherItem_List._();
  @$core.override
  WeatherItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherItem_List>(create);
  static WeatherItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WeatherItem> get list => $_getList(0);
}

class WeatherItem extends $pb.GeneratedMessage {
  factory WeatherItem({
    $core.String? date,
    $core.String? location,
    $core.String? aqi,
    $core.String? currentTemperature,
    $core.String? highTemperature,
    $core.String? lowTemperature,
    $core.String? iconDescription,
    WeatherCode? weatherCode,
    WeatherWind? wind,
    $core.String? weekday,
  }) {
    final result = create();
    if (date != null) result.date = date;
    if (location != null) result.location = location;
    if (aqi != null) result.aqi = aqi;
    if (currentTemperature != null)
      result.currentTemperature = currentTemperature;
    if (highTemperature != null) result.highTemperature = highTemperature;
    if (lowTemperature != null) result.lowTemperature = lowTemperature;
    if (iconDescription != null) result.iconDescription = iconDescription;
    if (weatherCode != null) result.weatherCode = weatherCode;
    if (wind != null) result.wind = wind;
    if (weekday != null) result.weekday = weekday;
    return result;
  }

  WeatherItem._();

  factory WeatherItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'date')
    ..aQS(2, _omitFieldNames ? '' : 'location')
    ..aQS(3, _omitFieldNames ? '' : 'aqi')
    ..aQS(4, _omitFieldNames ? '' : 'currentTemperature')
    ..aQS(5, _omitFieldNames ? '' : 'highTemperature')
    ..aQS(6, _omitFieldNames ? '' : 'lowTemperature')
    ..aQS(7, _omitFieldNames ? '' : 'iconDescription')
    ..aOM<WeatherCode>(8, _omitFieldNames ? '' : 'weatherCode',
        subBuilder: WeatherCode.create)
    ..aOM<WeatherWind>(9, _omitFieldNames ? '' : 'wind',
        subBuilder: WeatherWind.create)
    ..aQS(10, _omitFieldNames ? '' : 'weekday');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherItem copyWith(void Function(WeatherItem) updates) =>
      super.copyWith((message) => updates(message as WeatherItem))
          as WeatherItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherItem create() => WeatherItem._();
  @$core.override
  WeatherItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherItem>(create);
  static WeatherItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get location => $_getSZ(1);
  @$pb.TagNumber(2)
  set location($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get aqi => $_getSZ(2);
  @$pb.TagNumber(3)
  set aqi($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAqi() => $_has(2);
  @$pb.TagNumber(3)
  void clearAqi() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get currentTemperature => $_getSZ(3);
  @$pb.TagNumber(4)
  set currentTemperature($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCurrentTemperature() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentTemperature() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get highTemperature => $_getSZ(4);
  @$pb.TagNumber(5)
  set highTemperature($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHighTemperature() => $_has(4);
  @$pb.TagNumber(5)
  void clearHighTemperature() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get lowTemperature => $_getSZ(5);
  @$pb.TagNumber(6)
  set lowTemperature($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLowTemperature() => $_has(5);
  @$pb.TagNumber(6)
  void clearLowTemperature() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get iconDescription => $_getSZ(6);
  @$pb.TagNumber(7)
  set iconDescription($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIconDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearIconDescription() => $_clearField(7);

  @$pb.TagNumber(8)
  WeatherCode get weatherCode => $_getN(7);
  @$pb.TagNumber(8)
  set weatherCode(WeatherCode value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasWeatherCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearWeatherCode() => $_clearField(8);
  @$pb.TagNumber(8)
  WeatherCode ensureWeatherCode() => $_ensure(7);

  @$pb.TagNumber(9)
  WeatherWind get wind => $_getN(8);
  @$pb.TagNumber(9)
  set wind(WeatherWind value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasWind() => $_has(8);
  @$pb.TagNumber(9)
  void clearWind() => $_clearField(9);
  @$pb.TagNumber(9)
  WeatherWind ensureWind() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get weekday => $_getSZ(9);
  @$pb.TagNumber(10)
  set weekday($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasWeekday() => $_has(9);
  @$pb.TagNumber(10)
  void clearWeekday() => $_clearField(10);
}

class WeatherCode extends $pb.GeneratedMessage {
  factory WeatherCode({
    $core.String? current,
    $core.String? from,
    $core.String? to,
  }) {
    final result = create();
    if (current != null) result.current = current;
    if (from != null) result.from = from;
    if (to != null) result.to = to;
    return result;
  }

  WeatherCode._();

  factory WeatherCode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherCode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherCode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'current')
    ..aQS(2, _omitFieldNames ? '' : 'from')
    ..aQS(3, _omitFieldNames ? '' : 'to');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherCode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherCode copyWith(void Function(WeatherCode) updates) =>
      super.copyWith((message) => updates(message as WeatherCode))
          as WeatherCode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherCode create() => WeatherCode._();
  @$core.override
  WeatherCode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherCode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherCode>(create);
  static WeatherCode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get current => $_getSZ(0);
  @$pb.TagNumber(1)
  set current($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCurrent() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get from => $_getSZ(1);
  @$pb.TagNumber(2)
  set from($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get to => $_getSZ(2);
  @$pb.TagNumber(3)
  set to($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => $_clearField(3);
}

class WeatherWind extends $pb.GeneratedMessage {
  factory WeatherWind({
    WeatherWindDirection? direction,
    WeatherWindSpeed? speed,
  }) {
    final result = create();
    if (direction != null) result.direction = direction;
    if (speed != null) result.speed = speed;
    return result;
  }

  WeatherWind._();

  factory WeatherWind.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherWind.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherWind',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aOM<WeatherWindDirection>(1, _omitFieldNames ? '' : 'direction',
        subBuilder: WeatherWindDirection.create)
    ..aOM<WeatherWindSpeed>(2, _omitFieldNames ? '' : 'speed',
        subBuilder: WeatherWindSpeed.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherWind clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherWind copyWith(void Function(WeatherWind) updates) =>
      super.copyWith((message) => updates(message as WeatherWind))
          as WeatherWind;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherWind create() => WeatherWind._();
  @$core.override
  WeatherWind createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherWind getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherWind>(create);
  static WeatherWind? _defaultInstance;

  @$pb.TagNumber(1)
  WeatherWindDirection get direction => $_getN(0);
  @$pb.TagNumber(1)
  set direction(WeatherWindDirection value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirection() => $_clearField(1);
  @$pb.TagNumber(1)
  WeatherWindDirection ensureDirection() => $_ensure(0);

  @$pb.TagNumber(2)
  WeatherWindSpeed get speed => $_getN(1);
  @$pb.TagNumber(2)
  set speed(WeatherWindSpeed value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeed() => $_clearField(2);
  @$pb.TagNumber(2)
  WeatherWindSpeed ensureSpeed() => $_ensure(1);
}

class WeatherWindDirection extends $pb.GeneratedMessage {
  factory WeatherWindDirection({
    $core.String? text,
    $core.String? current,
    $core.String? from,
    $core.String? to,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (current != null) result.current = current;
    if (from != null) result.from = from;
    if (to != null) result.to = to;
    return result;
  }

  WeatherWindDirection._();

  factory WeatherWindDirection.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherWindDirection.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherWindDirection',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text')
    ..aQS(2, _omitFieldNames ? '' : 'current')
    ..aQS(3, _omitFieldNames ? '' : 'from')
    ..aQS(4, _omitFieldNames ? '' : 'to');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherWindDirection clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherWindDirection copyWith(void Function(WeatherWindDirection) updates) =>
      super.copyWith((message) => updates(message as WeatherWindDirection))
          as WeatherWindDirection;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherWindDirection create() => WeatherWindDirection._();
  @$core.override
  WeatherWindDirection createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherWindDirection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherWindDirection>(create);
  static WeatherWindDirection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get current => $_getSZ(1);
  @$pb.TagNumber(2)
  set current($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get from => $_getSZ(2);
  @$pb.TagNumber(3)
  set from($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get to => $_getSZ(3);
  @$pb.TagNumber(4)
  set to($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => $_clearField(4);
}

class WeatherWindSpeed extends $pb.GeneratedMessage {
  factory WeatherWindSpeed({
    $core.String? text,
    $core.String? current,
    $core.String? from,
    $core.String? to,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (current != null) result.current = current;
    if (from != null) result.from = from;
    if (to != null) result.to = to;
    return result;
  }

  WeatherWindSpeed._();

  factory WeatherWindSpeed.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherWindSpeed.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherWindSpeed',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text')
    ..aQS(2, _omitFieldNames ? '' : 'current')
    ..aQS(3, _omitFieldNames ? '' : 'from')
    ..aQS(4, _omitFieldNames ? '' : 'to');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherWindSpeed clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherWindSpeed copyWith(void Function(WeatherWindSpeed) updates) =>
      super.copyWith((message) => updates(message as WeatherWindSpeed))
          as WeatherWindSpeed;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherWindSpeed create() => WeatherWindSpeed._();
  @$core.override
  WeatherWindSpeed createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherWindSpeed getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherWindSpeed>(create);
  static WeatherWindSpeed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get current => $_getSZ(1);
  @$pb.TagNumber(2)
  set current($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get from => $_getSZ(2);
  @$pb.TagNumber(3)
  set from($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get to => $_getSZ(3);
  @$pb.TagNumber(4)
  set to($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => $_clearField(4);
}

class PlayInfoItem_List extends $pb.GeneratedMessage {
  factory PlayInfoItem_List({
    $core.Iterable<PlayInfoItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  PlayInfoItem_List._();

  factory PlayInfoItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PlayInfoItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PlayInfoItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<PlayInfoItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: PlayInfoItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlayInfoItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlayInfoItem_List copyWith(void Function(PlayInfoItem_List) updates) =>
      super.copyWith((message) => updates(message as PlayInfoItem_List))
          as PlayInfoItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayInfoItem_List create() => PlayInfoItem_List._();
  @$core.override
  PlayInfoItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PlayInfoItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PlayInfoItem_List>(create);
  static PlayInfoItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PlayInfoItem> get list => $_getList(0);
}

class PlayInfoItem extends $pb.GeneratedMessage {
  factory PlayInfoItem({
    Title? title,
    $core.int? durationInMs,
    $core.String? text,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (durationInMs != null) result.durationInMs = durationInMs;
    if (text != null) result.text = text;
    return result;
  }

  PlayInfoItem._();

  factory PlayInfoItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PlayInfoItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PlayInfoItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<Title>(1, _omitFieldNames ? '' : 'title', subBuilder: Title.create)
    ..aI(2, _omitFieldNames ? '' : 'durationInMs',
        fieldType: $pb.PbFieldType.OU3)
    ..aQS(3, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlayInfoItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlayInfoItem copyWith(void Function(PlayInfoItem) updates) =>
      super.copyWith((message) => updates(message as PlayInfoItem))
          as PlayInfoItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayInfoItem create() => PlayInfoItem._();
  @$core.override
  PlayInfoItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PlayInfoItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PlayInfoItem>(create);
  static PlayInfoItem? _defaultInstance;

  @$pb.TagNumber(1)
  Title get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(Title value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  Title ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get durationInMs => $_getIZ(1);
  @$pb.TagNumber(2)
  set durationInMs($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDurationInMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearDurationInMs() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => $_clearField(3);
}

class ListsItem_List extends $pb.GeneratedMessage {
  factory ListsItem_List({
    $core.Iterable<ListsItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  ListsItem_List._();

  factory ListsItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListsItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListsItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<ListsItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: ListsItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListsItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListsItem_List copyWith(void Function(ListsItem_List) updates) =>
      super.copyWith((message) => updates(message as ListsItem_List))
          as ListsItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListsItem_List create() => ListsItem_List._();
  @$core.override
  ListsItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListsItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListsItem_List>(create);
  static ListsItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ListsItem> get list => $_getList(0);
}

class ListsItem extends $pb.GeneratedMessage {
  factory ListsItem({
    Title? title,
    $core.String? text,
    $core.String? skillDescription,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (text != null) result.text = text;
    if (skillDescription != null) result.skillDescription = skillDescription;
    return result;
  }

  ListsItem._();

  factory ListsItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListsItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListsItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<Title>(1, _omitFieldNames ? '' : 'title', subBuilder: Title.create)
    ..aQS(2, _omitFieldNames ? '' : 'text')
    ..aQS(3, _omitFieldNames ? '' : 'skillDescription');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListsItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListsItem copyWith(void Function(ListsItem) updates) =>
      super.copyWith((message) => updates(message as ListsItem)) as ListsItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListsItem create() => ListsItem._();
  @$core.override
  ListsItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListsItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListsItem>(create);
  static ListsItem? _defaultInstance;

  @$pb.TagNumber(1)
  Title get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(Title value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  Title ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get skillDescription => $_getSZ(2);
  @$pb.TagNumber(3)
  set skillDescription($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSkillDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkillDescription() => $_clearField(3);
}

class AlertTimeInfo extends $pb.GeneratedMessage {
  factory AlertTimeInfo({
    AlertTimeType? type,
    $core.String? token,
    AlertDateTime? datetime,
    AlertDateTime? startDatetime,
    AlertDateTime? endDatetime,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (token != null) result.token = token;
    if (datetime != null) result.datetime = datetime;
    if (startDatetime != null) result.startDatetime = startDatetime;
    if (endDatetime != null) result.endDatetime = endDatetime;
    return result;
  }

  AlertTimeInfo._();

  factory AlertTimeInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertTimeInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertTimeInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<AlertTimeType>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: AlertTimeType.values)
    ..aQS(2, _omitFieldNames ? '' : 'token')
    ..aOM<AlertDateTime>(3, _omitFieldNames ? '' : 'datetime',
        subBuilder: AlertDateTime.create)
    ..aOM<AlertDateTime>(4, _omitFieldNames ? '' : 'startDatetime',
        subBuilder: AlertDateTime.create)
    ..aOM<AlertDateTime>(5, _omitFieldNames ? '' : 'endDatetime',
        subBuilder: AlertDateTime.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertTimeInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertTimeInfo copyWith(void Function(AlertTimeInfo) updates) =>
      super.copyWith((message) => updates(message as AlertTimeInfo))
          as AlertTimeInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertTimeInfo create() => AlertTimeInfo._();
  @$core.override
  AlertTimeInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertTimeInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertTimeInfo>(create);
  static AlertTimeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  AlertTimeType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(AlertTimeType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => $_clearField(2);

  @$pb.TagNumber(3)
  AlertDateTime get datetime => $_getN(2);
  @$pb.TagNumber(3)
  set datetime(AlertDateTime value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDatetime() => $_has(2);
  @$pb.TagNumber(3)
  void clearDatetime() => $_clearField(3);
  @$pb.TagNumber(3)
  AlertDateTime ensureDatetime() => $_ensure(2);

  @$pb.TagNumber(4)
  AlertDateTime get startDatetime => $_getN(3);
  @$pb.TagNumber(4)
  set startDatetime(AlertDateTime value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStartDatetime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartDatetime() => $_clearField(4);
  @$pb.TagNumber(4)
  AlertDateTime ensureStartDatetime() => $_ensure(3);

  @$pb.TagNumber(5)
  AlertDateTime get endDatetime => $_getN(4);
  @$pb.TagNumber(5)
  set endDatetime(AlertDateTime value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasEndDatetime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndDatetime() => $_clearField(5);
  @$pb.TagNumber(5)
  AlertDateTime ensureEndDatetime() => $_ensure(4);
}

class AlertDateTime extends $pb.GeneratedMessage {
  factory AlertDateTime({
    $core.String? value,
    $fixnum.Int64? timestamp,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  AlertDateTime._();

  factory AlertDateTime.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlertDateTime.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlertDateTime',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'value')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.Q6,
        defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertDateTime clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlertDateTime copyWith(void Function(AlertDateTime) updates) =>
      super.copyWith((message) => updates(message as AlertDateTime))
          as AlertDateTime;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlertDateTime create() => AlertDateTime._();
  @$core.override
  AlertDateTime createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlertDateTime getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlertDateTime>(create);
  static AlertDateTime? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestamp => $_getI64(1);
  @$pb.TagNumber(2)
  set timestamp($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => $_clearField(2);
}

class SpeakerSetMute extends $pb.GeneratedMessage {
  factory SpeakerSetMute({
    $core.bool? mute,
  }) {
    final result = create();
    if (mute != null) result.mute = mute;
    return result;
  }

  SpeakerSetMute._();

  factory SpeakerSetMute.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpeakerSetMute.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeakerSetMute',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'mute', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeakerSetMute clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeakerSetMute copyWith(void Function(SpeakerSetMute) updates) =>
      super.copyWith((message) => updates(message as SpeakerSetMute))
          as SpeakerSetMute;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeakerSetMute create() => SpeakerSetMute._();
  @$core.override
  SpeakerSetMute createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SpeakerSetMute getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeakerSetMute>(create);
  static SpeakerSetMute? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get mute => $_getBF(0);
  @$pb.TagNumber(1)
  set mute($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMute() => $_has(0);
  @$pb.TagNumber(1)
  void clearMute() => $_clearField(1);
}

class SpeakerSetVolume extends $pb.GeneratedMessage {
  factory SpeakerSetVolume({
    $core.int? volume,
    SpeakerVolumeType? type,
    SpeakerUnitDef? unit,
    $core.bool? once,
  }) {
    final result = create();
    if (volume != null) result.volume = volume;
    if (type != null) result.type = type;
    if (unit != null) result.unit = unit;
    if (once != null) result.once = once;
    return result;
  }

  SpeakerSetVolume._();

  factory SpeakerSetVolume.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpeakerSetVolume.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeakerSetVolume',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'volume', fieldType: $pb.PbFieldType.Q3)
    ..aE<SpeakerVolumeType>(2, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: SpeakerVolumeType.values)
    ..aE<SpeakerUnitDef>(3, _omitFieldNames ? '' : 'unit',
        fieldType: $pb.PbFieldType.QE, enumValues: SpeakerUnitDef.values)
    ..aOB(4, _omitFieldNames ? '' : 'once');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeakerSetVolume clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeakerSetVolume copyWith(void Function(SpeakerSetVolume) updates) =>
      super.copyWith((message) => updates(message as SpeakerSetVolume))
          as SpeakerSetVolume;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeakerSetVolume create() => SpeakerSetVolume._();
  @$core.override
  SpeakerSetVolume createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SpeakerSetVolume getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeakerSetVolume>(create);
  static SpeakerSetVolume? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get volume => $_getIZ(0);
  @$pb.TagNumber(1)
  set volume($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolume() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolume() => $_clearField(1);

  @$pb.TagNumber(2)
  SpeakerVolumeType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(SpeakerVolumeType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  SpeakerUnitDef get unit => $_getN(2);
  @$pb.TagNumber(3)
  set unit(SpeakerUnitDef value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUnit() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get once => $_getBF(3);
  @$pb.TagNumber(4)
  set once($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOnce() => $_has(3);
  @$pb.TagNumber(4)
  void clearOnce() => $_clearField(4);
}

class SpeakerAjustVolume extends $pb.GeneratedMessage {
  factory SpeakerAjustVolume({
    $core.int? volumeDelta,
    SpeakerVolumeType? type,
    SpeakerUnitDef? unit,
  }) {
    final result = create();
    if (volumeDelta != null) result.volumeDelta = volumeDelta;
    if (type != null) result.type = type;
    if (unit != null) result.unit = unit;
    return result;
  }

  SpeakerAjustVolume._();

  factory SpeakerAjustVolume.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpeakerAjustVolume.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeakerAjustVolume',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'volumeDelta', fieldType: $pb.PbFieldType.Q3)
    ..aE<SpeakerVolumeType>(2, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: SpeakerVolumeType.values)
    ..aE<SpeakerUnitDef>(3, _omitFieldNames ? '' : 'unit',
        fieldType: $pb.PbFieldType.QE, enumValues: SpeakerUnitDef.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeakerAjustVolume clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeakerAjustVolume copyWith(void Function(SpeakerAjustVolume) updates) =>
      super.copyWith((message) => updates(message as SpeakerAjustVolume))
          as SpeakerAjustVolume;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeakerAjustVolume create() => SpeakerAjustVolume._();
  @$core.override
  SpeakerAjustVolume createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SpeakerAjustVolume getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeakerAjustVolume>(create);
  static SpeakerAjustVolume? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get volumeDelta => $_getIZ(0);
  @$pb.TagNumber(1)
  set volumeDelta($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeDelta() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeDelta() => $_clearField(1);

  @$pb.TagNumber(2)
  SpeakerVolumeType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(SpeakerVolumeType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  SpeakerUnitDef get unit => $_getN(2);
  @$pb.TagNumber(3)
  set unit(SpeakerUnitDef value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUnit() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnit() => $_clearField(3);
}

class TemplateDeviceList extends $pb.GeneratedMessage {
  factory TemplateDeviceList({
    DeviceItem_List? items,
    $core.bool? exceedMaxItems,
    $core.bool? showIndex,
  }) {
    final result = create();
    if (items != null) result.items = items;
    if (exceedMaxItems != null) result.exceedMaxItems = exceedMaxItems;
    if (showIndex != null) result.showIndex = showIndex;
    return result;
  }

  TemplateDeviceList._();

  factory TemplateDeviceList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateDeviceList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateDeviceList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<DeviceItem_List>(1, _omitFieldNames ? '' : 'items',
        subBuilder: DeviceItem_List.create)
    ..a<$core.bool>(
        2, _omitFieldNames ? '' : 'exceedMaxItems', $pb.PbFieldType.QB)
    ..a<$core.bool>(3, _omitFieldNames ? '' : 'showIndex', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateDeviceList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateDeviceList copyWith(void Function(TemplateDeviceList) updates) =>
      super.copyWith((message) => updates(message as TemplateDeviceList))
          as TemplateDeviceList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateDeviceList create() => TemplateDeviceList._();
  @$core.override
  TemplateDeviceList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateDeviceList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateDeviceList>(create);
  static TemplateDeviceList? _defaultInstance;

  @$pb.TagNumber(1)
  DeviceItem_List get items => $_getN(0);
  @$pb.TagNumber(1)
  set items(DeviceItem_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItems() => $_has(0);
  @$pb.TagNumber(1)
  void clearItems() => $_clearField(1);
  @$pb.TagNumber(1)
  DeviceItem_List ensureItems() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get exceedMaxItems => $_getBF(1);
  @$pb.TagNumber(2)
  set exceedMaxItems($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExceedMaxItems() => $_has(1);
  @$pb.TagNumber(2)
  void clearExceedMaxItems() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get showIndex => $_getBF(2);
  @$pb.TagNumber(3)
  set showIndex($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasShowIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowIndex() => $_clearField(3);
}

class DeviceItem_List extends $pb.GeneratedMessage {
  factory DeviceItem_List({
    $core.Iterable<DeviceItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  DeviceItem_List._();

  factory DeviceItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<DeviceItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: DeviceItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceItem_List copyWith(void Function(DeviceItem_List) updates) =>
      super.copyWith((message) => updates(message as DeviceItem_List))
          as DeviceItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceItem_List create() => DeviceItem_List._();
  @$core.override
  DeviceItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceItem_List>(create);
  static DeviceItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<DeviceItem> get list => $_getList(0);
}

class DeviceItem extends $pb.GeneratedMessage {
  factory DeviceItem({
    Title? title,
  }) {
    final result = create();
    if (title != null) result.title = title;
    return result;
  }

  DeviceItem._();

  factory DeviceItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<Title>(1, _omitFieldNames ? '' : 'title', subBuilder: Title.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceItem copyWith(void Function(DeviceItem) updates) =>
      super.copyWith((message) => updates(message as DeviceItem)) as DeviceItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceItem create() => DeviceItem._();
  @$core.override
  DeviceItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceItem>(create);
  static DeviceItem? _defaultInstance;

  @$pb.TagNumber(1)
  Title get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(Title value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  Title ensureTitle() => $_ensure(0);
}

class ShowContacts_ContactData extends $pb.GeneratedMessage {
  factory ShowContacts_ContactData({
    $core.String? name,
    $core.String? number,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (number != null) result.number = number;
    return result;
  }

  ShowContacts_ContactData._();

  factory ShowContacts_ContactData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShowContacts_ContactData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShowContacts.ContactData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aQS(2, _omitFieldNames ? '' : 'number');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShowContacts_ContactData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShowContacts_ContactData copyWith(
          void Function(ShowContacts_ContactData) updates) =>
      super.copyWith((message) => updates(message as ShowContacts_ContactData))
          as ShowContacts_ContactData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShowContacts_ContactData create() => ShowContacts_ContactData._();
  @$core.override
  ShowContacts_ContactData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ShowContacts_ContactData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShowContacts_ContactData>(create);
  static ShowContacts_ContactData? _defaultInstance;

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
}

class ShowContacts extends $pb.GeneratedMessage {
  factory ShowContacts({
    ShowContacts_Code? code,
    $core.Iterable<ShowContacts_ContactData>? list,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (list != null) result.list.addAll(list);
    return result;
  }

  ShowContacts._();

  factory ShowContacts.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShowContacts.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShowContacts',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<ShowContacts_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE, enumValues: ShowContacts_Code.values)
    ..pPM<ShowContacts_ContactData>(2, _omitFieldNames ? '' : 'list',
        subBuilder: ShowContacts_ContactData.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShowContacts clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShowContacts copyWith(void Function(ShowContacts) updates) =>
      super.copyWith((message) => updates(message as ShowContacts))
          as ShowContacts;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShowContacts create() => ShowContacts._();
  @$core.override
  ShowContacts createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ShowContacts getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShowContacts>(create);
  static ShowContacts? _defaultInstance;

  @$pb.TagNumber(1)
  ShowContacts_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(ShowContacts_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<ShowContacts_ContactData> get list => $_getList(1);
}

class WearableController_Switch extends $pb.GeneratedMessage {
  factory WearableController_Switch({
    $0.SportState? sportState,
    $0.SportType? sportType,
  }) {
    final result = create();
    if (sportState != null) result.sportState = sportState;
    if (sportType != null) result.sportType = sportType;
    return result;
  }

  WearableController_Switch._();

  factory WearableController_Switch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearableController_Switch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearableController.Switch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.SportState>(1, _omitFieldNames ? '' : 'sportState',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportState.values)
    ..aE<$0.SportType>(2, _omitFieldNames ? '' : 'sportType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportType.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearableController_Switch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearableController_Switch copyWith(
          void Function(WearableController_Switch) updates) =>
      super.copyWith((message) => updates(message as WearableController_Switch))
          as WearableController_Switch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearableController_Switch create() => WearableController_Switch._();
  @$core.override
  WearableController_Switch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearableController_Switch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearableController_Switch>(create);
  static WearableController_Switch? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SportState get sportState => $_getN(0);
  @$pb.TagNumber(1)
  set sportState($0.SportState value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSportState() => $_has(0);
  @$pb.TagNumber(1)
  void clearSportState() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.SportType get sportType => $_getN(1);
  @$pb.TagNumber(2)
  set sportType($0.SportType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSportType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSportType() => $_clearField(2);
}

class WearableController_Execute extends $pb.GeneratedMessage {
  factory WearableController_Execute({
    $core.String? directive,
  }) {
    final result = create();
    if (directive != null) result.directive = directive;
    return result;
  }

  WearableController_Execute._();

  factory WearableController_Execute.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearableController_Execute.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearableController.Execute',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'directive');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearableController_Execute clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearableController_Execute copyWith(
          void Function(WearableController_Execute) updates) =>
      super.copyWith(
              (message) => updates(message as WearableController_Execute))
          as WearableController_Execute;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearableController_Execute create() => WearableController_Execute._();
  @$core.override
  WearableController_Execute createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearableController_Execute getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearableController_Execute>(create);
  static WearableController_Execute? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get directive => $_getSZ(0);
  @$pb.TagNumber(1)
  set directive($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDirective() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirective() => $_clearField(1);
}

class WearableController_Action extends $pb.GeneratedMessage {
  factory WearableController_Action({
    $core.String? name,
    $core.String? payload,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (payload != null) result.payload = payload;
    return result;
  }

  WearableController_Action._();

  factory WearableController_Action.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearableController_Action.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearableController.Action',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aQS(2, _omitFieldNames ? '' : 'payload');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearableController_Action clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearableController_Action copyWith(
          void Function(WearableController_Action) updates) =>
      super.copyWith((message) => updates(message as WearableController_Action))
          as WearableController_Action;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearableController_Action create() => WearableController_Action._();
  @$core.override
  WearableController_Action createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearableController_Action getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearableController_Action>(create);
  static WearableController_Action? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get payload => $_getSZ(1);
  @$pb.TagNumber(2)
  set payload($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => $_clearField(2);
}

class WearableController extends $pb.GeneratedMessage {
  factory WearableController() => create();

  WearableController._();

  factory WearableController.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearableController.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearableController',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearableController clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearableController copyWith(void Function(WearableController) updates) =>
      super.copyWith((message) => updates(message as WearableController))
          as WearableController;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearableController create() => WearableController._();
  @$core.override
  WearableController createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearableController getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearableController>(create);
  static WearableController? _defaultInstance;
}

class LLM_LoadingCard extends $pb.GeneratedMessage {
  factory LLM_LoadingCard({
    $core.int? timeout,
  }) {
    final result = create();
    if (timeout != null) result.timeout = timeout;
    return result;
  }

  LLM_LoadingCard._();

  factory LLM_LoadingCard.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LLM_LoadingCard.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LLM.LoadingCard',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'timeout', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_LoadingCard clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_LoadingCard copyWith(void Function(LLM_LoadingCard) updates) =>
      super.copyWith((message) => updates(message as LLM_LoadingCard))
          as LLM_LoadingCard;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLM_LoadingCard create() => LLM_LoadingCard._();
  @$core.override
  LLM_LoadingCard createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LLM_LoadingCard getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LLM_LoadingCard>(create);
  static LLM_LoadingCard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timeout => $_getIZ(0);
  @$pb.TagNumber(1)
  set timeout($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimeout() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeout() => $_clearField(1);
}

class LLM_DeclarationContent extends $pb.GeneratedMessage {
  factory LLM_DeclarationContent({
    $core.String? text,
  }) {
    final result = create();
    if (text != null) result.text = text;
    return result;
  }

  LLM_DeclarationContent._();

  factory LLM_DeclarationContent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LLM_DeclarationContent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LLM.DeclarationContent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_DeclarationContent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_DeclarationContent copyWith(
          void Function(LLM_DeclarationContent) updates) =>
      super.copyWith((message) => updates(message as LLM_DeclarationContent))
          as LLM_DeclarationContent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLM_DeclarationContent create() => LLM_DeclarationContent._();
  @$core.override
  LLM_DeclarationContent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LLM_DeclarationContent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LLM_DeclarationContent>(create);
  static LLM_DeclarationContent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class LLM_IllegalContent extends $pb.GeneratedMessage {
  factory LLM_IllegalContent({
    $core.String? text,
  }) {
    final result = create();
    if (text != null) result.text = text;
    return result;
  }

  LLM_IllegalContent._();

  factory LLM_IllegalContent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LLM_IllegalContent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LLM.IllegalContent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_IllegalContent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_IllegalContent copyWith(void Function(LLM_IllegalContent) updates) =>
      super.copyWith((message) => updates(message as LLM_IllegalContent))
          as LLM_IllegalContent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLM_IllegalContent create() => LLM_IllegalContent._();
  @$core.override
  LLM_IllegalContent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LLM_IllegalContent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LLM_IllegalContent>(create);
  static LLM_IllegalContent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class LLM_ToastStream extends $pb.GeneratedMessage {
  factory LLM_ToastStream({
    $core.String? markdownText,
  }) {
    final result = create();
    if (markdownText != null) result.markdownText = markdownText;
    return result;
  }

  LLM_ToastStream._();

  factory LLM_ToastStream.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LLM_ToastStream.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LLM.ToastStream',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'markdownText');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_ToastStream clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_ToastStream copyWith(void Function(LLM_ToastStream) updates) =>
      super.copyWith((message) => updates(message as LLM_ToastStream))
          as LLM_ToastStream;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLM_ToastStream create() => LLM_ToastStream._();
  @$core.override
  LLM_ToastStream createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LLM_ToastStream getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LLM_ToastStream>(create);
  static LLM_ToastStream? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get markdownText => $_getSZ(0);
  @$pb.TagNumber(1)
  set markdownText($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMarkdownText() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarkdownText() => $_clearField(1);
}

class LLM_IssueImage_Request extends $pb.GeneratedMessage {
  factory LLM_IssueImage_Request({
    $core.int? sessionId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  LLM_IssueImage_Request._();

  factory LLM_IssueImage_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LLM_IssueImage_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LLM.IssueImage.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'sessionId', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_IssueImage_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_IssueImage_Request copyWith(
          void Function(LLM_IssueImage_Request) updates) =>
      super.copyWith((message) => updates(message as LLM_IssueImage_Request))
          as LLM_IssueImage_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLM_IssueImage_Request create() => LLM_IssueImage_Request._();
  @$core.override
  LLM_IssueImage_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LLM_IssueImage_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LLM_IssueImage_Request>(create);
  static LLM_IssueImage_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
}

class LLM_IssueImage_Response extends $pb.GeneratedMessage {
  factory LLM_IssueImage_Response({
    $0.PrepareStatus? prepareStatus,
    $0.ImageFormat? supportImageFormat,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (prepareStatus != null) result.prepareStatus = prepareStatus;
    if (supportImageFormat != null)
      result.supportImageFormat = supportImageFormat;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  LLM_IssueImage_Response._();

  factory LLM_IssueImage_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LLM_IssueImage_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LLM.IssueImage.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.PrepareStatus>(1, _omitFieldNames ? '' : 'prepareStatus',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.PrepareStatus.values)
    ..aE<$0.ImageFormat>(2, _omitFieldNames ? '' : 'supportImageFormat',
        enumValues: $0.ImageFormat.values)
    ..aI(3, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_IssueImage_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_IssueImage_Response copyWith(
          void Function(LLM_IssueImage_Response) updates) =>
      super.copyWith((message) => updates(message as LLM_IssueImage_Response))
          as LLM_IssueImage_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLM_IssueImage_Response create() => LLM_IssueImage_Response._();
  @$core.override
  LLM_IssueImage_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LLM_IssueImage_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LLM_IssueImage_Response>(create);
  static LLM_IssueImage_Response? _defaultInstance;

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
  $core.int get expectedSliceLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpectedSliceLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectedSliceLength() => $_clearField(3);
}

class LLM_IssueImage extends $pb.GeneratedMessage {
  factory LLM_IssueImage() => create();

  LLM_IssueImage._();

  factory LLM_IssueImage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LLM_IssueImage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LLM.IssueImage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_IssueImage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM_IssueImage copyWith(void Function(LLM_IssueImage) updates) =>
      super.copyWith((message) => updates(message as LLM_IssueImage))
          as LLM_IssueImage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLM_IssueImage create() => LLM_IssueImage._();
  @$core.override
  LLM_IssueImage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LLM_IssueImage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LLM_IssueImage>(create);
  static LLM_IssueImage? _defaultInstance;
}

class LLM extends $pb.GeneratedMessage {
  factory LLM() => create();

  LLM._();

  factory LLM.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LLM.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LLM',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLM copyWith(void Function(LLM) updates) =>
      super.copyWith((message) => updates(message as LLM)) as LLM;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLM create() => LLM._();
  @$core.override
  LLM createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LLM getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LLM>(create);
  static LLM? _defaultInstance;
}

class MediaConfig extends $pb.GeneratedMessage {
  factory MediaConfig({
    $core.int? imgWidth,
    $core.int? imgHeight,
    $core.int? imgFormat,
    $core.int? standbyFreq,
  }) {
    final result = create();
    if (imgWidth != null) result.imgWidth = imgWidth;
    if (imgHeight != null) result.imgHeight = imgHeight;
    if (imgFormat != null) result.imgFormat = imgFormat;
    if (standbyFreq != null) result.standbyFreq = standbyFreq;
    return result;
  }

  MediaConfig._();

  factory MediaConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'imgWidth', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'imgHeight', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'imgFormat', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'standbyFreq',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaConfig copyWith(void Function(MediaConfig) updates) =>
      super.copyWith((message) => updates(message as MediaConfig))
          as MediaConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaConfig create() => MediaConfig._();
  @$core.override
  MediaConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MediaConfig>(create);
  static MediaConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get imgWidth => $_getIZ(0);
  @$pb.TagNumber(1)
  set imgWidth($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImgWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearImgWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get imgHeight => $_getIZ(1);
  @$pb.TagNumber(2)
  set imgHeight($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImgHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearImgHeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get imgFormat => $_getIZ(2);
  @$pb.TagNumber(3)
  set imgFormat($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasImgFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearImgFormat() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get standbyFreq => $_getIZ(3);
  @$pb.TagNumber(4)
  set standbyFreq($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStandbyFreq() => $_has(3);
  @$pb.TagNumber(4)
  void clearStandbyFreq() => $_clearField(4);
}

class AivsRequestInfo extends $pb.GeneratedMessage {
  factory AivsRequestInfo({
    $core.List<$core.int>? requestId,
    $core.List<$core.int>? transactionId,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (transactionId != null) result.transactionId = transactionId;
    return result;
  }

  AivsRequestInfo._();

  factory AivsRequestInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AivsRequestInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AivsRequestInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'transactionId', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsRequestInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsRequestInfo copyWith(void Function(AivsRequestInfo) updates) =>
      super.copyWith((message) => updates(message as AivsRequestInfo))
          as AivsRequestInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AivsRequestInfo create() => AivsRequestInfo._();
  @$core.override
  AivsRequestInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AivsRequestInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AivsRequestInfo>(create);
  static AivsRequestInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get requestId => $_getN(0);
  @$pb.TagNumber(1)
  set requestId($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get transactionId => $_getN(1);
  @$pb.TagNumber(2)
  set transactionId($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTransactionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionId() => $_clearField(2);
}

class MultiModal extends $pb.GeneratedMessage {
  factory MultiModal({
    AivsRequestInfo? requestInfo,
    $core.int? cmd,
  }) {
    final result = create();
    if (requestInfo != null) result.requestInfo = requestInfo;
    if (cmd != null) result.cmd = cmd;
    return result;
  }

  MultiModal._();

  factory MultiModal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MultiModal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MultiModal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<AivsRequestInfo>(1, _omitFieldNames ? '' : 'requestInfo',
        subBuilder: AivsRequestInfo.create)
    ..aI(2, _omitFieldNames ? '' : 'cmd', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultiModal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultiModal copyWith(void Function(MultiModal) updates) =>
      super.copyWith((message) => updates(message as MultiModal)) as MultiModal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiModal create() => MultiModal._();
  @$core.override
  MultiModal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MultiModal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MultiModal>(create);
  static MultiModal? _defaultInstance;

  @$pb.TagNumber(1)
  AivsRequestInfo get requestInfo => $_getN(0);
  @$pb.TagNumber(1)
  set requestInfo(AivsRequestInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  AivsRequestInfo ensureRequestInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get cmd => $_getIZ(1);
  @$pb.TagNumber(2)
  set cmd($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCmd() => $_has(1);
  @$pb.TagNumber(2)
  void clearCmd() => $_clearField(2);
}

class AivsStatus extends $pb.GeneratedMessage {
  factory AivsStatus({
    AivsStatus_VoiceStatus? voiceStatus,
    AivsStatus_TtsStatus? ttsStatus,
    AivsStatus_MediaPlayStatus? mediaPlayStatus,
    AivsStatus_ImageStatus? imageStatus,
    AivsStatus_OperatingStatus? operatingStatus,
    AivsStatus_DeviceStatus? deviceStatus,
  }) {
    final result = create();
    if (voiceStatus != null) result.voiceStatus = voiceStatus;
    if (ttsStatus != null) result.ttsStatus = ttsStatus;
    if (mediaPlayStatus != null) result.mediaPlayStatus = mediaPlayStatus;
    if (imageStatus != null) result.imageStatus = imageStatus;
    if (operatingStatus != null) result.operatingStatus = operatingStatus;
    if (deviceStatus != null) result.deviceStatus = deviceStatus;
    return result;
  }

  AivsStatus._();

  factory AivsStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AivsStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AivsStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<AivsStatus_VoiceStatus>(1, _omitFieldNames ? '' : 'voiceStatus',
        fieldType: $pb.PbFieldType.QE,
        enumValues: AivsStatus_VoiceStatus.values)
    ..aE<AivsStatus_TtsStatus>(2, _omitFieldNames ? '' : 'ttsStatus',
        fieldType: $pb.PbFieldType.QE, enumValues: AivsStatus_TtsStatus.values)
    ..aE<AivsStatus_MediaPlayStatus>(
        3, _omitFieldNames ? '' : 'mediaPlayStatus',
        fieldType: $pb.PbFieldType.QE,
        enumValues: AivsStatus_MediaPlayStatus.values)
    ..aE<AivsStatus_ImageStatus>(4, _omitFieldNames ? '' : 'imageStatus',
        fieldType: $pb.PbFieldType.QE,
        enumValues: AivsStatus_ImageStatus.values)
    ..aE<AivsStatus_OperatingStatus>(
        5, _omitFieldNames ? '' : 'operatingStatus',
        fieldType: $pb.PbFieldType.QE,
        enumValues: AivsStatus_OperatingStatus.values)
    ..aE<AivsStatus_DeviceStatus>(6, _omitFieldNames ? '' : 'deviceStatus',
        fieldType: $pb.PbFieldType.QE,
        enumValues: AivsStatus_DeviceStatus.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsStatus copyWith(void Function(AivsStatus) updates) =>
      super.copyWith((message) => updates(message as AivsStatus)) as AivsStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AivsStatus create() => AivsStatus._();
  @$core.override
  AivsStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AivsStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AivsStatus>(create);
  static AivsStatus? _defaultInstance;

  @$pb.TagNumber(1)
  AivsStatus_VoiceStatus get voiceStatus => $_getN(0);
  @$pb.TagNumber(1)
  set voiceStatus(AivsStatus_VoiceStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVoiceStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoiceStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  AivsStatus_TtsStatus get ttsStatus => $_getN(1);
  @$pb.TagNumber(2)
  set ttsStatus(AivsStatus_TtsStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTtsStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearTtsStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  AivsStatus_MediaPlayStatus get mediaPlayStatus => $_getN(2);
  @$pb.TagNumber(3)
  set mediaPlayStatus(AivsStatus_MediaPlayStatus value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMediaPlayStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearMediaPlayStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  AivsStatus_ImageStatus get imageStatus => $_getN(3);
  @$pb.TagNumber(4)
  set imageStatus(AivsStatus_ImageStatus value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasImageStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  AivsStatus_OperatingStatus get operatingStatus => $_getN(4);
  @$pb.TagNumber(5)
  set operatingStatus(AivsStatus_OperatingStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOperatingStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperatingStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  AivsStatus_DeviceStatus get deviceStatus => $_getN(5);
  @$pb.TagNumber(6)
  set deviceStatus(AivsStatus_DeviceStatus value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasDeviceStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceStatus() => $_clearField(6);
}

class AivsError extends $pb.GeneratedMessage {
  factory AivsError({
    $core.int? errorCode,
    $core.String? errorMsg,
  }) {
    final result = create();
    if (errorCode != null) result.errorCode = errorCode;
    if (errorMsg != null) result.errorMsg = errorMsg;
    return result;
  }

  AivsError._();

  factory AivsError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AivsError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AivsError',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'errorCode', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'errorMsg');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AivsError copyWith(void Function(AivsError) updates) =>
      super.copyWith((message) => updates(message as AivsError)) as AivsError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AivsError create() => AivsError._();
  @$core.override
  AivsError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AivsError getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AivsError>(create);
  static AivsError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errorCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errorCode($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasErrorCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorMsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMsg($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasErrorMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMsg() => $_clearField(2);
}

class AFlash_SupportedLanguage extends $pb.GeneratedMessage {
  factory AFlash_SupportedLanguage({
    $core.String? languages,
  }) {
    final result = create();
    if (languages != null) result.languages = languages;
    return result;
  }

  AFlash_SupportedLanguage._();

  factory AFlash_SupportedLanguage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AFlash_SupportedLanguage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AFlash.SupportedLanguage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'languages');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AFlash_SupportedLanguage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AFlash_SupportedLanguage copyWith(
          void Function(AFlash_SupportedLanguage) updates) =>
      super.copyWith((message) => updates(message as AFlash_SupportedLanguage))
          as AFlash_SupportedLanguage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AFlash_SupportedLanguage create() => AFlash_SupportedLanguage._();
  @$core.override
  AFlash_SupportedLanguage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AFlash_SupportedLanguage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AFlash_SupportedLanguage>(create);
  static AFlash_SupportedLanguage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get languages => $_getSZ(0);
  @$pb.TagNumber(1)
  set languages($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLanguages() => $_has(0);
  @$pb.TagNumber(1)
  void clearLanguages() => $_clearField(1);
}

class AFlash_ConfirmResult_AlbumWF extends $pb.GeneratedMessage {
  factory AFlash_ConfirmResult_AlbumWF({
    $core.String? id,
    $0.ImageFormat? imageFormat,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (imageFormat != null) result.imageFormat = imageFormat;
    return result;
  }

  AFlash_ConfirmResult_AlbumWF._();

  factory AFlash_ConfirmResult_AlbumWF.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AFlash_ConfirmResult_AlbumWF.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AFlash.ConfirmResult.AlbumWF',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aE<$0.ImageFormat>(2, _omitFieldNames ? '' : 'imageFormat',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.ImageFormat.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AFlash_ConfirmResult_AlbumWF clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AFlash_ConfirmResult_AlbumWF copyWith(
          void Function(AFlash_ConfirmResult_AlbumWF) updates) =>
      super.copyWith(
              (message) => updates(message as AFlash_ConfirmResult_AlbumWF))
          as AFlash_ConfirmResult_AlbumWF;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AFlash_ConfirmResult_AlbumWF create() =>
      AFlash_ConfirmResult_AlbumWF._();
  @$core.override
  AFlash_ConfirmResult_AlbumWF createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AFlash_ConfirmResult_AlbumWF getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AFlash_ConfirmResult_AlbumWF>(create);
  static AFlash_ConfirmResult_AlbumWF? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.ImageFormat get imageFormat => $_getN(1);
  @$pb.TagNumber(2)
  set imageFormat($0.ImageFormat value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasImageFormat() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageFormat() => $_clearField(2);
}

class AFlash_ConfirmResult extends $pb.GeneratedMessage {
  factory AFlash_ConfirmResult({
    AFlash_Scene? scene,
    $core.bool? confirm,
    $core.String? content,
    AFlash_ConfirmResult_AlbumWF? albumWf,
  }) {
    final result = create();
    if (scene != null) result.scene = scene;
    if (confirm != null) result.confirm = confirm;
    if (content != null) result.content = content;
    if (albumWf != null) result.albumWf = albumWf;
    return result;
  }

  AFlash_ConfirmResult._();

  factory AFlash_ConfirmResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AFlash_ConfirmResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AFlash.ConfirmResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<AFlash_Scene>(1, _omitFieldNames ? '' : 'scene',
        fieldType: $pb.PbFieldType.QE, enumValues: AFlash_Scene.values)
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'confirm', $pb.PbFieldType.QB)
    ..aQS(3, _omitFieldNames ? '' : 'content')
    ..aOM<AFlash_ConfirmResult_AlbumWF>(4, _omitFieldNames ? '' : 'albumWf',
        subBuilder: AFlash_ConfirmResult_AlbumWF.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AFlash_ConfirmResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AFlash_ConfirmResult copyWith(void Function(AFlash_ConfirmResult) updates) =>
      super.copyWith((message) => updates(message as AFlash_ConfirmResult))
          as AFlash_ConfirmResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AFlash_ConfirmResult create() => AFlash_ConfirmResult._();
  @$core.override
  AFlash_ConfirmResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AFlash_ConfirmResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AFlash_ConfirmResult>(create);
  static AFlash_ConfirmResult? _defaultInstance;

  @$pb.TagNumber(1)
  AFlash_Scene get scene => $_getN(0);
  @$pb.TagNumber(1)
  set scene(AFlash_Scene value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasScene() => $_has(0);
  @$pb.TagNumber(1)
  void clearScene() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get confirm => $_getBF(1);
  @$pb.TagNumber(2)
  set confirm($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasConfirm() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfirm() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => $_clearField(3);

  @$pb.TagNumber(4)
  AFlash_ConfirmResult_AlbumWF get albumWf => $_getN(3);
  @$pb.TagNumber(4)
  set albumWf(AFlash_ConfirmResult_AlbumWF value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAlbumWf() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlbumWf() => $_clearField(4);
  @$pb.TagNumber(4)
  AFlash_ConfirmResult_AlbumWF ensureAlbumWf() => $_ensure(3);
}

class AFlash extends $pb.GeneratedMessage {
  factory AFlash() => create();

  AFlash._();

  factory AFlash.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AFlash.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AFlash',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AFlash clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AFlash copyWith(void Function(AFlash) updates) =>
      super.copyWith((message) => updates(message as AFlash)) as AFlash;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AFlash create() => AFlash._();
  @$core.override
  AFlash createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AFlash getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AFlash>(create);
  static AFlash? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
