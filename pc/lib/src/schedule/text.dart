/// 纯文本课表解析。
///
/// 移植自安卓端的 `ManualImport.kt`（已经验证过），格式：
///
///     课程名 周几 节次 周次 教室 教师
///     高等数学 周一 1-2 1-16 A101 张三
///     大学英语 3 5-6 1-16 B203 李四
///     体育 五 3-4 1,3,5,7 操场
///
/// 规则：
///   · 每行一门课，空格 / 逗号 / 中文逗号分隔
///   · 周几可写 1~7、周一~周日、星期一~星期日、礼拜一~礼拜日
///   · 节次写 "3" 或 "3-4"
///   · 周次可省略（表示每周都上），也可写 "1-16"、"1,3,5"、"1-16周"
///   · 以 # 开头的行为注释
library;

import 'models.dart';

class TextParseResult {
  const TextParseResult({this.schedule, this.error, this.message = ''});

  final Schedule? schedule;
  final String? error;
  final String message;

  bool get ok => schedule != null;
}

const Map<String, int> _weekdayAlias = {
  '1': 1, '一': 1, '周一': 1, '星期一': 1, '礼拜一': 1, '周1': 1,
  '2': 2, '二': 2, '周二': 2, '星期二': 2, '礼拜二': 2, '周2': 2,
  '3': 3, '三': 3, '周三': 3, '星期三': 3, '礼拜三': 3, '周3': 3,
  '4': 4, '四': 4, '周四': 4, '星期四': 4, '礼拜四': 4, '周4': 4,
  '5': 5, '五': 5, '周五': 5, '星期五': 5, '礼拜五': 5, '周5': 5,
  '6': 6, '六': 6, '周六': 6, '星期六': 6, '礼拜六': 6, '周6': 6,
  '7': 7, '日': 7, '天': 7, '周日': 7, '周天': 7, '周7': 7,
  '星期日': 7, '星期天': 7, '礼拜日': 7, '礼拜天': 7,
};

/// 解析纯文本课表。
///
/// [termStartDate] 传了就写进结果（第 1 周周一）；留空则手环端不做周次过滤，
/// 每天按 courses 里的星期显示。
///
/// 分隔符的规则（这里踩过坑，见下面 _splitFields 的说明）：
///   · **字段**之间用空格或中文逗号（，）
///   · **周次列表**内部用英文逗号（,），例如 1,3,5
TextParseResult parseText(
  String text, {
  String semesterCode = '手动导入',
  String termStartDate = '',
}) {
  final courses = <Course>[];
  var skipped = 0;

  for (final rawLine in text.split(RegExp(r'\r?\n'))) {
    final line = rawLine.trim();
    if (line.isEmpty || line.startsWith('#')) continue;

    final parts = _splitFields(line);
    if (parts.length < 3) {
      skipped++;
      continue;
    }

    final name = parts[0];
    final weekday = _weekdayAlias[parts[1]];
    if (weekday == null) {
      skipped++;
      continue;
    }
    final range = _parseRange(parts[2]);
    if (range == null) {
      skipped++;
      continue;
    }

    // 第 4 列可能是周次，也可能直接是教室 —— 按能不能解析成周次来判断
    var weeks = const <int>[];
    var cursor = 3;
    if (parts.length > 3) {
      final candidate = _parseWeeks(parts[3]);
      if (candidate != null) {
        weeks = candidate;
        cursor = 4;
      }
    }
    final room = cursor < parts.length ? parts[cursor] : '';
    final teacher = cursor + 1 < parts.length ? parts[cursor + 1] : '';

    courses.add(Course(
      id: '$name|$weekday|${range.$1}|$room',
      name: name,
      teacher: teacher,
      room: room,
      weekday: weekday,
      start: range.$1,
      stop: range.$2,
      weeks: weeks,
      color: PALETTE[courses.length % PALETTE.length],
    ));
  }

  if (courses.isEmpty) {
    return const TextParseResult(
      error: '没有解析出任何课程。格式是每行一门课：\n'
          '课程名 周几 节次 周次 教室 教师\n'
          '例如：高等数学 周一 1-2 1-16 A101 张三\n'
          '（周次用英文逗号分隔，如 1,3,5；字段之间用空格或中文逗号）',
    );
  }

  courses.sort((a, b) {
    final w = a.weekday.compareTo(b.weekday);
    return w != 0 ? w : a.start.compareTo(b.start);
  });

  return TextParseResult(
    schedule: Schedule(
      semesterCode: semesterCode,
      termStartDate: termStartDate,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
      sections: DEFAULT_SECTIONS,
      courses: courses,
    ),
    message: '解析出 ${courses.length} 门课' + (skipped > 0 ? '，跳过 $skipped 行' : ''),
  );
}

/// 把一行切成字段。
///
/// ⚠️ 这里有个坑（上游的安卓实现就栽在这）：
/// 英文逗号**既可能是字段分隔符、也可能是周次列表分隔符**。
/// 如果无脑按 `[\s,，]+` 切，`体育 五 3-4 1,3,5,7 操场` 会被切成
/// `['体育','五','3-4','1','3','5','7','操场']`，周次只剩一个 `1`，
/// 而且教室会变成 `3`。
///
/// 所以规则定为：
///   · 主切分只用**空格和中文逗号** —— 碰不到周次列表里的英文逗号
///   · 如果主切分切不出 3 个字段、但这一行有英文逗号，再退回按英文逗号切
///     （兼容 `高等数学,周一,1-2,1-16,A101,张三` 这种整行用逗号的写法）
List<String> _splitFields(String line) {
  List<String> cut(RegExp sep) => line
      .split(sep)
      .map((p) => p.trim())
      .where((p) => p.isNotEmpty)
      .toList();

  final primary = cut(RegExp(r'[\s，]+'));
  if (primary.length >= 3) return primary;

  if (line.contains(',')) {
    final fallback = cut(RegExp(r'[\s,]+'));
    if (fallback.length >= 3) return fallback;
  }
  return primary;
}

/// "3" / "3-4" / "3~4" → (3,3) / (3,4)
(int, int)? _parseRange(String text) {
  final clean = text.endsWith('节')
      ? text.substring(0, text.length - '节'.length)
      : text;
  final m = RegExp(r'^(\d{1,2})(?:[-~—](\d{1,2}))?$').firstMatch(clean);
  if (m == null) return null;
  final start = int.tryParse(m.group(1)!);
  if (start == null || start < 1) return null;
  final stop = m.group(2) != null ? int.tryParse(m.group(2)!) : start;
  if (stop == null || stop < start) return null;
  return (start, stop);
}

/// "1-16" / "1,3,5" / "1-16周" → [1..16]；解析不了返回 null（说明这一列是教室）
List<int>? _parseWeeks(String text) {
  var clean = text;
  if (clean.endsWith('周')) clean = clean.substring(0, clean.length - '周'.length);
  if (clean.endsWith('星期')) {
    clean = clean.substring(0, clean.length - '星期'.length);
  }
  if (!RegExp(r'^\d{1,2}([-~—,]\d{1,2})*$').hasMatch(clean)) return null;

  final out = <int>{};
  for (final chunk in clean.split(',')) {
    final m = RegExp(r'^(\d{1,2})(?:[-~—](\d{1,2}))?$').firstMatch(chunk);
    if (m == null) continue;
    final a = int.parse(m.group(1)!);
    final b = m.group(2) != null ? int.parse(m.group(2)!) : a;
    if (b < a || b - a > 40) continue;
    for (var w = a; w <= b; w++) {
      out.add(w);
    }
  }
  return out.isEmpty ? null : (out.toList()..sort());
}
