/**
 * 手环端纯逻辑的测试（schedule.js / protocol.js）。
 *
 * 这两个文件不依赖任何 Vela 运行时，可以直接在 Node 里跑：
 *
 *     node tools/test_band.js
 *
 * 手环快应用没法在本机跑起来，所以这里是离真机最近的验证手段 ——
 * 至少保证日期/周次计算、脏数据处理、分片重组这些容易出错的地方是对的。
 */

const path = require('path')
const assert = require('assert')

const bandSrc = path.join(__dirname, '..', 'band', 'band-schedule', 'src', 'common')

// 这两个是 ESM 源码；用 data URL 之外最省事的办法是改造后 require，
// 这里直接把源码读出来、去掉 export 关键字后求值。
const fs = require('fs')

function loadEsm(file) {
  let code = fs.readFileSync(file, 'utf8')
  // 去掉 import/export 语句，把需要的东西挂到一个对象上
  const exported = []
  code = code.replace(/^export\s+(function|const|let|var)\s+(\w+)/gm, (m, kind, name) => {
    exported.push(name)
    return `${kind} ${name}`
  })
  code = code.replace(/^export\s*\{[^}]*\}\s*$/gm, '')
  const factory = new Function(
    code + `\nreturn { ${exported.join(', ')} };`
  )
  return factory()
}

const scheduleMod = loadEsm(path.join(bandSrc, 'schedule.js'))
const protocolMod = loadEsm(path.join(bandSrc, 'protocol.js'))

const {
  normalizeSchedule,
  coursesOfDay,
  sectionRange,
  weekOf,
  weekdayOf,
  parseDate,
  formatDate,
  DEFAULT_SECTIONS,
  WEEKDAY_NAMES,
} = scheduleMod

const { MSG, encode, decode, bytesToText, createAssembler } = protocolMod

let passed = 0
const failures = []

function test(name, fn) {
  try {
    fn()
    passed++
    console.log('  ok   ' + name)
  } catch (e) {
    failures.push({ name, error: e })
    console.log('  FAIL ' + name)
    console.log('       ' + (e.message || e))
  }
}

console.log('\n[schedule.js]')

test('normalizeSchedule 丢弃缺字段的脏数据而不是崩溃', () => {
  const out = normalizeSchedule({
    courses: [
      null,
      {},
      { name: '好的', weekday: 1, start: 1, stop: 2 },
      { name: '没有星期', weekday: 0, start: 1, stop: 2 },
      { name: '节次反了', weekday: 2, start: 5, stop: 3 },
      { name: '星期越界', weekday: 8, start: 1, stop: 2 },
    ],
  })
  assert.strictEqual(out.courses.length, 1)
  assert.strictEqual(out.courses[0].name, '好的')
})

test('normalizeSchedule 对非对象输入返回 null', () => {
  assert.strictEqual(normalizeSchedule(null), null)
  assert.strictEqual(normalizeSchedule('x'), null)
  assert.strictEqual(normalizeSchedule(42), null)
})

test('normalizeSchedule 补全缺省 color / sections / weeks', () => {
  const out = normalizeSchedule({
    courses: [{ name: '高数', weekday: 1, start: 1, stop: 2 }],
  })
  assert.match(out.courses[0].color, /^#[0-9A-Fa-f]{6}$/)
  assert.strictEqual(out.sections.length, DEFAULT_SECTIONS.length)
  assert.deepStrictEqual(out.courses[0].weeks, [])
  assert.strictEqual(out.version, 1)
})

test('normalizeSchedule 周次去重并升序', () => {
  const out = normalizeSchedule({
    courses: [{ name: 'x', weekday: 1, start: 1, stop: 1, weeks: [3, 1, 3, 2, 0, -1] }],
  })
  assert.deepStrictEqual(out.courses[0].weeks, [1, 2, 3])
})

test('normalizeSchedule 按星期与节次排序', () => {
  const out = normalizeSchedule({
    courses: [
      { name: 'c', weekday: 3, start: 1, stop: 2 },
      { name: 'a', weekday: 1, start: 5, stop: 6 },
      { name: 'b', weekday: 1, start: 1, stop: 2 },
    ],
  })
  assert.deepStrictEqual(out.courses.map((c) => c.name), ['b', 'a', 'c'])
})

test('weekdayOf 把周日算成 7', () => {
  assert.strictEqual(weekdayOf(new Date(2026, 8, 13)), 7) // 2026-09-13 是周日
  assert.strictEqual(weekdayOf(new Date(2026, 8, 14)), 1) // 周一
})

test('parseDate 解析 yyyy-M-d 与非法输入', () => {
  assert.ok(parseDate('2026-09-01'))
  assert.ok(parseDate('2026-9-1'))
  assert.strictEqual(parseDate(''), null)
  assert.strictEqual(parseDate('不是日期'), null)
  assert.strictEqual(parseDate(undefined), null)
})

test('weekOf 用开学日所在周的周一起算', () => {
  const schedule = { termStartDate: '2026-09-01' } // 周二
  // 开学当周周一 = 2026-08-31，即第 1 周
  assert.strictEqual(weekOf(schedule, new Date(2026, 7, 31)), 1)
  assert.strictEqual(weekOf(schedule, new Date(2026, 8, 1)), 1)
  assert.strictEqual(weekOf(schedule, new Date(2026, 8, 6)), 1) // 周日仍第 1 周
  assert.strictEqual(weekOf(schedule, new Date(2026, 8, 7)), 2) // 下周一
  assert.strictEqual(weekOf(schedule, new Date(2026, 8, 14)), 3)
})

test('weekOf 开学前返回 0，日期缺失也返回 0', () => {
  assert.strictEqual(weekOf({ termStartDate: '2026-09-01' }, new Date(2026, 7, 1)), 0)
  assert.strictEqual(weekOf({ termStartDate: '' }, new Date(2026, 8, 1)), 0)
  assert.strictEqual(weekOf(null, new Date()), 0)
})

test('coursesOfDay 按周次过滤，周次未知时不过滤', () => {
  const schedule = normalizeSchedule({
    termStartDate: '2026-08-31', // 周一，方便对齐
    courses: [
      { name: '单周课', weekday: 1, start: 1, stop: 2, weeks: [1, 3, 5] },
      { name: '双周课', weekday: 1, start: 3, stop: 4, weeks: [2, 4] },
      { name: '每周课', weekday: 1, start: 5, stop: 6, weeks: [] },
    ],
  })

  const week1 = coursesOfDay(schedule, new Date(2026, 7, 31)) // 第 1 周周一
  assert.deepStrictEqual(week1.map((c) => c.name), ['单周课', '每周课'])

  const week2 = coursesOfDay(schedule, new Date(2026, 8, 7)) // 第 2 周周一
  assert.deepStrictEqual(week2.map((c) => c.name), ['双周课', '每周课'])

  // 周次未知（没有开学日期）：不做周次过滤，全给出来
  const unknown = normalizeSchedule({
    courses: [{ name: 'a', weekday: 1, start: 1, stop: 2, weeks: [99] }],
  })
  assert.strictEqual(coursesOfDay(unknown, new Date(2026, 7, 31)).length, 1)
})

test('coursesOfDay 只取当天的课', () => {
  const schedule = normalizeSchedule({
    termStartDate: '2026-08-31',
    courses: [
      { name: '周一课', weekday: 1, start: 1, stop: 2 },
      { name: '周二课', weekday: 2, start: 1, stop: 2 },
    ],
  })
  const monday = coursesOfDay(schedule, new Date(2026, 7, 31))
  assert.deepStrictEqual(monday.map((c) => c.name), ['周一课'])
})

test('sectionRange 拼出起止时间，节次缺失返回空串', () => {
  const schedule = normalizeSchedule({ courses: [] })
  assert.strictEqual(sectionRange(schedule, 1, 2), '08:30-10:05')
  assert.strictEqual(sectionRange(schedule, 1, 11), '08:30-21:25')
  assert.strictEqual(sectionRange(schedule, 99, 99), '')
  // sections 缺失时回落到内置作息
  assert.strictEqual(sectionRange({}, 1, 2), '08:30-10:05')
})

test('formatDate 与星期名覆盖 7 天', () => {
  assert.strictEqual(formatDate(new Date(2026, 8, 7)), '9月7日')
  assert.strictEqual(WEEKDAY_NAMES.length, 7)
  assert.strictEqual(WEEKDAY_NAMES[0], '周一')
  assert.strictEqual(WEEKDAY_NAMES[6], '周日')
})

console.log('\n[protocol.js]')

test('encode/decode 往返', () => {
  const text = encode(MSG.SCHEDULE, { a: 1 })
  const back = decode(text)
  assert.strictEqual(back.t, MSG.SCHEDULE)
  assert.deepStrictEqual(back.d, { a: 1 })
})

test('decode 兼容 { data: "..." } 这种固件包装', () => {
  const inner = encode(MSG.READY, { ts: 1 })
  const back = decode({ data: inner })
  assert.strictEqual(back.t, MSG.READY)
})

test('decode 对垃圾输入返回 null', () => {
  assert.strictEqual(decode(null), null)
  assert.strictEqual(decode(undefined), null)
  assert.strictEqual(decode('不是 json'), null)
  assert.strictEqual(decode('{}'), null)
  assert.strictEqual(decode('{"x":1}'), null)
})

// ★ 这一段对应一个真实故障：下发端原来用 `text.codeUnits` 编字节（UTF-16 码元
// 截成单字节），中文变成非法 UTF-8，手环这边解不出来就把消息静默丢了，
// 表现是"发出去了、手环毫无反应"。所以字节必须按 UTF-8 解。
test('decode 能处理字节载荷（Uint8Array）—— 中文课表的关键', () => {
  const text = encode(MSG.SCHEDULE, { name: '高等数学', room: 'B-321' })
  const utf8 = Buffer.from(text, 'utf8')
  const back = decode(new Uint8Array(utf8))
  assert.ok(back, 'Uint8Array 载荷应该能解出来')
  assert.strictEqual(back.t, MSG.SCHEDULE)
  assert.strictEqual(back.d.name, '高等数学')
  assert.strictEqual(back.d.room, 'B-321')
})

test('decode 能处理 ArrayBuffer 和普通数字数组', () => {
  const text = encode(MSG.READY, { city: '长安区' })
  const utf8 = Buffer.from(text, 'utf8')
  const fromBuffer = decode(utf8.buffer.slice(utf8.byteOffset, utf8.byteOffset + utf8.length))
  assert.strictEqual(fromBuffer.d.city, '长安区')
  const fromArray = decode(Array.from(utf8))
  assert.strictEqual(fromArray.d.city, '长安区')
})

test('decode 能处理 { data: Uint8Array } 包装', () => {
  const text = encode(MSG.HELLO, { who: '电脑' })
  const back = decode({ data: new Uint8Array(Buffer.from(text, 'utf8')) })
  assert.strictEqual(back.t, MSG.HELLO)
  assert.strictEqual(back.d.who, '电脑')
})

test('decode 兜底：整串被当成"每字节一字符"的字符串也能救回来', () => {
  const text = encode(MSG.REQUEST, { city: '长安区' })
  const utf8 = Buffer.from(text, 'utf8')
  // 模拟固件把字节 1:1 塞进字符串（Latin-1 那种）
  const mangled = Array.from(utf8).map((b) => String.fromCharCode(b)).join('')
  const back = decode(mangled)
  assert.ok(back, '这种畸形字符串应该能靠兜底救回来')
  assert.strictEqual(back.d.city, '长安区')
})

test('bytesToText 的 UTF-8 解码正确（含 3 字节中文和 4 字节 emoji）', () => {
  assert.strictEqual(bytesToText(Buffer.from('高等数学', 'utf8')), '高等数学')
  assert.strictEqual(bytesToText(Buffer.from('A101', 'utf8')), 'A101')
  // 4 字节字符要走代理对
  assert.strictEqual(bytesToText(Buffer.from('📚', 'utf8')), '📚')
  assert.strictEqual(bytesToText(new Uint8Array(0)), '')
})

test('整包 schedule 直接可用', () => {
  const asm = createAssembler()
  const res = asm.accept(decode(encode(MSG.SCHEDULE, { courses: [] })))
  assert.strictEqual(res.status, 'done')
  assert.deepStrictEqual(res.value, { courses: [] })
})

test('分片收齐后拼回原对象', () => {
  const payload = { courses: [{ name: '高等数学'.repeat(50), weekday: 1, start: 1, stop: 2 }] }
  const text = JSON.stringify(payload)
  const chunks = []
  for (let i = 0; i < text.length; i += 300) chunks.push(text.substr(i, 300))

  const asm = createAssembler()
  let done = null
  for (let seq = 0; seq < chunks.length; seq++) {
    const msg = decode(
      encode(MSG.PART, { seq, total: chunks.length, data: chunks[seq] })
    )
    const res = asm.accept(msg)
    if (seq < chunks.length - 1) assert.strictEqual(res.status, 'progress')
    else {
      assert.strictEqual(res.status, 'done')
      done = res.value
    }
  }
  assert.deepStrictEqual(done, payload)
})

test('分片乱序到达也能拼回来', () => {
  const payload = { name: 'x'.repeat(1000) }
  const text = JSON.stringify(payload)
  const chunks = []
  for (let i = 0; i < text.length; i += 100) chunks.push(text.substr(i, 100))

  const asm = createAssembler()
  const order = chunks.map((_, i) => i).reverse()
  let done = null
  for (const seq of order) {
    const msg = decode(encode(MSG.PART, { seq, total: chunks.length, data: chunks[seq] }))
    const res = asm.accept(msg)
    if (res.status === 'done') done = res.value
  }
  assert.deepStrictEqual(done, payload)
})

test('重复收到同一片不会破坏拼接', () => {
  const payload = { name: 'y'.repeat(500) }
  const text = JSON.stringify(payload)
  const chunks = []
  for (let i = 0; i < text.length; i += 100) chunks.push(text.substr(i, 100))

  const asm = createAssembler()
  let done = null
  for (let round = 0; round < 2; round++) {
    for (let seq = 0; seq < chunks.length; seq++) {
      const res = asm.accept(decode(encode(MSG.PART, { seq, total: chunks.length, data: chunks[seq] })))
      if (res.status === 'done') done = res.value
    }
  }
  assert.deepStrictEqual(done, payload)
})

test('新的一轮同步（片数变化）会丢弃残留', () => {
  const asm = createAssembler()
  // 上一轮只发了一半就断了
  asm.accept(decode(encode(MSG.PART, { seq: 0, total: 4, data: '{"a":' })))
  // 新一轮，片数不同
  const text = '{"b":123}'
  const res = asm.accept(decode(encode(MSG.PART, { seq: 0, total: 1, data: text })))
  assert.strictEqual(res.status, 'done')
  assert.deepStrictEqual(res.value, { b: 123 })
})

test('分片头非法时报错而不是静默卡住', () => {
  const asm = createAssembler()
  assert.strictEqual(asm.accept(decode(encode(MSG.PART, { seq: 0, total: 0, data: 'x' }))).status, 'error')
  assert.strictEqual(asm.accept(decode(encode(MSG.PART, { seq: 9, total: 2, data: 'x' }))).status, 'error')
  assert.strictEqual(asm.accept(decode(encode(MSG.PART, { seq: 0, total: 2, data: 123 }))).status, 'error')
})

test('收齐了但 JSON 坏了会报 error', () => {
  const asm = createAssembler()
  const res = asm.accept(decode(encode(MSG.PART, { seq: 0, total: 1, data: '{坏的' })))
  assert.strictEqual(res.status, 'error')
})

test('不相关的消息被忽略', () => {
  const asm = createAssembler()
  assert.strictEqual(asm.accept(decode(encode(MSG.HELLO, {}))).status, 'ignore')
  assert.strictEqual(asm.accept(null).status, 'ignore')
})

console.log('\n[下发端 → 手环端 的分帧契约]')

/**
 * 帧大小是下发端和手环端之间的约定，所以直接去读**下发端源码里的常量**，
 * 免得哪天只改了一边、测试还照样绿。
 *
 * 读的是 PC 端（`pc/lib/src/band/protocol.dart`）—— 它是现在真正负责切片的一方，
 * 而且随仓库发布。早期读的是安卓端那份 Kotlin，但手机端已弃用、不再随仓库发布，
 * 所以换成了这里的常量。
 */
function readSenderChunkChars() {
  const dart = path.join(__dirname, '..', 'pc', 'lib', 'src', 'band',
    'protocol.dart')
  const src = fs.readFileSync(dart, 'utf8')
  const m = src.match(/chunkChars\s*=\s*(\d+)/)
  assert.ok(m, '在 pc/lib/src/band/protocol.dart 里找不到 chunkChars')
  return parseInt(m[1], 10)
}

const SENDER_CHUNK_CHARS = readSenderChunkChars()

test('下发端切片大小与手环端约定一致（300 字符）', () => {
  assert.strictEqual(SENDER_CHUNK_CHARS, 300)
})

test('按下发端真实切片大小，单帧始终 < 1KB', () => {
  // 最坏情况：全是 3 字节的中文
  const worst = { courses: [{ name: '课'.repeat(4000), weekday: 1, start: 1, stop: 2 }] }
  for (const frame of senderFrames(JSON.stringify(worst), SENDER_CHUNK_CHARS)) {
    const bytes = Buffer.byteLength(JSON.stringify(frame), 'utf8')
    assert.ok(bytes < 1024, `某帧 ${bytes} 字节，超过 1KB`)
  }
})

test('大 payload 用下发端真实切片也能往返', () => {
  const schedule = {
    courses: Array.from({ length: 40 }, (_, i) => ({
      id: 'C' + i,
      name: '专业课名称' + i,
      teacher: '老师' + i,
      room: '教学楼' + i,
      weekday: (i % 5) + 1,
      start: (i % 11) + 1,
      stop: (i % 11) + 2,
      weeks: Array.from({ length: 16 }, (_, k) => k + 1),
      color: '#4A90D9',
    })),
  }
  const json = JSON.stringify(schedule)
  const asm = createAssembler()
  let out = null
  for (const frame of senderFrames(json, SENDER_CHUNK_CHARS)) {
    const res = asm.accept(frame)
    if (res.status === 'done') out = res.value
  }
  assert.deepStrictEqual(out, schedule)
})

/**
 * 与 pc/lib/src/band/protocol.dart 的 buildFrames() 保持一致。
 * 两端如果对切片方式的理解不一致，手环就会拼出坏 JSON，这里把它钉住。
 */
function senderFrames(scheduleJson, chunkChars = 300) {
  if (scheduleJson.length <= chunkChars) {
    return [{ t: MSG.SCHEDULE, d: JSON.parse(scheduleJson) }]
  }
  const pieces = []
  let i = 0
  while (i < scheduleJson.length) {
    let end = Math.min(i + chunkChars, scheduleJson.length)
    // 不要把代理对劈成两半（对应 Dart 端的 surrogate pair 判断）
    if (end < scheduleJson.length) {
      const code = scheduleJson.charCodeAt(end - 1)
      if (code >= 0xd800 && code <= 0xdbff) end--
    }
    pieces.push(scheduleJson.substring(i, end))
    i = end
  }
  return pieces.map((text, seq) => ({
    t: MSG.PART,
    d: { seq, total: pieces.length, data: text },
  }))
}

function roundTrip(schedule) {
  const json = JSON.stringify(schedule)
  const asm = createAssembler()
  let out = null
  for (const frame of senderFrames(json)) {
    const res = asm.accept(frame) // 手环端拿到的是已经 parse 过的对象
    if (res.status === 'done') out = res.value
  }
  return { out, json }
}

test('小课表走单帧 schedule', () => {
  const schedule = { version: 1, courses: [{ name: '高数' }] }
  const frames = senderFrames(JSON.stringify(schedule))
  assert.strictEqual(frames.length, 1)
  assert.strictEqual(frames[0].t, MSG.SCHEDULE)
})

test('真实规模的课表能完整往返', () => {
  // 模拟一份 60 条排课、20 周的课表
  const courses = []
  for (let n = 0; n < 60; n++) {
    courses.push({
      id: 'C' + n,
      name: '课程名称比较长的专业课' + n,
      teacher: '某位老师',
      room: '教学楼A区' + (100 + n),
      weekday: (n % 5) + 1,
      start: (n % 11) + 1,
      stop: (n % 11) + 2,
      weeks: Array.from({ length: 16 }, (_, k) => k + 1),
      color: '#4A90D9',
    })
  }
  const schedule = { version: 1, semesterCode: '2026-2027-1', courses }
  const { out, json } = roundTrip(schedule)

  assert.ok(json.length > 300, '这份数据应该触发分帧')
  assert.deepStrictEqual(out, schedule)
})

test('每帧都不超过约 900 字节（官方示例单帧缓冲 1KB）', () => {
  const big = {
    courses: [{ name: '很长的课程名'.repeat(200), weekday: 1, start: 1, stop: 2 }],
  }
  const frames = senderFrames(JSON.stringify(big))
  assert.ok(frames.length > 1)
  for (const frame of frames) {
    const bytes = Buffer.byteLength(JSON.stringify(frame), 'utf8')
    assert.ok(bytes < 1024, `某帧 ${bytes} 字节，超过 1KB 上限`)
  }
})

test('极端文本（emoji / 中文 / 引号）也能往返', () => {
  const schedule = {
    courses: [
      { name: '🎓' .repeat(120) + '大学物理', room: 'A"B\\C', weekday: 2, start: 3, stop: 4 },
    ],
  }
  const { out } = roundTrip(schedule)
  assert.deepStrictEqual(out, schedule)
})

test('切片边界正好落在多字节字符上也不出错', () => {
  // 构造长度恰好让切片落在中文字符中间的输入
  for (const pad of [-1, 0, 1, 2]) {
    const schedule = { courses: [{ name: '中'.repeat(300 + pad), weekday: 1, start: 1, stop: 2 }] }
    const { out } = roundTrip(schedule)
    assert.deepStrictEqual(out, schedule, `pad=${pad} 时往返失败`)
  }
})

console.log('\n[收到数据但"不显示"的排查：两种载荷形态]')

/**
 * 这一段专门复现「手环收到了数据但界面没课」。
 * 课表有两种来源，落地的 termStartDate 形态不同：
 *   - 有开学日的（ICS / 教务导出）：termStartDate = 某周的周一
 *   - 手打/粘贴的：termStartDate = ""（空串，表示不按周次过滤）
 * 两种都必须在"今天"显示出当天课程。
 */

test('演示数据：开学日=本周周一，今天应能显示出当天的课', () => {
  // 本周周一为开学日，周一~周五有课，1-16 周
  const today = new Date(2026, 8, 15) // 2026-09-15 周二
  const monday = new Date(2026, 8, 14) // 该周的周一
  const fmt = (d) => d.getFullYear() + '-' + (d.getMonth() + 1) + '-' + d.getDate()

  const courses = []
  const names = ['高等数学', '大学物理', '线性代数']
  const slots = [[1, 2], [3, 4], [5, 6]]
  for (let day = 1; day <= 5; day++) {
    for (let i = 0; i < slots.length; i++) {
      const idx = (day + i) % names.length
      courses.push({
        id: 'demo|' + day + '|' + slots[i][0],
        name: names[idx],
        teacher: '张老师',
        room: 'A101',
        weekday: day,
        start: slots[i][0],
        stop: slots[i][1],
        weeks: Array.from({ length: 16 }, (_, k) => k + 1),
        color: '#4A90D9',
      })
    }
  }

  const schedule = normalizeSchedule({
    version: 1,
    semesterCode: '演示数据',
    termStartDate: fmt(monday),
    updatedAt: Date.now(),
    sections: DEFAULT_SECTIONS,
    courses: courses,
  })

  assert.strictEqual(schedule.courses.length, 15, '应收到 15 条排课')
  assert.strictEqual(weekOf(schedule, today), 1, '本周应是第 1 周')
  const todayCourses = coursesOfDay(schedule, today)
  assert.strictEqual(todayCourses.length, 3, '周二应有 3 门课（这是"该显示却没显示"的关键断言）')
  // 节次时间也要能查出来，否则列表里会显示"时间待同步"
  assert.strictEqual(sectionRange(schedule, todayCourses[0].start, todayCourses[0].stop).length > 0, true)
})

test('手动导入：termStartDate 为空串时不按周次过滤，当天课照常显示', () => {
  const today = new Date(2026, 8, 15) // 周二
  const schedule = normalizeSchedule({
    version: 1,
    semesterCode: '手动导入',
    termStartDate: '', // ManualImport.parse 的默认值
    updatedAt: Date.now(),
    sections: DEFAULT_SECTIONS,
    courses: [
      // 周次写了个和当前周完全不相干的集合，用来证明"空 termStartDate 不做过滤"
      { name: '高等数学', weekday: 2, start: 1, stop: 2, weeks: [99], room: 'A101', teacher: '张三' },
      { name: '大学英语', weekday: 2, start: 5, stop: 6, weeks: [], room: 'B203', teacher: '李四' },
      { name: '周一才上的课', weekday: 1, start: 1, stop: 2, weeks: [], room: 'C', teacher: '王五' },
    ],
  })

  assert.strictEqual(weekOf(schedule, today), 0, '没有开学日 -> 周次未知')
  const todayCourses = coursesOfDay(schedule, today)
  assert.deepStrictEqual(
    todayCourses.map((c) => c.name),
    ['高等数学', '大学英语'],
    '周二应显示 2 门（不该被 weeks=[99] 过滤掉）'
  )
})

test('今天真的没课时，返回空数组而不是报错', () => {
  // 周日，且课表里只有周一~周五
  const sunday = new Date(2026, 8, 13)
  const schedule = normalizeSchedule({
    version: 1,
    termStartDate: '2026-09-07',
    updatedAt: Date.now(),
    courses: [
      { name: '周一的课', weekday: 1, start: 1, stop: 2, weeks: [1, 2, 3] },
    ],
  })
  assert.deepStrictEqual(coursesOfDay(schedule, sunday), [])
})

console.log('\n' + '-'.repeat(46))
if (failures.length) {
  console.log(`失败 ${failures.length} 项，通过 ${passed} 项`)
  process.exit(1)
}
console.log(`全部通过：${passed} 项`)
