/// 手环蓝牙地址的校验与归一化测试。
///
/// 这个逻辑要紧：原生那边（`ParseAddress`）会默默吃掉 `:` `-` 空格，
/// 只数 12 位十六进制 —— 所以格式写错**不会报错，只会连不上**。
/// 得在这里挡住，并且把用户填的原样显示在错误信息里。
library;

import 'package:band_schedule_pc/src/band/band_address.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('地址是否合法', () {
    test('标准写法', () {
      expect(looksLikeBandAddress('02:00:00:00:00:01'), isTrue);
      expect(looksLikeBandAddress('AA:BB:CC:DD:EE:FF'), isTrue);
    });

    test('分隔符用短横线、空格、或者完全不写都认', () {
      expect(looksLikeBandAddress('02-00-00-00-00-01'), isTrue);
      expect(looksLikeBandAddress('02 00 00 00 00 01'), isTrue);
      expect(looksLikeBandAddress('020000000001'), isTrue);
      expect(looksLikeBandAddress('  02:00:00:00:00:01  '), isTrue);
    });

    test('位数不对、有非十六进制字符、空串都算不合法', () {
      expect(looksLikeBandAddress('02:00:00:00:00'), isFalse); // 少了
      expect(looksLikeBandAddress('02:00:00:00:00:01:ff'), isFalse); // 多了
      expect(looksLikeBandAddress('02:00:00:00:00:0g'), isFalse); // g 不是
      expect(looksLikeBandAddress(''), isFalse);
      expect(looksLikeBandAddress('小米手环'), isFalse);
      // 别把 UUID（36 位）当地址收下
      expect(looksLikeBandAddress('00000022-0000-3512-2118-0009af100700'),
          isFalse);
    });
  });

  group('归一化', () {
    test('统一成小写冒号分隔', () {
      expect(normalizeBandAddress('02-00-00-00-00-01'), '02:00:00:00:00:01');
      expect(normalizeBandAddress('020000000001'), '02:00:00:00:00:01');
      expect(normalizeBandAddress(' 02:00:00:00:00:01 '), '02:00:00:00:00:01');
    });

    test('已经是标准写法就原样返回（幂等）', () {
      const canonical = '02:00:00:00:00:01';
      expect(normalizeBandAddress(canonical), canonical);
      expect(normalizeBandAddress(normalizeBandAddress(canonical)), canonical);
    });

    test('不合法时原样返回，方便错误提示里显示用户填的内容', () {
      expect(normalizeBandAddress('abc'), 'abc');
      expect(normalizeBandAddress('小米手环'), '小米手环');
    });
  });
}
