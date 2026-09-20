"""把 .ics 课表转成本项目的统一课表 JSON（手环端直接可用的格式）。

    python tools/ics_to_schedule.py <输入.ics> [输出.json]

为什么需要它：ICS 是真实课表最方便的导出格式（时间、地点、老师、周次都在里面），
但手环端吃的是 UnifiedSchedule（节次 + 周次数组）。这里做一次转换，
既能把真实数据作为手环端的测试数据，也能在没有学校接口时直接用它当数据源。

时间映射用默认作息（1-11 节，与手环端内置的值一致），
节次时间与 ICS 里的起止时间对齐后再落成「起始节-结束节」。
作息和你的学校不一样时，改下面的 SECTIONS 即可（两端要保持一致）。
"""

import json
import os
import re
import sys
from datetime import datetime, timedelta

# 与 PC 端 pc/lib/src/schedule/models.dart 的 DEFAULT_SECTIONS、
# 以及手环端内置的作息一致（三处要一起改）
SECTIONS = [
    (1, '08:30', '09:15'),
    (2, '09:20', '10:05'),
    (3, '10:25', '11:10'),
    (4, '11:15', '12:00'),
    (5, '14:00', '14:45'),
    (6, '14:50', '15:35'),
    (7, '15:55', '16:40'),
    (8, '16:45', '17:30'),
    (9, '19:00', '19:45'),
    (10, '19:50', '20:35'),
    (11, '20:40', '21:25'),
]

PALETTE = [
    '#4A90D9', '#48B79A', '#E0913C', '#C7657F',
    '#7E6BC4', '#5FA95F', '#C1704A', '#4B9BB5',
]

BYDAY_TO_WEEKDAY = {'MO': 1, 'TU': 2, 'WE': 3, 'TH': 4, 'FR': 5, 'SA': 6, 'SU': 7}


def unfold(text):
    """ICS 允许折行（续行以空格或 Tab 开头），先还原成逻辑行。"""
    out = []
    for line in text.splitlines():
        if line[:1] in (' ', '\t') and out:
            out[-1] += line[1:]
        else:
            out.append(line)
    return out


def parse_dt(value):
    """解析 20260915T140000 或 20260915 这类值。"""
    value = value.strip()
    m = re.match(r'^(\d{4})(\d{2})(\d{2})(?:T(\d{2})(\d{2})(\d{2})?)?', value)
    if not m:
        return None
    y, mo, d = int(m.group(1)), int(m.group(2)), int(m.group(3))
    hh = int(m.group(4)) if m.group(4) else 0
    mm = int(m.group(5)) if m.group(5) else 0
    return datetime(y, mo, d, hh, mm)


def seconds_since_midnight(dt):
    return dt.hour * 3600 + dt.minute * 60


def to_hhmm(dt):
    return '%02d:%02d' % (dt.hour, dt.minute)


def sections_for(start_dt, end_dt):
    """
    把起止时间映射成 (起始节, 结束节)。
    起点取「开始时间 <= 课程开始」的最后一节，终点取「结束时间 >= 课程结束」的第一节。
    找不到精确匹配时按最接近的节次兜底，并把映射情况报出来。
    """
    start_s = seconds_since_midnight(start_dt)
    end_s = seconds_since_midnight(end_dt)
    if end_s <= start_s:
        end_s = start_s + 45 * 60

    first = None
    for idx, s, _e in SECTIONS:
        if seconds_since_midnight(datetime.strptime(s, '%H:%M')) <= start_s:
            first = idx
    if first is None:
        first = 1

    last = None
    for idx, _s, e in SECTIONS:
        if seconds_since_midnight(datetime.strptime(e, '%H:%M')) >= end_s:
            last = idx
            break
    if last is None:
        last = SECTIONS[-1][0]

    if last < first:
        last = first
    return first, last


def parse_components(prop_key, prop_value):
    """从 SUMMARY / DESCRIPTION 里取课程名、教室、老师。"""
    return prop_key, prop_value


def convert(ics_text):
    lines = unfold(ics_text)

    events = []
    cur = None
    for line in lines:
        if line == 'BEGIN:VEVENT':
            cur = {}
            continue
        if line == 'END:VEVENT':
            if cur is not None:
                events.append(cur)
            cur = None
            continue
        if cur is None or ':' not in line:
            continue
        key, _, value = line.partition(':')
        # 去掉参数，例如 DTSTART;TZID=Asia/Shanghai
        base_key = key.split(';')[0].upper()
        if base_key in ('DTSTART', 'DTEND'):
            cur[base_key] = parse_dt(value)
        elif base_key == 'RRULE':
            cur['RRULE'] = value
        else:
            cur[base_key] = value

    # 按 (课程名, 星期, 节次, 教室, 老师) 归并周次
    merged = {}
    term_start = None
    unmapped = []

    for ev in events:
        start = ev.get('DTSTART')
        end = ev.get('DTEND')
        if start is None or end is None:
            continue

        summary = ev.get('SUMMARY', '')
        # SUMMARY 形如 "课程名@教室"
        if '@' in summary:
            name, _, room_from_summary = summary.partition('@')
        else:
            name, room_from_summary = summary, ''
        name = name.strip()
        room = (ev.get('LOCATION') or room_from_summary or '').strip()

        desc = ev.get('DESCRIPTION', '')
        teacher = ''
        m = re.search(r'老师[:：]\s*([^\-]+)', desc)
        if m:
            teacher = m.group(1).strip()

        weekday = start.isoweekday()
        rrule = ev.get('RRULE', '')
        byday = None
        until = None
        for part in rrule.split(';'):
            if part.upper().startswith('BYDAY='):
                byday = part.split('=', 1)[1].strip().upper()
            elif part.upper().startswith('UNTIL='):
                until = parse_dt(part.split('=', 1)[1])

        if byday in BYDAY_TO_WEEKDAY:
            weekday = BYDAY_TO_WEEKDAY[byday]

        # 展开重复：DTSTART + 7k，直到 >= UNTIL
        # （有的课表软件导出的 UNTIL 是「最后一次 +1 天」，所以用严格小于）
        occurrences = []
        d = start
        guard = 0
        while guard < 400:
            guard += 1
            if until is not None and d >= until:
                break
            occurrences.append(d)
            d = d + timedelta(days=7)
            if until is None and guard > 1:
                break  # 没有 UNTIL 就只算一次

        if term_start is None or start.date() < term_start:
            term_start = start.date()

        first, last = sections_for(start, end)
        key = (name, weekday, first, last, room, teacher)
        merged.setdefault(key, set()).update(o.date() for o in occurrences)
        if not teacher or not room:
            unmapped.append(name)

    # 以第一周周一为开学日（第 1 周）
    if term_start is None:
        term_start = datetime.now().date()
    # 对齐到所在周的周一
    term_monday = term_start - timedelta(days=term_start.isoweekday() - 1)

    courses = []
    color_by_name = {}
    for (name, weekday, first, last, room, teacher), dates in sorted(
        merged.items(), key=lambda kv: (kv[0][1], kv[0][2], kv[0][0])
    ):
        weeks = set()
        for dt_date in dates:
            delta = (dt_date - term_monday).days
            if delta < 0:
                continue
            weeks.add(delta // 7 + 1)
        if not weeks:
            continue
        if name not in color_by_name:
            color_by_name[name] = PALETTE[len(color_by_name) % len(PALETTE)]
        courses.append({
            'id': '%s|%d|%d|%s' % (name, weekday, first, room),
            'name': name,
            'teacher': teacher,
            'room': room,
            'weekday': weekday,
            'start': first,
            'stop': last,
            'weeks': sorted(weeks),
            'color': color_by_name[name],
        })

    return {
        'version': 1,
        'semesterCode': '2026-2027-1',
        'termStartDate': term_monday.strftime('%Y-%m-%d'),
        'updatedAt': 0,
        'sections': [
            {'index': i, 'start': s, 'end': e} for i, s, e in SECTIONS
        ],
        'courses': courses,
    }, sorted(set(unmapped))


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    src = sys.argv[1]
    with open(src, encoding='utf-8', errors='ignore') as f:
        text = f.read()

    schedule, missing = convert(text)

    out = sys.argv[2] if len(sys.argv) > 2 else None
    payload = json.dumps(schedule, ensure_ascii=False, indent=1)
    if out:
        with open(out, 'w', encoding='utf-8') as f:
            f.write(payload)

    print('课程数：%d' % len(schedule['courses']))
    print('开学日（第 1 周周一）：%s' % schedule['termStartDate'])
    print('时间跨度：第 %d - %d 周' % (
        min(min(c['weeks']) for c in schedule['courses']),
        max(max(c['weeks']) for c in schedule['courses']),
    ))
    if missing:
        print('缺老师/教室：%s' % ', '.join(missing))
    print()
    for c in schedule['courses']:
        print('  %-1d 周%d 第%2d-%2d节  %-28s %-10s %s' % (
            c['weekday'], 0, c['start'], c['stop'],
            c['name'][:28], c['room'], c['teacher'],
        ))
        print('        周次 %s' % c['weeks'])
    if out:
        print()
        print('已写入 %s（%d 字节）' % (out, len(payload.encode('utf-8'))))
    return 0


if __name__ == '__main__':
    sys.exit(main())
