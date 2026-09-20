/**
 * 课表在本地的存取。
 *
 * 这是 v2.0 新增的公共模块，主页和「下一节课」页**共用同一份实现**。
 * 之前两个页面各写了一遍 storage.get，结果同一个读取 bug 存在两份
 * （见下面 unwrapStored 的说明），所以统一到这里。
 */

import storage from '@system.storage'

/** 存储键。改这个会让旧数据读不出来，一般不要动。 */
export const STORAGE_KEY = 'schedule'

/**
 * 把 storage.get 回调里的值取出来。
 *
 * ★ 这里踩过一个坑：Vela 的 storage.get 的 success 回调**直接给值本身**，
 *   不是 {data: value}。依据是官方闹钟应用
 *   （velasim/app/com.xiaomi.watch.alarm/Home/index.js）的写法：
 *       storage.get({ key: 'eventList', success: function (data) {
 *         resolve(data ? JSON.parse(data) : []) } })
 *   —— 直接对 data 做 JSON.parse，说明 data 就是存进去的字符串。
 *
 *   而本项目原先写的是 `const raw = data && data.data`，永远取到 undefined，
 *   于是退出应用再进来数据全没了（一直在内存里，从没真正读回来）。
 *
 *   为了兼容可能包一层的实现，对象形式的 {data: '...'} 也接受。
 */
export function unwrapStored(data) {
  if (data === null || data === undefined) return ''
  if (typeof data === 'string') return data
  if (typeof data === 'object' && typeof data.data === 'string') return data.data
  return ''
}

/**
 * 读课表原文。读不到时回调 null（而不是空字符串）。
 * 注意 storage 是异步的，回调里再渲染。
 */
export function loadScheduleRaw(callback) {
  storage.get({
    key: STORAGE_KEY,
    success(data) {
      const raw = unwrapStored(data)
      if (!raw) {
        console.log('[store] 本地没有课表')
        callback(null)
        return
      }
      console.log('[store] 读到本地课表 ' + raw.length + ' 字符')
      callback(raw)
    },
    fail(data, code) {
      console.log('[store] storage.get fail, code = ' + code)
      callback(null)
    },
  })
}

/**
 * 写课表，并在写完后**读回来核对长度**。
 *
 * 手环上没有 logcat，写失败如果只是静默，表现就是"退出再进数据没了"，
 * 很难定位。所以这里自己验证一次，结果通过 onResult 报出来。
 */
export function saveSchedule(schedule, onResult) {
  let text
  try {
    text = JSON.stringify(schedule)
  } catch (e) {
    console.log('[store] 序列化失败：' + e.message)
    if (onResult) onResult(false, 0)
    return
  }

  storage.set({
    key: STORAGE_KEY,
    value: text,
    success() {
      storage.get({
        key: STORAGE_KEY,
        success(data) {
          const back = unwrapStored(data)
          const ok = !!back && back.length === text.length
          console.log('[store] 写入校验：' + (ok ? '通过' : '长度不符 ' +
            (back ? back.length : 0) + '/' + text.length))
          if (onResult) onResult(ok, text.length)
        },
        fail(data, code) {
          console.log('[store] 写回读失败，code = ' + code)
          if (onResult) onResult(false, text.length)
        },
      })
    },
    fail(data, code) {
      console.log('[store] storage.set fail, code = ' + code)
      if (onResult) onResult(false, text.length)
    },
  })
}
