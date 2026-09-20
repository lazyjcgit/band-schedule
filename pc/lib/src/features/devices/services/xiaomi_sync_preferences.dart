import 'dart:convert';

import 'package:band_schedule_pc/src/core/services/shared_prefs_service.dart';
import 'package:band_schedule_pc/src/features/devices/models/xiaomi_device_features.dart';

abstract final class XiaomiSyncPreferences {
  static const healthAutoSyncKey = 'xiaomi.health.auto_sync';
  static const weatherAutoSyncKey = 'xiaomi.weather.auto_sync';
  static const weatherLastCityKey = 'xiaomi.weather.last_city';
  static const weatherSnapshotKey = 'xiaomi.weather.snapshot';
  static const automaticSyncCheckInterval = Duration(minutes: 15);
  static const automaticSyncCooldown = Duration(hours: 1);
  static const _lastSuccessfulDeviceSyncKeyPrefix =
      'xiaomi.device.last_successful_sync.';

  static bool get healthAutoSync =>
      SharedPrefsService.instance.getBool(healthAutoSyncKey) ?? false;

  static bool get weatherAutoSync =>
      SharedPrefsService.instance.getBool(weatherAutoSyncKey) ?? false;

  static String? get weatherLastCity =>
      SharedPrefsService.instance.getString(weatherLastCityKey);

  static DateTime? lastSuccessfulDeviceSyncAt(String deviceId) {
    final timestamp = SharedPrefsService.instance.getInt(
      _lastSuccessfulDeviceSyncKey(deviceId),
    );
    if (timestamp == null || timestamp <= 0) return null;
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  static Future<void> setLastSuccessfulDeviceSyncAt(
    String deviceId,
    DateTime syncedAt,
  ) => SharedPrefsService.instance.setInt(
    _lastSuccessfulDeviceSyncKey(deviceId),
    syncedAt.millisecondsSinceEpoch,
  );

  static XiaomiWeatherData? get cachedWeather {
    final raw = SharedPrefsService.instance.getString(weatherSnapshotKey);
    if (raw == null || raw.isEmpty) return null;
    try {
      final decoded = jsonDecode(raw);
      if (decoded is! Map) return null;
      final weather = decoded['weather'];
      if (weather is! Map) return null;
      return XiaomiWeatherData.fromJson(weather.cast<String, Object?>());
    } catch (_) {
      return null;
    }
  }

  static DateTime? get cachedWeatherSyncedAt {
    final raw = SharedPrefsService.instance.getString(weatherSnapshotKey);
    if (raw == null || raw.isEmpty) return null;
    try {
      final decoded = jsonDecode(raw);
      if (decoded is! Map) return null;
      return DateTime.tryParse(decoded['syncedAt']?.toString() ?? '');
    } catch (_) {
      return null;
    }
  }

  static Future<void> setHealthAutoSync(bool enabled) =>
      SharedPrefsService.instance.setBool(healthAutoSyncKey, enabled);

  static Future<void> setWeatherAutoSync(bool enabled) =>
      SharedPrefsService.instance.setBool(weatherAutoSyncKey, enabled);

  static Future<void> setWeatherLastCity(String city) =>
      SharedPrefsService.instance.setString(weatherLastCityKey, city);

  static Future<void> setCachedWeather(
    XiaomiWeatherData weather,
    DateTime syncedAt,
  ) => SharedPrefsService.instance.setString(
    weatherSnapshotKey,
    jsonEncode({
      'syncedAt': syncedAt.toIso8601String(),
      'weather': weather.toJson(),
    }),
  );

  static String _lastSuccessfulDeviceSyncKey(String deviceId) =>
      '$_lastSuccessfulDeviceSyncKeyPrefix${Uri.encodeComponent(deviceId)}';
}
