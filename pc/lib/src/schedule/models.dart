/// 课表数据模型。
///
/// ⚠️ 这个结构是**电脑端与手环端之间的唯一契约**，手环端的
/// `band/band-schedule/src/common/schedule.js` 按同一结构解析。
/// 改字段名必须两端同步改，否则手环收得到数据但显示不出来。
///
/// JSON 形态：
/// ```json
/// {
///   "version": 1,
///   "semesterCode": "2026-2027-1",
///   "termStartDate": "2026-09-07",   // 第 1 周周一，用来算当前第几周
///   "updatedAt": 1757000000000,
///   "sections": [{ "index": 1, "start": "08:30", "end": "09:15" }],
///   "courses": [{
///     "id": "...", "name": "高等数学", "teacher": "张三", "room": "A101",
///     "weekday": 1, "start": 1, "stop": 2, "weeks": [1,2,3], "color": "#4A90D9"
///   }]
/// }
/// ```
library;

/// 一节课的时间段。index 从 1 开始。
class Section {
  const Section({required this.index, required this.start, required this.end});

  final int index;
  final String start;
  final String end;

  Map<String, Object?> toJson() =>
      {'index': index, 'start': start, 'end': end};

  factory Section.fromJson(Map<String, Object?> json) => Section(
        index: (json['index'] as num?)?.toInt() ?? 0,
        start: json['start'] as String? ?? '',
        end: json['end'] as String? ?? '',
      );

  @override
  String toString() => '第$index节 $start-$end';
}

/// 一条排课记录（同一门课可能只上若干周、换个教室就是另一条）。
class Course {
  const Course({
    required this.id,
    required this.name,
    required this.teacher,
    required this.room,
    required this.weekday,
    required this.start,
    required this.stop,
    required this.weeks,
    required this.color,
  });

  final String id;
  final String name;
  final String teacher;
  final String room;

  /// 1=周一 … 7=周日
  final int weekday;

  /// 起始节次
  final int start;

  /// 结束节次
  final int stop;

  /// 上课周次（1 起），空表示每周都上
  final List<int> weeks;

  final String color;

  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'teacher': teacher,
        'room': room,
        'weekday': weekday,
        'start': start,
        'stop': stop,
        'weeks': weeks,
        'color': color,
      };

  factory Course.fromJson(Map<String, Object?> json) => Course(
        id: json['id'] as String? ?? '',
        name: json['name'] as String? ?? '',
        teacher: json['teacher'] as String? ?? '',
        room: json['room'] as String? ?? '',
        weekday: (json['weekday'] as num?)?.toInt() ?? 0,
        start: (json['start'] as num?)?.toInt() ?? 0,
        stop: (json['stop'] as num?)?.toInt() ?? 0,
        weeks: (json['weeks'] as List?)?.map((e) => (e as num).toInt()).toList() ??
            const [],
        color: json['color'] as String? ?? '',
      );

  @override
  String toString() =>
      '${WEEKDAY_NAMES[weekday - 1]} 第$start-${stop}节 $name @$room';
}

/// 整份课表。
class Schedule {
  const Schedule({
    this.version = 1,
    required this.semesterCode,
    required this.termStartDate,
    required this.updatedAt,
    required this.sections,
    required this.courses,
  });

  final int version;
  final String semesterCode;

  /// yyyy-MM-dd，第 1 周周一。为空则手环端不做周次过滤（照常显示当天所有课）
  final String termStartDate;

  final int updatedAt;
  final List<Section> sections;
  final List<Course> courses;

  Map<String, Object?> toJson() => {
        'version': version,
        'semesterCode': semesterCode,
        'termStartDate': termStartDate,
        'updatedAt': updatedAt,
        'sections': sections.map((s) => s.toJson()).toList(),
        'courses': courses.map((c) => c.toJson()).toList(),
      };

  factory Schedule.fromJson(Map<String, Object?> json) => Schedule(
        version: (json['version'] as num?)?.toInt() ?? 1,
        semesterCode: json['semesterCode'] as String? ?? '',
        termStartDate: json['termStartDate'] as String? ?? '',
        updatedAt: (json['updatedAt'] as num?)?.toInt() ?? 0,
        sections: (json['sections'] as List?)
                ?.map((e) => Section.fromJson(Map<String, Object?>.from(e as Map)))
                .toList() ??
            DEFAULT_SECTIONS,
        courses: (json['courses'] as List?)
                ?.map((e) => Course.fromJson(Map<String, Object?>.from(e as Map)))
                .toList() ??
            const [],
      );

  /// 第几周之后的周次里有课（用来提示"共 N 周"）
  int get totalWeeks {
    var max = 0;
    for (final c in courses) {
      for (final w in c.weeks) {
        if (w > max) max = w;
      }
    }
    return max;
  }
}

const List<String> WEEKDAY_NAMES = ['周一', '周二', '周三', '周四', '周五', '周六', '周日'];

/// 默认作息（11 节次），与手环端内置的值一致。
/// 如果你的学校作息不同，改这里即可（两端要保持一致）。
const List<Section> DEFAULT_SECTIONS = [
  Section(index: 1, start: '08:30', end: '09:15'),
  Section(index: 2, start: '09:20', end: '10:05'),
  Section(index: 3, start: '10:25', end: '11:10'),
  Section(index: 4, start: '11:15', end: '12:00'),
  Section(index: 5, start: '14:00', end: '14:45'),
  Section(index: 6, start: '14:50', end: '15:35'),
  Section(index: 7, start: '15:55', end: '16:40'),
  Section(index: 8, start: '16:45', end: '17:30'),
  Section(index: 9, start: '19:00', end: '19:45'),
  Section(index: 10, start: '19:50', end: '20:35'),
  Section(index: 11, start: '20:40', end: '21:25'),
];

/// 课程色板，两端共用同一套，保证手环上的颜色和 PC 预览一致。
const List<String> PALETTE = [
  '#4A90D9', '#48B79A', '#E0913C', '#C7657F',
  '#7E6BC4', '#5FA95F', '#C1704A', '#4B9BB5',
];
