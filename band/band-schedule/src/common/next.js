/**
 * 「下一节课」的计算 + 显示辅助。
 *
 * 这是新增文件（v2.0），原有的 common/schedule.js 没动。
 *
 * 判定规则（对应需求）：
 *   「过了上一节的下课时间，直到下一节的下课之前都显示这节课」
 *   —— 也就是取「结束时间还没到」的最早一门课：
 *      · 正在上的课会一直显示到它下课
 *      · 一下课就自动切到下一门
 *   今天全上完了就往后找，最多看 7 天（含周末/调休），找不到就返回 null。
 */

import { weekOf, weekdayOf, WEEKDAY_NAMES } from './schedule.js'

/** "HH:MM" → 从 0 点起的分钟数；解析不了返回 -1。 */
function toMinutes(hhmm) {
  const m = /^(\d{1,2}):(\d{2})$/.exec(String(hhmm || ''))
  if (!m) return -1
  return parseInt(m[1], 10) * 60 + parseInt(m[2], 10)
}

/** 节次 → 开始/结束时间文本。 */
export function sectionTime(schedule, index, which) {
  const list = (schedule && schedule.sections) || []
  for (let i = 0; i < list.length; i++) {
    if (Number(list[i].index) === Number(index)) return list[i][which] || ''
  }
  return ''
}

/** "第7-8节" / "第1节" */
export function sectionLabel(course) {
  if (!course) return ''
  return course.stop > course.start
    ? '第' + course.start + '-' + course.stop + '节'
    : '第' + course.start + '节'
}

/**
 * 课程名截断：超过 max 个字符就只留开头几个字加省略号。
 * 手环上长课名（真实数据里最长 18 字，如「习近平新时代中国特色社会主义思想概论」）
 * 一行放不下，按需求只显示开头的几个字。
 * 按码点计数，代理对（emoji 等）不会被截半。
 */
export function truncateName(name, max) {
  if (!name) return ''
  const text = String(name)
  const limit = max || 9
  let out = ''
  let count = 0
  let i = 0
  while (i < text.length) {
    const code = text.charCodeAt(i)
    if (code >= 0xd800 && code <= 0xdbff && i + 1 < text.length) {
      if (count + 1 > limit) return out + '…'
      out += text.substring(i, i + 2)
      count++
      i += 2
      continue
    }
    if (count + 1 > limit) return out + '…'
    out += text[i]
    count++
    i++
  }
  return out
}

/**
 * 找「下一节课」。
 *
 * 返回 null 表示 7 天内都没课（放假等）。
 * 否则返回：
 *   { course, dayOffset, weekday, week, isNow,
 *     startText, endText, minutesUntil, label }
 *   · dayOffset 0 表示今天，1 表示明天…
 *   · isNow 为 true 表示这节课正在上
 *   · minutesUntil 距开始还有几分钟（正在上时为负，用不到）
 */
export function nextCourse(schedule, now) {
  if (!schedule || !Array.isArray(schedule.courses) || !schedule.courses.length) return null

  const startOf = {}
  const endOf = {}
  const sections = (schedule.sections && schedule.sections.length) ? schedule.sections : []
  for (let i = 0; i < sections.length; i++) {
    const idx = Number(sections[i].index)
    startOf[idx] = toMinutes(sections[i].start)
    endOf[idx] = toMinutes(sections[i].end)
  }

  const nowMin = now.getHours() * 60 + now.getMinutes()
  const base = new Date(now.getFullYear(), now.getMonth(), now.getDate())

  for (let offset = 0; offset <= 7; offset++) {
    const day = new Date(base.getFullYear(), base.getMonth(), base.getDate() + offset)
    const wd = weekdayOf(day)
    const week = weekOf(schedule, day)

    const list = []
    for (let i = 0; i < schedule.courses.length; i++) {
      const c = schedule.courses[i]
      if (c.weekday !== wd) continue
      // 周次未知（没有开学日）时不做周次过滤，宁可多显示也别漏
      if (week > 0 && c.weeks && c.weeks.length && c.weeks.indexOf(week) === -1) continue
      const end = endOf[c.stop]
      // 今天只保留「还没下课」的；其它天全都算
      if (offset === 0 && end !== undefined && end >= 0 && end <= nowMin) continue
      list.push(c)
    }
    if (!list.length) continue

    list.sort(function (a, b) { return a.start - b.start })
    const c = list[0]
    const st = startOf[c.start]
    const en = endOf[c.stop]
    const isNow = offset === 0 && st !== undefined && en !== undefined &&
      st >= 0 && st <= nowMin && nowMin < en
    const minutesUntil = (st >= 0)
      ? offset * 1440 + st - nowMin
      : -1

    return {
      course: c,
      dayOffset: offset,
      weekday: wd,
      week: week,
      isNow: isNow,
      startMin: st,
      endMin: en,
      startText: sectionTime(schedule, c.start, 'start'),
      endText: sectionTime(schedule, c.stop, 'end'),
      minutesUntil: minutesUntil,
      label: offset === 0 ? '今天' : (offset === 1 ? '明天' : '周' + '一二三四五六日'[wd - 1]),
    }
  }
  return null
}

export { WEEKDAY_NAMES }
