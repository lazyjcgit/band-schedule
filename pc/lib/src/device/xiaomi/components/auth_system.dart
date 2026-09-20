import 'dart:async';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/device/core/event_bus.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/screenshot_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/utils/auth_utils.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_account.pb.dart'
    as pb_account;
import 'package:band_schedule_pc/src/protocols/xiaomi/crypto/miwear_crypto.dart';

class XiaomiAuthSystem extends XiaomiPbSystem {
  static final _log = getLogger('XiaomiAuthSystem');
  Completer<void>? _completer;
  String? _authKeyHex;
  Uint8List? _appRandom;
  bool _sawDeviceVerify = false;

  /// 认证请求发出后，手环可能要等人确认才会回话。
  ///
  /// 实测：手环回了会话初始化（版本握手），但收到 `authAppVerify` 之后
  /// **一个字节都不回** —— 屏幕上写着「请在手机上确认连接」。这个提示要人去
  /// 手机上点确认，所以 15 秒的一次性等待远远不够。
  ///
  /// 应对办法是按固定间隔**重发**认证请求：`appRandom` 在一次会话里是固定的，
  /// 所以重发同一份包是安全的，手环一旦被放行就会回 `authDeviceVerify`。
  /// 只要收到了挑战（_sawDeviceVerify）就立刻停止重发 —— 那时候重发反而会
  /// 打断已经开始的握手。
  static const _resendInterval = Duration(seconds: 6);
  static const _maxResends = 9; // 合计约 60 秒，够去手机上点一下

  Future<void> authenticate(String authKeyHex) async {
    _log.info('[${entity.id}] starting auth');
    entity.system<XiaomiScreenshotSystem>()?.resetSession();
    _authKeyHex = authKeyHex;
    _appRandom = generateRandomBytes(16);
    _sawDeviceVerify = false;
    _completer = Completer<void>();
    // 抓在本地：出错路径会把 _completer 置空，循环里就得用这个引用。
    final completer = _completer!;
    final packet = buildAuthStep1(_appRandom!);

    for (var attempt = 1; attempt <= _maxResends + 1; attempt += 1) {
      if (attempt > 1) {
        _log.warning(
          '[${entity.id}] 手环还没回应认证，第 $attempt 次重发 authAppVerify'
          '（如果手环上写着「请在手机上确认连接」，请到手机的'
          '「小米运动健康」里确认这次连接）',
        );
      }
      try {
        await component.sendPbPacketUnencrypted(packet);
      } catch (e, st) {
        _log.severe('[${entity.id}] failed to send auth step 1', e, st);
        _completeError(e);
        rethrow;
      }

      try {
        return await completer.future.timeout(_resendInterval);
      } on TimeoutException {
        if (_sawDeviceVerify) {
          // 已经进到第二步了，不能再重发第一步。
          _log.warning('[${entity.id}] 收到手环挑战后没等到确认，放弃重发');
          rethrow;
        }
        if (attempt > _maxResends) rethrow;
      }
    }
  }

  @override
  void onWearPacket(pb.WearPacket packet) {
    if (packet.whichPayload() != pb.WearPacket_Payload.account) return;
    final account = packet.account;
    _log.fine('[${entity.id}] account payload: ${account.whichPayload()}');
    switch (account.whichPayload()) {
      case pb_account.Account_Payload.authDeviceVerify:
        _onDeviceVerify(account.authDeviceVerify);
      case pb_account.Account_Payload.authDeviceConfirm:
        _onDeviceConfirm(account.authDeviceConfirm);
      default:
        break;
    }
  }

  Future<void> _onDeviceVerify(pb_account.Auth_DeviceVerify verify) async {
    _sawDeviceVerify = true;
    try {
      if (_authKeyHex == null || _appRandom == null) {
        throw StateError('auth state missing');
      }
      _log.info('[${entity.id}] received device verify, building confirm');
      final (keys, confirmPacket) = buildAuthStep2(
        authKeyHex: _authKeyHex!,
        appRandom: _appRandom!,
        deviceVerify: verify,
      );
      component.authKeys = keys;
      await component.sendPbPacketUnencrypted(confirmPacket);
    } catch (e, st) {
      _log.severe('[${entity.id}] auth step 2 failed', e, st);
      entity.emit(AuthFailed(deviceId: entity.id, error: e.toString()));
      _completeError(e);
    }
  }

  void _onDeviceConfirm(pb_account.Auth_DeviceConfirm confirm) {
    if (confirm.confirmResult) {
      _log.info('[${entity.id}] auth confirmed');
      unawaited(_finishAuthentication());
    } else {
      final error = 'auth confirm rejected by device';
      _log.warning('[${entity.id}] $error');
      entity.emit(AuthFailed(deviceId: entity.id, error: error));
      _completeError(Exception(error));
    }
  }

  Future<void> _finishAuthentication() async {
    // Capability registration is best effort.  It must not turn an otherwise
    // usable device connection into an auth failure.
    await entity
        .system<XiaomiScreenshotSystem>()
        ?.negotiateAfterAuthentication();
    entity.emit(DeviceAuthenticated(deviceId: entity.id));
    final c = _completer;
    _completer = null;
    if (c != null && !c.isCompleted) {
      c.complete();
    }
  }

  void _completeError(Object error) {
    final c = _completer;
    _completer = null;
    if (c != null && !c.isCompleted) {
      c.completeError(error);
    }
  }

  @override
  Future<void> dispose() async {
    _completeError(StateError('auth system disposed'));
    await super.dispose();
  }
}
