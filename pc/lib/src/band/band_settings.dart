/// 记住上次用的手环和 authkey，省得每次都要重新登录。
///
/// 存在 `%APPDATA%\band-schedule\prefs.json`（见 core/services/shared_prefs_service.dart）。
/// authkey 是手环的蓝牙最高权限，等同密码 —— 所以这里明确写清楚它存在哪，
/// 而不是偷偷存起来。
library;

import 'package:band_schedule_pc/src/core/services/shared_prefs_service.dart';

class BandSettings {
  BandSettings._();

  static const _kAuthKey = 'band.authkey';
  static const _kMiUser = 'band.mi_user';
  static const _kTermStart = 'schedule.termStart';
  static const _kLastSchedule = 'schedule.last';
  static const _kRePair = 'band.repair_before_connect';

  static Future<void> init() => SharedPrefsService.instance.init();

  // 说明：这里**故意不保存手环的地址和名字**。
  //
  // 原来两个都存，而且是"先存再连"——失败的尝试也会固化下来。实际后果很具体：
  // 一次自动挑错设备的尝试把一对**蓝牙耳机**的地址和名字写了进去，之后每次启动
  // 都在连那对耳机，界面上还把它当成"上次连接的手环"。
  //
  // 现在地址只活在界面输入框里：靠「登录小米账号」自动带出（会连地址一起返回），
  // 或者手填。设备名字则只用来查型号（决定走哪套协议栈），来源限定为
  // 「本次扫描到的」或「小米账号返回的」——都是当场拿到、可核实的值。
  //
  // 旧版存过的 `band.mac` / `band.name` 会被忽略，不用手动清理。

  /// 手环的绑定密钥。**这是敏感数据**，只存在本机这个文件里。
  static String get authKey =>
      SharedPrefsService.instance.getString(_kAuthKey) ?? '';
  static Future<void> setAuthKey(String v) =>
      SharedPrefsService.instance.setString(_kAuthKey, v);

  /// 上次登录的小米账号（**只存账号，不存密码**）。
  static String get miAccount =>
      SharedPrefsService.instance.getString(_kMiUser) ?? '';
  static Future<void> setMiAccount(String v) =>
      SharedPrefsService.instance.setString(_kMiUser, v);

  /// 开学日期（第 1 周周一），手动导入的课表要用它算周次。
  static String get termStart =>
      SharedPrefsService.instance.getString(_kTermStart) ?? '';
  static Future<void> setTermStart(String v) =>
      SharedPrefsService.instance.setString(_kTermStart, v);

  /// 上次解析成功的课表 JSON，启动时可以直接恢复。
  static String get lastSchedule =>
      SharedPrefsService.instance.getString(_kLastSchedule) ?? '';
  static Future<void> setLastSchedule(String v) =>
      SharedPrefsService.instance.setString(_kLastSchedule, v);

  /// 连接前是否先删掉 Windows 里的蓝牙配对记录（默认开）。
  ///
  /// 对应 OronBox 的「连接时重新配对」，那儿的默认值也是开。手环的 SPP
  /// 通道不需要蓝牙层配对，而系统里留着配对记录会让 Windows 去握手，
  /// 手环就会把连接交给手机批准（屏幕上出现「请在手机上确认连接」），
  /// PC 这边就永远等不到回应。
  static bool get rePairBeforeConnect =>
      SharedPrefsService.instance.getBool(_kRePair) ?? true;
  static Future<void> setRePairBeforeConnect(bool v) =>
      SharedPrefsService.instance.setBool(_kRePair, v);

  static Future<void> clearCredentials() async {
    await SharedPrefsService.instance.remove(_kAuthKey);
    await SharedPrefsService.instance.remove(_kMiUser);
  }
}
