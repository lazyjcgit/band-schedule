/// 消息载荷的编解码测试（PC ↔ 手环之间的线上字节）。
///
/// 这里钉的是一个真实故障：原来发消息用的是
/// `Uint8List.fromList(text.codeUnits)` —— `codeUnits` 给的是 UTF-16 码元，
/// 塞进 Uint8List 时每个码元被截成一个字节。纯 ASCII 看不出问题，但课表里有中文，
/// '高'(U+9AD8) 会变成单字节 0xD8（正确的 UTF-8 是 e9 ab 98）。手环端拿到非法
/// UTF-8，解出来是乱码，JSON.parse 失败，于是消息被静默丢弃 —— 现象就是
/// 「课表发出去了、手环一点反应都没有」。
library;

import 'dart:convert';

import 'package:band_schedule_pc/src/band/protocol.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('发出的字节必须是 UTF-8', () {
    test('中文课程名编出来就是标准 UTF-8', () {
      const text = '高等数学';
      expect(encodePayloadBytes(text), utf8.encode(text));
      // '高' 的 UTF-8 是三字节 e9 ab 98，不是被截断的单字节 d8
      expect(encodePayloadBytes('高'), [0xe9, 0xab, 0x98]);
    });

    test('ASCII 不受影响（所以这个 bug 只在有中文时才暴露）', () {
      expect(encodePayloadBytes('A101'), utf8.encode('A101'));
    });

    test('环回：发出去再解回来是同一段文字', () {
      const text = '{"t":"schedule","d":{"name":"高等数学","room":"B-321"}}';
      final bytes = encodePayloadBytes(text);
      expect(decodePayloadBytes(bytes), text);
    });

    test('★ 旧写法会编出非法 UTF-8 —— 这就是手环没反应的原因', () {
      const text = '高';
      final wrong = encodeLikeTheOldBug(text);
      final right = encodePayloadBytes(text);

      // 旧写法只有一个字节，而且不是合法 UTF-8 序列
      expect(wrong.length, 1);
      expect(wrong.first, 0xd8);
      expect(right.length, 3);

      // 拿旧字节按 UTF-8 解会得到替换字符（乱码），JSON 自然解析不了
      final salvaged = decodePayloadBytes(wrong);
      expect(salvaged, isNot(text));
      expect(salvaged.contains('\uFFFD'), isTrue,
          reason: '非法 UTF-8 解出来应该是替换字符');
    });

    test('整份课表 JSON 走一遍编解码不会丢中文', () {
      final schedule = {
        't': 'schedule',
        'd': {
          'termStartDate': '2026-09-07',
          'courses': [
            {'name': '习近平新时代中国特色社会主义思想概论', 'room': 'B-321'},
            {'name': '大学英语', 'room': '信远楼-204'},
          ],
        },
      };
      final text = jsonEncode(schedule);
      final back = decodeMessage(decodePayloadBytes(encodePayloadBytes(text)));
      expect(back, isNotNull);
      expect(back!.type, 'schedule');
      final courses = (back.data as Map)['courses'] as List;
      expect(courses.first['name'], '习近平新时代中国特色社会主义思想概论');
      expect(courses.last['room'], '信远楼-204');
    });
  });
}

/// 复现旧写法（`Uint8List.fromList(text.codeUnits)`）编出来的字节，
/// 只用在测试里说明问题，正式代码请用 [encodePayloadBytes]。
List<int> encodeLikeTheOldBug(String text) =>
    text.codeUnits.map((unit) => unit & 0xff).toList();
