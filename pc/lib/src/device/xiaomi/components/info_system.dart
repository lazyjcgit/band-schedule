import 'dart:async';

import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/core/models/bt_models.dart' as models;
import 'package:band_schedule_pc/src/device/core/event_bus.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_system.dart';
import 'package:band_schedule_pc/src/features/devices/models/xiaomi_device_features.dart';
import 'package:band_schedule_pc/src/features/devices/services/xiaomi_sync_preferences.dart';
import 'package:band_schedule_pc/src/features/devices/services/xiaomi_weather_sync_service.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_clock.pb.dart'
    as pb_clock;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_common.pb.dart'
    as pb_common;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_weather.pb.dart'
    as pb_weather;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_lpa.pb.dart'
    as pb_lpa;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_system.pb.dart'
    as pb_system;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_watch_face.pb.dart'
    as pb_watchface;
import 'package:band_schedule_pc/src/protocols/xiaomi/commands/xiaomi_request_pool.dart';

class XiaomiInfoSystem extends XiaomiPbSystem {
  static final _log = getLogger('XiaomiInfoSystem');

  String? _model;
  String? _firmwareVersion;
  String? _productDevice;
  Future<void> _weatherSendTail = Future<void>.value();
  bool _deviceWeatherRequestInFlight = false;

  String? get model => _model;

  String? get firmwareVersion => _firmwareVersion;

  /// Internal product identifier reported by the wearable.
  ///
  /// Mi Fitness uses the server-side product metadata (rather than the
  /// display model) when selecting an AGPS source. Keep this identifier in
  /// the protocol layer so GNSS fallback logic does not have to guess from a
  /// localized product name.
  String? get productDevice => _productDevice;

  Future<models.BatteryStatus> fetchBatteryInfo() async {
    final response = await component.requestPool
        .request<pb_system.DeviceStatus>(
          packet: buildSystemPacket(
            pb_system.System_SystemID.GET_DEVICE_STATUS,
          ),
          typeMatcher: (p) =>
              p.whichPayload() == pb.WearPacket_Payload.system &&
              p.id == pb_system.System_SystemID.GET_DEVICE_STATUS.value,
          responseMapper: (p) => p.system.deviceStatus,
        );
    final status = _batteryStatus(response.battery);
    _emitBattery(status);
    return status;
  }

  models.BatteryStatus _batteryStatus(pb_system.DeviceStatus_Battery battery) {
    return models.BatteryStatus(
      capacity: battery.capacity,
      chargeStatus: _mapChargeStatus(battery.chargeStatus),
      chargeInfo: battery.hasChargeInfo()
          ? models.ChargeInfo(
              state: battery.chargeInfo.state.toInt(),
              timestamp: battery.chargeInfo.hasTimestamp()
                  ? battery.chargeInfo.timestamp.toInt()
                  : null,
            )
          : null,
    );
  }

  void _emitBattery(models.BatteryStatus status) {
    entity.emit(BatteryUpdated(deviceId: entity.id, battery: status));
  }

  Future<models.SystemInfo> fetchDeviceInfo() async {
    _log.fine('[${entity.id}] fetching device info');
    final response = await component.requestPool.request<pb_system.DeviceInfo>(
      packet: buildSystemPacket(pb_system.System_SystemID.GET_DEVICE_INFO),
      typeMatcher: (p) =>
          p.whichPayload() == pb.WearPacket_Payload.system &&
          p.id == pb_system.System_SystemID.GET_DEVICE_INFO.value,
      responseMapper: (p) => p.system.deviceInfo,
    );
    final info = models.SystemInfo(
      serialNumber: response.serialNumber,
      firmwareVersion: response.firmwareVersion,
      imei: response.imei,
      model: response.model,
    );
    _model = info.model.trim().isEmpty ? null : info.model.trim();
    _firmwareVersion = info.firmwareVersion.trim().isEmpty
        ? null
        : info.firmwareVersion.trim();
    _productDevice = response.productDevice.trim().isEmpty
        ? null
        : response.productDevice.trim();
    _log.fine(
      '[${entity.id}] device info: model=${info.model}, productDevice=${_productDevice ?? '-'}, '
      'fw=${info.firmwareVersion}, serial=${info.serialNumber}, imei=${info.imei}',
    );
    entity.emit(DeviceInfoUpdated(deviceId: entity.id, info: info));
    return info;
  }

  Future<String?> fetchEuiccImei() async {
    _log.fine('[${entity.id}] fetching eUICC info');
    final response = await component.requestPool.request<pb_lpa.EuiccInfo>(
      packet: pb.WearPacket(
        type: pb.WearPacket_Type.LPA,
        id: pb_lpa.Lpa_LpaID.GET_EUICC_INFO.value,
        lpa: pb_lpa.Lpa(),
      ),
      typeMatcher: (p) =>
          p.whichPayload() == pb.WearPacket_Payload.lpa &&
          p.id == pb_lpa.Lpa_LpaID.GET_EUICC_INFO.value &&
          p.lpa.hasEuiccInfo(),
      responseMapper: (p) => p.lpa.euiccInfo,
      timeout: const Duration(seconds: 3),
    );
    final imei = response.hasImei() ? response.imei.trim() : '';
    final eidLength = response.hasEid() ? response.eid.length : 0;
    _log.fine(
      '[${entity.id}] eUICC info: imei_present=${imei.isNotEmpty}, eid_bytes=$eidLength',
    );
    return imei.isEmpty ? null : imei;
  }

  Future<models.StorageInfo> fetchStorageInfo() async {
    _log.fine('[${entity.id}] fetching storage info');
    final response = await component.requestPool.request<pb_system.StorageInfo>(
      packet: buildSystemPacket(pb_system.System_SystemID.GET_STORAGE_INFO),
      typeMatcher: (p) =>
          p.whichPayload() == pb.WearPacket_Payload.system &&
          p.id == pb_system.System_SystemID.GET_STORAGE_INFO.value,
      responseMapper: (p) => p.system.storageInfo,
    );
    final info = models.StorageInfo(
      used: response.used.toInt(),
      total: response.total.toInt(),
    );
    _log.fine(
      '[${entity.id}] storage info: used=${info.used}, total=${info.total}',
    );
    entity.emit(StorageInfoUpdated(deviceId: entity.id, info: info));
    return info;
  }

  Future<List<models.AppInfo>> fetchInstalledApps() async {
    _log.fine('[${entity.id}] fetching installed apps');
    final response = await component.requestPool.request<pb_system.App_List>(
      packet: buildSystemPacket(pb_system.System_SystemID.GET_ORDERED_APP_LIST),
      typeMatcher: (p) =>
          p.whichPayload() == pb.WearPacket_Payload.system &&
          p.id == pb_system.System_SystemID.GET_ORDERED_APP_LIST.value,
      responseMapper: (p) => p.system.appList,
    );
    final apps = response.list
        .map((app) => models.AppInfo(packageName: app.id, appName: app.name))
        .toList();
    _log.fine('[${entity.id}] installed apps: ${apps.length}');
    entity.emit(AppListUpdated(deviceId: entity.id, apps: apps));
    return apps;
  }

  Future<void> setOrderedApps(List<models.AppInfo> apps) async {
    await component.sendPbPacket(
      pb.WearPacket(
        type: pb.WearPacket_Type.SYSTEM,
        id: pb_system.System_SystemID.SET_ORDERED_APP_LIST.value,
        system: pb_system.System(
          appList: pb_system.App_List(
            list: apps
                .map(
                  (app) =>
                      pb_system.App(id: app.packageName, name: app.appName),
                )
                .toList(growable: false),
          ),
        ),
      ),
      waitForAck: true,
    );
    entity.emit(AppListUpdated(deviceId: entity.id, apps: apps));
  }

  Future<List<XiaomiAlarm>> fetchAlarms() async {
    final response = await component.requestPool
        .request<pb_clock.ClockInfo_List>(
          packet: pb.WearPacket(
            type: pb.WearPacket_Type.CLOCK,
            id: pb_clock.Clock_ClockID.GET_CLOCK_LIST.value,
            clock: pb_clock.Clock(),
          ),
          typeMatcher: (p) =>
              p.whichPayload() == pb.WearPacket_Payload.clock &&
              p.id == pb_clock.Clock_ClockID.GET_CLOCK_LIST.value &&
              p.clock.hasClockInfoList(),
          responseMapper: (p) => p.clock.clockInfoList,
        );
    return response.list.map(XiaomiAlarm.fromProto).toList(growable: false);
  }

  Future<void> addAlarm(XiaomiAlarm alarm) async {
    await _sendClockCommand(
      pb_clock.Clock_ClockID.ADD_CLOCK,
      clockData: alarm.toProto().data,
    );
  }

  Future<void> updateAlarm(XiaomiAlarm alarm) async {
    await _sendClockCommand(
      pb_clock.Clock_ClockID.UPDATE_CLOCK,
      clockInfo: alarm.toProto(),
    );
  }

  Future<void> removeAlarm(int id) async {
    await _sendClockCommand(pb_clock.Clock_ClockID.REMOVE_CLOCK, idValue: id);
  }

  Future<void> setAlarmEnabled(int id, bool enabled) async {
    final alarms = await fetchAlarms();
    final alarm = alarms.where((alarm) => alarm.id == id).firstOrNull;
    if (alarm == null) {
      throw StateError('Alarm $id no longer exists');
    }
    await updateAlarm(alarm.copyWith(enabled: enabled));
  }

  Future<void> _sendClockCommand(
    pb_clock.Clock_ClockID id, {
    pb_clock.ClockInfo? clockInfo,
    pb_clock.ClockInfo_Data? clockData,
    int? idValue,
  }) async {
    await component.sendPbPacket(
      pb.WearPacket(
        type: pb.WearPacket_Type.CLOCK,
        id: id.value,
        clock: pb_clock.Clock(
          clockInfo: clockInfo,
          clockData: clockData,
          id: idValue,
        ),
      ),
      waitForAck: true,
    );
  }

  Future<void> sendWeather(XiaomiWeatherData weather) {
    final previous = _weatherSendTail;
    final current = Completer<void>();
    _weatherSendTail = current.future;
    return previous.then<void>((_) async {
      try {
        await _sendWeatherNow(weather);
      } finally {
        current.complete();
      }
    });
  }

  Future<void> _sendWeatherNow(XiaomiWeatherData weather) async {
    _log.info(
      '[${entity.id}] syncing weather: source=${weather.source.name}, '
      'locationKey=${weather.locationKey}, city=${weather.cityName}, '
      'location=${weather.locationName}, current=${weather.isCurrentLocation}',
    );
    final id = buildXiaomiWeatherId(weather);
    final latest = buildXiaomiWeatherLatest(weather, id);
    _log.fine(
      '[${entity.id}] weather latest payload: '
      'city=${id.locationName}, aqi=${latest.aqi.key}/${latest.aqi.value}, '
      'uv=${latest.uvindex.key}/${latest.uvindex.value}, '
      'pressure=${latest.pressure}',
    );

    final cityKey = pb_weather.CityKey(
      locationKey: weather.locationKey,
      cityName: _weatherDisplayName(weather),
    );
    if (weather.isCurrentLocation) {
      await _replaceWeatherCityKeys(cityKey);
    }
    await _sendWeatherPacket(
      pb_weather.Weather_WeatherID.SET_CONFIG,
      weather: pb_weather.Weather(
        weatherConfig: pb_weather.WeatherConfig(
          temperatureUnit: pb_common.TemperatureUnit.CENTIGRADE,
        ),
      ),
    );
    if (weather.isCurrentLocation && weather.pressureHpa > 0) {
      _log.fine(
        '[${entity.id}] sending atmospheric pressure: '
        '${weather.pressureHpa.toStringAsFixed(1)} hPa',
      );
      await _sendWeatherPacket(
        pb_weather.Weather_WeatherID.SET_PRESSURE,
        weather: pb_weather.Weather(pressure: weather.pressureHpa * 100),
      );
    }
    await _sendWeatherPacket(
      pb_weather.Weather_WeatherID.LATEST_WEATHER,
      weather: pb_weather.Weather(latest: latest),
    );
    final daily = weather.daily.take(7).toList(growable: false);
    await _sendWeatherPacket(
      pb_weather.Weather_WeatherID.DAILY_FORECAST,
      weather: pb_weather.Weather(
        forecast: pb_weather.WeatherForecast(
          id: id,
          dataList: pb_weather.WeatherForecast_Data_List(
            list: daily
                .map(
                  (day) => pb_weather.WeatherForecast_Data(
                    aqi: _weatherValue(day.aqiLevel, day.aqi ?? 0),
                    weather: pb_common.RangeValue(
                      from: day.weatherFrom ?? day.conditionCode,
                      to: day.weatherTo ?? day.conditionCode,
                    ),
                    temperature: xiaomiDailyTemperatureRange(day),
                    temperatureUnit: '℃',
                    sunRiseSet: pb_weather.SunRiseSet(
                      sunRise: day.sunrise,
                      sunSet: day.sunset,
                    ),
                  ),
                )
                .toList(growable: false),
          ),
        ),
      ),
    );
    if (weather.hourly.isNotEmpty) {
      await _sendWeatherPacket(
        pb_weather.Weather_WeatherID.HOURLY_FORECAST,
        weather: pb_weather.Weather(
          forecast: pb_weather.WeatherForecast(
            id: id,
            dataList: pb_weather.WeatherForecast_Data_List(
              list: weather.hourly
                  .map(buildXiaomiHourlyWeatherEntry)
                  .toList(growable: false),
            ),
          ),
        ),
      );
    }
    _log.info(
      '[${entity.id}] weather sync sent: daily=${daily.length}, '
      'hourly=${weather.hourly.length}, alerts=${weather.alerts.length}',
    );
  }

  String _weatherDisplayName(XiaomiWeatherData weather) {
    final locationName = weather.locationName.trim();
    return locationName.isNotEmpty ? locationName : weather.cityName.trim();
  }

  Future<void> _replaceWeatherCityKeys(pb_weather.CityKey selected) async {
    var existing = <pb_weather.CityKey>[];
    try {
      final response = await component.requestPool
          .request<pb_weather.CityKey_List>(
            packet: pb.WearPacket(
              type: pb.WearPacket_Type.WEATHER,
              id: pb_weather.Weather_WeatherID.GET_CITY_KEYS.value,
              weather: pb_weather.Weather(),
            ),
            typeMatcher: (packet) =>
                packet.whichPayload() == pb.WearPacket_Payload.weather &&
                packet.id == pb_weather.Weather_WeatherID.GET_CITY_KEYS.value &&
                packet.weather.hasCityKeyList(),
            responseMapper: (packet) => packet.weather.cityKeyList,
            timeout: const Duration(seconds: 3),
          );
      existing = response.list.toList(growable: false);
      _log.fine(
        '[${entity.id}] weather city keys loaded: existing=${existing.length}, '
        'selected=${selected.cityName}',
      );
    } catch (error, stackTrace) {
      _log.warning(
        '[${entity.id}] loading weather city keys failed; replacing without '
        'reading existing entries',
        error,
        stackTrace,
      );
    }

    if (existing.isNotEmpty) {
      _log.info(
        '[${entity.id}] clearing weather city keys: count=${existing.length}',
      );
      try {
        // Mi Fitness removes city keys with a fire-and-forget packet, then
        // writes the complete replacement list in a separately acknowledged
        // UPDATE_CITY_KEYS packet.
        await _sendWeatherPacket(
          pb_weather.Weather_WeatherID.REMOVE_CITY_KEYS,
          weather: pb_weather.Weather(
            cityKeyList: pb_weather.CityKey_List(list: existing),
          ),
          waitForAck: false,
        );
      } catch (error, stackTrace) {
        _log.warning(
          '[${entity.id}] clearing weather city keys failed; continuing with '
          'replacement',
          error,
          stackTrace,
        );
      }
    }

    await _sendWeatherPacket(
      pb_weather.Weather_WeatherID.UPDATE_CITY_KEYS,
      weather: pb_weather.Weather(
        cityKeyList: pb_weather.CityKey_List(list: [selected]),
      ),
    );
    _log.info(
      '[${entity.id}] weather city keys replaced: selected=${selected.cityName}',
    );
  }

  pb_common.KeyValue _weatherValue(String key, int value) =>
      pb_common.KeyValue(key: key, value: value);

  Future<void> _sendWeatherPacket(
    pb_weather.Weather_WeatherID id, {
    required pb_weather.Weather weather,
    bool waitForAck = true,
  }) async {
    _log.fine(
      '[${entity.id}] sending weather packet id=${id.value}, '
      'waitForAck=$waitForAck',
    );
    await component.sendPbPacket(
      pb.WearPacket(
        type: pb.WearPacket_Type.WEATHER,
        id: id.value,
        weather: weather,
      ),
      waitForAck: waitForAck,
    );
  }

  Future<pb_system.AppLayout> fetchAppLayout() async {
    final response = await component.requestPool.request<pb_system.AppLayout>(
      packet: buildSystemPacket(pb_system.System_SystemID.GET_APP_LAYOUT),
      typeMatcher: (p) =>
          p.whichPayload() == pb.WearPacket_Payload.system &&
          p.id == pb_system.System_SystemID.GET_APP_LAYOUT.value,
      responseMapper: (p) => p.system.appLayout,
    );
    return response;
  }

  Future<void> setAppLayout(pb_system.AppLayout_Layout layout) async {
    await component.sendPbPacket(
      pb.WearPacket(
        type: pb.WearPacket_Type.SYSTEM,
        id: pb_system.System_SystemID.SET_APP_LAYOUT.value,
        system: pb_system.System(
          appLayout: pb_system.AppLayout(layout: layout),
        ),
      ),
      waitForAck: true,
    );
  }

  Future<List<models.WatchfaceInfo>> fetchInstalledWatchfaces() async {
    _log.fine('[${entity.id}] fetching installed watchfaces');
    final response = await component.requestPool
        .request<pb_watchface.WatchFaceItem_List>(
          packet: pb.WearPacket(
            type: pb.WearPacket_Type.WATCH_FACE,
            id: pb_watchface.WatchFace_WatchFaceID.GET_INSTALLED_LIST.value,
            watchFace: pb_watchface.WatchFace(),
          ),
          typeMatcher: (p) =>
              p.whichPayload() == pb.WearPacket_Payload.watchFace &&
              p.id ==
                  pb_watchface.WatchFace_WatchFaceID.GET_INSTALLED_LIST.value &&
              p.watchFace.hasWatchFaceList(),
          responseMapper: (p) => p.watchFace.watchFaceList,
        );
    final watchfaces = response.list
        .map(
          (item) => models.WatchfaceInfo(
            id: item.id,
            name: item.name,
            isCurrent: item.isCurrent,
            canRemove: item.canRemove,
            versionCode: item.versionCode.toInt(),
            canEdit: item.canEdit,
            backgroundColor: item.backgroundColor,
            backgroundImage: item.backgroundImage,
            style: item.style,
            backgroundImageList: item.backgroundImageList.toList(),
          ),
        )
        .toList();
    _log.fine('[${entity.id}] installed watchfaces: ${watchfaces.length}');
    entity.emit(
      WatchfaceListUpdated(deviceId: entity.id, watchfaces: watchfaces),
    );
    return watchfaces;
  }

  models.ChargeStatus _mapChargeStatus(
    pb_system.DeviceStatus_Battery_ChargeStatus status,
  ) {
    return switch (status) {
      pb_system.DeviceStatus_Battery_ChargeStatus.CHARGING =>
        models.ChargeStatus.charging,
      pb_system.DeviceStatus_Battery_ChargeStatus.NOT_CHARGING =>
        models.ChargeStatus.notCharging,
      pb_system.DeviceStatus_Battery_ChargeStatus.FULL =>
        models.ChargeStatus.full,
      _ => models.ChargeStatus.unknown,
    };
  }

  @override
  void onWearPacket(pb.WearPacket packet) {
    if (packet.whichPayload() == pb.WearPacket_Payload.weather &&
        packet.type == pb.WearPacket_Type.WEATHER &&
        packet.id == pb_weather.Weather_WeatherID.WEAR_REQUEST.value) {
      final requestedCityKey = packet.weather.hasCityKey()
          ? packet.weather.cityKey
          : null;
      _handleDeviceWeatherRequest(
        requestedLocationKey: requestedCityKey?.locationKey.trim(),
        requestedCity: requestedCityKey?.cityName.trim(),
      );
      return;
    }
    if (packet.whichPayload() != pb.WearPacket_Payload.system ||
        packet.system.whichPayload() !=
            pb_system.System_Payload.batteryStatus) {
      return;
    }
    _emitBattery(_batteryStatus(packet.system.batteryStatus));
  }

  void _handleDeviceWeatherRequest({
    required String? requestedLocationKey,
    required String? requestedCity,
  }) {
    if (_deviceWeatherRequestInFlight) {
      _log.fine(
        '[${entity.id}] wearable weather request ignored while refresh is '
        'already running',
      );
      return;
    }
    _deviceWeatherRequestInFlight = true;
    unawaited(
      _refreshWeatherForDeviceRequest(
        requestedLocationKey: requestedLocationKey,
        requestedCity: requestedCity,
      ).then<void>(
        (_) => _deviceWeatherRequestInFlight = false,
        onError: (Object error, StackTrace stackTrace) {
          _deviceWeatherRequestInFlight = false;
          _log.warning(
            '[${entity.id}] wearable weather refresh failed unexpectedly',
            error,
            stackTrace,
          );
        },
      ),
    );
  }

  Future<void> _refreshWeatherForDeviceRequest({
    required String? requestedLocationKey,
    required String? requestedCity,
  }) async {
    final configuredCity = XiaomiSyncPreferences.weatherLastCity?.trim();
    final cachedWeather = XiaomiSyncPreferences.cachedWeather;
    final city = configuredCity != null && configuredCity.isNotEmpty
        ? configuredCity
        : cachedWeather?.cityName.trim() ?? requestedCity;
    _log.info(
      '[${entity.id}] wearable requested weather refresh: '
      'locationKey=${requestedLocationKey?.isNotEmpty == true ? requestedLocationKey : '-'}, '
      'requestedCity=${requestedCity?.isNotEmpty == true ? requestedCity : '-'}, '
      'city=${city?.isNotEmpty == true ? city : '-'}',
    );

    if (city == null || city.isEmpty) {
      _log.warning(
        '[${entity.id}] wearable weather refresh skipped: no saved city',
      );
      return;
    }
    if (requestedLocationKey != null &&
        requestedLocationKey.isNotEmpty &&
        cachedWeather != null &&
        cachedWeather.locationKey != requestedLocationKey) {
      _log.fine(
        '[${entity.id}] wearable requested a different weather location; '
        'refreshing the configured city',
      );
    }

    try {
      final weather = await XiaomiWeatherSyncService().fetch(
        city,
        model: _model,
        firmwareVersion: _firmwareVersion,
      );
      await sendWeather(weather);
      await XiaomiSyncPreferences.setWeatherLastCity(weather.cityName);
      await XiaomiSyncPreferences.setCachedWeather(weather, DateTime.now());
      _log.info(
        '[${entity.id}] wearable weather refresh completed: '
        'city=${weather.cityName}, source=${weather.source.name}',
      );
    } catch (error, stackTrace) {
      _log.warning(
        '[${entity.id}] wearable weather refresh failed',
        error,
        stackTrace,
      );
    }
  }
}

pb_common.RangeValue xiaomiDailyTemperatureRange(XiaomiWeatherDay day) =>
    pb_common.RangeValue(
      from: day.maximumTemperature,
      to: day.minimumTemperature,
    );

pb_weather.WeatherId buildXiaomiWeatherId(XiaomiWeatherData weather) =>
    pb_weather.WeatherId(
      pubTime: weather.publishedAt,
      cityName: weather.cityName,
      locationName: weather.locationName,
      locationKey: weather.locationKey,
      isCurrentLocation: weather.isCurrentLocation,
    );

pb_weather.WeatherLatest buildXiaomiWeatherLatest(
  XiaomiWeatherData weather,
  pb_weather.WeatherId id,
) => pb_weather.WeatherLatest(
  id: id,
  weather: weather.conditionCode,
  temperature: pb_common.KeyValue(key: '℃', value: weather.temperature),
  humidity: pb_common.KeyValue(key: '%', value: weather.humidity),
  windInfo: pb_common.KeyValue(
    key: weather.windDirection.toString(),
    value: weather.windSpeedBeaufort,
  ),
  uvindex: pb_common.KeyValue(
    key: weather.uvIndexLevel,
    value: weather.uvIndex,
  ),
  aqi: pb_common.KeyValue(key: weather.aqiLevel, value: weather.aqi ?? 0),
  alertsList: pb_weather.Alerts_List(
    list: weather.alerts
        .map(
          (alert) => pb_weather.Alerts(
            type: alert.type,
            level: alert.level,
            title: alert.title,
            detail: alert.detail,
            id: alert.id,
          ),
        )
        .toList(growable: false),
  ),
  pressure: weather.pressureHpa * 100,
);

pb_weather.WeatherForecast_Data buildXiaomiHourlyWeatherEntry(
  XiaomiWeatherHour hour,
) => pb_weather.WeatherForecast_Data(
  aqi: pb_common.KeyValue(key: hour.aqiLevel, value: hour.aqi ?? 0),
  weather: pb_common.RangeValue(from: 0, to: hour.conditionCode),
  temperature: pb_common.RangeValue(from: 0, to: hour.temperature),
  temperatureUnit: '℃',
  windInfo: pb_common.KeyValue(
    key: hour.windDirection.toString(),
    value: hour.windSpeedBeaufort,
  ),
);
