import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_clock.pb.dart'
    as pb_clock;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_common.pb.dart'
    as pb_common;

class XiaomiAlarm {
  const XiaomiAlarm({
    required this.id,
    required this.hour,
    required this.minute,
    required this.clockMode,
    required this.weekDays,
    required this.enabled,
    required this.label,
  });

  final int id;
  final int hour;
  final int minute;
  final int clockMode;
  final int weekDays;
  final bool enabled;
  final String label;

  factory XiaomiAlarm.fromProto(pb_clock.ClockInfo info) {
    final data = info.data;
    return XiaomiAlarm(
      id: info.id,
      hour: data.time.hour,
      minute: data.time.minuter,
      clockMode: data.clockMode.value,
      weekDays: data.weekDays,
      enabled: data.enable,
      label: data.label,
    );
  }

  factory XiaomiAlarm.fromJson(Map<String, Object?> json) => XiaomiAlarm(
    id: (json['id'] as num?)?.toInt() ?? 0,
    hour: (json['hour'] as num?)?.toInt() ?? 0,
    minute: (json['minute'] as num?)?.toInt() ?? 0,
    clockMode: (json['clockMode'] as num?)?.toInt() ?? 1,
    weekDays: (json['weekDays'] as num?)?.toInt() ?? 0,
    enabled: json['enabled'] as bool? ?? true,
    label: json['label']?.toString() ?? '',
  );

  Map<String, Object?> toJson() => {
    'id': id,
    'hour': hour,
    'minute': minute,
    'clockMode': clockMode,
    'weekDays': weekDays,
    'enabled': enabled,
    'label': label,
  };

  XiaomiAlarm copyWith({
    int? id,
    int? hour,
    int? minute,
    int? clockMode,
    int? weekDays,
    bool? enabled,
    String? label,
  }) => XiaomiAlarm(
    id: id ?? this.id,
    hour: hour ?? this.hour,
    minute: minute ?? this.minute,
    clockMode: clockMode ?? this.clockMode,
    weekDays: weekDays ?? this.weekDays,
    enabled: enabled ?? this.enabled,
    label: label ?? this.label,
  );

  pb_clock.ClockInfo toProto() => pb_clock.ClockInfo(
    id: id,
    data: pb_clock.ClockInfo_Data(
      time: pb_common.Time(hour: hour, minuter: minute),
      clockMode:
          pb_common.ClockMode.valueOf(clockMode) ??
          pb_common.ClockMode.CLOCK_EVERY_DAY,
      weekDays: weekDays,
      enable: enabled,
      label: label,
    ),
  );
}

class XiaomiWeatherAlert {
  const XiaomiWeatherAlert({
    this.id = '',
    this.type = '',
    this.level = '',
    this.title = '',
    this.detail = '',
  });

  final String id;
  final String type;
  final String level;
  final String title;
  final String detail;

  Map<String, Object?> toJson() => {
    'id': id,
    'type': type,
    'level': level,
    'title': title,
    'detail': detail,
  };

  factory XiaomiWeatherAlert.fromJson(Map<String, Object?> json) =>
      XiaomiWeatherAlert(
        id: json['id']?.toString() ?? '',
        type: json['type']?.toString() ?? '',
        level: json['level']?.toString() ?? '',
        title: json['title']?.toString() ?? '',
        detail: json['detail']?.toString() ?? '',
      );
}

class XiaomiWeatherDay {
  const XiaomiWeatherDay({
    required this.conditionCode,
    required this.minimumTemperature,
    required this.maximumTemperature,
    this.date = '',
    this.sunrise = '',
    this.sunset = '',
    this.aqi,
    this.aqiLevel = '',
    this.weatherFrom,
    this.weatherTo,
  });

  final int conditionCode;
  final int minimumTemperature;
  final int maximumTemperature;
  final String date;
  final String sunrise;
  final String sunset;
  final int? aqi;
  final String aqiLevel;
  final int? weatherFrom;
  final int? weatherTo;

  Map<String, Object?> toJson() => {
    'conditionCode': conditionCode,
    'minimumTemperature': minimumTemperature,
    'maximumTemperature': maximumTemperature,
    'date': date,
    'sunrise': sunrise,
    'sunset': sunset,
    'aqi': aqi,
    'aqiLevel': aqiLevel,
    'weatherFrom': weatherFrom,
    'weatherTo': weatherTo,
  };

  factory XiaomiWeatherDay.fromJson(Map<String, Object?> json) =>
      XiaomiWeatherDay(
        conditionCode: (json['conditionCode'] as num?)?.toInt() ?? 0,
        minimumTemperature: (json['minimumTemperature'] as num?)?.toInt() ?? 0,
        maximumTemperature: (json['maximumTemperature'] as num?)?.toInt() ?? 0,
        date: json['date']?.toString() ?? '',
        sunrise: json['sunrise']?.toString() ?? '',
        sunset: json['sunset']?.toString() ?? '',
        aqi: (json['aqi'] as num?)?.toInt(),
        aqiLevel: json['aqiLevel']?.toString() ?? '',
        weatherFrom: (json['weatherFrom'] as num?)?.toInt(),
        weatherTo: (json['weatherTo'] as num?)?.toInt(),
      );
}

class XiaomiWeatherHour {
  const XiaomiWeatherHour({
    required this.conditionCode,
    required this.temperature,
    required this.windSpeedBeaufort,
    required this.windDirection,
    this.time = '',
    this.aqi,
    this.aqiLevel = '',
  });

  final int conditionCode;
  final int temperature;
  final int windSpeedBeaufort;
  final int windDirection;
  final String time;
  final int? aqi;
  final String aqiLevel;

  Map<String, Object?> toJson() => {
    'conditionCode': conditionCode,
    'temperature': temperature,
    'windSpeedBeaufort': windSpeedBeaufort,
    'windDirection': windDirection,
    'time': time,
    'aqi': aqi,
    'aqiLevel': aqiLevel,
  };

  factory XiaomiWeatherHour.fromJson(Map<String, Object?> json) =>
      XiaomiWeatherHour(
        conditionCode: (json['conditionCode'] as num?)?.toInt() ?? 0,
        temperature: (json['temperature'] as num?)?.toInt() ?? 0,
        windSpeedBeaufort: (json['windSpeedBeaufort'] as num?)?.toInt() ?? 0,
        windDirection: (json['windDirection'] as num?)?.toInt() ?? 0,
        time: json['time']?.toString() ?? '',
        aqi: (json['aqi'] as num?)?.toInt(),
        aqiLevel: json['aqiLevel']?.toString() ?? '',
      );
}

enum XiaomiWeatherSource {
  xiaomi('Xiaomi Weather'),
  openMeteo('Open-Meteo');

  const XiaomiWeatherSource(this.displayName);

  final String displayName;
}

class XiaomiWeatherData {
  const XiaomiWeatherData({
    required this.locationKey,
    required this.cityName,
    required this.locationName,
    required this.publishedAt,
    required this.conditionCode,
    required this.temperature,
    required this.humidity,
    required this.windSpeedBeaufort,
    required this.windDirection,
    required this.uvIndex,
    required this.aqi,
    required this.pressureHpa,
    required this.daily,
    required this.hourly,
    this.aqiLevel = '',
    this.uvIndexLevel = '',
    this.alerts = const [],
    this.isCurrentLocation = true,
    this.source = XiaomiWeatherSource.openMeteo,
  });

  final String locationKey;
  final String cityName;
  final String locationName;
  final String publishedAt;
  final int conditionCode;
  final int temperature;
  final int humidity;
  final int windSpeedBeaufort;
  final int windDirection;
  final int uvIndex;
  final int? aqi;
  final double pressureHpa;
  final List<XiaomiWeatherDay> daily;
  final List<XiaomiWeatherHour> hourly;
  final String aqiLevel;
  final String uvIndexLevel;
  final List<XiaomiWeatherAlert> alerts;
  final bool isCurrentLocation;
  final XiaomiWeatherSource source;

  Map<String, Object?> toJson() => {
    'locationKey': locationKey,
    'cityName': cityName,
    'locationName': locationName,
    'publishedAt': publishedAt,
    'conditionCode': conditionCode,
    'temperature': temperature,
    'humidity': humidity,
    'windSpeedBeaufort': windSpeedBeaufort,
    'windDirection': windDirection,
    'uvIndex': uvIndex,
    'aqi': aqi,
    'pressureHpa': pressureHpa,
    'daily': daily.map((item) => item.toJson()).toList(growable: false),
    'hourly': hourly.map((item) => item.toJson()).toList(growable: false),
    'aqiLevel': aqiLevel,
    'uvIndexLevel': uvIndexLevel,
    'alerts': alerts.map((item) => item.toJson()).toList(growable: false),
    'isCurrentLocation': isCurrentLocation,
    'source': source.name,
  };

  factory XiaomiWeatherData.fromJson(
    Map<String, Object?> json,
  ) => XiaomiWeatherData(
    locationKey: json['locationKey']?.toString() ?? '',
    cityName: json['cityName']?.toString() ?? '',
    locationName: json['locationName']?.toString() ?? '',
    publishedAt: json['publishedAt']?.toString() ?? '',
    conditionCode: (json['conditionCode'] as num?)?.toInt() ?? 0,
    temperature: (json['temperature'] as num?)?.toInt() ?? 0,
    humidity: (json['humidity'] as num?)?.toInt() ?? 0,
    windSpeedBeaufort: (json['windSpeedBeaufort'] as num?)?.toInt() ?? 0,
    windDirection: (json['windDirection'] as num?)?.toInt() ?? 0,
    uvIndex: (json['uvIndex'] as num?)?.toInt() ?? 0,
    aqi: (json['aqi'] as num?)?.toInt(),
    pressureHpa: (json['pressureHpa'] as num?)?.toDouble() ?? 0,
    daily: ((json['daily'] as List?) ?? const [])
        .whereType<Map>()
        .map((item) => XiaomiWeatherDay.fromJson(item.cast<String, Object?>()))
        .toList(growable: false),
    hourly: ((json['hourly'] as List?) ?? const [])
        .whereType<Map>()
        .map((item) => XiaomiWeatherHour.fromJson(item.cast<String, Object?>()))
        .toList(growable: false),
    aqiLevel: json['aqiLevel']?.toString() ?? '',
    uvIndexLevel: json['uvIndexLevel']?.toString() ?? '',
    alerts: ((json['alerts'] as List?) ?? const [])
        .whereType<Map>()
        .map(
          (item) => XiaomiWeatherAlert.fromJson(item.cast<String, Object?>()),
        )
        .toList(growable: false),
    isCurrentLocation: json['isCurrentLocation'] as bool? ?? true,
    source: XiaomiWeatherSource.values.firstWhere(
      (item) => item.name == json['source']?.toString(),
      orElse: () => XiaomiWeatherSource.openMeteo,
    ),
  );
}
