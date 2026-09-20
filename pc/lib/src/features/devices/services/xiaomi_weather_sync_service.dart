import 'dart:convert';
import 'dart:math' as math;

import 'package:dio/dio.dart';
import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/features/devices/models/xiaomi_device_features.dart';
import 'package:band_schedule_pc/src/features/devices/services/xiaomi_air_quality.dart';

class XiaomiWeatherSyncException implements Exception {
  const XiaomiWeatherSyncException(this.message);

  final String message;

  @override
  String toString() => message;
}

class XiaomiWeatherSyncService {
  XiaomiWeatherSyncService({Dio? dio}) : _dio = dio ?? Dio();

  static const _xiaomiOfficialUrl =
      'https://hlth.io.mi.com/healthapp/weather/get_weather_info_v3';
  static const _xiaomiBaseUrl = 'https://weatherapi.market.xiaomi.com/wtr-v3/';
  static const _xiaomiAppKey = 'weather20151024';
  static const _xiaomiSign = 'zUFJoAR2ZVrDy1vF3D07';
  static const _requestTimeout = Duration(seconds: 8);

  static final _log = getLogger('XiaomiWeatherSyncService');

  final Dio _dio;

  Future<XiaomiWeatherData> fetch(
    String city, {
    String? model,
    String? firmwareVersion,
  }) async {
    final query = city.trim();
    if (query.isEmpty) throw const FormatException('请输入城市');

    final requestModel = _optionalTrimmed(model);
    final requestFirmwareVersion = _optionalTrimmed(firmwareVersion);
    _log.fine(
      'fetching weather for city=$query, '
      'model=${requestModel ?? '-'}, '
      'fw_ver=${requestFirmwareVersion ?? '-'}',
    );

    Object? xiaomiError;
    try {
      final weather = await _fetchXiaomi(
        query,
        model: requestModel,
        firmwareVersion: requestFirmwareVersion,
      );
      _log.info(
        'weather fetched from Xiaomi: city=${weather.cityName}, '
        'daily=${weather.daily.length}, hourly=${weather.hourly.length}',
      );
      return weather;
    } catch (error) {
      xiaomiError = error;
      _log.warning('Xiaomi weather request failed; trying Open-Meteo', error);
    }

    Object? openMeteoError;
    try {
      final weather = await _fetchOpenMeteo(query);
      _log.info(
        'weather fetched from Open-Meteo: city=${weather.cityName}, '
        'daily=${weather.daily.length}, hourly=${weather.hourly.length}',
      );
      return weather;
    } catch (error) {
      openMeteoError = error;
      _log.warning('Open-Meteo weather request failed', error);
    }

    throw XiaomiWeatherSyncException(
      '小米天气获取失败：${_errorMessage(xiaomiError)}；'
      'Open-Meteo 获取失败：${_errorMessage(openMeteoError)}',
    );
  }

  Future<XiaomiWeatherData> _fetchXiaomi(
    String query, {
    String? model,
    String? firmwareVersion,
  }) async {
    final locationResponse = await _dio
        .get<dynamic>(
          '${_xiaomiBaseUrl}location/city/search',
          queryParameters: {'name': query, 'locale': 'zh_cn'},
        )
        .timeout(_requestTimeout);
    final locations = _responseList(locationResponse.data);
    Map<String, Object?>? selectedLocation;
    var selectedScore = -1;
    for (final item in locations) {
      final location = _map(item);
      final locationKey = _string(location['locationKey']);
      final latitude = _double(location['latitude']);
      final longitude = _double(location['longitude']);
      final status = _int(location['status']);
      if (locationKey == null ||
          !locationKey.startsWith('weathercn:') ||
          status != 0 ||
          latitude == null ||
          longitude == null) {
        continue;
      }
      final name = _string(location['name']) ?? '';
      final score = name == query
          ? 2
          : name.contains(query) || query.contains(name)
          ? 1
          : 0;
      if (selectedLocation == null || score > selectedScore) {
        selectedLocation = location;
        selectedScore = score;
      }
    }
    final location = selectedLocation;
    if (location == null) throw StateError('小米天气找不到该城市');

    final latitude = _double(location['latitude'])!;
    final longitude = _double(location['longitude'])!;
    final locationKey = _string(location['locationKey'])!
        .replaceFirst('weathercn:', '');
    _log.fine(
      'Xiaomi location selected: key=$locationKey, '
      'name=${_string(location['name']) ?? query}, '
      'latitude=$latitude, longitude=$longitude, '
      'model=${model ?? '-'}, fw_ver=${firmwareVersion ?? '-'}',
    );
    try {
      return await _fetchOfficialXiaomi(
        query,
        location,
        model: model,
        firmwareVersion: firmwareVersion,
      );
    } catch (error, stackTrace) {
      _log.warning(
        'official Xiaomi weather request failed; trying legacy endpoint',
        error,
        stackTrace,
      );
    }
    final forecastQuery = <String, Object?>{
      'latitude': latitude,
      'longitude': longitude,
      'isLocated': false,
      'locationKey': 'weathercn:$locationKey',
      'days': 15,
      'appKey': _xiaomiAppKey,
      'sign': _xiaomiSign,
      'isGlobal': false,
      'locale': 'zh_cn',
    };
    // Keep the raw device identity used by Mi Fitness. The normalized
    // product id (for example, p62) is not a substitute for these fields.
    if (model != null) forecastQuery['model'] = model;
    if (firmwareVersion != null) forecastQuery['fw_ver'] = firmwareVersion;
    final forecastResponse = await _dio
        .get<dynamic>(
          '${_xiaomiBaseUrl}weather/all',
          queryParameters: forecastQuery,
        )
        .timeout(_requestTimeout);
    final forecast = _responseMap(forecastResponse.data);
    return _parseXiaomiForecast(
      query: query,
      location: location,
      forecast: forecast,
    );
  }

  Future<XiaomiWeatherData> _fetchOfficialXiaomi(
    String query,
    Map<String, Object?> location, {
    String? model,
    String? firmwareVersion,
  }) async {
    final locationKey = _string(location['locationKey']);
    final latitude = _double(location['latitude']);
    final longitude = _double(location['longitude']);
    if (locationKey == null || latitude == null || longitude == null) {
      throw StateError('小米天气位置数据不完整');
    }

    final request = <String, Object?>{
      'locationKey': locationKey,
      'longitude': longitude,
      'latitude': latitude,
      'get_current': true,
      'get_aqi': true,
      'get_alerts': true,
      'get_indices': true,
      'get_daily_forecast': true,
      'get_hourly_forecast': true,
      'get_city_location': true,
    };
    if (model != null) request['model'] = model;
    if (firmwareVersion != null) request['fw_ver'] = firmwareVersion;

    _log.fine(
      'requesting official Xiaomi weather: locationKey=$locationKey, '
      'model=${model ?? '-'}, fw_ver=${firmwareVersion ?? '-'}',
    );
    final response = await _dio
        .post<dynamic>(
          _xiaomiOfficialUrl,
          data: {'locale': 'zh_CN', 'data': jsonEncode(request)},
          options: Options(contentType: Headers.formUrlEncodedContentType),
        )
        .timeout(_requestTimeout);
    final envelope = _decodeMap(response.data);
    final code = _int(envelope['code']);
    if (code != 0) {
      throw StateError(
        '小米官方天气请求失败：${_string(envelope['message']) ?? 'code=$code'}',
      );
    }
    final result = _map(envelope['result']);
    if (result.isEmpty) throw StateError('小米官方天气没有返回数据');

    // Normalize the official response into the same intermediate shape as
    // the legacy endpoint. The field names and nested value objects are
    // intentionally shared by both Xiaomi weather responses.
    // Keep the city-search display name (for example, 万州区) instead of
    // falling back to the response affiliation (重庆市, 中国).
    final officialLocation = Map<String, Object?>.from(location);
    final forecast = <String, Object?>{
      'current': {
        'pubTime': result['pubTime'],
        'weather': result['weather'],
        'temperature': result['temperature'],
        'humidity': result['humidity'],
        'pressure': result['pressure'],
        'uvIndex': result['uvIndex'],
        'wind': result['wind'],
        'aqi': result['aqi'],
        'aqi_level': result['aqi_level'],
        'indices': result['indices'],
      },
      'updateTime': result['pubTime'],
      'city_name':
          _string(result['city_name']) ??
          _string(result['location_name']) ??
          query,
      'location_name': result['location_name'],
      'affiliation': result['affiliation'],
      'aqi': result['aqi'],
      'aqi_level': result['aqi_level'],
      'alerts': result['alerts'],
      'forecastDaily': result['daily_forecast'],
      'forecastHourly': result['hourly_forecast'],
    };
    final weather = _parseXiaomiForecast(
      query: query,
      location: officialLocation,
      forecast: forecast,
    );
    _log.fine(
      'official Xiaomi weather response parsed: '
      'location=${weather.locationName}, aqi=${weather.aqi} '
      '(${weather.aqiLevel}), daily=${weather.daily.length}, '
      'hourly=${weather.hourly.length}',
    );
    return weather;
  }

  XiaomiWeatherData _parseXiaomiForecast({
    required String query,
    required Map<String, Object?> location,
    required Map<String, Object?> forecast,
  }) {
    final locationKey = _string(location['locationKey'])!
        .replaceFirst('weathercn:', '');
    final current = _map(forecast['current']);
    if (current.isEmpty) throw StateError('小米天气没有返回当前天气');

    final publishedAt = _xiaomiTimestamp(
      current['pubTime'] ?? forecast['updateTime'],
    );
    final baseTime = _chinaTime(publishedAt);
    final selectedName = _string(location['name']);
    final cityName =
        selectedName ??
        _string(forecast['city_name']) ??
        _string(location['affiliation']) ??
        query;
    final locationName =
        selectedName ??
        _string(forecast['location_name']) ??
        _string(forecast['affiliation']) ??
        _string(location['affiliation']) ??
        cityName;
    final currentAqi = _map(current['aqi']);
    final forecastAqi = _map(forecast['aqi']);
    final aqi = _xiaomiAqi(forecastAqi.isEmpty ? currentAqi : forecastAqi);
    final rawAqiLevel =
        _string(forecast['aqi_level']) ??
        _string(current['aqi_level']) ??
        _string(forecastAqi['level']) ??
        _string(currentAqi['level']) ??
        '';
    final aqiLevel = _normalizeAqiLevel(aqi: aqi, raw: rawAqiLevel);
    final uvIndexValue = _double(current['uvIndex']);
    final uvIndex = _round(uvIndexValue);
    final uvIndexLevel = _xiaomiUvIndexLevel(
      forecast: forecast,
      current: current,
    );
    final alerts = _xiaomiAlerts(forecast['alerts']);
    final wind = _map(current['wind']);

    _log.fine(
      'Xiaomi weather response: locationKey=$locationKey, aqi=$aqi '
      '($aqiLevel), uv=$uvIndex ($uvIndexLevel), '
      'selectedName=${selectedName ?? '-'}, cityName=$cityName, '
      'locationName=$locationName, '
      'pressure=${_double(_valueOf(current['pressure'])) ?? 0} hPa, '
      'daily=${_valueList(_map(_map(forecast['forecastDaily'])['weather'])).length}, '
      'hourly=${_valueList(_map(_map(forecast['forecastHourly'])['temperature'])).length}, '
      'alerts=${alerts.length}',
    );

    return XiaomiWeatherData(
      source: XiaomiWeatherSource.xiaomi,
      locationKey: 'weathercn:$locationKey',
      cityName: cityName,
      locationName: locationName,
      publishedAt: publishedAt,
      conditionCode: _xiaomiCondition(current['weather']),
      temperature: _round(_double(_valueOf(current['temperature']))),
      humidity: _round(_double(_valueOf(current['humidity']))),
      windSpeedBeaufort: _beaufort(_double(_valueOf(wind['speed'])) ?? 0),
      windDirection: _round(_double(_valueOf(wind['direction']))),
      uvIndex: uvIndex,
      aqi: aqi,
      pressureHpa: _double(_valueOf(current['pressure'])) ?? 0,
      aqiLevel: aqiLevel,
      uvIndexLevel: uvIndexLevel,
      alerts: alerts,
      daily: _xiaomiDaily(_map(forecast['forecastDaily']), baseTime),
      hourly: _xiaomiHourly(_map(forecast['forecastHourly']), baseTime),
    );
  }

  static String? _optionalTrimmed(String? value) {
    final trimmed = value?.trim() ?? '';
    return trimmed.isEmpty ? null : trimmed;
  }

  Future<XiaomiWeatherData> _fetchOpenMeteo(String query) async {
    final locationResponse = await _dio
        .get<Map<String, dynamic>>(
          'https://geocoding-api.open-meteo.com/v1/search',
          queryParameters: {
            'name': query,
            'count': 1,
            'language': 'zh',
            'format': 'json',
          },
        )
        .timeout(_requestTimeout);
    final results = locationResponse.data?['results'];
    if (results is! List || results.isEmpty || results.first is! Map) {
      throw StateError('找不到该城市');
    }
    final location = (results.first as Map).cast<String, Object?>();
    final latitude = (location['latitude'] as num?)?.toDouble();
    final longitude = (location['longitude'] as num?)?.toDouble();
    if (latitude == null || longitude == null) {
      throw StateError('城市坐标无效');
    }

    final airQualityRequest = _dio
        .get<Map<String, dynamic>>(
          'https://air-quality-api.open-meteo.com/v1/air-quality',
          queryParameters: {
            'latitude': latitude,
            'longitude': longitude,
            'current': 'us_aqi',
            'timezone': 'auto',
          },
        )
        .then<Map<String, Object?>>(
          (response) => _map(response.data?['current']),
          onError: (Object _, StackTrace _) => const <String, Object?>{},
        )
        .timeout(
          const Duration(seconds: 5),
          onTimeout: () => const <String, Object?>{},
        );
    final forecastResponse = await _dio
        .get<Map<String, dynamic>>(
          'https://api.open-meteo.com/v1/forecast',
          queryParameters: {
            'latitude': latitude,
            'longitude': longitude,
            'temperature_unit': 'celsius',
            'wind_speed_unit': 'kmh',
            'current': [
              'temperature_2m',
              'relative_humidity_2m',
              'weather_code',
              'wind_speed_10m',
              'wind_direction_10m',
              'uv_index',
              'surface_pressure',
            ].join(','),
            'daily': [
              'weather_code',
              'temperature_2m_min',
              'temperature_2m_max',
              'sunrise',
              'sunset',
            ].join(','),
            'hourly': [
              'temperature_2m',
              'weather_code',
              'wind_speed_10m',
              'wind_direction_10m',
            ].join(','),
            'forecast_days': 7,
            'timezone': 'auto',
          },
        )
        .timeout(_requestTimeout);
    final data = forecastResponse.data;
    if (data == null) throw StateError('天气服务没有返回数据');
    final current = _map(data['current']);
    final daily = _map(data['daily']);
    final hourly = _map(data['hourly']);
    final airQuality = await airQualityRequest;
    final aqi = (airQuality['us_aqi'] as num?)?.round();
    final utcOffsetSeconds = (data['utc_offset_seconds'] as num?)?.toInt() ?? 0;

    final dailyCodes = _nullableNumbers(daily['weather_code']);
    final minimums = _nullableNumbers(daily['temperature_2m_min']);
    final maximums = _nullableNumbers(daily['temperature_2m_max']);
    final dates = _strings(daily['time']);
    final sunrises = _strings(daily['sunrise']);
    final sunsets = _strings(daily['sunset']);
    final dailyItems = <XiaomiWeatherDay>[];
    for (var i = 0; i < dates.length; i++) {
      final code = _numberAt(dailyCodes, i);
      final minimum = _numberAt(minimums, i);
      final maximum = _numberAt(maximums, i);
      if (code == null || minimum == null || maximum == null) continue;
      dailyItems.add(
        XiaomiWeatherDay(
          conditionCode: _condition(code),
          minimumTemperature: minimum.round(),
          maximumTemperature: maximum.round(),
          date: _value(dates, i),
          sunrise: _isoWithOffset(_value(sunrises, i), utcOffsetSeconds),
          sunset: _isoWithOffset(_value(sunsets, i), utcOffsetSeconds),
        ),
      );
    }

    final hourlyCodes = _nullableNumbers(hourly['weather_code']);
    final hourlyTemperatures = _nullableNumbers(hourly['temperature_2m']);
    final hourlySpeeds = _nullableNumbers(hourly['wind_speed_10m']);
    final hourlyDirections = _nullableNumbers(hourly['wind_direction_10m']);
    final hourlyTimes = _strings(hourly['time']);
    final hourlyItems = <XiaomiWeatherHour>[];
    final hourlyStart = _firstFutureHourIndex(
      hourlyTimes,
      current['time']?.toString() ?? '',
    );
    for (
      var offset = 0;
      hourlyStart + offset < hourlyTimes.length && hourlyItems.length < 24;
      offset++
    ) {
      final i = hourlyStart + offset;
      final code = _numberAt(hourlyCodes, i);
      final temperature = _numberAt(hourlyTemperatures, i);
      final speed = _numberAt(hourlySpeeds, i);
      final direction = _numberAt(hourlyDirections, i);
      if (code == null ||
          temperature == null ||
          speed == null ||
          direction == null ||
          direction < 0 ||
          direction > 360 ||
          speed < 0) {
        continue;
      }
      hourlyItems.add(
        XiaomiWeatherHour(
          conditionCode: _condition(code),
          temperature: temperature.round(),
          windSpeedBeaufort: _beaufort(speed),
          windDirection: direction.round(),
          time: hourlyTimes[i],
        ),
      );
    }

    final locationName = location['name']?.toString() ?? query;
    return XiaomiWeatherData(
      source: XiaomiWeatherSource.openMeteo,
      locationKey:
          'open-meteo:${latitude.toStringAsFixed(4)}:'
          '${longitude.toStringAsFixed(4)}',
      cityName: locationName,
      locationName: locationName,
      publishedAt: _isoWithOffset(
        current['time']?.toString() ?? '',
        utcOffsetSeconds,
      ),
      conditionCode: _condition(_number(current['weather_code'])),
      temperature: _number(current['temperature_2m']).round(),
      humidity: _number(current['relative_humidity_2m']).round(),
      windSpeedBeaufort: _beaufort(_number(current['wind_speed_10m'])),
      windDirection: _number(current['wind_direction_10m']).round(),
      uvIndex: _number(current['uv_index']).round(),
      aqi: aqi,
      aqiLevel: _normalizeAqiLevel(aqi: aqi, raw: null),
      pressureHpa: _number(current['surface_pressure']),
      daily: dailyItems,
      hourly: hourlyItems,
    );
  }

  List<XiaomiWeatherDay> _xiaomiDaily(
    Map<String, Object?> forecast,
    DateTime baseTime,
  ) {
    final weather = _valueList(_map(forecast['weather']));
    final temperatures = _valueList(_map(forecast['temperature']));
    final sunRiseSets = _valueList(_map(forecast['sunRiseSet']));
    final aqi = _intValues(_map(forecast['aqi'])['value']);
    final aqiLevels = _strings(forecast['aqi_level']);
    final count = math.min(15, math.max(weather.length, temperatures.length));
    final daily = <XiaomiWeatherDay>[];
    for (var i = 0; i < count; i++) {
      final weatherItem = i < weather.length ? weather[i] : null;
      final temperatureItem = i < temperatures.length ? temperatures[i] : null;
      final dayCode = _xiaomiCondition(
        _part(weatherItem, 'from') ?? _part(weatherItem, 'to'),
      );
      final weatherFrom = _xiaomiConditionOrNull(_part(weatherItem, 'from'));
      final weatherTo = _xiaomiConditionOrNull(_part(weatherItem, 'to'));
      final dayTemperature = _double(_part(temperatureItem, 'from'));
      final nightTemperature = _double(_part(temperatureItem, 'to'));
      final minimum = _minimum([dayTemperature, nightTemperature]);
      final maximum = _maximum([dayTemperature, nightTemperature]);
      final sunRiseSet = i < sunRiseSets.length ? sunRiseSets[i] : null;
      final dayAqi = _intAt(aqi, i);
      final sunrise = _string(_part(sunRiseSet, 'from')) ?? '';
      final sunset = _string(_part(sunRiseSet, 'to')) ?? '';
      if (weatherItem == null && minimum == null && maximum == null) continue;
      daily.add(
        XiaomiWeatherDay(
          conditionCode: dayCode,
          minimumTemperature: _round(minimum),
          maximumTemperature: _round(maximum),
          date: _formatChinaDate(baseTime.add(Duration(days: i))),
          sunrise: sunrise,
          sunset: sunset,
          aqi: dayAqi,
          aqiLevel: _normalizeAqiLevel(aqi: dayAqi, raw: _value(aqiLevels, i)),
          weatherFrom: weatherFrom,
          weatherTo: weatherTo,
        ),
      );
    }
    return daily;
  }

  List<XiaomiWeatherHour> _xiaomiHourly(
    Map<String, Object?> forecast,
    DateTime baseTime,
  ) {
    final temperatureData = _map(forecast['temperature']);
    final temperatures = _valueList(temperatureData);
    final weather = _valueList(_map(forecast['weather']));
    final windValues = _valueList(_map(forecast['wind']));
    final aqi = _intValues(_map(forecast['aqi'])['value']);
    final aqiLevels = _strings(forecast['aqi_level']);
    final hourlyBase = temperatureData['pubTime'] == null
        ? baseTime
        : _chinaTime(_xiaomiTimestamp(temperatureData['pubTime']));
    final count = math.min(24, math.max(temperatures.length, weather.length));
    final hourly = <XiaomiWeatherHour>[];
    for (var i = 0; i < count; i++) {
      final temperature = i < temperatures.length
          ? _double(temperatures[i])
          : null;
      final weatherItem = i < weather.length ? weather[i] : null;
      final windItem = i < windValues.length ? _map(windValues[i]) : const {};
      final hourAqi = _intAt(aqi, i);
      if (temperature == null && weatherItem == null) continue;
      hourly.add(
        XiaomiWeatherHour(
          conditionCode: _xiaomiCondition(weatherItem),
          temperature: _round(temperature),
          windSpeedBeaufort: _beaufort(_double(windItem['speed']) ?? 0),
          windDirection: _round(_double(windItem['direction'])),
          time: _formatChinaTime(hourlyBase.add(Duration(hours: i))),
          aqi: hourAqi,
          aqiLevel: _normalizeAqiLevel(aqi: hourAqi, raw: _value(aqiLevels, i)),
        ),
      );
    }
    return hourly;
  }

  int? _xiaomiAqi(Map<String, Object?> aqi) {
    final direct = _double(aqi['aqi'] ?? aqi['index'] ?? aqi['value']);
    if (direct != null) return direct.round();
    final pm25 = _double(aqi['pm25']);
    if (pm25 == null) return null;
    return _chinaAqiFromPm25(pm25);
  }

  String _normalizeAqiLevel({required int? aqi, required String? raw}) {
    return XiaomiAirQualityNormalizer.normalize(
      aqi: aqi,
      raw: raw,
    );
  }

  int? _xiaomiConditionOrNull(Object? value) {
    if (_string(value) == null) return null;
    return _xiaomiCondition(value);
  }

  List<XiaomiWeatherAlert> _xiaomiAlerts(Object? value) {
    if (value is! List) return const [];
    return value
        .whereType<Map>()
        .map(
          (item) => XiaomiWeatherAlert(
            id: _string(item['alertId'] ?? item['id']) ?? '',
            type: _string(item['type']) ?? '',
            level: _string(item['level']) ?? '',
            title: _string(item['title']) ?? '',
            detail: _string(item['detail']) ?? '',
          ),
        )
        .toList(growable: false);
  }

  String _xiaomiUvIndexLevel({
    required Map<String, Object?> forecast,
    required Map<String, Object?> current,
  }) {
    final forecastIndices = _map(forecast['indices']);
    final currentIndices = _map(current['indices']);
    return _string(_map(forecastIndices['uvIndex'])['level']) ??
        _string(_map(currentIndices['uvIndex'])['level']) ??
        _string(forecast['uvIndexLevel']) ??
        _string(current['uvIndexLevel']) ??
        _string(forecast['uv_index_level']) ??
        _string(current['uv_index_level']) ??
        '';
  }

  int _chinaAqiFromPm25(double concentration) {
    const ranges = <(double, double, int, int)>[
      (0, 35, 0, 50),
      (35, 75, 51, 100),
      (75, 115, 101, 150),
      (115, 150, 151, 200),
      (150, 250, 201, 300),
      (250, 350, 301, 400),
      (350, 500, 401, 500),
    ];
    final value = concentration.clamp(0, 500).toDouble();
    for (final (low, high, indexLow, indexHigh) in ranges) {
      if (value <= high) {
        return ((indexHigh - indexLow) / (high - low) * (value - low) +
                indexLow)
            .round();
      }
    }
    return 500;
  }

  List<Object?> _responseList(Object? value) {
    if (value is List) return value.cast<Object?>();
    final map = _map(value);
    final nested = map['data'] ?? map['results'];
    return nested is List ? nested.cast<Object?>() : const [];
  }

  Map<String, Object?> _responseMap(Object? value) {
    final map = _decodeMap(value);
    final nested = map['data'];
    return nested is Map ? nested.cast<String, Object?>() : map;
  }

  Map<String, Object?> _decodeMap(Object? value) {
    if (value is String) {
      try {
        return _map(jsonDecode(value));
      } on FormatException {
        return const <String, Object?>{};
      }
    }
    return _map(value);
  }

  List<Object?> _valueList(Map<String, Object?> value) {
    final list = value['value'];
    return list is List ? list.cast<Object?>() : const [];
  }

  Object? _part(Object? value, String key) {
    if (value is Map) return value[key];
    return null;
  }

  Object? _valueOf(Object? value) {
    if (value is Map) return value['value'];
    return value;
  }

  Map<String, Object?> _map(Object? value) =>
      value is Map ? value.cast<String, Object?>() : const <String, Object?>{};

  String? _string(Object? value) {
    final raw = _valueOf(value);
    if (raw == null) return null;
    final text = raw.toString().trim();
    return text.isEmpty ? null : text;
  }

  double? _double(Object? value) {
    final raw = _valueOf(value);
    if (raw is num) return raw.toDouble();
    return double.tryParse(raw?.toString().trim() ?? '');
  }

  int _int(Object? value) => _double(value)?.round() ?? -1;

  int _round(double? value) => value?.round() ?? 0;

  double? _minimum(List<double?> values) {
    final present = values.whereType<double>();
    if (present.isEmpty) return null;
    return present.reduce(math.min);
  }

  double? _maximum(List<double?> values) {
    final present = values.whereType<double>();
    if (present.isEmpty) return null;
    return present.reduce(math.max);
  }

  String _xiaomiTimestamp(Object? value) {
    if (value is num) {
      final milliseconds = value.abs() < 100000000000
          ? value.toInt() * 1000
          : value.toInt();
      final chinaTime = DateTime.fromMillisecondsSinceEpoch(
        milliseconds,
        isUtc: true,
      ).add(const Duration(hours: 8));
      return _formatChinaTime(chinaTime);
    }
    final text = value?.toString().trim() ?? '';
    if (text.isEmpty) return _formatChinaTime(DateTime.now());
    final numeric = num.tryParse(text);
    if (numeric != null) return _xiaomiTimestamp(numeric);
    if (RegExp(r'(Z|[+-]\d{2}:?\d{2})$').hasMatch(text)) return text;
    final withSeconds = RegExp(r'T\d{2}:\d{2}$').hasMatch(text)
        ? '$text:00'
        : text;
    return '$withSeconds+08:00';
  }

  DateTime _chinaTime(String value) {
    final parsed = DateTime.tryParse(value) ?? DateTime.now();
    return parsed.toUtc().add(const Duration(hours: 8));
  }

  String _formatChinaDate(DateTime value) =>
      '${value.year.toString().padLeft(4, '0')}-'
      '${value.month.toString().padLeft(2, '0')}-'
      '${value.day.toString().padLeft(2, '0')}';

  String _formatChinaTime(DateTime value) =>
      '${_formatChinaDate(value)}T'
      '${value.hour.toString().padLeft(2, '0')}:'
      '${value.minute.toString().padLeft(2, '0')}:'
      '${value.second.toString().padLeft(2, '0')}+08:00';

  String _errorMessage(Object? error) {
    if (error == null) return '未知错误';
    if (error is DioException) {
      final responseMessage = error.response?.data is Map
          ? _string(_map(error.response?.data)['message'])
          : null;
      return responseMessage ?? error.message ?? error.type.name;
    }
    return error.toString().replaceFirst('Bad state: ', '');
  }

  List<double?> _nullableNumbers(Object? value) => value is List
      ? value
            .map((item) => item is num ? item.toDouble() : null)
            .toList(growable: false)
      : const [];

  List<int?> _intValues(Object? value) => value is List
      ? value
            .map(
              (item) => item is num
                  ? item.toInt()
                  : int.tryParse(item?.toString() ?? ''),
            )
            .toList(growable: false)
      : const [];

  List<String> _strings(Object? value) => value is List
      ? value.map((item) => item?.toString() ?? '').toList()
      : const [];

  double _number(Object? value) => value is num ? value.toDouble() : 0;

  double? _numberAt(List<double?> values, int index) =>
      index < values.length ? values[index] : null;

  int? _intAt(List<int?> values, int index) =>
      index < values.length ? values[index] : null;

  String _value(List<String> values, int index) =>
      index < values.length ? values[index] : '';

  String _isoWithOffset(String value, int utcOffsetSeconds) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      return DateTime.now().toUtc().toIso8601String();
    }
    if (RegExp(r'(Z|[+-]\d{2}:\d{2})$').hasMatch(trimmed)) return trimmed;
    final withSeconds = RegExp(r'T\d{2}:\d{2}$').hasMatch(trimmed)
        ? '$trimmed:00'
        : trimmed;
    final sign = utcOffsetSeconds < 0 ? '-' : '+';
    final absolute = utcOffsetSeconds.abs();
    final hours = (absolute ~/ 3600).toString().padLeft(2, '0');
    final minutes = ((absolute % 3600) ~/ 60).toString().padLeft(2, '0');
    return '$withSeconds$sign$hours:$minutes';
  }

  int _firstFutureHourIndex(List<String> values, String currentTime) {
    if (values.isEmpty || currentTime.isEmpty) return 0;
    for (var i = 0; i < values.length; i++) {
      if (values[i].compareTo(currentTime) >= 0) return i;
    }
    return values.length;
  }

  int _beaufort(double speedKmh) {
    if (speedKmh < 1) return 0;
    if (speedKmh < 6) return 1;
    if (speedKmh < 12) return 2;
    if (speedKmh < 20) return 3;
    if (speedKmh < 29) return 4;
    if (speedKmh < 39) return 5;
    if (speedKmh < 50) return 6;
    if (speedKmh < 62) return 7;
    if (speedKmh < 75) return 8;
    if (speedKmh < 89) return 9;
    if (speedKmh < 103) return 10;
    if (speedKmh < 117) return 11;
    return 12;
  }

  int _xiaomiCondition(Object? value) {
    final raw = _string(value);
    final number = int.tryParse(raw ?? '');
    if (number != null) return number;
    return switch (raw) {
      '晴' => 0,
      '多云' => 1,
      '阴' => 2,
      '阵雨' => 3,
      '雷阵雨' => 4,
      '小雨' => 7,
      '中雨' => 8,
      '大雨' => 9,
      '雪' || '小雪' => 14,
      '雾' => 18,
      '霾' => 53,
      _ => 0,
    };
  }

  int _condition(double code) => switch (code.round()) {
    0 => 0,
    1 || 2 => 1,
    3 => 2,
    45 || 48 => 18,
    51 || 53 || 55 || 61 => 7,
    56 || 57 || 66 || 67 => 19,
    63 => 8,
    65 => 9,
    71 || 77 || 85 => 14,
    73 => 15,
    75 || 86 => 16,
    80 || 81 => 3,
    82 => 11,
    95 => 4,
    96 || 99 => 5,
    _ => 0,
  };
}
