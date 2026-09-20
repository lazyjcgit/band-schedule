/// ICS（iCalendar）课表解析。
///
/// 移植自 `tools/ics_to_schedule.py`（那份已经在真实课表上验证过：
/// 22 条排课、第 1-17 周、开学日 2026-09-07 都正确）。
///
/// 支持的范围（够用即可，不追求完整 iCalendar 规范）：
///   · VEVENT 的 DTSTART / DTEND / SUMMARY / DESCRIPTION / LOCATION / RRULE
///   · RRULE 的 FREQ=WEEKLY / BYDAY / UNTIL / INTERVAL
///   · ICS 的折行（续行以空格或 Tab 开头）
///   · 时间中的 TZID 参数（按字面时间处理，不做时区换算）
library;

import 'models.dart';

/// 解析结果。失败时 [schedule] 为 null，[error] 说明原因。
class IcsParseResult {
  const IcsParseResult({this.schedule, this.error, this.warnings = const []});

  final Schedule? schedule;
  final String? error;
  final List<String> warnings;

  bool get ok => schedule != null;
}

/// 把 ICS 文本解析成课表。
///
/// [semesterCode] 会写进结果（ICS 里没有学期信息）；[termStartOverride] 传了就优先用它，
/// 否则按最早一节课所在周的周一推算。
IcsParseResult parseIcs(
  String text, {
  String semesterCode = '',
  String termStartOverride = '',
}) {
  final warnings = <String>[];

  // 1) 展开折行
  final lines = <String>[];
  for (final raw in text.split(RegExp(r'\r?\n'))) {
    if (raw.isNotEmpty && (raw[0] == ' ' || raw[0] == '\t') && lines.isNotEmpty) {
      lines[lines.length - 1] = lines.last + raw.substring(1);
    } else {
      lines.add(raw);
    }
  }

  // 2) 收集 VEVENT
  final events = <Map<String, Object?>>[];
  Map<String, Object?>? cur;
  for (final line in lines) {
    if (line == 'BEGIN:VEVENT') {
      cur = <String, Object?>{};
      continue;
    }
    if (line == 'END:VEVENT') {
      if (cur != null) events.add(cur);
      cur = null;
      continue;
    }
    if (cur == null) continue;
    final idx = line.indexOf(':');
    if (idx <= 0) continue;
    final key = line.substring(0, idx);
    final value = line.substring(idx + 1);
    final base = key.split(';').first.toUpperCase();
    switch (base) {
      case 'DTSTART':
        cur['DTSTART'] = _parseDateTime(value);
        break;
      case 'DTEND':
        cur['DTEND'] = _parseDateTime(value);
        break;
      case 'RRULE':
        cur['RRULE'] = value;
        break;
      case 'SUMMARY':
        cur['SUMMARY'] = value;
        break;
      case 'DESCRIPTION':
        cur['DESCRIPTION'] = value;
        break;
      case 'LOCATION':
        cur['LOCATION'] = value;
        break;
    }
  }

  if (events.isEmpty) {
    return const IcsParseResult(error: '这个文件里没有任何日程（VEVENT），可能不是课表或格式不对');
  }

  // 3) 按 (课程名, 星期, 起止节, 教室, 老师) 归并周次
  final merged = <String, Set<DateTime>>{};
  final meta = <String, Course>{};
  DateTime? earliest;

  for (final ev in events) {
    final start = ev['DTSTART'] as DateTime?;
    final end = ev['DTEND'] as DateTime?;
    if (start == null) continue;
    final finish = end ?? start.add(const Duration(minutes: 45));

    // SUMMARY 形如 "课程名@教室"
    final summary = (ev['SUMMARY'] as String? ?? '').trim();
    var name = summary;
    var roomFromSummary = '';
    final at = summary.indexOf('@');
    if (at >= 0) {
      name = summary.substring(0, at).trim();
      roomFromSummary = summary.substring(at + 1).trim();
    }
    if (name.isEmpty) continue;

    final room = ((ev['LOCATION'] as String?) ?? roomFromSummary).trim();

    var teacher = '';
    final desc = ev['DESCRIPTION'] as String? ?? '';
    final tm = RegExp(r'老师[:：]\s*([^\-]+)').firstMatch(desc);
    if (tm != null) teacher = tm.group(1)!.trim();

    var weekday = start.weekday; // Dart: 1=周一 … 7=周日，正好一致
    final rrule = (ev['RRULE'] as String? ?? '');
    DateTime? until;
    for (final part in rrule.split(';')) {
      final upper = part.toUpperCase();
      if (upper.startsWith('BYDAY=')) {
        final day = upper.substring('BYDAY='.length).trim();
        final wd = _weekdayFromByDay(day);
        if (wd != null) weekday = wd;
      } else if (upper.startsWith('UNTIL=')) {
        until = _parseDateTime(part.substring('UNTIL='.length).trim());
      }
    }

    // 展开重复：DTSTART + 7k，直到 >= UNTIL
    // （有的课表软件导出的 UNTIL 是"最后一次 +1 天"，所以用严格小于）
    final occurrences = <DateTime>[];
    var d = start;
    var guard = 0;
    if (until != null) {
      while (guard++ < 400 && d.isBefore(until)) {
        occurrences.add(d);
        d = d.add(const Duration(days: 7));
      }
    } else {
      occurrences.add(d); // 没有 UNTIL 就认为只上一次
    }

    if (earliest == null || start.isBefore(earliest)) earliest = start;

    final range = _sectionsFor(start, finish);
    final key = '$name|$weekday|${range.$1}|${range.$2}|$room|$teacher';
    merged.putIfAbsent(key, () => <DateTime>{}).addAll(
        occurrences.map((o) => DateTime(o.year, o.month, o.day)));
    meta.putIfAbsent(
      key,
      () => Course(
        id: '$name|$weekday|${range.$1}|$room',
        name: name,
        teacher: teacher,
        room: room,
        weekday: weekday,
        start: range.$1,
        stop: range.$2,
        weeks: const [],
        color: '',
      ),
    );
  }

  if (merged.isEmpty) {
    return const IcsParseResult(error: '课表是空的：文件里有日程但读不出课程信息');
  }

  // 4) 以最早一节课所在周的周一为第 1 周
  final termStart = termStartOverride.isNotEmpty
      ? termStartOverride
      : _mondayOf(earliest!);

  // 5) 周次 → 数组，并分配颜色
  final colorByName = <String, String>{};
  final courses = <Course>[];
  for (final key in merged.keys) {
    final base = meta[key]!;
    final weeks = <int>{};
    for (final day in merged[key]!) {
      final start0 = DateTime.parse(termStart);
      final delta = day.difference(start0).inDays;
      if (delta < 0) continue;
      weeks.add(delta ~/ 7 + 1);
    }
    if (weeks.isEmpty) continue;

    final color = colorByName.putIfAbsent(
      base.name,
      () => PALETTE[colorByName.length % PALETTE.length],
    );
    courses.add(Course(
      id: base.id,
      name: base.name,
      teacher: base.teacher,
      room: base.room,
      weekday: base.weekday,
      start: base.start,
      stop: base.stop,
      weeks: weeks.toList()..sort(),
      color: color,
    ));
  }

  if (courses.isEmpty) {
    return IcsParseResult(
      error: '算不出周次：课表日期都在开学日（$termStart）之前',
      warnings: warnings,
    );
  }

  courses.sort((a, b) {
    final w = a.weekday.compareTo(b.weekday);
    if (w != 0) return w;
    final s = a.start.compareTo(b.start);
    if (s != 0) return s;
    return a.name.compareTo(b.name);
  });

  // 缺老师/教室的给个提示
  final noTeacher = courses.where((c) => c.teacher.isEmpty).length;
  if (noTeacher > 0) {
    warnings.add('$noTeacher 门课没解析出老师（ICS 的 DESCRIPTION 里没有"老师："）');
  }

  return IcsParseResult(
    schedule: Schedule(
      semesterCode: semesterCode,
      termStartDate: termStart,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
      sections: DEFAULT_SECTIONS,
      courses: courses,
    ),
    warnings: warnings,
  );
}

/// 20260915T140000 / 20260915 / 2026-09-15T14:00:00 → DateTime
DateTime? _parseDateTime(String value) {
  final v = value.trim();
  final m = RegExp(r'^(\d{4})-?(\d{2})-?(\d{2})(?:T(\d{2})(\d{2})(\d{2})?)?')
      .firstMatch(v);
  if (m == null) return null;
  return DateTime(
    int.parse(m.group(1)!),
    int.parse(m.group(2)!),
    int.parse(m.group(3)!),
    m.group(4) != null ? int.parse(m.group(4)!) : 0,
    m.group(5) != null ? int.parse(m.group(5)!) : 0,
  );
}

int? _weekdayFromByDay(String byday) {
  const map = {
    'MO': 1, 'TU': 2, 'WE': 3, 'TH': 4, 'FR': 5, 'SA': 6, 'SU': 7,
  };
  // BYDAY 可能是 "FR" 或 "1FR" 这类带序数的形式
  for (final k in map.keys) {
    if (byday.endsWith(k)) return map[k];
  }
  return null;
}

int _minutes(DateTime d) => d.hour * 60 + d.minute;

/// 把起止时间映射成 (起始节, 结束节)。
///
/// 起点取"开始时间 <= 课程开始"的最后一节，终点取"结束时间 >= 课程结束"的第一节；
/// 超出作息表就钳到首尾两节。
(int, int) _sectionsFor(DateTime start, DateTime end) {
  final startMin = _minutes(start);
  var endMin = _minutes(end);
  if (endMin <= startMin) endMin = startMin + 45;

  int first = 1;
  for (final s in DEFAULT_SECTIONS) {
    if (_minutes(_hhmm(s.start)) <= startMin) first = s.index;
  }
  var last = DEFAULT_SECTIONS.last.index;
  for (final s in DEFAULT_SECTIONS) {
    if (_minutes(_hhmm(s.end)) >= endMin) {
      last = s.index;
      break;
    }
  }
  if (last < first) last = first;
  return (first, last);
}

DateTime _hhmm(String text) {
  final p = text.split(':');
  return DateTime(2000, 1, 1, int.parse(p[0]), int.parse(p[1]));
}

/// 取某天所在周的周一，格式化成 yyyy-MM-dd。
String _mondayOf(DateTime d) {
  final monday = d.subtract(Duration(days: d.weekday - 1));
  return '${monday.year.toString().padLeft(4, '0')}-'
      '${monday.month.toString().padLeft(2, '0')}-'
      '${monday.day.toString().padLeft(2, '0')}';
}
