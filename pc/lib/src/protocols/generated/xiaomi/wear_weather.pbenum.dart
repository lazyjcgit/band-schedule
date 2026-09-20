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

class Weather_WeatherID extends $pb.ProtobufEnum {
  static const Weather_WeatherID LATEST_WEATHER =
      Weather_WeatherID._(0, _omitEnumNames ? '' : 'LATEST_WEATHER');
  static const Weather_WeatherID DAILY_FORECAST =
      Weather_WeatherID._(1, _omitEnumNames ? '' : 'DAILY_FORECAST');
  static const Weather_WeatherID HOURLY_FORECAST =
      Weather_WeatherID._(2, _omitEnumNames ? '' : 'HOURLY_FORECAST');
  static const Weather_WeatherID WEAR_REQUEST =
      Weather_WeatherID._(3, _omitEnumNames ? '' : 'WEAR_REQUEST');
  static const Weather_WeatherID SET_PRESSURE =
      Weather_WeatherID._(4, _omitEnumNames ? '' : 'SET_PRESSURE');
  static const Weather_WeatherID GET_CITY_KEYS =
      Weather_WeatherID._(5, _omitEnumNames ? '' : 'GET_CITY_KEYS');
  static const Weather_WeatherID UPDATE_CITY_KEYS =
      Weather_WeatherID._(6, _omitEnumNames ? '' : 'UPDATE_CITY_KEYS');
  static const Weather_WeatherID ADD_CITY_KEY =
      Weather_WeatherID._(7, _omitEnumNames ? '' : 'ADD_CITY_KEY');
  static const Weather_WeatherID REMOVE_CITY_KEYS =
      Weather_WeatherID._(8, _omitEnumNames ? '' : 'REMOVE_CITY_KEYS');
  static const Weather_WeatherID GET_CONFIG =
      Weather_WeatherID._(9, _omitEnumNames ? '' : 'GET_CONFIG');
  static const Weather_WeatherID SET_CONFIG =
      Weather_WeatherID._(10, _omitEnumNames ? '' : 'SET_CONFIG');

  static const $core.List<Weather_WeatherID> values = <Weather_WeatherID>[
    LATEST_WEATHER,
    DAILY_FORECAST,
    HOURLY_FORECAST,
    WEAR_REQUEST,
    SET_PRESSURE,
    GET_CITY_KEYS,
    UPDATE_CITY_KEYS,
    ADD_CITY_KEY,
    REMOVE_CITY_KEYS,
    GET_CONFIG,
    SET_CONFIG,
  ];

  static final $core.List<Weather_WeatherID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 10);
  static Weather_WeatherID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Weather_WeatherID._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
