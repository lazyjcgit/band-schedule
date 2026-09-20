/**
 * 下发端(电脑端 / 手机端) <-> 手环端(RPK) 的互联协议。
 *
 * 手环端 interconnect 的 onmessage 收到的是下发端 sendMessage 的原始字符串，
 * 这里统一封装成 JSON 信封：
 *   { "t": "<type>", "d": <payload> }
 *
 * 方向：下发端 -> 手环
 *   hello     下发端握手，告知自己已就绪
 *   schedule  整份课表（课表较小时直接一帧发完）
 *   part      课表分片，d = { seq, total, data }
 *   config    下发时间表/开学日期等配置
 *
 * 方向：手环 -> 下发端
 *   ready     手环端就绪，请求同步
 *   request   用户在手环上主动点了「同步」
 *   ack       收到数据后的确认，d = { ok, courses, parts }
 *
 * 为什么要分片：发给手环的消息要经过系统服务中转，
 * 官方示例里的单帧缓冲是 1KB，一整份课表（几十门课）远超这个量级，
 * 一次发完可能被截断或直接失败。所以下发端按 300 个字符切帧
 * （中文 UTF-8 一字最多 3 字节，单帧约 900 字节，稳在 1KB 以内），
 * 手环端在 [createAssembler] 里拼回来。
 */

export const MSG = {
  HELLO: 'hello',
  SCHEDULE: 'schedule',
  PART: 'part',
  CONFIG: 'config',
  READY: 'ready',
  REQUEST: 'request',
  ACK: 'ack',
}

/** 分片超过这个时间还没收齐就丢弃，避免和下一轮同步混在一起。 */
const ASSEMBLE_TIMEOUT_MS = 60 * 1000

export function encode(type, payload) {
  return JSON.stringify({ t: type, d: payload === undefined ? null : payload })
}

/** 把字节按 UTF-8 解成字符串。
 *
 * 手环这边的 onmessage 给到的 `data` 可能是字符串、也可能是字节数组
 * （Uint8Array / ArrayBuffer / 普通数字数组）。下发端是按 UTF-8 编码发的，
 * 所以字节必须按 UTF-8 解 —— 一个字节当成一个字符去拼是错的：中文会变成
 * 乱码，JSON.parse 跟着失败，消息就被静默丢掉了。
 */
export function bytesToText(bytes) {
  if (bytes === null || bytes === undefined) return ''
  const list =
    bytes instanceof ArrayBuffer
      ? Array.from(new Uint8Array(bytes))
      : Array.isArray(bytes) || (bytes && typeof bytes.length === 'number')
        ? Array.prototype.slice.call(bytes)
        : null
  if (!list) return String(bytes)

  let out = ''
  let i = 0
  while (i < list.length) {
    const b = list[i] & 0xff
    let code = 0
    let extra = 0
    if (b < 0x80) {
      code = b
      extra = 0
    } else if ((b & 0xe0) === 0xc0) {
      code = b & 0x1f
      extra = 1
    } else if ((b & 0xf0) === 0xe0) {
      code = b & 0x0f
      extra = 2
    } else if ((b & 0xf8) === 0xf0) {
      code = b & 0x07
      extra = 3
    } else {
      // 非法起始字节：跳过，别让整条消息烂掉
      i += 1
      continue
    }
    if (i + extra >= list.length) break
    for (let k = 1; k <= extra; k += 1) {
      code = (code << 6) | ((list[i + k] & 0xff) & 0x3f)
    }
    i += extra + 1
    if (code > 0xffff) {
      // 需要一对代理
      const v = code - 0x10000
      out += String.fromCharCode(0xd800 + (v >> 10), 0xdc00 + (v & 0x3ff))
    } else {
      out += String.fromCharCode(code)
    }
  }
  return out
}

export function decode(raw) {
  if (raw === null || raw === undefined) return null

  // 1) 已经是结构化对象（固件直接给 {t, d}）—— 直接用
  if (typeof raw === 'object' && typeof raw.t === 'string') return raw

  // 2) 剥掉 { data: ... } / { payload: ... } 这层包装；没有包装就用 raw 本身
  let text = raw
  if (typeof text === 'object') {
    const inner = text.data !== undefined ? text.data : text.payload
    text = inner === undefined || inner === null ? raw : inner
    // 里面的东西本身还是结构化对象
    if (typeof text === 'object' && typeof text.t === 'string') return text
  }

  // 3) 字节（Uint8Array / ArrayBuffer / 数字数组）→ 按 UTF-8 解成字符串
  if (typeof text !== 'string') {
    text = bytesToText(text)
  }

  // 4) 字符串 → JSON
  //
  // ⚠️ 顺序很重要：有的固件把 UTF-8 字节按"每字节一字符"塞进字符串
  // （Latin-1 那种），中文会变成一串乱码字符。这种串 **JSON.parse 是能成功的**
  // （键还是 ASCII，只是值全是乱码），所以不能等解析失败才补救 ——
  // 必须先识别、先修复，否则拿到的是"能解析但内容是乱码"的结果。
  const bytes = bytePerCharBytes(text)
  if (bytes) {
    const repaired = tryParse(bytesToText(bytes))
    if (repaired) {
      console.log('[protocol] decode: payload was byte-per-char, fixed as UTF-8')
      return repaired
    }
  }

  const parsed = tryParse(text)
  if (parsed) return parsed
  return null
}

/**
 * 如果这个字符串是"每字节一字符"的畸形串，返回对应的字节数组；否则返回 null。
 *
 * 判据：所有字符码都 ≤ 0xFF（真文本里的中文会 > 0xFF），且**至少有一个**
 * 高位字符（纯 ASCII 的串不需要修复，直接解析就好）。
 */
function bytePerCharBytes(text) {
  let hasHighByte = false
  const bytes = []
  for (let i = 0; i < text.length; i += 1) {
    const c = text.charCodeAt(i)
    if (c > 0xff) return null
    if (c >= 0x80) hasHighByte = true
    bytes.push(c)
  }
  return hasHighByte ? bytes : null
}

/** 解析失败返回 null（不抛）。 */
function tryParse(text) {
  try {
    const parsed = JSON.parse(text)
    return parsed && parsed.t ? parsed : null
  } catch (e) {
    return null
  }
}

/**
 * 分片重组器。下发端可能把课表切成多帧发送，这里按 seq 收齐后再交给业务。
 *
 * accept(msg) 的返回值：
 *   { status: 'ignore' }                    不是课表相关的消息
 *   { status: 'progress', got, total }      还在收，已收 got 片
 *   { status: 'done', value }               收齐，value 是课表对象
 *   { status: 'error', reason }             出错，需要重新同步
 */
export function createAssembler() {
  let total = 0
  let chunks = []
  let got = 0
  let startedAt = 0

  function reset() {
    total = 0
    chunks = []
    got = 0
    startedAt = 0
  }

  return {
    reset,

    accept(msg) {
      if (!msg) return { status: 'ignore' }

      // 整包直发：小课表走这条，收到即可用
      if (msg.t === MSG.SCHEDULE) {
        reset()
        return { status: 'done', value: msg.d }
      }

      if (msg.t !== MSG.PART) return { status: 'ignore' }

      const d = msg.d || {}
      const seq = Number(d.seq)
      const count = Number(d.total)
      if (!isFinite(seq) || !isFinite(count) || count <= 0 || seq < 0 || seq >= count) {
        return { status: 'error', reason: 'bad part header' }
      }
      if (typeof d.data !== 'string') {
        return { status: 'error', reason: 'bad part body' }
      }

      const now = Date.now()
      const stale = startedAt > 0 && now - startedAt > ASSEMBLE_TIMEOUT_MS
      // 新的一轮同步（片数变了或超时了）就丢弃上一轮的残留
      if (total !== count || stale) {
        reset()
        total = count
        startedAt = now
      }
      if (startedAt === 0) startedAt = now

      if (chunks[seq] === undefined) {
        chunks[seq] = d.data
        got++
      }

      if (got < total) return { status: 'progress', got: got, total: total }

      let text = ''
      for (let i = 0; i < total; i++) {
        if (chunks[i] === undefined) return { status: 'error', reason: 'missing part ' + i }
        text += chunks[i]
      }
      reset()

      try {
        return { status: 'done', value: JSON.parse(text) }
      } catch (e) {
        return { status: 'error', reason: 'json: ' + e.message }
      }
    },
  }
}
