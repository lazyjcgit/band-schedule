import 'dart:async';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/protocols/common/device_protocol.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_account.pb.dart'
    as pb_account;
import 'package:band_schedule_pc/src/protocols/xiaomi/crypto/miwear_crypto.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/crypto/v2_l2_cipher.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/l1_packet.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/l2_packet.dart';

class XiaomiAuth {
  XiaomiAuth({
    required this.onSend,
    required this.onAuthenticated,
    required this.onError,
  });

  final Future<void> Function(Uint8List data) onSend;
  final void Function(XiaomiAuthKeys keys) onAuthenticated;
  final void Function(Object error) onError;

  final Completer<void> _completer = Completer<void>();
  late final Uint8List _appRandom;
  String? _authKeyHex;
  XiaomiAuthKeys? _keys;

  Future<void> start(String authKeyHex) async {
    _authKeyHex = authKeyHex;
    _appRandom = generateRandomBytes(16);
    final packet = _buildAuthStep1(_appRandom);
    await _sendPbPacket(packet);
  }

  Future<void> onDeviceVerify(pb_account.Auth_DeviceVerify verify) async {
    try {
      if (_authKeyHex == null) {
        throw ProtocolException('auth key not set');
      }
      final (confirmPacket, keys) = _buildAuthStep2(
        authKeyHex: _authKeyHex!,
        appRandom: _appRandom,
        deviceVerify: verify,
      );
      _keys = keys;
      await _sendPbPacket(confirmPacket);
    } catch (e) {
      onError(e);
      if (!_completer.isCompleted) {
        _completer.completeError(e);
      }
    }
  }

  void onDeviceConfirm(pb_account.Auth_DeviceConfirm confirm) {
    if (confirm.confirmResult) {
      if (_keys == null) {
        onError(ProtocolException('auth confirm received but keys not set'));
        return;
      }
      onAuthenticated(_keys!);
      if (!_completer.isCompleted) {
        _completer.complete();
      }
    } else {
      final error = ProtocolException('auth confirm rejected by device');
      onError(error);
      if (!_completer.isCompleted) {
        _completer.completeError(error);
      }
    }
  }

  Future<void> get future => _completer.future;

  Future<void> _sendPbPacket(pb.WearPacket packet) async {
    final l2 = L2Packet.pbWrite(packet);
    final l1 = L1Packet(
      pktType: L1DataType.data,
      frx: false,
      seq: 0,
      payload: l2.toBytes(),
    );
    await onSend(l1.toBytes());
  }

  static pb.WearPacket _buildAuthStep1(Uint8List appRandom) {
    final account = pb_account.Account(
      authAppVerify: pb_account.Auth_AppVerify(appRandom: appRandom),
    );
    return pb.WearPacket(
      type: pb.WearPacket_Type.ACCOUNT,
      id: pb_account.Account_AccountID.AUTH_VERIFY.value,
      account: account,
    );
  }

  static (pb.WearPacket, XiaomiAuthKeys) _buildAuthStep2({
    required String authKeyHex,
    required Uint8List appRandom,
    required pb_account.Auth_DeviceVerify deviceVerify,
  }) {
    final watchRandom = Uint8List.fromList(deviceVerify.deviceRandom);
    final watchSign = Uint8List.fromList(deviceVerify.deviceSign);

    if (watchRandom.length != 16 || watchSign.length != 32) {
      throw ProtocolException('device verify nonce/sign length mismatch');
    }
    if (appRandom.length != 16) {
      throw ProtocolException('app random length mismatch');
    }

    final secretKey = parseAuthKey(authKeyHex);
    final block64 = kdfMiwear(secretKey, appRandom, watchRandom);

    final decKey = Uint8List.sublistView(block64, 0, 16);
    final encKey = Uint8List.sublistView(block64, 16, 32);
    final decNonce = Uint8List.sublistView(block64, 32, 36);
    final encNonce = Uint8List.sublistView(block64, 36, 40);

    final expectedSign = hmacSha256(decKey, [watchRandom, appRandom]);
    if (!_constantTimeEquals(watchSign, expectedSign)) {
      throw ProtocolException(
        'Auth HMAC mismatch. Check that the auth key is correct.',
      );
    }

    final appSign = hmacSha256(encKey, [appRandom, watchRandom]);

    final companionDevice = pb_account.CompanionDevice(
      deviceType: pb_account.CompanionDevice_DeviceType.IOS,
      deviceName: 'OronBox',
      appCapability: 0xFFFFFFFF,
    );
    final companionBytes = companionDevice.writeToBuffer();

    final nonce = Uint8List(12);
    nonce.setRange(0, 4, encNonce);
    nonce.setRange(4, 8, Uint8List(4)); // counterHi = 0
    nonce.setRange(8, 12, Uint8List(4)); // counterLo = 0

    final encryptedDeviceInfo = aes128CcmEncrypt(
      encKey,
      nonce,
      Uint8List(0),
      companionBytes,
    );

    final account = pb_account.Account(
      authAppConfirm: pb_account.Auth_AppConfirm(
        appSign: appSign,
        encryptCompanionDevice: encryptedDeviceInfo,
      ),
    );

    final packet = pb.WearPacket(
      type: pb.WearPacket_Type.ACCOUNT,
      id: pb_account.Account_AccountID.AUTH_CONFIRM.value,
      account: account,
    );

    return (
      packet,
      XiaomiAuthKeys(
        encKey: encKey,
        decKey: decKey,
        encNonce: encNonce,
        decNonce: decNonce,
      ),
    );
  }

  static bool _constantTimeEquals(Uint8List a, Uint8List b) {
    if (a.length != b.length) return false;
    var result = 0;
    for (var i = 0; i < a.length; i++) {
      result |= a[i] ^ b[i];
    }
    return result == 0;
  }
}

class XiaomiAuthKeys {
  const XiaomiAuthKeys({
    required this.encKey,
    required this.decKey,
    required this.encNonce,
    required this.decNonce,
  });

  final Uint8List encKey;
  final Uint8List decKey;
  final Uint8List encNonce;
  final Uint8List decNonce;

  V2L2Cipher get cipher => V2L2Cipher(encKey: encKey, decKey: decKey);
}
