// This is a generated file - do not edit.
//
// Generated from wear_weather.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:typed_data';
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use weatherDescriptor instead')
const Weather$json = {
  '1': 'Weather',
  '2': [
    {
      '1': 'latest',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.WeatherLatest',
      '9': 0,
      '10': 'latest'
    },
    {
      '1': 'forecast',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.WeatherForecast',
      '9': 0,
      '10': 'forecast'
    },
    {'1': 'pressure', '3': 3, '4': 1, '5': 2, '9': 0, '10': 'pressure'},
    {
      '1': 'city_key_list',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.CityKey.List',
      '9': 0,
      '10': 'cityKeyList'
    },
    {
      '1': 'city_key',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.CityKey',
      '9': 0,
      '10': 'cityKey'
    },
    {
      '1': 'weather_config',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.WeatherConfig',
      '9': 0,
      '10': 'weatherConfig'
    },
  ],
  '4': [Weather_WeatherID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use weatherDescriptor instead')
const Weather_WeatherID$json = {
  '1': 'WeatherID',
  '2': [
    {'1': 'LATEST_WEATHER', '2': 0},
    {'1': 'DAILY_FORECAST', '2': 1},
    {'1': 'HOURLY_FORECAST', '2': 2},
    {'1': 'WEAR_REQUEST', '2': 3},
    {'1': 'SET_PRESSURE', '2': 4},
    {'1': 'GET_CITY_KEYS', '2': 5},
    {'1': 'UPDATE_CITY_KEYS', '2': 6},
    {'1': 'ADD_CITY_KEY', '2': 7},
    {'1': 'REMOVE_CITY_KEYS', '2': 8},
    {'1': 'GET_CONFIG', '2': 9},
    {'1': 'SET_CONFIG', '2': 10},
  ],
};

/// Descriptor for `Weather`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherDescriptor = $convert.base64Decode(
    'CgdXZWF0aGVyEjEKBmxhdGVzdBgBIAEoCzIXLnByb3RvY29sLldlYXRoZXJMYXRlc3RIAFIGbG'
    'F0ZXN0EjcKCGZvcmVjYXN0GAIgASgLMhkucHJvdG9jb2wuV2VhdGhlckZvcmVjYXN0SABSCGZv'
    'cmVjYXN0EhwKCHByZXNzdXJlGAMgASgCSABSCHByZXNzdXJlEjwKDWNpdHlfa2V5X2xpc3QYBC'
    'ABKAsyFi5wcm90b2NvbC5DaXR5S2V5Lkxpc3RIAFILY2l0eUtleUxpc3QSLgoIY2l0eV9rZXkY'
    'BSABKAsyES5wcm90b2NvbC5DaXR5S2V5SABSB2NpdHlLZXkSQAoOd2VhdGhlcl9jb25maWcYBi'
    'ABKAsyFy5wcm90b2NvbC5XZWF0aGVyQ29uZmlnSABSDXdlYXRoZXJDb25maWci3QEKCVdlYXRo'
    'ZXJJRBISCg5MQVRFU1RfV0VBVEhFUhAAEhIKDkRBSUxZX0ZPUkVDQVNUEAESEwoPSE9VUkxZX0'
    'ZPUkVDQVNUEAISEAoMV0VBUl9SRVFVRVNUEAMSEAoMU0VUX1BSRVNTVVJFEAQSEQoNR0VUX0NJ'
    'VFlfS0VZUxAFEhQKEFVQREFURV9DSVRZX0tFWVMQBhIQCgxBRERfQ0lUWV9LRVkQBxIUChBSRU'
    '1PVkVfQ0lUWV9LRVlTEAgSDgoKR0VUX0NPTkZJRxAJEg4KClNFVF9DT05GSUcQCkIJCgdwYXls'
    'b2Fk');

@$core.Deprecated('Use cityKeyDescriptor instead')
const CityKey$json = {
  '1': 'CityKey',
  '2': [
    {'1': 'location_key', '3': 1, '4': 2, '5': 9, '10': 'locationKey'},
    {'1': 'city_name', '3': 2, '4': 2, '5': 9, '10': 'cityName'},
  ],
  '3': [CityKey_List$json],
};

@$core.Deprecated('Use cityKeyDescriptor instead')
const CityKey_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.CityKey',
      '10': 'list'
    },
  ],
};

/// Descriptor for `CityKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cityKeyDescriptor = $convert.base64Decode(
    'CgdDaXR5S2V5EiEKDGxvY2F0aW9uX2tleRgBIAIoCVILbG9jYXRpb25LZXkSGwoJY2l0eV9uYW'
    '1lGAIgAigJUghjaXR5TmFtZRotCgRMaXN0EiUKBGxpc3QYASADKAsyES5wcm90b2NvbC5DaXR5'
    'S2V5UgRsaXN0');

@$core.Deprecated('Use weatherIdDescriptor instead')
const WeatherId$json = {
  '1': 'WeatherId',
  '2': [
    {'1': 'pub_time', '3': 1, '4': 2, '5': 9, '10': 'pubTime'},
    {'1': 'city_name', '3': 2, '4': 2, '5': 9, '10': 'cityName'},
    {'1': 'location_name', '3': 3, '4': 2, '5': 9, '10': 'locationName'},
    {'1': 'location_key', '3': 4, '4': 2, '5': 9, '10': 'locationKey'},
    {
      '1': 'is_current_location',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'isCurrentLocation'
    },
  ],
};

/// Descriptor for `WeatherId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherIdDescriptor = $convert.base64Decode(
    'CglXZWF0aGVySWQSGQoIcHViX3RpbWUYASACKAlSB3B1YlRpbWUSGwoJY2l0eV9uYW1lGAIgAi'
    'gJUghjaXR5TmFtZRIjCg1sb2NhdGlvbl9uYW1lGAMgAigJUgxsb2NhdGlvbk5hbWUSIQoMbG9j'
    'YXRpb25fa2V5GAQgAigJUgtsb2NhdGlvbktleRIuChNpc19jdXJyZW50X2xvY2F0aW9uGAUgAS'
    'gIUhFpc0N1cnJlbnRMb2NhdGlvbg==');

@$core.Deprecated('Use weatherLatestDescriptor instead')
const WeatherLatest$json = {
  '1': 'WeatherLatest',
  '2': [
    {
      '1': 'id',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.WeatherId',
      '10': 'id'
    },
    {'1': 'weather', '3': 2, '4': 2, '5': 13, '10': 'weather'},
    {
      '1': 'temperature',
      '3': 3,
      '4': 2,
      '5': 11,
      '6': '.protocol.KeyValue',
      '10': 'temperature'
    },
    {
      '1': 'humidity',
      '3': 4,
      '4': 2,
      '5': 11,
      '6': '.protocol.KeyValue',
      '10': 'humidity'
    },
    {
      '1': 'wind_info',
      '3': 5,
      '4': 2,
      '5': 11,
      '6': '.protocol.KeyValue',
      '10': 'windInfo'
    },
    {
      '1': 'uvindex',
      '3': 6,
      '4': 2,
      '5': 11,
      '6': '.protocol.KeyValue',
      '10': 'uvindex'
    },
    {
      '1': 'aqi',
      '3': 7,
      '4': 2,
      '5': 11,
      '6': '.protocol.KeyValue',
      '10': 'aqi'
    },
    {
      '1': 'alerts_list',
      '3': 8,
      '4': 2,
      '5': 11,
      '6': '.protocol.Alerts.List',
      '10': 'alertsList'
    },
    {'1': 'pressure', '3': 9, '4': 1, '5': 2, '10': 'pressure'},
  ],
};

/// Descriptor for `WeatherLatest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherLatestDescriptor = $convert.base64Decode(
    'Cg1XZWF0aGVyTGF0ZXN0EiMKAmlkGAEgAigLMhMucHJvdG9jb2wuV2VhdGhlcklkUgJpZBIYCg'
    'd3ZWF0aGVyGAIgAigNUgd3ZWF0aGVyEjQKC3RlbXBlcmF0dXJlGAMgAigLMhIucHJvdG9jb2wu'
    'S2V5VmFsdWVSC3RlbXBlcmF0dXJlEi4KCGh1bWlkaXR5GAQgAigLMhIucHJvdG9jb2wuS2V5Vm'
    'FsdWVSCGh1bWlkaXR5Ei8KCXdpbmRfaW5mbxgFIAIoCzISLnByb3RvY29sLktleVZhbHVlUgh3'
    'aW5kSW5mbxIsCgd1dmluZGV4GAYgAigLMhIucHJvdG9jb2wuS2V5VmFsdWVSB3V2aW5kZXgSJA'
    'oDYXFpGAcgAigLMhIucHJvdG9jb2wuS2V5VmFsdWVSA2FxaRI2CgthbGVydHNfbGlzdBgIIAIo'
    'CzIVLnByb3RvY29sLkFsZXJ0cy5MaXN0UgphbGVydHNMaXN0EhoKCHByZXNzdXJlGAkgASgCUg'
    'hwcmVzc3VyZQ==');

@$core.Deprecated('Use weatherForecastDescriptor instead')
const WeatherForecast$json = {
  '1': 'WeatherForecast',
  '2': [
    {
      '1': 'id',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.WeatherId',
      '10': 'id'
    },
    {
      '1': 'data_list',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.WeatherForecast.Data.List',
      '10': 'dataList'
    },
  ],
  '3': [WeatherForecast_Data$json],
};

@$core.Deprecated('Use weatherForecastDescriptor instead')
const WeatherForecast_Data$json = {
  '1': 'Data',
  '2': [
    {
      '1': 'aqi',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.KeyValue',
      '10': 'aqi'
    },
    {
      '1': 'weather',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.RangeValue',
      '10': 'weather'
    },
    {
      '1': 'temperature',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.RangeValue',
      '10': 'temperature'
    },
    {'1': 'temperature_unit', '3': 4, '4': 2, '5': 9, '10': 'temperatureUnit'},
    {
      '1': 'sun_rise_set',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.SunRiseSet',
      '10': 'sunRiseSet'
    },
    {
      '1': 'wind_info',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.KeyValue',
      '10': 'windInfo'
    },
  ],
  '3': [WeatherForecast_Data_List$json],
};

@$core.Deprecated('Use weatherForecastDescriptor instead')
const WeatherForecast_Data_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WeatherForecast.Data',
      '10': 'list'
    },
  ],
};

/// Descriptor for `WeatherForecast`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherForecastDescriptor = $convert.base64Decode(
    'Cg9XZWF0aGVyRm9yZWNhc3QSIwoCaWQYASACKAsyEy5wcm90b2NvbC5XZWF0aGVySWRSAmlkEk'
    'AKCWRhdGFfbGlzdBgCIAIoCzIjLnByb3RvY29sLldlYXRoZXJGb3JlY2FzdC5EYXRhLkxpc3RS'
    'CGRhdGFMaXN0GuQCCgREYXRhEiQKA2FxaRgBIAIoCzISLnByb3RvY29sLktleVZhbHVlUgNhcW'
    'kSLgoHd2VhdGhlchgCIAEoCzIULnByb3RvY29sLlJhbmdlVmFsdWVSB3dlYXRoZXISNgoLdGVt'
    'cGVyYXR1cmUYAyABKAsyFC5wcm90b2NvbC5SYW5nZVZhbHVlUgt0ZW1wZXJhdHVyZRIpChB0ZW'
    '1wZXJhdHVyZV91bml0GAQgAigJUg90ZW1wZXJhdHVyZVVuaXQSNgoMc3VuX3Jpc2Vfc2V0GAUg'
    'ASgLMhQucHJvdG9jb2wuU3VuUmlzZVNldFIKc3VuUmlzZVNldBIvCgl3aW5kX2luZm8YBiABKA'
    'syEi5wcm90b2NvbC5LZXlWYWx1ZVIId2luZEluZm8aOgoETGlzdBIyCgRsaXN0GAEgAygLMh4u'
    'cHJvdG9jb2wuV2VhdGhlckZvcmVjYXN0LkRhdGFSBGxpc3Q=');

@$core.Deprecated('Use alertsDescriptor instead')
const Alerts$json = {
  '1': 'Alerts',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 9, '10': 'type'},
    {'1': 'level', '3': 2, '4': 2, '5': 9, '10': 'level'},
    {'1': 'title', '3': 3, '4': 2, '5': 9, '10': 'title'},
    {'1': 'detail', '3': 4, '4': 2, '5': 9, '10': 'detail'},
    {'1': 'id', '3': 5, '4': 2, '5': 9, '10': 'id'},
  ],
  '3': [Alerts_List$json],
};

@$core.Deprecated('Use alertsDescriptor instead')
const Alerts_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.Alerts',
      '10': 'list'
    },
  ],
};

/// Descriptor for `Alerts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alertsDescriptor = $convert.base64Decode(
    'CgZBbGVydHMSEgoEdHlwZRgBIAIoCVIEdHlwZRIUCgVsZXZlbBgCIAIoCVIFbGV2ZWwSFAoFdG'
    'l0bGUYAyACKAlSBXRpdGxlEhYKBmRldGFpbBgEIAIoCVIGZGV0YWlsEg4KAmlkGAUgAigJUgJp'
    'ZBosCgRMaXN0EiQKBGxpc3QYASADKAsyEC5wcm90b2NvbC5BbGVydHNSBGxpc3Q=');

@$core.Deprecated('Use sunRiseSetDescriptor instead')
const SunRiseSet$json = {
  '1': 'SunRiseSet',
  '2': [
    {'1': 'sun_rise', '3': 1, '4': 2, '5': 9, '10': 'sunRise'},
    {'1': 'sun_set', '3': 2, '4': 2, '5': 9, '10': 'sunSet'},
  ],
};

/// Descriptor for `SunRiseSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sunRiseSetDescriptor = $convert.base64Decode(
    'CgpTdW5SaXNlU2V0EhkKCHN1bl9yaXNlGAEgAigJUgdzdW5SaXNlEhcKB3N1bl9zZXQYAiACKA'
    'lSBnN1blNldA==');

@$core.Deprecated('Use weatherConfigDescriptor instead')
const WeatherConfig$json = {
  '1': 'WeatherConfig',
  '2': [
    {
      '1': 'temperature_unit',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.protocol.TemperatureUnit',
      '10': 'temperatureUnit'
    },
    {
      '1': 'alert',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protocol.OptionalSwitcher',
      '10': 'alert'
    },
  ],
};

/// Descriptor for `WeatherConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherConfigDescriptor = $convert.base64Decode(
    'Cg1XZWF0aGVyQ29uZmlnEkQKEHRlbXBlcmF0dXJlX3VuaXQYASABKA4yGS5wcm90b2NvbC5UZW'
    '1wZXJhdHVyZVVuaXRSD3RlbXBlcmF0dXJlVW5pdBIwCgVhbGVydBgCIAEoDjIaLnByb3RvY29s'
    'Lk9wdGlvbmFsU3dpdGNoZXJSBWFsZXJ0');
