/**
 * 课表本地存取的测试（common/store.js）。
 *
 *     node tools/test_store.js
 *
 * 重点是 unwrapStored：Vela 的 storage.get 回调**直接给值本身**，
 * 不是 {data: value}。之前写成 `data.data` 导致退出应用再进来数据全没了，
 * 这里把它钉死。
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
  code = code.replace(/^import\s+.*?from\s+.*?$/gm, '')
  code = code.replace(/^export\s*\{[^}]*\}\s*$/gm, '')
  return new Function(code + `\nreturn { ${exported.join(', ')} };`)()
}

const common = path.join(__dirname, '..', 'band', 'band-schedule', 'src', 'common')
const store = loadEsm(path.join(common, 'store.js'))

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

console.log('\n[unwrapStored：读回存进去的值]')

test('★ 回调直接给字符串时原样返回（官方闹钟应用就是这个形态）', () => {
  assert.strictEqual(store.unwrapStored('{"a":1}'), '{"a":1}')
})

test('★ 不能是 undefined —— 这就是"退出再进数据没了"的原因', () => {
  const raw = store.unwrapStored('{"courses":[]}')
  assert.notStrictEqual(raw, undefined)
  assert.strictEqual(raw.length, 14)
})

test('对象形式的 {data: "..."} 也兼容', () => {
  assert.strictEqual(store.unwrapStored({ data: '{"a":1}' }), '{"a":1}')
})

test('空值统一返回空字符串（便于判空）', () => {
  assert.strictEqual(store.unwrapStored(null), '')
  assert.strictEqual(store.unwrapStored(undefined), '')
  assert.strictEqual(store.unwrapStored(''), '')
  assert.strictEqual(store.unwrapStored({}), '')
  assert.strictEqual(store.unwrapStored({ data: 123 }), '')
  assert.strictEqual(store.unwrapStored(0), '')
})

test('存储键就是 schedule（改了会读不到旧数据）', () => {
  assert.strictEqual(store.STORAGE_KEY, 'schedule')
})

console.log('\n[真实课表能完整存取往返]')

const REAL = path.join(__dirname, '..', 'dist', 'schedule-real.json')
if (!fs.existsSync(REAL)) {
  console.log('  （跳过：dist/schedule-real.json 不存在）')
} else {
  const real = JSON.parse(fs.readFileSync(REAL, 'utf8'))
  const text = JSON.stringify(real)

  test('真实课表序列化后能被读回来并解析', () => {
    const raw = store.unwrapStored(text)
    assert.strictEqual(raw.length, text.length)
    const back = JSON.parse(raw)
    assert.strictEqual(back.courses.length, real.courses.length)
    assert.strictEqual(back.termStartDate, real.termStartDate)
  })

  test('体积（%d 字符）在合理范围内', () => {
    assert.ok(text.length < 20000, '课表 JSON 太大了：' + text.length)
  })
}

console.log('\n[两个页面不能各写一份读取逻辑]')

test('主页和下一节页都 import 了 common/store.js', () => {
  for (const page of ['home', 'next']) {
    const p = path.join(__dirname, '..', 'band', 'band-schedule',
      'src', 'pages', page, 'index.ux')
    const src = fs.readFileSync(p, 'utf8')
    assert.ok(src.includes("common/store.js"),
      page + ' 没有引用 common/store.js（可能又自己写了一份 storage 读取）')
    assert.ok(!/data\s*&&\s*data\.data/.test(src),
      page + ' 里还有 `data && data.data` 这种错误读法')
    assert.ok(!/from '@system\.storage'/.test(src),
      page + ' 直接 import 了 @system.storage，应该统一走 common/store.js')
  }
})

console.log('\n' + '-'.repeat(46))
if (failures.length) {
  console.log(`失败 ${failures.length} 项，通过 ${passed} 项`)
  process.exit(1)
}
console.log(`全部通过：${passed} 项`)
