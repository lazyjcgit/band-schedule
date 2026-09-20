/// 与手环端快应用之间的互联协议。
///
/// ⚠️ 必须与手环端 `band/band-schedule/src/common/protocol.js` 完全一致。
/// 两端对不上的表现是"发出去没反应"或"手环显示数据异常"。
///
/// 信封：`{"t": "<type>", "d": <payload>}`
///
/// 方向：
///   电脑端 → 手环   hello      握手
///                    schedule   课表较小，一帧发完
///                    part       课表分片 {seq, total, data}
///   手环 → 电脑端   ready      手环就绪，请求同步
///                    request    用户在手环上点了同步
///                    ack        收到数据后的确认 {ok, courses} 或 {ok:false, error}
///
/// ### 为什么要分帧
/// 发给手环的消息经系统服务中转，官方示例里的单帧缓冲是 1KB，
/// 而一份真实课表序列化后有好几 KB。所以按 [chunkChars] 个字符切片
/// （中文一字最多 3 字节，300 字符 ≈ 900 字节，稳在 1KB 以内），
/// 手环端在 `createAssembler` 里按 seq 拼回来。
library;

import 'dart:convert';
import 'dart:typed_data';

/// 消息类型。改这里必须同步改手环端的 protocol.js。
class MsgType {
  MsgType._();

  static const String hello = 'hello';
  static const String schedule = 'schedule';
  static const String part = 'part';
  static const String config = 'config';
  static const String ready = 'ready';
  static const String request = 'request';
  static const String ack = 'ack';
}

/// 单帧最大字符数。与手环端 `createAssembler` 保持一致。
const int chunkChars = 300;

/// 打包一个信封。
String encodeMessage(String type, [Object? payload]) =>
    jsonEncode({'t': type, 'd': payload});

/// 拆开一个信封。解析失败返回 null。
class DecodedMessage {
  const DecodedMessage(this.type, this.data);

  final String type;
  final Object? data;

  @override
  String toString() => 'DecodedMessage($type)';
}

DecodedMessage? decodeMessage(String raw) {
  try {
    final parsed = jsonDecode(raw);
    if (parsed is! Map) return null;
    final type = parsed['t'];
    if (type is! String || type.isEmpty) return null;
    return DecodedMessage(type, parsed['d']);
  } catch (_) {
    return null;
  }
}

/// 把要发出去的文本转成线上字节：**UTF-8**。
///
/// ⚠️ 这里踩过坑：原来写的是 `Uint8List.fromList(text.codeUnits)` ——
/// `codeUnits` 给的是 UTF-16 码元，塞进 Uint8List 时每个码元被截成一个字节。
/// 纯 ASCII 看不出问题，但课表里有中文（课程名、教室），'高'(U+9AD8) 会变成
/// 单字节 0xD8，而正确的 UTF-8 是 `e9 ab 98`。手环端拿到的是**非法 UTF-8**，
/// 解出来是乱码 → `JSON.parse` 失败 → 静默丢弃，表现就是"发过去了、手环没反应"。
///
/// 对称地，接收方向也必须按 UTF-8 解（见 [decodePayloadBytes]）。
Uint8List encodePayloadBytes(String text) =>
    Uint8List.fromList(utf8.encode(text));

/// 把手环发来的字节按 UTF-8 解回文本。
///
/// 别用 `String.fromCharCodes(bytes)` —— 那是把每个字节当 UTF-16 码元，
/// 中文会变成乱码，和上面的坑是同一个。
String decodePayloadBytes(List<int> bytes) => utf8.decode(
      bytes,
      allowMalformed: true,
    );

/// 把整份课表 JSON 切成待发送的帧。
///
/// 课表足够小就只发一帧 `schedule`，否则发多帧 `part`（seq 从 0 起）。
/// 切片时不会把一个字符（代理对）从中间劈开 —— 手环端按字符拼接，
/// 劈开会产生非法 UTF-8。
List<String> buildFrames(String scheduleJson, {int chunk = chunkChars}) {
  if (scheduleJson.length <= chunk) {
    return [encodeMessage(MsgType.schedule, jsonDecode(scheduleJson))];
  }

  final pieces = <String>[];
  var i = 0;
  while (i < scheduleJson.length) {
    var end = i + chunk;
    if (end > scheduleJson.length) end = scheduleJson.length;
    // 不要把代理对劈成两半
    if (end < scheduleJson.length) {
      final unit = scheduleJson.codeUnitAt(end - 1);
      if (unit >= 0xD800 && unit <= 0xDBFF) end--;
    }
    pieces.add(scheduleJson.substring(i, end));
    i = end;
  }

  return [
    for (var seq = 0; seq < pieces.length; seq++)
      encodeMessage(MsgType.part, {
        'seq': seq,
        'total': pieces.length,
        'data': pieces[seq],
      }),
  ];
}

/// 手环回的 ack 内容。
class ScheduleAck {
  const ScheduleAck({required this.ok, this.courses = 0, this.error = ''});

  final bool ok;
  final int courses;
  final String error;

  static ScheduleAck? parse(Object? data) {
    if (data is! Map) return null;
    return ScheduleAck(
      ok: data['ok'] == true,
      courses: (data['courses'] as num?)?.toInt() ?? 0,
      error: (data['error'] as String?) ?? '',
    );
  }

  @override
  String toString() =>
      ok ? 'ack ok（手环显示 $courses 门课）' : 'ack 失败（$error）';
}
