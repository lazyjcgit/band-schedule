/// 手环蓝牙地址（MAC）的校验与归一化。
///
/// 单独抽出来是因为它是**用户手输的内容**，而原生那边（`ParseAddress`）对
/// 分隔符很宽容（`:`、`-`、空格都吃掉，只数 12 位十六进制），所以格式问题
/// 不会在原生报错，只会变成"连不上"—— 必须在这里挡住并且说清楚。
library;

/// 去掉常见分隔符后的纯十六进制串。
String _digitsOf(String value) =>
    value.replaceAll(RegExp(r'[:\-\s]'), '').toLowerCase();

/// 看起来像不像一个蓝牙地址：去掉 `:` / `-` / 空格后正好 12 位十六进制。
bool looksLikeBandAddress(String value) =>
    RegExp(r'^[0-9a-f]{12}$').hasMatch(_digitsOf(value));

/// 归一化成 `aa:bb:cc:dd:ee:ff`。
///
/// 不合法就原样返回（调用方应该先用 [looksLikeBandAddress] 判断），
/// 这样错误信息里能显示用户原本填的内容。
String normalizeBandAddress(String value) {
  final digits = _digitsOf(value);
  if (digits.length != 12) return value.trim();
  return [
    for (var i = 0; i < 12; i += 2) digits.substring(i, i + 2),
  ].join(':');
}
