import 'dart:typed_data' show Uint8List;

enum XiaomiAirQualityBand {
  good,
  moderate,
  unhealthyForSensitiveGroups,
  unhealthy,
  veryUnhealthy,
  hazardous,
  unknown,
}

/// Converts Xiaomi's server-side AQI labels into display labels.
///
/// 移植说明：上游把文案放在 ARB 本地化文件里（依赖 Flutter 的
/// app_localizations 和 LocaleSettings）。我们的桌面端目前只有中文界面，
/// 直接把文案写在这里，省掉整条本地化链路。
class XiaomiAirQualityNormalizer {
  const XiaomiAirQualityNormalizer._();

  static String normalize({
    required int? aqi,
    required String? raw,
  }) {
    final band = bandFor(aqi: aqi, raw: raw);
    return label(band);
  }

  /// 空气质量等级 → 中文文案。
  static String label(XiaomiAirQualityBand band) => switch (band) {
        XiaomiAirQualityBand.good => '优',
        XiaomiAirQualityBand.moderate => '良',
        XiaomiAirQualityBand.unhealthyForSensitiveGroups => '轻度污染',
        XiaomiAirQualityBand.unhealthy => '中度污染',
        XiaomiAirQualityBand.veryUnhealthy => '重度污染',
        XiaomiAirQualityBand.hazardous => '严重污染',
        XiaomiAirQualityBand.unknown => '',
      };

  static XiaomiAirQualityBand bandFor({
    required int? aqi,
    required String? raw,
  }) {
    if (aqi != null && aqi >= 0) return _bandForAqi(aqi);

    final value = raw?.trim().toLowerCase();
    if (value == null || value.isEmpty) return XiaomiAirQualityBand.unknown;

    return switch (value) {
      'good' ||
      'excellent' ||
      '优' ||
      '優' ||
      '優良' ||
      '良好' => XiaomiAirQualityBand.good,
      'moderate' ||
      'fair' ||
      '良' ||
      '中等' ||
      '普通' => XiaomiAirQualityBand.moderate,
      'unhealthy for sensitive groups' ||
      'unhealthy for sensitive group' ||
      '轻度污染' ||
      '輕度污染' => XiaomiAirQualityBand.unhealthyForSensitiveGroups,
      'unhealthy' || '不健康' || '中度污染' => XiaomiAirQualityBand.unhealthy,
      'very unhealthy' ||
      '非常不健康' ||
      '重度污染' => XiaomiAirQualityBand.veryUnhealthy,
      'hazardous' ||
      '危险' ||
      '危險' ||
      '严重污染' ||
      '嚴重污染' => XiaomiAirQualityBand.hazardous,
      'unknown' || 'unknow' || '未知' => XiaomiAirQualityBand.unknown,
      _ => XiaomiAirQualityBand.unknown,
    };
  }

  static XiaomiAirQualityBand _bandForAqi(int aqi) {
    if (aqi <= 50) return XiaomiAirQualityBand.good;
    if (aqi <= 100) return XiaomiAirQualityBand.moderate;
    if (aqi <= 150) {
      return XiaomiAirQualityBand.unhealthyForSensitiveGroups;
    }
    if (aqi <= 200) return XiaomiAirQualityBand.unhealthy;
    if (aqi <= 300) return XiaomiAirQualityBand.veryUnhealthy;
    return XiaomiAirQualityBand.hazardous;
  }
}
