/// 获取手环的绑定密钥（authkey）。
///
/// 小米手环的蓝牙通道需要 authkey 才能认证 —— 这是小米的硬性设计，
/// 没有它连不上手环。获取途径（本工具支持前两种）：
///
///   1. **登录小米账号**：账号里存着已绑定设备的 authkey，登录后可以直接读出来。
///      首次登录可能需要二次验证（短信/邮箱），会弹一个小窗口让你完成。
///   2. 手动填写：从别处（米坛的 AuthKey 工具、小米运动健康日志）拿到后粘进来。
///
/// 登录与设备列表的实现移植自 OronBox 的 `MiAccountService`。
library;

import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/features/accounts/models/mi_account_models.dart';
import 'package:band_schedule_pc/src/features/accounts/services/mi_account_service.dart';
import 'package:band_schedule_pc/src/features/accounts/services/mi_account_two_factor_resolver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthKeyException implements Exception {
  const AuthKeyException(this.message);
  final String message;

  @override
  String toString() => message;
}

/// 登录过程中需要用户完成二次验证时抛这个。
class TwoFactorNeeded {
  const TwoFactorNeeded(this.challenge);
  final MiAccountTwoFactorRequired challenge;
}

class AuthKeyProvider {
  AuthKeyProvider({MiAccountService? service})
      : _service = service ?? MiAccountService();

  static final _log = getLogger('AuthKeyProvider');
  final MiAccountService _service;

  /// 登录小米账号。成功返回 token；需要二次验证时抛 [TwoFactorNeeded]。
  ///
  /// [onTwoFactor] 是二次验证的回调：拿到验证地址后由它弹出验证窗口，
  /// 返回用户在窗口里完成验证后的 cookie。
  Future<MiAccountToken> loginWithTwoFactor({
    required String username,
    required String password,
    required Future<String?> Function(String url) onTwoFactor,
  }) async {
    if (username.trim().isEmpty || password.isEmpty) {
      throw const AuthKeyException('请填写小米账号和密码');
    }

    MiAccountToken? token;
    try {
      token = await _service.login(username: username.trim(), password: password);
    } on MiAccountTwoFactorRequired catch (challenge) {
      _log.info('需要二次验证');
      final cookieHeader = await onTwoFactor(challenge.url);
      if (cookieHeader == null || cookieHeader.trim().isEmpty) {
        throw const AuthKeyException('没有完成二次验证，登录中止');
      }
      token = await _finishWithTwoFactorCookies(
        username: username.trim(),
        password: password,
        challenge: challenge,
        cookieHeader: cookieHeader,
      );
    } catch (e) {
      throw AuthKeyException('登录失败：$e');
    }

    await _service.persistToken(token);
    _log.info('xiaomi login ok');
    return token;
  }

  /// 二次验证完成后的收尾。
  ///
  /// 两条路都试一下，因为小米这边的行为不完全稳定：
  ///  1. **原样重发当初那次 `serviceLoginAuth2`**（`service` 里做主）——
  ///     用户验证掉的是那次登录尝试的 context，重发才能接上。
  ///  2. 手里还有账密时，用这份账号会话重跑一次账密登录。
  Future<MiAccountToken> _finishWithTwoFactorCookies({
    required String username,
    required String password,
    required MiAccountTwoFactorRequired challenge,
    required String cookieHeader,
  }) async {
    // 只记录 cookie 的**名字**，不记值（值等同于凭据）
    final names = cookieHeader
        .split(';')
        .map((p) => p.split('=').first.trim())
        .where((n) => n.isNotEmpty)
        .join(',');
    _log.info('二次验证窗口返回的 cookie：$names');

    String? firstFailure;
    try {
      final token = await _service.completeTwoFactorLogin(
        challenge: challenge,
        cookieHeader: cookieHeader,
        username: username,
        password: password,
      );
      _log.info('二次验证之后登录走完了');
      return token;
    } catch (e) {
      firstFailure = '$e';
      _log.warning('二次验证之后接着登录失败（$e）');
    }

    if (username.isEmpty || password.isEmpty) {
      throw AuthKeyException(
        '拿到了二次验证的会话，但它换不到登录票据：$firstFailure\n'
        '再点一次「登录并获取」。',
      );
    }

    _log.info('改用带回话的账密登录重试');
    try {
      final token = await _service.login(
        username: username,
        password: password,
        extraCookieHeader: cookieHeader,
      );
      _log.info('带回话重跑账密登录成功');
      return token;
    } catch (e) {
      throw AuthKeyException(
        '二次验证完成了，但登录仍然没通过：$e\n'
        '（上面那次失败：$firstFailure）\n'
        '可以改用「手动填写 authkey」（在小米运动健康的日志里能找到），'
        '或者重试一次登录。',
      );
    }
  }
  /// 旧接口：不带二次验证回调的登录（内部用，或不需要验证时）。
  Future<MiAccountToken> login(String username, String password) async {
    if (username.trim().isEmpty || password.isEmpty) {
      throw const AuthKeyException('请填写小米账号和密码');
    }
    try {
      final token =
          await _service.login(username: username.trim(), password: password);
      _log.info('xiaomi login ok');
      await _service.persistToken(token);
      return token;
    } on MiAccountTwoFactorRequired catch (challenge) {
      _log.info('xiaomi login requires 2FA');
      throw TwoFactorNeeded(challenge);
    } catch (e) {
      throw AuthKeyException('登录失败：$e');
    }
  }

  /// 弹出二次验证窗口，返回验证完成后的 cookie。
  ///
  /// 单独抽出来，方便界面在任意时机调用。窗口没能给出会话时抛
  /// [AuthKeyException]，并把原生那边的原话带出来 —— 里面写了它看到过哪些
  /// cookie，出问题时这句话就是排查依据，不能吞掉。
  Future<String?> resolveTwoFactor(BuildContext context, String url) async {
    String cookieHeader;
    try {
      cookieHeader = await createMiAccountTwoFactorResolver()
          .resolve(context, Uri.parse(url));
    } on PlatformException catch (e) {
      throw AuthKeyException(e.message ?? '二次验证窗口出错（${e.code}）');
    } on AuthKeyException {
      rethrow;
    } catch (e) {
      throw AuthKeyException('二次验证窗口出错：$e');
    }
    if (cookieHeader.trim().isEmpty) return null;
    return cookieHeader;
  }

  /// 已完成二次验证后继续登录（保留给老调用方）。
  ///
  /// [context] 用于弹出验证窗口（Windows 上是内嵌的 WebView）。
  Future<MiAccountToken> completeTwoFactor(
    BuildContext context,
    TwoFactorNeeded pending,
  ) async {
    final cookieHeader = await resolveTwoFactor(context, pending.challenge.url);
    if (cookieHeader == null) {
      throw const AuthKeyException('没有完成二次验证，登录中止');
    }
    final token = await _finishWithTwoFactorCookies(
      username: '',
      password: '',
      challenge: pending.challenge,
      cookieHeader: cookieHeader,
    );
    await _service.persistToken(token);
    return token;
  }

  /// 读取账号下已绑定的设备（含 authkey）。
  Future<List<MiCloudDevice>> boundDevices(MiAccountToken token) async {
    try {
      final devices = await _service.fetchBoundDevices(token: token);
      return devices.where((d) => d.hasAuthKey).toList();
    } on MiAccountSessionExpired {
      throw const AuthKeyException('登录已过期，请重新登录小米账号');
    } catch (e) {
      throw AuthKeyException('读取设备列表失败：$e');
    }
  }

  /// 本地是否还留着有效的登录状态。
  Future<MiAccountToken?> storedToken() => _service.loadStoredToken();

  Future<void> logout() => _service.clearStoredToken();

  /// authkey 的格式校验：小米的是 32 位十六进制。
  static bool looksLikeAuthKey(String value) =>
      RegExp(r'^[0-9a-fA-F]{32}$').hasMatch(value.trim());

  /// 归一化用户粘进来的 authkey（去掉空格、转小写）。
  static String normalizeAuthKey(String value) =>
      value.replaceAll(RegExp(r'\s'), '').toLowerCase();
}
