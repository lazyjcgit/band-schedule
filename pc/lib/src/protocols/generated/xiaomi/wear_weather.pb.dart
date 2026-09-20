// This is a generated file - do not edit.
//
// Generated from wear_weather.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_weather.pbenum.dart';

enum Weather_Payload {
  latest,
  forecast,
  pressure,
  cityKeyList,
  cityKey,
  weatherConfig,
  notSet
}

class Weather extends $pb.GeneratedMessage {
  factory Weather({
    WeatherLatest? latest,
    WeatherForecast? forecast,
    $core.double? pressure,
    CityKey_List? cityKeyList,
    CityKey? cityKey,
    WeatherConfig? weatherConfig,
  }) {
    final result = create();
    if (latest != null) result.latest = latest;
    if (forecast != null) result.forecast = forecast;
    if (pressure != null) result.pressure = pressure;
    if (cityKeyList != null) result.cityKeyList = cityKeyList;
    if (cityKey != null) result.cityKey = cityKey;
    if (weatherConfig != null) result.weatherConfig = weatherConfig;
    return result;
  }

  Weather._();

  factory Weather.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Weather.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Weather_Payload> _Weather_PayloadByTag = {
    1: Weather_Payload.latest,
    2: Weather_Payload.forecast,
    3: Weather_Payload.pressure,
    4: Weather_Payload.cityKeyList,
    5: Weather_Payload.cityKey,
    6: Weather_Payload.weatherConfig,
    0: Weather_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Weather',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<WeatherLatest>(1, _omitFieldNames ? '' : 'latest',
        subBuilder: WeatherLatest.create)
    ..aOM<WeatherForecast>(2, _omitFieldNames ? '' : 'forecast',
        subBuilder: WeatherForecast.create)
    ..aD(3, _omitFieldNames ? '' : 'pressure', fieldType: $pb.PbFieldType.OF)
    ..aOM<CityKey_List>(4, _omitFieldNames ? '' : 'cityKeyList',
        subBuilder: CityKey_List.create)
    ..aOM<CityKey>(5, _omitFieldNames ? '' : 'cityKey',
        subBuilder: CityKey.create)
    ..aOM<WeatherConfig>(6, _omitFieldNames ? '' : 'weatherConfig',
        subBuilder: WeatherConfig.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Weather clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Weather copyWith(void Function(Weather) updates) =>
      super.copyWith((message) => updates(message as Weather)) as Weather;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Weather create() => Weather._();
  @$core.override
  Weather createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Weather getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Weather>(create);
  static Weather? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  Weather_Payload whichPayload() => _Weather_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WeatherLatest get latest => $_getN(0);
  @$pb.TagNumber(1)
  set latest(WeatherLatest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLatest() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatest() => $_clearField(1);
  @$pb.TagNumber(1)
  WeatherLatest ensureLatest() => $_ensure(0);

  @$pb.TagNumber(2)
  WeatherForecast get forecast => $_getN(1);
  @$pb.TagNumber(2)
  set forecast(WeatherForecast value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasForecast() => $_has(1);
  @$pb.TagNumber(2)
  void clearForecast() => $_clearField(2);
  @$pb.TagNumber(2)
  WeatherForecast ensureForecast() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get pressure => $_getN(2);
  @$pb.TagNumber(3)
  set pressure($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPressure() => $_has(2);
  @$pb.TagNumber(3)
  void clearPressure() => $_clearField(3);

  @$pb.TagNumber(4)
  CityKey_List get cityKeyList => $_getN(3);
  @$pb.TagNumber(4)
  set cityKeyList(CityKey_List value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCityKeyList() => $_has(3);
  @$pb.TagNumber(4)
  void clearCityKeyList() => $_clearField(4);
  @$pb.TagNumber(4)
  CityKey_List ensureCityKeyList() => $_ensure(3);

  @$pb.TagNumber(5)
  CityKey get cityKey => $_getN(4);
  @$pb.TagNumber(5)
  set cityKey(CityKey value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCityKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearCityKey() => $_clearField(5);
  @$pb.TagNumber(5)
  CityKey ensureCityKey() => $_ensure(4);

  @$pb.TagNumber(6)
  WeatherConfig get weatherConfig => $_getN(5);
  @$pb.TagNumber(6)
  set weatherConfig(WeatherConfig value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasWeatherConfig() => $_has(5);
  @$pb.TagNumber(6)
  void clearWeatherConfig() => $_clearField(6);
  @$pb.TagNumber(6)
  WeatherConfig ensureWeatherConfig() => $_ensure(5);
}

class CityKey_List extends $pb.GeneratedMessage {
  factory CityKey_List({
    $core.Iterable<CityKey>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  CityKey_List._();

  factory CityKey_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CityKey_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CityKey.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<CityKey>(1, _omitFieldNames ? '' : 'list',
        subBuilder: CityKey.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CityKey_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CityKey_List copyWith(void Function(CityKey_List) updates) =>
      super.copyWith((message) => updates(message as CityKey_List))
          as CityKey_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CityKey_List create() => CityKey_List._();
  @$core.override
  CityKey_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CityKey_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CityKey_List>(create);
  static CityKey_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CityKey> get list => $_getList(0);
}

class CityKey extends $pb.GeneratedMessage {
  factory CityKey({
    $core.String? locationKey,
    $core.String? cityName,
  }) {
    final result = create();
    if (locationKey != null) result.locationKey = locationKey;
    if (cityName != null) result.cityName = cityName;
    return result;
  }

  CityKey._();

  factory CityKey.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CityKey.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CityKey',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'locationKey')
    ..aQS(2, _omitFieldNames ? '' : 'cityName');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CityKey clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CityKey copyWith(void Function(CityKey) updates) =>
      super.copyWith((message) => updates(message as CityKey)) as CityKey;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CityKey create() => CityKey._();
  @$core.override
  CityKey createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CityKey getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CityKey>(create);
  static CityKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locationKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set locationKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocationKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get cityName => $_getSZ(1);
  @$pb.TagNumber(2)
  set cityName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCityName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCityName() => $_clearField(2);
}

class WeatherId extends $pb.GeneratedMessage {
  factory WeatherId({
    $core.String? pubTime,
    $core.String? cityName,
    $core.String? locationName,
    $core.String? locationKey,
    $core.bool? isCurrentLocation,
  }) {
    final result = create();
    if (pubTime != null) result.pubTime = pubTime;
    if (cityName != null) result.cityName = cityName;
    if (locationName != null) result.locationName = locationName;
    if (locationKey != null) result.locationKey = locationKey;
    if (isCurrentLocation != null) result.isCurrentLocation = isCurrentLocation;
    return result;
  }

  WeatherId._();

  factory WeatherId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherId',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'pubTime')
    ..aQS(2, _omitFieldNames ? '' : 'cityName')
    ..aQS(3, _omitFieldNames ? '' : 'locationName')
    ..aQS(4, _omitFieldNames ? '' : 'locationKey')
    ..aOB(5, _omitFieldNames ? '' : 'isCurrentLocation');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherId copyWith(void Function(WeatherId) updates) =>
      super.copyWith((message) => updates(message as WeatherId)) as WeatherId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherId create() => WeatherId._();
  @$core.override
  WeatherId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherId getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeatherId>(create);
  static WeatherId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPubTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get cityName => $_getSZ(1);
  @$pb.TagNumber(2)
  set cityName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCityName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCityName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get locationName => $_getSZ(2);
  @$pb.TagNumber(3)
  set locationName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocationName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocationName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get locationKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set locationKey($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLocationKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocationKey() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isCurrentLocation => $_getBF(4);
  @$pb.TagNumber(5)
  set isCurrentLocation($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsCurrentLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsCurrentLocation() => $_clearField(5);
}

class WeatherLatest extends $pb.GeneratedMessage {
  factory WeatherLatest({
    WeatherId? id,
    $core.int? weather,
    $0.KeyValue? temperature,
    $0.KeyValue? humidity,
    $0.KeyValue? windInfo,
    $0.KeyValue? uvindex,
    $0.KeyValue? aqi,
    Alerts_List? alertsList,
    $core.double? pressure,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (weather != null) result.weather = weather;
    if (temperature != null) result.temperature = temperature;
    if (humidity != null) result.humidity = humidity;
    if (windInfo != null) result.windInfo = windInfo;
    if (uvindex != null) result.uvindex = uvindex;
    if (aqi != null) result.aqi = aqi;
    if (alertsList != null) result.alertsList = alertsList;
    if (pressure != null) result.pressure = pressure;
    return result;
  }

  WeatherLatest._();

  factory WeatherLatest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherLatest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherLatest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<WeatherId>(1, _omitFieldNames ? '' : 'id',
        subBuilder: WeatherId.create)
    ..aI(2, _omitFieldNames ? '' : 'weather', fieldType: $pb.PbFieldType.QU3)
    ..aQM<$0.KeyValue>(3, _omitFieldNames ? '' : 'temperature',
        subBuilder: $0.KeyValue.create)
    ..aQM<$0.KeyValue>(4, _omitFieldNames ? '' : 'humidity',
        subBuilder: $0.KeyValue.create)
    ..aQM<$0.KeyValue>(5, _omitFieldNames ? '' : 'windInfo',
        subBuilder: $0.KeyValue.create)
    ..aQM<$0.KeyValue>(6, _omitFieldNames ? '' : 'uvindex',
        subBuilder: $0.KeyValue.create)
    ..aQM<$0.KeyValue>(7, _omitFieldNames ? '' : 'aqi',
        subBuilder: $0.KeyValue.create)
    ..aQM<Alerts_List>(8, _omitFieldNames ? '' : 'alertsList',
        subBuilder: Alerts_List.create)
    ..aD(9, _omitFieldNames ? '' : 'pressure', fieldType: $pb.PbFieldType.OF);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherLatest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherLatest copyWith(void Function(WeatherLatest) updates) =>
      super.copyWith((message) => updates(message as WeatherLatest))
          as WeatherLatest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherLatest create() => WeatherLatest._();
  @$core.override
  WeatherLatest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherLatest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherLatest>(create);
  static WeatherLatest? _defaultInstance;

  @$pb.TagNumber(1)
  WeatherId get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(WeatherId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
  @$pb.TagNumber(1)
  WeatherId ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get weather => $_getIZ(1);
  @$pb.TagNumber(2)
  set weather($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWeather() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeather() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.KeyValue get temperature => $_getN(2);
  @$pb.TagNumber(3)
  set temperature($0.KeyValue value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTemperature() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemperature() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.KeyValue ensureTemperature() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.KeyValue get humidity => $_getN(3);
  @$pb.TagNumber(4)
  set humidity($0.KeyValue value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasHumidity() => $_has(3);
  @$pb.TagNumber(4)
  void clearHumidity() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.KeyValue ensureHumidity() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.KeyValue get windInfo => $_getN(4);
  @$pb.TagNumber(5)
  set windInfo($0.KeyValue value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasWindInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearWindInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.KeyValue ensureWindInfo() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.KeyValue get uvindex => $_getN(5);
  @$pb.TagNumber(6)
  set uvindex($0.KeyValue value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasUvindex() => $_has(5);
  @$pb.TagNumber(6)
  void clearUvindex() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.KeyValue ensureUvindex() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.KeyValue get aqi => $_getN(6);
  @$pb.TagNumber(7)
  set aqi($0.KeyValue value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAqi() => $_has(6);
  @$pb.TagNumber(7)
  void clearAqi() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.KeyValue ensureAqi() => $_ensure(6);

  @$pb.TagNumber(8)
  Alerts_List get alertsList => $_getN(7);
  @$pb.TagNumber(8)
  set alertsList(Alerts_List value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAlertsList() => $_has(7);
  @$pb.TagNumber(8)
  void clearAlertsList() => $_clearField(8);
  @$pb.TagNumber(8)
  Alerts_List ensureAlertsList() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.double get pressure => $_getN(8);
  @$pb.TagNumber(9)
  set pressure($core.double value) => $_setFloat(8, value);
  @$pb.TagNumber(9)
  $core.bool hasPressure() => $_has(8);
  @$pb.TagNumber(9)
  void clearPressure() => $_clearField(9);
}

class WeatherForecast_Data_List extends $pb.GeneratedMessage {
  factory WeatherForecast_Data_List({
    $core.Iterable<WeatherForecast_Data>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  WeatherForecast_Data_List._();

  factory WeatherForecast_Data_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherForecast_Data_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherForecast.Data.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<WeatherForecast_Data>(1, _omitFieldNames ? '' : 'list',
        subBuilder: WeatherForecast_Data.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherForecast_Data_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherForecast_Data_List copyWith(
          void Function(WeatherForecast_Data_List) updates) =>
      super.copyWith((message) => updates(message as WeatherForecast_Data_List))
          as WeatherForecast_Data_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherForecast_Data_List create() => WeatherForecast_Data_List._();
  @$core.override
  WeatherForecast_Data_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherForecast_Data_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherForecast_Data_List>(create);
  static WeatherForecast_Data_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WeatherForecast_Data> get list => $_getList(0);
}

class WeatherForecast_Data extends $pb.GeneratedMessage {
  factory WeatherForecast_Data({
    $0.KeyValue? aqi,
    $0.RangeValue? weather,
    $0.RangeValue? temperature,
    $core.String? temperatureUnit,
    SunRiseSet? sunRiseSet,
    $0.KeyValue? windInfo,
  }) {
    final result = create();
    if (aqi != null) result.aqi = aqi;
    if (weather != null) result.weather = weather;
    if (temperature != null) result.temperature = temperature;
    if (temperatureUnit != null) result.temperatureUnit = temperatureUnit;
    if (sunRiseSet != null) result.sunRiseSet = sunRiseSet;
    if (windInfo != null) result.windInfo = windInfo;
    return result;
  }

  WeatherForecast_Data._();

  factory WeatherForecast_Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherForecast_Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherForecast.Data',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<$0.KeyValue>(1, _omitFieldNames ? '' : 'aqi',
        subBuilder: $0.KeyValue.create)
    ..aOM<$0.RangeValue>(2, _omitFieldNames ? '' : 'weather',
        subBuilder: $0.RangeValue.create)
    ..aOM<$0.RangeValue>(3, _omitFieldNames ? '' : 'temperature',
        subBuilder: $0.RangeValue.create)
    ..aQS(4, _omitFieldNames ? '' : 'temperatureUnit')
    ..aOM<SunRiseSet>(5, _omitFieldNames ? '' : 'sunRiseSet',
        subBuilder: SunRiseSet.create)
    ..aOM<$0.KeyValue>(6, _omitFieldNames ? '' : 'windInfo',
        subBuilder: $0.KeyValue.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherForecast_Data clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherForecast_Data copyWith(void Function(WeatherForecast_Data) updates) =>
      super.copyWith((message) => updates(message as WeatherForecast_Data))
          as WeatherForecast_Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherForecast_Data create() => WeatherForecast_Data._();
  @$core.override
  WeatherForecast_Data createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherForecast_Data getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherForecast_Data>(create);
  static WeatherForecast_Data? _defaultInstance;

  @$pb.TagNumber(1)
  $0.KeyValue get aqi => $_getN(0);
  @$pb.TagNumber(1)
  set aqi($0.KeyValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAqi() => $_has(0);
  @$pb.TagNumber(1)
  void clearAqi() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.KeyValue ensureAqi() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.RangeValue get weather => $_getN(1);
  @$pb.TagNumber(2)
  set weather($0.RangeValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWeather() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeather() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.RangeValue ensureWeather() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.RangeValue get temperature => $_getN(2);
  @$pb.TagNumber(3)
  set temperature($0.RangeValue value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTemperature() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemperature() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.RangeValue ensureTemperature() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get temperatureUnit => $_getSZ(3);
  @$pb.TagNumber(4)
  set temperatureUnit($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTemperatureUnit() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemperatureUnit() => $_clearField(4);

  @$pb.TagNumber(5)
  SunRiseSet get sunRiseSet => $_getN(4);
  @$pb.TagNumber(5)
  set sunRiseSet(SunRiseSet value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSunRiseSet() => $_has(4);
  @$pb.TagNumber(5)
  void clearSunRiseSet() => $_clearField(5);
  @$pb.TagNumber(5)
  SunRiseSet ensureSunRiseSet() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.KeyValue get windInfo => $_getN(5);
  @$pb.TagNumber(6)
  set windInfo($0.KeyValue value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasWindInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearWindInfo() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.KeyValue ensureWindInfo() => $_ensure(5);
}

class WeatherForecast extends $pb.GeneratedMessage {
  factory WeatherForecast({
    WeatherId? id,
    WeatherForecast_Data_List? dataList,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (dataList != null) result.dataList = dataList;
    return result;
  }

  WeatherForecast._();

  factory WeatherForecast.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherForecast.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherForecast',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<WeatherId>(1, _omitFieldNames ? '' : 'id',
        subBuilder: WeatherId.create)
    ..aQM<WeatherForecast_Data_List>(2, _omitFieldNames ? '' : 'dataList',
        subBuilder: WeatherForecast_Data_List.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherForecast clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherForecast copyWith(void Function(WeatherForecast) updates) =>
      super.copyWith((message) => updates(message as WeatherForecast))
          as WeatherForecast;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherForecast create() => WeatherForecast._();
  @$core.override
  WeatherForecast createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherForecast getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherForecast>(create);
  static WeatherForecast? _defaultInstance;

  @$pb.TagNumber(1)
  WeatherId get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(WeatherId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
  @$pb.TagNumber(1)
  WeatherId ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  WeatherForecast_Data_List get dataList => $_getN(1);
  @$pb.TagNumber(2)
  set dataList(WeatherForecast_Data_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDataList() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataList() => $_clearField(2);
  @$pb.TagNumber(2)
  WeatherForecast_Data_List ensureDataList() => $_ensure(1);
}

class Alerts_List extends $pb.GeneratedMessage {
  factory Alerts_List({
    $core.Iterable<Alerts>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  Alerts_List._();

  factory Alerts_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Alerts_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Alerts.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Alerts>(1, _omitFieldNames ? '' : 'list', subBuilder: Alerts.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alerts_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alerts_List copyWith(void Function(Alerts_List) updates) =>
      super.copyWith((message) => updates(message as Alerts_List))
          as Alerts_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Alerts_List create() => Alerts_List._();
  @$core.override
  Alerts_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Alerts_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Alerts_List>(create);
  static Alerts_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Alerts> get list => $_getList(0);
}

class Alerts extends $pb.GeneratedMessage {
  factory Alerts({
    $core.String? type,
    $core.String? level,
    $core.String? title,
    $core.String? detail,
    $core.String? id,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (level != null) result.level = level;
    if (title != null) result.title = title;
    if (detail != null) result.detail = detail;
    if (id != null) result.id = id;
    return result;
  }

  Alerts._();

  factory Alerts.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Alerts.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Alerts',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'type')
    ..aQS(2, _omitFieldNames ? '' : 'level')
    ..aQS(3, _omitFieldNames ? '' : 'title')
    ..aQS(4, _omitFieldNames ? '' : 'detail')
    ..aQS(5, _omitFieldNames ? '' : 'id');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alerts clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alerts copyWith(void Function(Alerts) updates) =>
      super.copyWith((message) => updates(message as Alerts)) as Alerts;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Alerts create() => Alerts._();
  @$core.override
  Alerts createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Alerts getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Alerts>(create);
  static Alerts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get level => $_getSZ(1);
  @$pb.TagNumber(2)
  set level($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get detail => $_getSZ(3);
  @$pb.TagNumber(4)
  set detail($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDetail() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetail() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get id => $_getSZ(4);
  @$pb.TagNumber(5)
  set id($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(5)
  void clearId() => $_clearField(5);
}

class SunRiseSet extends $pb.GeneratedMessage {
  factory SunRiseSet({
    $core.String? sunRise,
    $core.String? sunSet,
  }) {
    final result = create();
    if (sunRise != null) result.sunRise = sunRise;
    if (sunSet != null) result.sunSet = sunSet;
    return result;
  }

  SunRiseSet._();

  factory SunRiseSet.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SunRiseSet.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SunRiseSet',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'sunRise')
    ..aQS(2, _omitFieldNames ? '' : 'sunSet');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SunRiseSet clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SunRiseSet copyWith(void Function(SunRiseSet) updates) =>
      super.copyWith((message) => updates(message as SunRiseSet)) as SunRiseSet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SunRiseSet create() => SunRiseSet._();
  @$core.override
  SunRiseSet createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SunRiseSet getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SunRiseSet>(create);
  static SunRiseSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sunRise => $_getSZ(0);
  @$pb.TagNumber(1)
  set sunRise($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSunRise() => $_has(0);
  @$pb.TagNumber(1)
  void clearSunRise() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sunSet => $_getSZ(1);
  @$pb.TagNumber(2)
  set sunSet($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSunSet() => $_has(1);
  @$pb.TagNumber(2)
  void clearSunSet() => $_clearField(2);
}

class WeatherConfig extends $pb.GeneratedMessage {
  factory WeatherConfig({
    $0.TemperatureUnit? temperatureUnit,
    $0.OptionalSwitcher? alert,
  }) {
    final result = create();
    if (temperatureUnit != null) result.temperatureUnit = temperatureUnit;
    if (alert != null) result.alert = alert;
    return result;
  }

  WeatherConfig._();

  factory WeatherConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WeatherConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WeatherConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.TemperatureUnit>(1, _omitFieldNames ? '' : 'temperatureUnit',
        enumValues: $0.TemperatureUnit.values)
    ..aE<$0.OptionalSwitcher>(2, _omitFieldNames ? '' : 'alert',
        enumValues: $0.OptionalSwitcher.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WeatherConfig copyWith(void Function(WeatherConfig) updates) =>
      super.copyWith((message) => updates(message as WeatherConfig))
          as WeatherConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeatherConfig create() => WeatherConfig._();
  @$core.override
  WeatherConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WeatherConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeatherConfig>(create);
  static WeatherConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $0.TemperatureUnit get temperatureUnit => $_getN(0);
  @$pb.TagNumber(1)
  set temperatureUnit($0.TemperatureUnit value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTemperatureUnit() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemperatureUnit() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.OptionalSwitcher get alert => $_getN(1);
  @$pb.TagNumber(2)
  set alert($0.OptionalSwitcher value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAlert() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlert() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
