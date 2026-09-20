/// 时间同步用的数据模型。
///
/// 原本是 Freezed 生成的数据类，移植时改成手写普通类（同 bt_models.dart 的理由：
/// 都是简单值对象，手写即可，省掉代码生成器依赖）。
library;

class TimeSyncProps {
  const TimeSyncProps({
    required this.date,
    required this.time,
    required this.timezone,
    this.is12HourFormat = false,
  });

  final SyncDate date;
  final SyncTime time;
  final SyncTimeZone timezone;
  final bool is12HourFormat;

  factory TimeSyncProps.fromJson(Map<String, Object?> json) => TimeSyncProps(
        date: SyncDate.fromJson(
            Map<String, Object?>.from(json['date'] as Map? ?? const {})),
        time: SyncTime.fromJson(
            Map<String, Object?>.from(json['time'] as Map? ?? const {})),
        timezone: SyncTimeZone.fromJson(
            Map<String, Object?>.from(json['timezone'] as Map? ?? const {})),
        is12HourFormat: json['is12HourFormat'] as bool? ?? false,
      );

  Map<String, Object?> toJson() => {
        'date': date.toJson(),
        'time': time.toJson(),
        'timezone': timezone.toJson(),
        'is12HourFormat': is12HourFormat,
      };

  @override
  bool operator ==(Object other) =>
      other is TimeSyncProps &&
      other.date == date &&
      other.time == time &&
      other.timezone == timezone &&
      other.is12HourFormat == is12HourFormat;

  @override
  int get hashCode => Object.hash(date, time, timezone, is12HourFormat);

  @override
  String toString() =>
      'TimeSyncProps($date $time ${timezone.id}, 12h=$is12HourFormat)';
}

class SyncDate {
  const SyncDate({
    required this.year,
    required this.month,
    required this.day,
  });

  final int year;
  final int month;
  final int day;

  factory SyncDate.fromJson(Map<String, Object?> json) => SyncDate(
        year: json['year'] as int? ?? 0,
        month: json['month'] as int? ?? 1,
        day: json['day'] as int? ?? 1,
      );

  Map<String, Object?> toJson() => {
        'year': year,
        'month': month,
        'day': day,
      };

  @override
  bool operator ==(Object other) =>
      other is SyncDate &&
      other.year == year &&
      other.month == month &&
      other.day == day;

  @override
  int get hashCode => Object.hash(year, month, day);

  @override
  String toString() =>
      '$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
}

class SyncTime {
  const SyncTime({
    required this.hour,
    required this.minute,
    this.second = 0,
    this.millisecond = 0,
  });

  final int hour;
  final int minute;
  final int second;
  final int millisecond;

  factory SyncTime.fromJson(Map<String, Object?> json) => SyncTime(
        hour: json['hour'] as int? ?? 0,
        minute: json['minute'] as int? ?? 0,
        second: json['second'] as int? ?? 0,
        millisecond: json['millisecond'] as int? ?? 0,
      );

  Map<String, Object?> toJson() => {
        'hour': hour,
        'minute': minute,
        'second': second,
        'millisecond': millisecond,
      };

  @override
  bool operator ==(Object other) =>
      other is SyncTime &&
      other.hour == hour &&
      other.minute == minute &&
      other.second == second &&
      other.millisecond == millisecond;

  @override
  int get hashCode => Object.hash(hour, minute, second, millisecond);

  @override
  String toString() => '${hour.toString().padLeft(2, '0')}:'
      '${minute.toString().padLeft(2, '0')}:'
      '${second.toString().padLeft(2, '0')}';
}

class SyncTimeZone {
  const SyncTimeZone({
    required this.offset,
    this.dstOffset = 0,
    required this.id,
  });

  final int offset;
  final int dstOffset;
  final String id;

  factory SyncTimeZone.fromJson(Map<String, Object?> json) => SyncTimeZone(
        offset: json['offset'] as int? ?? 0,
        dstOffset: json['dstOffset'] as int? ?? 0,
        id: json['id'] as String? ?? '',
      );

  Map<String, Object?> toJson() => {
        'offset': offset,
        'dstOffset': dstOffset,
        'id': id,
      };

  @override
  bool operator ==(Object other) =>
      other is SyncTimeZone &&
      other.offset == offset &&
      other.dstOffset == dstOffset &&
      other.id == id;

  @override
  int get hashCode => Object.hash(offset, dstOffset, id);

  @override
  String toString() => 'SyncTimeZone($id, +$offset)';
}
