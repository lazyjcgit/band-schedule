// This is a generated file - do not edit.
//
// Generated from wear_alexa.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_alexa.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_alexa.pbenum.dart';

enum Alexa_Payload { instructionList, config, quietMode, notSet }

class Alexa extends $pb.GeneratedMessage {
  factory Alexa({
    AlexaInstruction_List? instructionList,
    AlexaConfig? config,
    AlexaQuietMode? quietMode,
  }) {
    final result = create();
    if (instructionList != null) result.instructionList = instructionList;
    if (config != null) result.config = config;
    if (quietMode != null) result.quietMode = quietMode;
    return result;
  }

  Alexa._();

  factory Alexa.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Alexa.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Alexa_Payload> _Alexa_PayloadByTag = {
    1: Alexa_Payload.instructionList,
    2: Alexa_Payload.config,
    3: Alexa_Payload.quietMode,
    0: Alexa_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Alexa',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<AlexaInstruction_List>(1, _omitFieldNames ? '' : 'instructionList',
        subBuilder: AlexaInstruction_List.create)
    ..aOM<AlexaConfig>(2, _omitFieldNames ? '' : 'config',
        subBuilder: AlexaConfig.create)
    ..aOM<AlexaQuietMode>(3, _omitFieldNames ? '' : 'quietMode',
        subBuilder: AlexaQuietMode.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alexa clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alexa copyWith(void Function(Alexa) updates) =>
      super.copyWith((message) => updates(message as Alexa)) as Alexa;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Alexa create() => Alexa._();
  @$core.override
  Alexa createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Alexa getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Alexa>(create);
  static Alexa? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Alexa_Payload whichPayload() => _Alexa_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AlexaInstruction_List get instructionList => $_getN(0);
  @$pb.TagNumber(1)
  set instructionList(AlexaInstruction_List value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInstructionList() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstructionList() => $_clearField(1);
  @$pb.TagNumber(1)
  AlexaInstruction_List ensureInstructionList() => $_ensure(0);

  @$pb.TagNumber(2)
  AlexaConfig get config => $_getN(1);
  @$pb.TagNumber(2)
  set config(AlexaConfig value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfig() => $_clearField(2);
  @$pb.TagNumber(2)
  AlexaConfig ensureConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  AlexaQuietMode get quietMode => $_getN(2);
  @$pb.TagNumber(3)
  set quietMode(AlexaQuietMode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasQuietMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuietMode() => $_clearField(3);
  @$pb.TagNumber(3)
  AlexaQuietMode ensureQuietMode() => $_ensure(2);
}

class AlexaConfig extends $pb.GeneratedMessage {
  factory AlexaConfig({
    $core.String? clientId,
    $core.String? refreshToken,
    $core.String? language,
  }) {
    final result = create();
    if (clientId != null) result.clientId = clientId;
    if (refreshToken != null) result.refreshToken = refreshToken;
    if (language != null) result.language = language;
    return result;
  }

  AlexaConfig._();

  factory AlexaConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'clientId')
    ..aQS(2, _omitFieldNames ? '' : 'refreshToken')
    ..aQS(3, _omitFieldNames ? '' : 'language');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaConfig copyWith(void Function(AlexaConfig) updates) =>
      super.copyWith((message) => updates(message as AlexaConfig))
          as AlexaConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaConfig create() => AlexaConfig._();
  @$core.override
  AlexaConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaConfig>(create);
  static AlexaConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get language => $_getSZ(2);
  @$pb.TagNumber(3)
  set language($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLanguage() => $_has(2);
  @$pb.TagNumber(3)
  void clearLanguage() => $_clearField(3);
}

class AlexaQuietMode extends $pb.GeneratedMessage {
  factory AlexaQuietMode({
    $core.bool? on,
  }) {
    final result = create();
    if (on != null) result.on = on;
    return result;
  }

  AlexaQuietMode._();

  factory AlexaQuietMode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaQuietMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaQuietMode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'on', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaQuietMode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaQuietMode copyWith(void Function(AlexaQuietMode) updates) =>
      super.copyWith((message) => updates(message as AlexaQuietMode))
          as AlexaQuietMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaQuietMode create() => AlexaQuietMode._();
  @$core.override
  AlexaQuietMode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaQuietMode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaQuietMode>(create);
  static AlexaQuietMode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get on => $_getBF(0);
  @$pb.TagNumber(1)
  set on($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearOn() => $_clearField(1);
}

class AlexaInstruction_List extends $pb.GeneratedMessage {
  factory AlexaInstruction_List({
    $core.Iterable<AlexaInstruction>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  AlexaInstruction_List._();

  factory AlexaInstruction_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaInstruction_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaInstruction.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AlexaInstruction>(1, _omitFieldNames ? '' : 'list',
        subBuilder: AlexaInstruction.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaInstruction_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaInstruction_List copyWith(
          void Function(AlexaInstruction_List) updates) =>
      super.copyWith((message) => updates(message as AlexaInstruction_List))
          as AlexaInstruction_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaInstruction_List create() => AlexaInstruction_List._();
  @$core.override
  AlexaInstruction_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaInstruction_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaInstruction_List>(create);
  static AlexaInstruction_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AlexaInstruction> get list => $_getList(0);
}

class AlexaInstruction extends $pb.GeneratedMessage {
  factory AlexaInstruction({
    AlexaResultType? resultType,
    AlexaTemplateGeneral? templateGeneral,
    AlexaTemplateWeather? templateWeather,
    AlexaTemplateLists? templateLists,
    AlexaAlertsSetAlert? alertsSetalert,
    AlexaSpeechSynthesizerSpeak? speechsynthesizerSpeak,
    AlexaAuthStatus? authStatus,
    AlexaAlertsDeleteAlert_List? alertsDeletealerts,
    AlexaNotificationsSetIndicator? notificationsSetindicator,
  }) {
    final result = create();
    if (resultType != null) result.resultType = resultType;
    if (templateGeneral != null) result.templateGeneral = templateGeneral;
    if (templateWeather != null) result.templateWeather = templateWeather;
    if (templateLists != null) result.templateLists = templateLists;
    if (alertsSetalert != null) result.alertsSetalert = alertsSetalert;
    if (speechsynthesizerSpeak != null)
      result.speechsynthesizerSpeak = speechsynthesizerSpeak;
    if (authStatus != null) result.authStatus = authStatus;
    if (alertsDeletealerts != null)
      result.alertsDeletealerts = alertsDeletealerts;
    if (notificationsSetindicator != null)
      result.notificationsSetindicator = notificationsSetindicator;
    return result;
  }

  AlexaInstruction._();

  factory AlexaInstruction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaInstruction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaInstruction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<AlexaResultType>(1, _omitFieldNames ? '' : 'resultType',
        fieldType: $pb.PbFieldType.QE, enumValues: AlexaResultType.values)
    ..aOM<AlexaTemplateGeneral>(2, _omitFieldNames ? '' : 'templateGeneral',
        subBuilder: AlexaTemplateGeneral.create)
    ..aOM<AlexaTemplateWeather>(3, _omitFieldNames ? '' : 'templateWeather',
        subBuilder: AlexaTemplateWeather.create)
    ..aOM<AlexaTemplateLists>(4, _omitFieldNames ? '' : 'templateLists',
        subBuilder: AlexaTemplateLists.create)
    ..aOM<AlexaAlertsSetAlert>(5, _omitFieldNames ? '' : 'alertsSetalert',
        subBuilder: AlexaAlertsSetAlert.create)
    ..aOM<AlexaSpeechSynthesizerSpeak>(
        6, _omitFieldNames ? '' : 'speechsynthesizerSpeak',
        subBuilder: AlexaSpeechSynthesizerSpeak.create)
    ..aE<AlexaAuthStatus>(7, _omitFieldNames ? '' : 'authStatus',
        enumValues: AlexaAuthStatus.values)
    ..aOM<AlexaAlertsDeleteAlert_List>(
        12, _omitFieldNames ? '' : 'alertsDeletealerts',
        subBuilder: AlexaAlertsDeleteAlert_List.create)
    ..aOM<AlexaNotificationsSetIndicator>(
        13, _omitFieldNames ? '' : 'notificationsSetindicator',
        subBuilder: AlexaNotificationsSetIndicator.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaInstruction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaInstruction copyWith(void Function(AlexaInstruction) updates) =>
      super.copyWith((message) => updates(message as AlexaInstruction))
          as AlexaInstruction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaInstruction create() => AlexaInstruction._();
  @$core.override
  AlexaInstruction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaInstruction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaInstruction>(create);
  static AlexaInstruction? _defaultInstance;

  @$pb.TagNumber(1)
  AlexaResultType get resultType => $_getN(0);
  @$pb.TagNumber(1)
  set resultType(AlexaResultType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResultType() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultType() => $_clearField(1);

  @$pb.TagNumber(2)
  AlexaTemplateGeneral get templateGeneral => $_getN(1);
  @$pb.TagNumber(2)
  set templateGeneral(AlexaTemplateGeneral value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTemplateGeneral() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemplateGeneral() => $_clearField(2);
  @$pb.TagNumber(2)
  AlexaTemplateGeneral ensureTemplateGeneral() => $_ensure(1);

  @$pb.TagNumber(3)
  AlexaTemplateWeather get templateWeather => $_getN(2);
  @$pb.TagNumber(3)
  set templateWeather(AlexaTemplateWeather value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTemplateWeather() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemplateWeather() => $_clearField(3);
  @$pb.TagNumber(3)
  AlexaTemplateWeather ensureTemplateWeather() => $_ensure(2);

  @$pb.TagNumber(4)
  AlexaTemplateLists get templateLists => $_getN(3);
  @$pb.TagNumber(4)
  set templateLists(AlexaTemplateLists value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTemplateLists() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemplateLists() => $_clearField(4);
  @$pb.TagNumber(4)
  AlexaTemplateLists ensureTemplateLists() => $_ensure(3);

  @$pb.TagNumber(5)
  AlexaAlertsSetAlert get alertsSetalert => $_getN(4);
  @$pb.TagNumber(5)
  set alertsSetalert(AlexaAlertsSetAlert value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAlertsSetalert() => $_has(4);
  @$pb.TagNumber(5)
  void clearAlertsSetalert() => $_clearField(5);
  @$pb.TagNumber(5)
  AlexaAlertsSetAlert ensureAlertsSetalert() => $_ensure(4);

  @$pb.TagNumber(6)
  AlexaSpeechSynthesizerSpeak get speechsynthesizerSpeak => $_getN(5);
  @$pb.TagNumber(6)
  set speechsynthesizerSpeak(AlexaSpeechSynthesizerSpeak value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSpeechsynthesizerSpeak() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpeechsynthesizerSpeak() => $_clearField(6);
  @$pb.TagNumber(6)
  AlexaSpeechSynthesizerSpeak ensureSpeechsynthesizerSpeak() => $_ensure(5);

  @$pb.TagNumber(7)
  AlexaAuthStatus get authStatus => $_getN(6);
  @$pb.TagNumber(7)
  set authStatus(AlexaAuthStatus value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAuthStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearAuthStatus() => $_clearField(7);

  @$pb.TagNumber(12)
  AlexaAlertsDeleteAlert_List get alertsDeletealerts => $_getN(7);
  @$pb.TagNumber(12)
  set alertsDeletealerts(AlexaAlertsDeleteAlert_List value) =>
      $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAlertsDeletealerts() => $_has(7);
  @$pb.TagNumber(12)
  void clearAlertsDeletealerts() => $_clearField(12);
  @$pb.TagNumber(12)
  AlexaAlertsDeleteAlert_List ensureAlertsDeletealerts() => $_ensure(7);

  @$pb.TagNumber(13)
  AlexaNotificationsSetIndicator get notificationsSetindicator => $_getN(8);
  @$pb.TagNumber(13)
  set notificationsSetindicator(AlexaNotificationsSetIndicator value) =>
      $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasNotificationsSetindicator() => $_has(8);
  @$pb.TagNumber(13)
  void clearNotificationsSetindicator() => $_clearField(13);
  @$pb.TagNumber(13)
  AlexaNotificationsSetIndicator ensureNotificationsSetindicator() =>
      $_ensure(8);
}

class AlexaTemplateGeneral extends $pb.GeneratedMessage {
  factory AlexaTemplateGeneral({
    AlexaTitle? title,
    $core.String? text,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (text != null) result.text = text;
    return result;
  }

  AlexaTemplateGeneral._();

  factory AlexaTemplateGeneral.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaTemplateGeneral.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaTemplateGeneral',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<AlexaTitle>(1, _omitFieldNames ? '' : 'title',
        subBuilder: AlexaTitle.create)
    ..aQS(2, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaTemplateGeneral clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaTemplateGeneral copyWith(void Function(AlexaTemplateGeneral) updates) =>
      super.copyWith((message) => updates(message as AlexaTemplateGeneral))
          as AlexaTemplateGeneral;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaTemplateGeneral create() => AlexaTemplateGeneral._();
  @$core.override
  AlexaTemplateGeneral createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaTemplateGeneral getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaTemplateGeneral>(create);
  static AlexaTemplateGeneral? _defaultInstance;

  @$pb.TagNumber(1)
  AlexaTitle get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(AlexaTitle value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  AlexaTitle ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);
}

class AlexaTemplateWeather extends $pb.GeneratedMessage {
  factory AlexaTemplateWeather({
    AlexaTitle? title,
    $core.String? currentWeather,
    $core.String? description,
    $core.String? highTemperature,
    $core.String? lowTemperature,
    $core.String? image,
    AlexaWeatherItem_List? weatherForecast,
    $core.int? weatherCode,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (currentWeather != null) result.currentWeather = currentWeather;
    if (description != null) result.description = description;
    if (highTemperature != null) result.highTemperature = highTemperature;
    if (lowTemperature != null) result.lowTemperature = lowTemperature;
    if (image != null) result.image = image;
    if (weatherForecast != null) result.weatherForecast = weatherForecast;
    if (weatherCode != null) result.weatherCode = weatherCode;
    return result;
  }

  AlexaTemplateWeather._();

  factory AlexaTemplateWeather.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaTemplateWeather.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaTemplateWeather',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<AlexaTitle>(1, _omitFieldNames ? '' : 'title',
        subBuilder: AlexaTitle.create)
    ..aQS(2, _omitFieldNames ? '' : 'currentWeather')
    ..aQS(3, _omitFieldNames ? '' : 'description')
    ..aQS(4, _omitFieldNames ? '' : 'highTemperature')
    ..aQS(5, _omitFieldNames ? '' : 'lowTemperature')
    ..aQS(6, _omitFieldNames ? '' : 'image')
    ..aQM<AlexaWeatherItem_List>(7, _omitFieldNames ? '' : 'weatherForecast',
        protoName: 'weatherForecast', subBuilder: AlexaWeatherItem_List.create)
    ..aI(8, _omitFieldNames ? '' : 'weatherCode',
        fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaTemplateWeather clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaTemplateWeather copyWith(void Function(AlexaTemplateWeather) updates) =>
      super.copyWith((message) => updates(message as AlexaTemplateWeather))
          as AlexaTemplateWeather;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaTemplateWeather create() => AlexaTemplateWeather._();
  @$core.override
  AlexaTemplateWeather createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaTemplateWeather getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaTemplateWeather>(create);
  static AlexaTemplateWeather? _defaultInstance;

  @$pb.TagNumber(1)
  AlexaTitle get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(AlexaTitle value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  AlexaTitle ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get currentWeather => $_getSZ(1);
  @$pb.TagNumber(2)
  set currentWeather($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentWeather() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentWeather() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get highTemperature => $_getSZ(3);
  @$pb.TagNumber(4)
  set highTemperature($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHighTemperature() => $_has(3);
  @$pb.TagNumber(4)
  void clearHighTemperature() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get lowTemperature => $_getSZ(4);
  @$pb.TagNumber(5)
  set lowTemperature($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLowTemperature() => $_has(4);
  @$pb.TagNumber(5)
  void clearLowTemperature() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get image => $_getSZ(5);
  @$pb.TagNumber(6)
  set image($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearImage() => $_clearField(6);

  @$pb.TagNumber(7)
  AlexaWeatherItem_List get weatherForecast => $_getN(6);
  @$pb.TagNumber(7)
  set weatherForecast(AlexaWeatherItem_List value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasWeatherForecast() => $_has(6);
  @$pb.TagNumber(7)
  void clearWeatherForecast() => $_clearField(7);
  @$pb.TagNumber(7)
  AlexaWeatherItem_List ensureWeatherForecast() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.int get weatherCode => $_getIZ(7);
  @$pb.TagNumber(8)
  set weatherCode($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWeatherCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearWeatherCode() => $_clearField(8);
}

class AlexaWeatherItem_List extends $pb.GeneratedMessage {
  factory AlexaWeatherItem_List({
    $core.Iterable<AlexaWeatherItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  AlexaWeatherItem_List._();

  factory AlexaWeatherItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaWeatherItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaWeatherItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AlexaWeatherItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: AlexaWeatherItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaWeatherItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaWeatherItem_List copyWith(
          void Function(AlexaWeatherItem_List) updates) =>
      super.copyWith((message) => updates(message as AlexaWeatherItem_List))
          as AlexaWeatherItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaWeatherItem_List create() => AlexaWeatherItem_List._();
  @$core.override
  AlexaWeatherItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaWeatherItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaWeatherItem_List>(create);
  static AlexaWeatherItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AlexaWeatherItem> get list => $_getList(0);
}

class AlexaWeatherItem extends $pb.GeneratedMessage {
  factory AlexaWeatherItem({
    $core.String? date,
    $core.String? weekday,
    $core.String? highTemperature,
    $core.String? lowTemperature,
    $core.String? image,
    $core.int? weatherCode,
  }) {
    final result = create();
    if (date != null) result.date = date;
    if (weekday != null) result.weekday = weekday;
    if (highTemperature != null) result.highTemperature = highTemperature;
    if (lowTemperature != null) result.lowTemperature = lowTemperature;
    if (image != null) result.image = image;
    if (weatherCode != null) result.weatherCode = weatherCode;
    return result;
  }

  AlexaWeatherItem._();

  factory AlexaWeatherItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaWeatherItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaWeatherItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'date')
    ..aQS(2, _omitFieldNames ? '' : 'weekday')
    ..aQS(3, _omitFieldNames ? '' : 'highTemperature')
    ..aQS(4, _omitFieldNames ? '' : 'lowTemperature')
    ..aQS(5, _omitFieldNames ? '' : 'image')
    ..aI(6, _omitFieldNames ? '' : 'weatherCode',
        fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaWeatherItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaWeatherItem copyWith(void Function(AlexaWeatherItem) updates) =>
      super.copyWith((message) => updates(message as AlexaWeatherItem))
          as AlexaWeatherItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaWeatherItem create() => AlexaWeatherItem._();
  @$core.override
  AlexaWeatherItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaWeatherItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaWeatherItem>(create);
  static AlexaWeatherItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get weekday => $_getSZ(1);
  @$pb.TagNumber(2)
  set weekday($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWeekday() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeekday() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get highTemperature => $_getSZ(2);
  @$pb.TagNumber(3)
  set highTemperature($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHighTemperature() => $_has(2);
  @$pb.TagNumber(3)
  void clearHighTemperature() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get lowTemperature => $_getSZ(3);
  @$pb.TagNumber(4)
  set lowTemperature($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLowTemperature() => $_has(3);
  @$pb.TagNumber(4)
  void clearLowTemperature() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get image => $_getSZ(4);
  @$pb.TagNumber(5)
  set image($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasImage() => $_has(4);
  @$pb.TagNumber(5)
  void clearImage() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get weatherCode => $_getIZ(5);
  @$pb.TagNumber(6)
  set weatherCode($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWeatherCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearWeatherCode() => $_clearField(6);
}

class AlexaTemplateLists extends $pb.GeneratedMessage {
  factory AlexaTemplateLists({
    AlexaTitle? title,
    AlexaListsItem_List? items,
    $core.bool? exceedMaxItems,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (items != null) result.items = items;
    if (exceedMaxItems != null) result.exceedMaxItems = exceedMaxItems;
    return result;
  }

  AlexaTemplateLists._();

  factory AlexaTemplateLists.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaTemplateLists.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaTemplateLists',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<AlexaTitle>(1, _omitFieldNames ? '' : 'title',
        subBuilder: AlexaTitle.create)
    ..aQM<AlexaListsItem_List>(2, _omitFieldNames ? '' : 'items',
        subBuilder: AlexaListsItem_List.create)
    ..a<$core.bool>(
        3, _omitFieldNames ? '' : 'exceedMaxItems', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaTemplateLists clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaTemplateLists copyWith(void Function(AlexaTemplateLists) updates) =>
      super.copyWith((message) => updates(message as AlexaTemplateLists))
          as AlexaTemplateLists;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaTemplateLists create() => AlexaTemplateLists._();
  @$core.override
  AlexaTemplateLists createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaTemplateLists getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaTemplateLists>(create);
  static AlexaTemplateLists? _defaultInstance;

  @$pb.TagNumber(1)
  AlexaTitle get title => $_getN(0);
  @$pb.TagNumber(1)
  set title(AlexaTitle value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
  @$pb.TagNumber(1)
  AlexaTitle ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  AlexaListsItem_List get items => $_getN(1);
  @$pb.TagNumber(2)
  set items(AlexaListsItem_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasItems() => $_has(1);
  @$pb.TagNumber(2)
  void clearItems() => $_clearField(2);
  @$pb.TagNumber(2)
  AlexaListsItem_List ensureItems() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get exceedMaxItems => $_getBF(2);
  @$pb.TagNumber(3)
  set exceedMaxItems($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExceedMaxItems() => $_has(2);
  @$pb.TagNumber(3)
  void clearExceedMaxItems() => $_clearField(3);
}

class AlexaListsItem_List extends $pb.GeneratedMessage {
  factory AlexaListsItem_List({
    $core.Iterable<AlexaListsItem>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  AlexaListsItem_List._();

  factory AlexaListsItem_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaListsItem_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaListsItem.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AlexaListsItem>(1, _omitFieldNames ? '' : 'list',
        subBuilder: AlexaListsItem.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaListsItem_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaListsItem_List copyWith(void Function(AlexaListsItem_List) updates) =>
      super.copyWith((message) => updates(message as AlexaListsItem_List))
          as AlexaListsItem_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaListsItem_List create() => AlexaListsItem_List._();
  @$core.override
  AlexaListsItem_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaListsItem_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaListsItem_List>(create);
  static AlexaListsItem_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AlexaListsItem> get list => $_getList(0);
}

class AlexaListsItem extends $pb.GeneratedMessage {
  factory AlexaListsItem({
    $core.String? left,
    $core.String? right,
  }) {
    final result = create();
    if (left != null) result.left = left;
    if (right != null) result.right = right;
    return result;
  }

  AlexaListsItem._();

  factory AlexaListsItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaListsItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaListsItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'left')
    ..aQS(2, _omitFieldNames ? '' : 'right');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaListsItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaListsItem copyWith(void Function(AlexaListsItem) updates) =>
      super.copyWith((message) => updates(message as AlexaListsItem))
          as AlexaListsItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaListsItem create() => AlexaListsItem._();
  @$core.override
  AlexaListsItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaListsItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaListsItem>(create);
  static AlexaListsItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get left => $_getSZ(0);
  @$pb.TagNumber(1)
  set left($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get right => $_getSZ(1);
  @$pb.TagNumber(2)
  set right($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => $_clearField(2);
}

class AlexaAlertsSetAlert extends $pb.GeneratedMessage {
  factory AlexaAlertsSetAlert({
    $core.String? token,
    AlexaAlertType? type,
    $core.String? scheduledTime,
    $core.String? label,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (type != null) result.type = type;
    if (scheduledTime != null) result.scheduledTime = scheduledTime;
    if (label != null) result.label = label;
    return result;
  }

  AlexaAlertsSetAlert._();

  factory AlexaAlertsSetAlert.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaAlertsSetAlert.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaAlertsSetAlert',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'token')
    ..aE<AlexaAlertType>(2, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: AlexaAlertType.values)
    ..aQS(3, _omitFieldNames ? '' : 'scheduledTime', protoName: 'scheduledTime')
    ..aQS(4, _omitFieldNames ? '' : 'label');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaAlertsSetAlert clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaAlertsSetAlert copyWith(void Function(AlexaAlertsSetAlert) updates) =>
      super.copyWith((message) => updates(message as AlexaAlertsSetAlert))
          as AlexaAlertsSetAlert;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaAlertsSetAlert create() => AlexaAlertsSetAlert._();
  @$core.override
  AlexaAlertsSetAlert createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaAlertsSetAlert getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaAlertsSetAlert>(create);
  static AlexaAlertsSetAlert? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  @$pb.TagNumber(2)
  AlexaAlertType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(AlexaAlertType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get scheduledTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set scheduledTime($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScheduledTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearScheduledTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get label => $_getSZ(3);
  @$pb.TagNumber(4)
  set label($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabel() => $_clearField(4);
}

class AlexaAlertsDeleteAlert_List extends $pb.GeneratedMessage {
  factory AlexaAlertsDeleteAlert_List({
    $core.Iterable<AlexaAlertsDeleteAlert>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  AlexaAlertsDeleteAlert_List._();

  factory AlexaAlertsDeleteAlert_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaAlertsDeleteAlert_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaAlertsDeleteAlert.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<AlexaAlertsDeleteAlert>(1, _omitFieldNames ? '' : 'list',
        subBuilder: AlexaAlertsDeleteAlert.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaAlertsDeleteAlert_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaAlertsDeleteAlert_List copyWith(
          void Function(AlexaAlertsDeleteAlert_List) updates) =>
      super.copyWith(
              (message) => updates(message as AlexaAlertsDeleteAlert_List))
          as AlexaAlertsDeleteAlert_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaAlertsDeleteAlert_List create() =>
      AlexaAlertsDeleteAlert_List._();
  @$core.override
  AlexaAlertsDeleteAlert_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaAlertsDeleteAlert_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaAlertsDeleteAlert_List>(create);
  static AlexaAlertsDeleteAlert_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AlexaAlertsDeleteAlert> get list => $_getList(0);
}

class AlexaAlertsDeleteAlert extends $pb.GeneratedMessage {
  factory AlexaAlertsDeleteAlert({
    $core.String? token,
  }) {
    final result = create();
    if (token != null) result.token = token;
    return result;
  }

  AlexaAlertsDeleteAlert._();

  factory AlexaAlertsDeleteAlert.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaAlertsDeleteAlert.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaAlertsDeleteAlert',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'token');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaAlertsDeleteAlert clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaAlertsDeleteAlert copyWith(
          void Function(AlexaAlertsDeleteAlert) updates) =>
      super.copyWith((message) => updates(message as AlexaAlertsDeleteAlert))
          as AlexaAlertsDeleteAlert;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaAlertsDeleteAlert create() => AlexaAlertsDeleteAlert._();
  @$core.override
  AlexaAlertsDeleteAlert createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaAlertsDeleteAlert getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaAlertsDeleteAlert>(create);
  static AlexaAlertsDeleteAlert? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);
}

class AlexaSpeechSynthesizerSpeak extends $pb.GeneratedMessage {
  factory AlexaSpeechSynthesizerSpeak({
    $core.String? text,
  }) {
    final result = create();
    if (text != null) result.text = text;
    return result;
  }

  AlexaSpeechSynthesizerSpeak._();

  factory AlexaSpeechSynthesizerSpeak.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaSpeechSynthesizerSpeak.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaSpeechSynthesizerSpeak',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaSpeechSynthesizerSpeak clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaSpeechSynthesizerSpeak copyWith(
          void Function(AlexaSpeechSynthesizerSpeak) updates) =>
      super.copyWith(
              (message) => updates(message as AlexaSpeechSynthesizerSpeak))
          as AlexaSpeechSynthesizerSpeak;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaSpeechSynthesizerSpeak create() =>
      AlexaSpeechSynthesizerSpeak._();
  @$core.override
  AlexaSpeechSynthesizerSpeak createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaSpeechSynthesizerSpeak getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaSpeechSynthesizerSpeak>(create);
  static AlexaSpeechSynthesizerSpeak? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class AlexaTitle extends $pb.GeneratedMessage {
  factory AlexaTitle({
    $core.String? mainTitle,
    $core.String? subTitle,
  }) {
    final result = create();
    if (mainTitle != null) result.mainTitle = mainTitle;
    if (subTitle != null) result.subTitle = subTitle;
    return result;
  }

  AlexaTitle._();

  factory AlexaTitle.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaTitle.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaTitle',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'mainTitle')
    ..aQS(2, _omitFieldNames ? '' : 'subTitle');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaTitle clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaTitle copyWith(void Function(AlexaTitle) updates) =>
      super.copyWith((message) => updates(message as AlexaTitle)) as AlexaTitle;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaTitle create() => AlexaTitle._();
  @$core.override
  AlexaTitle createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaTitle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaTitle>(create);
  static AlexaTitle? _defaultInstance;

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

class AlexaNotificationsSetIndicator extends $pb.GeneratedMessage {
  factory AlexaNotificationsSetIndicator({
    $core.bool? playAudioIndicator,
    $core.bool? persistVisualIndicator,
  }) {
    final result = create();
    if (playAudioIndicator != null)
      result.playAudioIndicator = playAudioIndicator;
    if (persistVisualIndicator != null)
      result.persistVisualIndicator = persistVisualIndicator;
    return result;
  }

  AlexaNotificationsSetIndicator._();

  factory AlexaNotificationsSetIndicator.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlexaNotificationsSetIndicator.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlexaNotificationsSetIndicator',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(
        1, _omitFieldNames ? '' : 'playAudioIndicator', $pb.PbFieldType.QB,
        protoName: 'playAudioIndicator')
    ..a<$core.bool>(
        2, _omitFieldNames ? '' : 'persistVisualIndicator', $pb.PbFieldType.QB,
        protoName: 'persistVisualIndicator');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaNotificationsSetIndicator clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlexaNotificationsSetIndicator copyWith(
          void Function(AlexaNotificationsSetIndicator) updates) =>
      super.copyWith(
              (message) => updates(message as AlexaNotificationsSetIndicator))
          as AlexaNotificationsSetIndicator;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlexaNotificationsSetIndicator create() =>
      AlexaNotificationsSetIndicator._();
  @$core.override
  AlexaNotificationsSetIndicator createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlexaNotificationsSetIndicator getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlexaNotificationsSetIndicator>(create);
  static AlexaNotificationsSetIndicator? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get playAudioIndicator => $_getBF(0);
  @$pb.TagNumber(1)
  set playAudioIndicator($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPlayAudioIndicator() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayAudioIndicator() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get persistVisualIndicator => $_getBF(1);
  @$pb.TagNumber(2)
  set persistVisualIndicator($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPersistVisualIndicator() => $_has(1);
  @$pb.TagNumber(2)
  void clearPersistVisualIndicator() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
