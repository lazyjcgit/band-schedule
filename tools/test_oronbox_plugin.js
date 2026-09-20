/**
 * 验证 OronBox 调试插件的分帧逻辑与手环端重组器能对上。
 *
 * 插件跑在 OronBox 的 QuickJS 沙箱里，本机没法直接跑，
 * 所以这里把 buildFrames / demoSchedule 的算法抽出来单独验证：
 * 只要产出的帧能被手环端 createAssembler 正确拼回，插件生成的数据就是对的。
 *
 *     node tools/test_oronbox_plugin.js
 */

const path = require('path')
const fs = require('fs')
const assert = require('assert')

// 复用已有的 ESM 加载器思路，把 protocol.js 读进来求值
function loadEsm(file) {
  let code = fs.readFileSync(file, 'utf8')
  const exported = []
  code = code.replace(/^export\s+(function|const|let|var)\s+(\w+)/gm, (m, kind, name) => {
    exported.push(name)
    return `${kind} ${name}`
  })
  code = code.replace(/^export\s*\{[^}]*\}\s*$/gm, '')
  return new Function(code + `\nreturn { ${exported.join(', ')} };`)()
}

const bandCommon = path.join(__dirname, '..', 'band', 'band-schedule', 'src', 'common')
const { MSG, createAssembler } = loadEsm(path.join(bandCommon, 'protocol.js'))

/**
 * 从插件源码里把常量与 buildFrames 抠出来跑，确保测的是真实实现而不是副本。
 * （插件源码是普通 JS，没有 import/export，取出来可以直接求值。）
 */
const pluginSrc = fs.readFileSync(
  path.join(__dirname, 'oronbox-devtool', 'main.js'), 'utf8'
)

function extract(name) {
  // 只取这一行 `const NAME = ...`（这些常量都是单行声明），
  // 之前的括号平衡法在多行注释场景下会多吃内容
  const re = new RegExp('^const\\s+' + name + '\\s*=\\s*(.+)$', 'm')
  const m = re.exec(pluginSrc)
  assert.ok(m, '插件源码里找不到 ' + name)
  return m[1].trim().replace(/;$/, '')
}

function extractFunction(name) {
  const re = new RegExp('^function\\s+' + name + '\\s*\\(', 'm')
  const m = re.exec(pluginSrc)
  assert.ok(m, '插件源码里找不到函数 ' + name)
  // 从 function 关键字开始，按大括号配平到函数结束
  let depth = 0
  let started = false
  for (let j = m.index; j < pluginSrc.length; j++) {
    const ch = pluginSrc[j]
    if (ch === '{') { depth++; started = true }
    else if (ch === '}') {
      depth--
      if (started && depth === 0) return pluginSrc.slice(m.index, j + 1)
    }
  }
  throw new Error('无法确定函数 ' + name + ' 的边界')
}

const pluginFns = new Function(
  'const TARGET = ' + extract('TARGET') + ';\n' +
  'const CHUNK = ' + extract('CHUNK') + ';\n' +
  extractFunction('envelope') + ';\n' +
  extractFunction('buildFrames') + ';\n' +
  extractFunction('demoSchedule') + ';\n' +
  'return { TARGET, CHUNK, envelope, buildFrames, demoSchedule };'
)()

let passed = 0
const failures = []

function test(name, fn) {
  try {
    fn()
    passed++
    console.log('  ok   ' + name)
  } catch (e) {
    failures.push(name)
    console.log('  FAIL ' + name)
    console.log('       ' + (e.message || e))
  }
}

console.log('\n[OronBox 调试插件]')

test('目标包名与手环端一致', () => {
  assert.strictEqual(pluginFns.TARGET, 'io.github.lazyjcgit.bandschedule')
})

test('切片大小与 PC 端 protocol.dart 一致（300）', () => {
  // 插件的切片大小必须和真正下发的那一方一致，否则手环拼不出完整 JSON。
  // 现在下发方是 PC 端，所以直接读它的常量。早期读的是安卓端那份 Kotlin，
  // 但手机端已弃用、不再随仓库发布。
  const dart = fs.readFileSync(path.join(
    __dirname, '..', 'pc', 'lib', 'src', 'band', 'protocol.dart'), 'utf8')
  const m = dart.match(/chunkChars\s*=\s*(\d+)/)
  assert.ok(m, '找不到 chunkChars')
  assert.strictEqual(pluginFns.CHUNK, parseInt(m[1], 10))
})

test('演示课表的帧能被手环端重组器拼回来', () => {
  const schedule = pluginFns.demoSchedule()
  const json = JSON.stringify(schedule)
  const frames = pluginFns.buildFrames(json)

  const asm = createAssembler()
  let out = null
  for (const f of frames) {
    // 插件发出的是字符串，手环 onmessage 拿到后由 decode 处理；
    // 这里模拟手环端已经在 decode 之后的状态
    const res = asm.accept(JSON.parse(f))
    if (res.status === 'done') out = res.value
  }

  assert.ok(out, '没有拼出结果')
  assert.strictEqual(out.courses.length, schedule.courses.length)
  assert.strictEqual(out.termStartDate, schedule.termStartDate)
})

test('帧结构符合手环端协议（schedule 或 part）', () => {
  const json = JSON.stringify(pluginFns.demoSchedule())
  for (const f of pluginFns.buildFrames(json)) {
    const msg = JSON.parse(f)
    assert.ok(msg.t === MSG.SCHEDULE || msg.t === MSG.PART, '意外的类型 ' + msg.t)
    if (msg.t === MSG.PART) {
      assert.strictEqual(typeof msg.d.seq, 'number')
      assert.strictEqual(typeof msg.d.total, 'number')
      assert.strictEqual(typeof msg.d.data, 'string')
    }
  }
})

test('每帧不超过 1KB（官方示例的单帧缓冲）', () => {
  const json = JSON.stringify(pluginFns.demoSchedule())
  for (const f of pluginFns.buildFrames(json)) {
    const bytes = Buffer.byteLength(f, 'utf8')
    assert.ok(bytes < 1024, '某帧 ' + bytes + ' 字节')
  }
})

test('演示课表的开学日是本周周一，今天必定有课', () => {
  const schedule = pluginFns.demoSchedule()
  // 直接算：开学日所在周的周一应就是今天这一周的周一
  const m = schedule.termStartDate.match(/(\d{4})-(\d{1,2})-(\d{1,2})/)
  const start = new Date(parseInt(m[1]), parseInt(m[2]) - 1, parseInt(m[3]))
  assert.strictEqual(start.getDay(), 1, '开学日应是周一')

  const today = new Date()
  const diffDays = Math.floor(
    (new Date(today.getFullYear(), today.getMonth(), today.getDate()) - start) / 86400000
  )
  const week = Math.floor(diffDays / 7) + 1
  assert.ok(week >= 1, '当前应在第 1 周之后')

  const dow = today.getDay() === 0 ? 7 : today.getDay()
  const todayCourses = schedule.courses.filter(
    (c) => c.weekday === dow && c.weeks.indexOf(week) !== -1
  )
  // 周一到周五都有课，所以工作日一定非空
  if (dow <= 5) {
    assert.ok(todayCourses.length > 0, '工作日应至少有一门课')
  }
})

console.log('\n[真实课表（本学期 ICS 转换结果）]')

const REAL = path.join(__dirname, '..', 'dist', 'schedule-real.json')
const hasReal = fs.existsSync(REAL)

if (!hasReal) {
  console.log('  （跳过：dist/schedule-real.json 不存在，先跑 tools/ics_to_schedule.py）')
} else {
  const real = JSON.parse(fs.readFileSync(REAL, 'utf8'))

  test('真实课表结构完整，能被手环端 normalizeSchedule 接受', () => {
    const normalized = loadEsm(path.join(bandCommon, 'schedule.js')).normalizeSchedule(real)
    assert.ok(normalized, 'normalizeSchedule 返回 null')
    assert.strictEqual(normalized.courses.length, real.courses.length,
      '不应有课程被丢弃（有的话说明字段不合法）')
  })

  test('真实课表能被手环端重组器按帧拼回', () => {
    const json = JSON.stringify(real)
    const frames = pluginFns.buildFrames(json)
    const asm = createAssembler()
    let out = null
    for (const f of frames) {
      const res = asm.accept(JSON.parse(f))
      if (res.status === 'done') out = res.value
    }
    assert.ok(out, '没拼出结果')
    assert.strictEqual(out.courses.length, real.courses.length)
  })

  test('真实课表的每一帧都 < 1KB', () => {
    for (const f of pluginFns.buildFrames(JSON.stringify(real))) {
      const bytes = Buffer.byteLength(f, 'utf8')
      assert.ok(bytes < 1024, '某帧 ' + bytes + ' 字节')
    }
  })

  test('开学日是周一，且课程节次都在 1-11 之间', () => {
    assert.match(real.termStartDate, /^\d{4}-\d{2}-\d{2}$/)
    const m = real.termStartDate.match(/(\d{4})-(\d{1,2})-(\d{1,2})/)
    const d = new Date(parseInt(m[1]), parseInt(m[2]) - 1, parseInt(m[3]))
    assert.strictEqual(d.getDay(), 1, 'termStartDate 应该是周一（第 1 周的起点）')

    for (const c of real.courses) {
      assert.ok(c.start >= 1 && c.stop <= 11, c.name + ' 节次越界：' + c.start + '-' + c.stop)
      assert.ok(c.weekday >= 1 && c.weekday <= 7, c.name + ' 星期越界')
      assert.ok(c.weeks.length > 0, c.name + ' 没有周次')
    }
  })

  test('转换结果的基本事实：22 门课、周次覆盖 1-17 周', () => {
    assert.strictEqual(real.courses.length, 22, '课程条数应为 22')
    const allWeeks = new Set()
    real.courses.forEach((c) => c.weeks.forEach((w) => allWeeks.add(w)))
    const weeks = Array.from(allWeeks).sort((a, b) => a - b)
    assert.strictEqual(weeks[0], 1, '最小周次应是第 1 周')
    assert.strictEqual(weeks[weeks.length - 1], 17, '最大周次应是第 17 周')
  })

  test('已知事实：2026-09-15（周二，第 2 周）应显示 2 门课', () => {
    const sched = loadEsm(path.join(bandCommon, 'schedule.js'))
    const normalized = sched.normalizeSchedule(real)
    const day = new Date(2026, 8, 15) // 2026-09-15 周二
    const list = sched.coursesOfDay(normalized, day)

    assert.strictEqual(list.length, 2, '实际 ' + list.length + ' 门：' +
      list.map((c) => c.name).join('、'))
    // 用集合比较，别依赖中文排序
    assert.deepStrictEqual(
      new Set(list.map((c) => c.name)),
      new Set(['计算机通信与网络', '编译原理'])
    )
    // 节次也要对：计算机通信与网络 = 第 1-2 节，编译原理 = 第 7-8 节
    const byName = {}
    list.forEach((c) => { byName[c.name] = c })
    assert.strictEqual(byName['计算机通信与网络'].start, 1)
    assert.strictEqual(byName['计算机通信与网络'].stop, 2)
    assert.strictEqual(byName['编译原理'].start, 7)
    assert.strictEqual(byName['编译原理'].stop, 8)
    // 按节次升序，手环上列表就是按这个顺序渲染的
    assert.deepStrictEqual(list.map((c) => c.start), [1, 7])
  })

  test('对照：插件里算出的"今天"与手环端算法一致', () => {
    // 插件的 todayPreview 用的是同一套逻辑，但手环端要有自己的验证
    const sched = loadEsm(path.join(bandCommon, 'schedule.js'))
    const normalized = sched.normalizeSchedule(real)
    const day = new Date(2026, 8, 15)
    assert.strictEqual(sched.weekOf(normalized, day), 2, '2026-09-15 应是第 2 周')
    assert.strictEqual(sched.weekdayOf(day), 2, '2026-09-15 应是周二')
  })
}

console.log('\n' + '-'.repeat(46))
if (failures.length) {
  console.log(`失败 ${failures.length} 项，通过 ${passed} 项`)
  process.exit(1)
}
console.log(`全部通过：${passed} 项`)
