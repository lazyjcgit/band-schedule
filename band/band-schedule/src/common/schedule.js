/**
 * 课表数据的本地计算：今天上什么课、当前第几周。
 *
 * 下发端与手环端约定的课表结构（与电脑端的实现保持完全一致）：
 * {
 *   "version": 1,
 *   "semesterCode": "2026-2027-1",
 *   "termStartDate": "2026-09-01",   // 第 1 周周一
 *   "updatedAt": 1757000000000,
 *   "sections": [ { "index": 1, "start": "08:00", "end": "08:45" }, ... ],
 *   "courses": [
 *     {
 *       "id": "高等数学|1|A101",
 *       "name": "高等数学",
 *       "teacher": "张三",
 *       "room": "A101",
 *       "weekday": 1,          // 1=周一 ... 7=周日
 *       "start": 1,            // 起始节次
 *       "stop": 2,             // 结束节次
 *       "weeks": [1,2,3,5,6],  // 上课周次（1 起）
 *       "color": "#4A90D9"
 *     }
 *   ]
 * }
 */

export const WEEKDAY_NAMES = ['周一', '周二', '周三', '周四', '周五', '周六', '周日']

export const DEFAULT_SECTIONS = [
  { index: 1, start: '08:30', end: '09:15' },
  { index: 2, start: '09:20', end: '10:05' },
  { index: 3, start: '10:25', end: '11:10' },
  { index: 4, start: '11:15', end: '12:00' },
  { index: 5, start: '14:00', end: '14:45' },
  { index: 6, start: '14:50', end: '15:35' },
  { index: 7, start: '15:55', end: '16:40' },
  { index: 8, start: '16:45', end: '17:30' },
  { index: 9, start: '19:00', end: '19:45' },
  { index: 10, start: '19:50', end: '20:35' },
  { index: 11, start: '20:40', end: '21:25' },
]

const PALETTE = [
  '#4A90D9',
  '#48B79A',
  '#E0913C',
  '#C7657F',
  '#7E6BC4',
  '#5FA95F',
  '#C1704A',
  '#4B9BB5',
]

/** 把各种输入统一成标准结构，脏数据直接丢弃而不是崩溃。 */
export function normalizeSchedule(raw) {
  if (!raw || typeof raw !== 'object') return null
  const courses = Array.isArray(raw.courses) ? raw.courses : []
  const clean = []
  for (let i = 0; i < courses.length; i++) {
    const c = courses[i]
    if (!c || !c.name) continue
    const weekday = toInt(c.weekday)
    const start = toInt(c.start)
    const stop = toInt(c.stop)
    if (weekday < 1 || weekday > 7 || start < 1 || stop < start) continue
    clean.push({
      id: c.id ? String(c.id) : c.name + '|' + weekday + '|' + start,
      name: String(c.name),
      teacher: c.teacher ? String(c.teacher) : '',
      room: c.room ? String(c.room) : '',
      weekday: weekday,
      start: start,
      stop: stop,
      weeks: normalizeWeeks(c.weeks),
      color: c.color ? String(c.color) : PALETTE[clean.length % PALETTE.length],
    })
  }
  clean.sort((a, b) => (a.weekday - b.weekday) || (a.start - b.start))
  return {
    version: 1,
    semesterCode: raw.semesterCode ? String(raw.semesterCode) : '',
    termStartDate: raw.termStartDate ? String(raw.termStartDate) : '',
    updatedAt: toInt(raw.updatedAt) || 0,
    sections:
      Array.isArray(raw.sections) && raw.sections.length
        ? raw.sections
        : DEFAULT_SECTIONS,
    courses: clean,
  }
}

function toInt(v) {
  const n = parseInt(v, 10)
  return isNaN(n) ? 0 : n
}

function normalizeWeeks(weeks) {
  if (!Array.isArray(weeks)) return []
  const out = []
  for (let i = 0; i < weeks.length; i++) {
    const w = toInt(weeks[i])
    if (w > 0 && out.indexOf(w) === -1) out.push(w)
  }
  out.sort((a, b) => a - b)
  return out
}

/** 把 "2026-09-01" 解析成本地时间 0 点的 Date；失败返回 null。 */
export function parseDate(text) {
  if (!text || typeof text !== 'string') return null
  const m = text.trim().match(/^(\d{4})-(\d{1,2})-(\d{1,2})/)
  if (!m) return null
  const d = new Date(
    parseInt(m[1], 10),
    parseInt(m[2], 10) - 1,
    parseInt(m[3], 10)
  )
  return isNaN(d.getTime()) ? null : d
}

/** 当天 0 点，避免时分秒干扰周次计算。 */
export function startOfDay(date) {
  return new Date(date.getFullYear(), date.getMonth(), date.getDate())
}

export function weekdayOf(date) {
  const d = date.getDay()
  return d === 0 ? 7 : d
}

/**
 * 当前是第几周（1 起）。开学日期所在的自然周记为第 1 周。
 * termStartDate 缺失时返回 0，表示「周次未知」。
 */
export function weekOf(schedule, date) {
  const start = parseDate(schedule && schedule.termStartDate)
  if (!start) return 0
  const msPerWeek = 7 * 24 * 60 * 60 * 1000
  // 把开学日对齐到它所在周的周一
  const offsetToMonday = weekdayOf(start) - 1
  const firstMonday = new Date(start.getTime() - offsetToMonday * 24 * 60 * 60 * 1000)
  const diff = startOfDay(date).getTime() - firstMonday.getTime()
  if (diff < 0) return 0
  return Math.floor(diff / msPerWeek) + 1
}

/** 某天要上的课，按节次排序。weekUnknown 时不做周次过滤。 */
export function coursesOfDay(schedule, date) {
  if (!schedule || !Array.isArray(schedule.courses)) return []
  const weekday = weekdayOf(date)
  const week = weekOf(schedule, date)
  const out = []
  for (let i = 0; i < schedule.courses.length; i++) {
    const c = schedule.courses[i]
    if (c.weekday !== weekday) continue
    if (week > 0 && c.weeks && c.weeks.length && c.weeks.indexOf(week) === -1) continue
    out.push(c)
  }
  out.sort((a, b) => a.start - b.start)
  return out
}

/** 返回 { start:"08:00", end:"09:40" } 这样的节次区间文本。 */
export function sectionRange(schedule, start, stop) {
  const sections =
    schedule && Array.isArray(schedule.sections) && schedule.sections.length
      ? schedule.sections
      : DEFAULT_SECTIONS
  let from = ''
  let to = ''
  for (let i = 0; i < sections.length; i++) {
    const s = sections[i]
    if (toInt(s.index) === start) from = s.start
    if (toInt(s.index) === stop) to = s.end
  }
  if (!from || !to) return ''
  return from + '-' + to
}

export function formatDate(date) {
  const month = date.getMonth() + 1
  const day = date.getDate()
  return month + '月' + day + '日'
}
