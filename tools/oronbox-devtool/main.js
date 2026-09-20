/**
 * 手环课表 · OronBox 调试台
 *
 * 为什么需要它：手环端「收到了数据但不显示」这类问题，正常链路上要经过
 * 手机 App → 小米运动健康 → 手环，任何一环出问题都会混淆判断。
 * OronBox 能按包名直接向手环快应用发消息，于是可以把手机端整个摘掉，
 * 单独验证「手环收到课表之后能不能正确渲染」。
 *
 * 用法：装好 rpk 后打开本插件 → 点「生成演示数据」→ 点「发送到手环」
 *      → 手环上打开「手环课表」看结果；手环回的 ack 会显示在下方日志里。
 *
 * 分帧逻辑与手机端 ScheduleTransfer.kt 完全一致（≤300 字符切帧），
 * 所以这里跑通就等于同一条数据通路跑通。
 */

const TARGET = 'io.github.lazyjcgit.bandschedule'
const CHUNK = 300

/**
 * 真实课表（本学期）。
 *
 * 打包时由 tools/build-oronbox-plugin.py 从 dist/schedule-real.json 注入，
 * 所以这里保持 null、不要在仓库里塞一大坨 JSON。
 * 用 tools/ics_to_schedule.py 可以把学校导出的 .ics 转成这个结构。
 */
const REAL_SCHEDULE = null

/** 与手环端 protocol.js 一致的信封。 */
function envelope(type, payload) {
  return JSON.stringify({ t: type, d: payload === undefined ? null : payload })
}

/**
 * 按 300 字符切帧；小课表直接一帧 schedule 发完。
 * 注意不要把一个字符（代理对）从中间劈开。
 */
function buildFrames(json) {
  if (json.length <= CHUNK) {
    return [envelope('schedule', JSON.parse(json))]
  }
  const pieces = []
  let i = 0
  while (i < json.length) {
    let end = Math.min(i + CHUNK, json.length)
    if (end < json.length) {
      const code = json.charCodeAt(end - 1)
      if (code >= 0xd800 && code <= 0xdbff) end--
    }
    pieces.push(json.substring(i, end))
    i = end
  }
  return pieces.map(function (text, seq) {
    return envelope('part', { seq: seq, total: pieces.length, data: text })
  })
}

/** 生成一份演示课表，开学日取本周周一，1-16 周都有课。 */
function demoSchedule() {
  const names = [
    ['高等数学', 'A101'],
    ['大学物理', 'B203'],
    ['线性代数', 'C305'],
    ['数字电路', '实验楼D401'],
    ['程序设计基础', '计算机楼A502'],
  ]
  const teachers = ['张老师', '李老师', '王老师', '赵老师', '刘老师']
  const slots = [[1, 2], [3, 4], [5, 6]]

  const today = new Date()
  const dow = today.getDay() === 0 ? 7 : today.getDay()
  const monday = new Date(today.getTime() - (dow - 1) * 86400000)
  const pad = function (n) { return n < 10 ? '0' + n : '' + n }
  const termStart =
    monday.getFullYear() + '-' + pad(monday.getMonth() + 1) + '-' + pad(monday.getDate())

  const weeks = []
  for (let w = 1; w <= 16; w++) weeks.push(w)

  const courses = []
  for (let day = 1; day <= 5; day++) {
    for (let i = 0; i < slots.length; i++) {
      const idx = (day + i) % names.length
      courses.push({
        id: 'demo|' + day + '|' + slots[i][0],
        name: names[idx][0],
        teacher: teachers[idx],
        room: names[idx][1],
        weekday: day,
        start: slots[i][0],
        stop: slots[i][1],
        weeks: weeks.slice(),
        color: '#4A90D9',
      })
    }
  }

  return {
    version: 1,
    semesterCode: '演示数据',
    termStartDate: termStart,
    updatedAt: Date.now(),
    sections: [
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
    ],
    courses: courses,
  }
}

function sleep(ms) {
  return new Promise(function (r) { setTimeout(r, ms) })
}

globalThis.activate = async function (plugin) {
  const { Column, Row, Text, Button, TextField, Divider } = OronBox.ui

  const hasReal = !!(REAL_SCHEDULE && REAL_SCHEDULE.courses && REAL_SCHEDULE.courses.length)
  let payload = hasReal
    ? JSON.stringify(REAL_SCHEDULE)
    : JSON.stringify(demoSchedule())
  let lines = [
    hasReal
      ? '就绪。真实课表 ' + REAL_SCHEDULE.courses.length + ' 条，开学 ' + REAL_SCHEDULE.termStartDate
      : '就绪。未注入真实课表，先用演示数据',
    '目标包名：' + TARGET,
  ]
  let busy = false

  function log(msg) {
    const t = new Date()
    const pad = function (n) { return n < 10 ? '0' + n : '' + n }
    lines.unshift(
      pad(t.getHours()) + ':' + pad(t.getMinutes()) + ':' + pad(t.getSeconds()) + '  ' + msg
    )
    if (lines.length > 40) lines.pop()
  }

  /** 今天该上什么课 —— 和手环端同一套算法，用来对照手环显示得对不对。 */
  function todayPreview() {
    let obj
    try {
      obj = JSON.parse(payload)
    } catch (e) {
      return 'JSON 解析失败：' + e.message
    }
    const courses = obj.courses || []
    const today = new Date()
    const dow = today.getDay() === 0 ? 7 : today.getDay()

    const m = (obj.termStartDate || '').match(/(\d{4})-(\d{1,2})-(\d{1,2})/)
    let week = 0
    if (m) {
      const start = new Date(parseInt(m[1]), parseInt(m[2]) - 1, parseInt(m[3]))
      const offset = (start.getDay() === 0 ? 7 : start.getDay()) - 1
      const firstMonday = new Date(start.getTime() - offset * 86400000)
      const today0 = new Date(today.getFullYear(), today.getMonth(), today.getDate())
      const diff = today0 - firstMonday
      if (diff >= 0) week = Math.floor(diff / 604800000) + 1
    }

    const list = courses.filter(function (c) {
      if (c.weekday !== dow) return false
      if (week > 0 && c.weeks && c.weeks.length && c.weeks.indexOf(week) === -1) return false
      return true
    }).sort(function (a, b) { return a.start - b.start })

    if (!week) {
      return '共' + courses.length + '条 · 周次未知（termStartDate 缺）→ 今天' + list.length + '门'
    }
    return '共' + courses.length + '条 · 第' + week + '周 周' + dow +
      ' → 今天应有 ' + list.length + ' 门：' +
      (list.length
        ? list.map(function (c) { return c.name + '(' + c.start + '-' + c.stop + ')' }).join('、')
        : '无课')
  }

  function render() {
    const tree = Column({ gap: 8, padding: 12 }, [
      Text({ value: '手环课表调试台', size: 16, weight: 'bold' }),
      Text({
        value: '绕过手机 App，直接给手环快应用发课表，用来单独验证手环渲染。',
      }),
      Divider({}),
      Text({ value: '对照基准（手机端同款算法算出来的）：', weight: 'bold' }),
      Text({ value: todayPreview() }),
      Divider({}),
      Row({ gap: 8 }, [
        Button('真实课表', {
          onClick: function () {
            if (!hasReal) {
              log('包里没注入真实课表，改用演示数据')
              payload = JSON.stringify(demoSchedule())
            } else {
              payload = JSON.stringify(REAL_SCHEDULE)
            }
            log('已载入真实课表（' + payload.length + ' 字符）')
            render()
          },
        }),
        Button('演示数据', {
          onClick: function () {
            payload = JSON.stringify(demoSchedule())
            log('已载入演示数据（' + payload.length + ' 字符）')
            render()
          },
        }),
      ]),
      Row({ gap: 8 }, [
        Button('看手环应用', {
          onClick: async function () {
            try {
              const apps = await OronBox.device.apps.list()
              const hit = (apps || []).filter(function (a) {
                return a.packageName === TARGET
              })
              log(
                hit.length
                  ? '手环已装：' + hit[0].packageName + ' v' + hit[0].versionCode
                  : '手环上没装 ' + TARGET + '（列表里共 ' + (apps || []).length + ' 个应用）'
              )
            } catch (e) {
              log('查询失败：' + (e && e.message ? e.message : e))
            }
            render()
          },
        }),
        Button('启动手环应用', {
          onClick: async function () {
            try {
              await OronBox.device.apps.launch(TARGET, {})
              log('已请求启动手环应用')
            } catch (e) {
              log('启动失败：' + (e && e.message ? e.message : e))
            }
            render()
          },
        }),
      ]),
      Text({ value: '课表 JSON（可粘贴修改）：' }),
      TextField({
        value: payload,
        multiline: true,
        onChange: function (v) {
          payload = v
        },
      }),
      Button(busy ? '发送中…' : '发送到手环', {
        primary: true,
        onClick: async function () {
          if (busy) return
          busy = true
          render()
          try {
            let json = JSON.stringify(JSON.parse(payload))
            const frames = buildFrames(json)
            log('开始发送：' + json.length + ' 字符，' + frames.length + ' 帧')
            for (let i = 0; i < frames.length; i++) {
              await OronBox.interconnect.send(TARGET, frames[i])
              if (frames.length > 1) await sleep(60)
            }
            log('已发出 ' + frames.length + ' 帧，等手环回 ack…')
          } catch (e) {
            log('发送失败：' + (e && e.message ? e.message : e))
          }
          busy = false
          render()
        },
      }),
      Divider({}),
      Text({ value: '日志（手环回的 ack / ready 会出现在这里）' }),
      Column({ gap: 2 }, lines.slice(0, 14).map(function (l) {
        return Text({ value: l })
      })),
    ])
    return OronBox.ui.render(tree)
  }

  // 手环发的消息：ready / request 表示它想要课表，ack 表示收到结果
  try {
    await OronBox.interconnect.onMessage(function (evt) {
      const pkg = evt && evt.packageName
      const data = evt && evt.data
      let summary = data
      try {
        const parsed = JSON.parse(data)
        if (parsed && parsed.t === 'ack') {
          summary = parsed.d && parsed.d.ok
            ? 'ack ok，手环显示 ' + parsed.d.courses + ' 门课 ✓'
            : 'ack 失败：' + (parsed.d && parsed.d.error)
        } else if (parsed && parsed.t) {
          summary = parsed.t
        }
      } catch (e) {
        /* 原样显示 */
      }
      log('← ' + pkg + '：' + summary)
      render()
    })
    log('已开始监听手环消息')
  } catch (e) {
    log('注册监听失败：' + (e && e.message ? e.message : e))
  }

  await render()
}
