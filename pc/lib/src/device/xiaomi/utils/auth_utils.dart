
import 'dart:typed_data';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_account.pb.dart'
    as pb_account;
import 'package:band_schedule_pc/src/protocols/xiaomi/crypto/miwear_crypto.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/crypto/v2_l2_cipher.dart';

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

pb.WearPacket buildAuthStep1(Uint8List appRandom) {
  final account = pb_account.Account(
    authAppVerify: pb_account.Auth_AppVerify(appRandom: appRandom),
  );
  return pb.WearPacket(
    type: pb.WearPacket_Type.ACCOUNT,
    id: pb_account.Account_AccountID.AUTH_VERIFY.value,
    account: account,
  );
}

(XiaomiAuthKeys, pb.WearPacket) buildAuthStep2({
  required String authKeyHex,
  required Uint8List appRandom,
  required pb_account.Auth_DeviceVerify deviceVerify,
}) {
  final watchRandom = Uint8List.fromList(deviceVerify.deviceRandom);
  final watchSign = Uint8List.fromList(deviceVerify.deviceSign);

  if (watchRandom.length != 16 || watchSign.length != 32) {
    throw ArgumentError('device verify nonce/sign length mismatch');
  }
  if (appRandom.length != 16) {
    throw ArgumentError('app random length mismatch');
  }

  final secretKey = parseAuthKey(authKeyHex);
  final block64 = kdfMiwear(secretKey, appRandom, watchRandom);

  final decKey = Uint8List.sublistView(block64, 0, 16);
  final encKey = Uint8List.sublistView(block64, 16, 32);
  final decNonce = Uint8List.sublistView(block64, 32, 36);
  final encNonce = Uint8List.sublistView(block64, 36, 40);

  final expectedSign = hmacSha256(decKey, [watchRandom, appRandom]);
  if (!_constantTimeEquals(watchSign, expectedSign)) {
    throw ArgumentError(
      'Auth HMAC mismatch. Check that the auth key is correct.',
    );
  }

  final appSign = hmacSha256(encKey, [appRandom, watchRandom]);

  final companionDevice = pb_account.CompanionDevice(
    // 原实现按平台在 iOS / Android 之间分支；我们只做 Windows 桌面端，
    // 走非 iOS 那条（协议里只有这两种设备类型）。
    deviceType: pb_account.CompanionDevice_DeviceType.ANDROID,
    deviceName: 'BandSchedule',
    appCapability: 0xFFFFFFFF,
  );
  final companionBytes = companionDevice.writeToBuffer();

  final nonce = Uint8List(12);
  nonce.setRange(0, 4, encNonce);
  nonce.setRange(4, 12, Uint8List(8));

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
    XiaomiAuthKeys(
      encKey: encKey,
      decKey: decKey,
      encNonce: encNonce,
      decNonce: decNonce,
    ),
    packet,
  );
}

bool _constantTimeEquals(Uint8List a, Uint8List b) {
  if (a.length != b.length) return false;
  var result = 0;
  for (var i = 0; i < a.length; i++) {
    result |= a[i] ^ b[i];
  }
  return result == 0;
}
