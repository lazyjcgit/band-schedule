/**
 * 「下一节课」逻辑的测试（common/next.js）。
 *
 *     node tools/test_next.js
 *
 * 重点验证需求里那条规则：
 *   「过了上一节的下课时间，直到下一节的下课之前都显示这节课」
 * 也就是：正在上的课会一直显示到它下课，一下课立刻切到下一门。
 */

const fs = require('fs')
const path = require('path')
const assert = require('assert')

function loadEsm(file) {
  let code = fs.readFileSync(file, 'utf8')
  const exported = []
  code = code.replace(/^export\s+(function|const|let|var)\s+(\w+)/gm, (m, kind, name) => {
    exported.push(name)
    return `${kind} ${name}`
  })
  // import 语句在 Node 里跑不了，直接去掉（本文件只依赖 schedule.js 的几个函数）
  code = code.replace(/^import\s+.*?from\s+.*?$/gm, '')
  code = code.replace(/^export\s*\{[^}]*\}\s*$/gm, '')
  return new Function(code + `\nreturn { ${exported.join(', ')} };`)()
}

const common = path.join(__dirname, '..', 'band', 'band-schedule', 'src', 'common')
const scheduleMod = loadEsm(path.join(common, 'schedule.js'))

// next.js 依赖 schedule.js 的 weekOf/weekdayOf，手工注入同名变量
let nextSrc = fs.readFileSync(path.join(common, 'next.js'), 'utf8')
nextSrc = nextSrc.replace(/^import\s+.*?from\s+.*?$/gm, '')
nextSrc = nextSrc.replace(/^export\s+(function|const|let|var)\s+(\w+)/gm, '$1 $2')
nextSrc = nextSrc.replace(/^export\s*\{[^}]*\}\s*$/gm, '')
const nextMod = new Function(
  'weekOf', 'weekdayOf', 'WEEKDAY_NAMES',
  nextSrc + '\nreturn { nextCourse, sectionLabel, truncateName, sectionTime };'
)(scheduleMod.weekOf, scheduleMod.weekdayOf, scheduleMod.WEEKDAY_NAMES)

const { nextCourse, sectionLabel, truncateName } = nextMod
const { normalizeSchedule } = scheduleMod

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

// 用真实课表当 fixture（有的话），否则用一份构造数据
const REAL = path.join(__dirname, '..', 'dist', 'schedule-real.json')
const real = fs.existsSync(REAL) ? JSON.parse(fs.readFileSync(REAL, 'utf8')) : null

// 2026-09-15 周二（第 2 周）：计算机通信与网络 1-2节 08:30-10:05、编译原理 7-8节 15:55-17:30
const TUE = [2026, 8, 15]

function at(h, m) {
  return new Date(TUE[0], TUE[1], TUE[2], h, m)
}

console.log('\n[truncateName 长课名截断]')

test('超过上限就截断并加省略号', () => {
  assert.strictEqual(truncateName('习近平新时代中国特色社会主义思想概论', 9),
    '习近平新时代中国特…')
})

test('不超过上限时原样返回', () => {
  assert.strictEqual(truncateName('编译原理', 9), '编译原理')
  assert.strictEqual(truncateName('计算机通信与网络', 9), '计算机通信与网络')
})

test('空值安全', () => {
  assert.strictEqual(truncateName('', 9), '')
  assert.strictEqual(truncateName(null, 9), '')
  assert.strictEqual(truncateName(undefined, 9), '')
})

test('不会把代理对（emoji）截成半个字符', () => {
  const out = truncateName('🎓🎓🎓🎓🎓🎓🎓🎓🎓🎓', 3)
  assert.strictEqual(out, '🎓🎓🎓…')
})

console.log('\n[sectionLabel]')

test('节次文本', () => {
  assert.strictEqual(sectionLabel({ start: 7, stop: 8 }), '第7-8节')
  assert.strictEqual(sectionLabel({ start: 3, stop: 3 }), '第3节')
  assert.strictEqual(sectionLabel(null), '')
})

if (real) {
  const s = normalizeSchedule(real)

  console.log('\n[下一节课：按需求规则（下课后立刻切换）]')

  test('课前：显示即将开始的课（第 1-2 节）', () => {
    const r = nextCourse(s, at(7, 0))
    assert.ok(r, '应找到课程')
    assert.strictEqual(r.course.name, '计算机通信与网络')
    assert.strictEqual(r.startText, '08:30')
    assert.strictEqual(r.isNow, false)
    assert.strictEqual(r.minutesUntil, 90, '7:00 距 8:30 是 90 分钟')
  })

  test('上课中：仍显示这节课，且 isNow=true', () => {
    const r = nextCourse(s, at(8, 45))
    assert.strictEqual(r.course.name, '计算机通信与网络')
    assert.strictEqual(r.isNow, true, '8:45 在 8:30-10:05 之间')
  })

  test('★ 下课那一刻（10:05）就切到下一门，不再显示刚下课的课', () => {
    const r = nextCourse(s, at(10, 5))
    assert.strictEqual(r.course.name, '编译原理',
      '10:05 是计算机通信与网络的下课时间，应立刻切到编译原理')
    assert.strictEqual(r.isNow, false)
  })

  test('两节课之间：显示下午那节（编译原理 15:55）', () => {
    const r = nextCourse(s, at(11, 0))
    assert.strictEqual(r.course.name, '编译原理')
    assert.strictEqual(r.startText, '15:55')
    assert.strictEqual(r.endText, '17:30')
    assert.strictEqual(r.label, '今天')
    assert.strictEqual(r.minutesUntil, 295, '11:00 距 15:55 是 295 分钟')
  })

  test('下午那节上课中', () => {
    const r = nextCourse(s, at(16, 30))
    assert.strictEqual(r.course.name, '编译原理')
    assert.strictEqual(r.isNow, true)
  })

  test('今天全部上完：切到之后的课，且不是「今天」', () => {
    const r = nextCourse(s, at(21, 0))
    assert.ok(r, '应往后找到课程')
    assert.notStrictEqual(r.course.name, '编译原理', '不该还是今天下午那节')
    assert.ok(r.dayOffset >= 1, '应落到之后某天，实际 dayOffset=' + r.dayOffset)
    assert.ok(r.label === '明天' || /^周/.test(r.label), '标签应说明是哪天')
  })

  test('周三的课能被正确识别为「明天」', () => {
    const r = nextCourse(s, at(22, 0))
    if (r.dayOffset === 1) {
      assert.strictEqual(r.label, '明天')
      assert.strictEqual(r.weekday, 3, '周三')
    }
  })

  test('结果里带的字段够「下一节课」页面直接渲染', () => {
    const r = nextCourse(s, at(11, 0))
    for (const k of ['course', 'startText', 'endText', 'isNow', 'label',
                     'weekday', 'week', 'minutesUntil', 'startMin', 'endMin']) {
      assert.ok(k in r, '缺少字段 ' + k)
    }
    assert.ok(r.course.room, '课程要有教室')
    assert.ok(/^\d{2}:\d{2}$/.test(r.startText), 'startText 应是 HH:MM')
  })

  test('7 天内确实没课时返回 null（不会崩）', () => {
    // 造一份只有周一有课、且周次只到第 1 周的表，然后在第 2 周之后查询
    const sparse = normalizeSchedule({
      termStartDate: '2026-09-07',
      courses: [{ name: '唯一一节课', weekday: 1, start: 1, stop: 2, weeks: [1] }],
    })
    const r = nextCourse(sparse, new Date(2026, 9, 20))
    assert.strictEqual(r, null, '不该找到课程')
  })

  test('空课表返回 null', () => {
    assert.strictEqual(nextCourse(null, new Date()), null)
    assert.strictEqual(nextCourse(normalizeSchedule({ courses: [] }), new Date()), null)
  })

  test('没有开学日（周次未知）时不过滤周次，宁可多显示', () => {
    const manual = normalizeSchedule({
      termStartDate: '',
      courses: [{ name: '手动导入的课', weekday: 2, start: 1, stop: 2, weeks: [99] }],
    })
    const r = nextCourse(manual, at(7, 0))
    assert.ok(r, '应显示出来')
    assert.strictEqual(r.course.name, '手动导入的课')
  })
} else {
  console.log('\n  （跳过真实课表相关用例：dist/schedule-real.json 不存在）')
}

console.log('\n' + '-'.repeat(46))
if (failures.length) {
  console.log(`失败 ${failures.length} 项，通过 ${passed} 项`)
  process.exit(1)
}
console.log(`全部通过：${passed} 项`)
