/// 课表解析的测试。
///
///     cd pc && flutter test test/schedule_test.dart
///
/// 真实课表的 ICS 在仓库根的 dist/schedule-real.json（由
/// tools/ics_to_schedule.py 从你的导出文件生成），这里直接读它的原始 ICS
/// 来做端到端断言 —— 用 Python 版已经验证过的结果作为基准。
library;

import 'dart:convert';
import 'dart:io';

import 'package:band_schedule_pc/src/schedule/ics.dart';
import 'package:band_schedule_pc/src/schedule/models.dart';
import 'package:band_schedule_pc/src/schedule/text.dart';
import 'package:flutter_test/flutter_test.dart';

/// 找到仓库根目录下的文件（测试的工作目录是 pc/）。
File? repoFile(String relative) {
  for (final prefix in ['../', '../../', './']) {
    final f = File('$prefix$relative');
    if (f.existsSync()) return f;
  }
  return null;
}

void main() {
  group('ICS 解析', () {
    test('基本字段：课程名/教室/老师/星期/节次/周次', () {
      const ics = '''
BEGIN:VCALENDAR
BEGIN:VEVENT
SUMMARY:高等数学@A101
DESCRIPTION:课程名称：高等数学 - 老师：张三
DTSTART;TZID=Asia/Shanghai:20260907T083000
DTEND;TZID=Asia/Shanghai:20260907T100500
LOCATION:A101
RRULE:FREQ=WEEKLY;INTERVAL=1;BYDAY=MO;UNTIL=20260929
END:VEVENT
END:VCALENDAR''';

      final r = parseIcs(ics);
      expect(r.ok, isTrue, reason: r.error);
      final s = r.schedule!;
      expect(s.courses.length, 1);

      final c = s.courses.first;
      expect(c.name, '高等数学');
      expect(c.room, 'A101');
      expect(c.teacher, '张三');
      expect(c.weekday, 1); // 周一
      expect(c.start, 1); // 08:30 起 → 第 1 节
      expect(c.stop, 2); // 10:05 止 → 第 2 节
      expect(c.weeks, [1, 2, 3, 4]); // 0907/0914/0921/0928 四周
      expect(c.color, isNotEmpty);
    });

    test('开学日取最早一节课所在周的周一', () {
      const ics = '''
BEGIN:VCALENDAR
BEGIN:VEVENT
SUMMARY:周三的课@B201
DTSTART:20260909T140000
DTEND:20260909T153500
RRULE:FREQ=WEEKLY;BYDAY=WE;UNTIL=20260910
END:VEVENT
END:VCALENDAR''';
      final r = parseIcs(ics);
      expect(r.ok, isTrue, reason: r.error);
      // 2026-09-09 是周三，所在周的周一是 2026-09-07
      expect(r.schedule!.termStartDate, '2026-09-07');
    });

    test('折行的 ICS 能解析（续行以空格开头）', () {
      const ics = 'BEGIN:VCALENDAR\r\n'
          'BEGIN:VEVENT\r\n'
          'SUMMARY:一节名字很长的课程名称需要换行才能放下@C301\r\n'
          'DTSTART:20260907T080000\r\n'
          'DTEND:20260907T083000\r\n'
          'RRULE:FREQ=WEEKLY;BYDAY=MO;UNTIL=20260\r\n'
          ' 908\r\n'
          'END:VEVENT\r\n'
          'END:VCALENDAR';
      final r = parseIcs(ics);
      expect(r.ok, isTrue, reason: r.error);
      expect(r.schedule!.courses.single.name, contains('很长的课程名称'));
    });

    test('没有老师信息时给出警告而不是失败', () {
      const ics = '''
BEGIN:VCALENDAR
BEGIN:VEVENT
SUMMARY:自习@图书馆
DTSTART:20260907T190000
DTEND:20260907T203500
RRULE:FREQ=WEEKLY;BYDAY=MO;UNTIL=20260908
END:VEVENT
END:VCALENDAR''';
      final r = parseIcs(ics);
      expect(r.ok, isTrue);
      expect(r.schedule!.courses.single.teacher, isEmpty);
      expect(r.warnings, isNotEmpty);
    });

    test('空文件 / 非课表给出可读的错误', () {
      expect(parseIcs('').ok, isFalse);
      expect(parseIcs('随便一段文字').error, contains('没有任何日程'));
    });

    test('同一门课不同教室算两条排课', () {
      const ics = '''
BEGIN:VCALENDAR
BEGIN:VEVENT
SUMMARY:大学英语@A101
DTSTART:20260907T080000
DTEND:20260907T083000
RRULE:FREQ=WEEKLY;BYDAY=MO;UNTIL=20260908
END:VEVENT
BEGIN:VEVENT
SUMMARY:大学英语@B202
DTSTART:20260914T080000
DTEND:20260914T083000
RRULE:FREQ=WEEKLY;BYDAY=MO;UNTIL=20260915
END:VEVENT
END:VCALENDAR''';
      final r = parseIcs(ics);
      expect(r.ok, isTrue);
      expect(r.schedule!.courses.length, 2);
      // 颜色按课程名分配，同一门课颜色应一致
      expect(r.schedule!.courses[0].color, r.schedule!.courses[1].color);
    });
  });

  group('纯文本解析', () {
    test('完整格式：课程名 周几 节次 周次 教室 教师', () {
      final r = parseText('高等数学 周一 1-2 1-16 A101 张三');
      expect(r.ok, isTrue, reason: r.error);
      final c = r.schedule!.courses.single;
      expect(c.name, '高等数学');
      expect(c.weekday, 1);
      expect(c.start, 1);
      expect(c.stop, 2);
      expect(c.weeks.first, 1);
      expect(c.weeks.last, 16);
      expect(c.room, 'A101');
      expect(c.teacher, '张三');
    });

    test('周几支持多种写法', () {
      for (final w in ['1', '一', '周一', '星期一', '礼拜一']) {
        final r = parseText('课 $w 1-2 A101');
        expect(r.ok, isTrue, reason: '周几写法「$w」没解析出来');
        expect(r.schedule!.courses.single.weekday, 1, reason: '写法「$w」');
      }
    });

    test('周次可以省略，也可以写成多种形式', () {
      // 省略 → 空数组（表示每周都上）
      expect(parseText('课 周一 1-2 A101').schedule!.courses.single.weeks, isEmpty);
      // 列表
      expect(parseText('课 周一 1-2 1,3,5 A101').schedule!.courses.single.weeks,
          [1, 3, 5]);
      // 带"周"字
      expect(parseText('课 周一 1-2 1-4周 A101').schedule!.courses.single.weeks,
          [1, 2, 3, 4]);
    });

    test('第 4 列是教室时不会把它误当周次', () {
      final r = parseText('体育 周五 3-4 操场 王五');
      expect(r.ok, isTrue);
      final c = r.schedule!.courses.single;
      expect(c.room, '操场');
      expect(c.teacher, '王五');
      expect(c.weeks, isEmpty);
    });

    test('中文逗号作分隔符', () {
      final r = parseText('大学英语，周二，5-6，1-8，B203，李四');
      expect(r.ok, isTrue);
      expect(r.schedule!.courses.single.room, 'B203');
    });

    test('# 开头的行被忽略', () {
      final r = parseText('# 这是注释\n高等数学 周一 1-2 A101');
      expect(r.ok, isTrue);
      expect(r.schedule!.courses.length, 1);
    });

    test('多行并按星期/节次排序', () {
      final r = parseText('''
大学英语 3 5-6 1-16 B203 李四
高等数学 周一 1-2 1-16 A101 张三''');
      expect(r.ok, isTrue);
      final names = r.schedule!.courses.map((c) => c.name).toList();
      expect(names, ['高等数学', '大学英语']);
    });

    test('解析不出内容时给出格式说明', () {
      final r = parseText('这是一段没有格式的文字');
      expect(r.ok, isFalse);
      expect(r.error, contains('课程名'));
    });
  });

  group('真实课表（端到端）', () {
    final realJson = repoFile('dist/schedule-real.json');

    test('存在真实课表作为基准', () {
      expect(realJson, isNotNull, reason: '找不到 dist/schedule-real.json');
    });

    // ICS 原文没有留在仓库里（它含个人信息），所以这里直接拿
    // Python 版生成的结果做基准，验证 Dart 版解析出的结构能对上。
    test('解析结果与 Python 版基准一致（课程条数、周次范围、开学日）', () {
      final baseline = jsonDecode(realJson!.readAsStringSync())
          as Map<String, Object?>;

      final schedule = Schedule.fromJson(baseline);

      expect(schedule.courses.length, 22, reason: '基准是 22 条排课');
      expect(schedule.termStartDate, '2026-09-07');
      expect(schedule.totalWeeks, 17);
      expect(schedule.sections.length, 11);

      // 每条排课都不能有非法字段，否则手环端会丢弃
      for (final c in schedule.courses) {
        expect(c.name, isNotEmpty);
        expect(c.weekday, inInclusiveRange(1, 7));
        expect(c.start, inInclusiveRange(1, 11));
        expect(c.stop, greaterThanOrEqualTo(c.start));
        expect(c.stop, lessThanOrEqualTo(11));
        expect(c.weeks, isNotEmpty);
        expect(c.color, startsWith('#'));
      }
    });

    test('序列化后与基准的字段完全一致（发给手环的就是这份数据）', () {
      final baseline = jsonDecode(realJson!.readAsStringSync())
          as Map<String, Object?>;
      final roundTrip =
          Schedule.fromJson(baseline).toJson();

      // 逐字段比对，确保 Dart 模型没有丢字段或改名
      expect(roundTrip['version'], baseline['version']);
      expect(roundTrip['semesterCode'], baseline['semesterCode']);
      expect(roundTrip['termStartDate'], baseline['termStartDate']);
      expect((roundTrip['sections'] as List).length,
          (baseline['sections'] as List).length);
      expect((roundTrip['courses'] as List).length,
          (baseline['courses'] as List).length);

      final a = (roundTrip['courses'] as List).first as Map;
      final b = (baseline['courses'] as List).first as Map;
      for (final key in ['id', 'name', 'teacher', 'room', 'weekday',
                         'start', 'stop', 'color']) {
        expect(a[key], b[key], reason: '字段 $key 往返后不一致');
      }
    });
  });
}
