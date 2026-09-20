import 'dart:typed_data';

import 'package:pointycastle/export.dart';

Uint8List aes128CtrCrypt(Uint8List key, Uint8List iv, Uint8List data) {
  if (key.length != 16) {
    throw ArgumentError('AES-128 key must be 16 bytes');
  }
  if (iv.length != 16) {
    throw ArgumentError('AES-128-CTR IV must be 16 bytes');
  }

  final params = ParametersWithIV(
    KeyParameter(Uint8List.fromList(key)),
    Uint8List.fromList(iv),
  );
  final cipher = CTRStreamCipher(AESEngine());
  cipher.init(true, params);

  final output = Uint8List(data.length);
  cipher.processBytes(data, 0, data.length, output, 0);
  return output;
}

Uint8List aes128CcmEncrypt(
  Uint8List key,
  Uint8List nonce,
  Uint8List aad,
  Uint8List plaintext,
) {
  if (key.length != 16) throw ArgumentError('AES-128 key must be 16 bytes');
  if (nonce.length != 12) throw ArgumentError('CCM nonce must be 12 bytes');

  final cipher = CCMBlockCipher(AESEngine());
  final params = AEADParameters(
    KeyParameter(Uint8List.fromList(key)),
    32, // tag length in bits = 4 bytes
    Uint8List.fromList(nonce),
    Uint8List.fromList(aad),
  );
  cipher.init(true, params);

  final output = Uint8List(cipher.getOutputSize(plaintext.length));
  var len = cipher.processBytes(plaintext, 0, plaintext.length, output, 0);
  len += cipher.doFinal(output, len);
  return Uint8List.sublistView(output, 0, len);
}

Uint8List aes128CcmDecrypt(
  Uint8List key,
  Uint8List nonce,
  Uint8List aad,
  Uint8List ciphertextAndTag,
) {
  if (key.length != 16) throw ArgumentError('AES-128 key must be 16 bytes');
  if (nonce.length != 12) throw ArgumentError('CCM nonce must be 12 bytes');

  final cipher = CCMBlockCipher(AESEngine());
  final params = AEADParameters(
    KeyParameter(Uint8List.fromList(key)),
    32,
    Uint8List.fromList(nonce),
    Uint8List.fromList(aad),
  );
  cipher.init(false, params);

  final output = Uint8List(cipher.getOutputSize(ciphertextAndTag.length));
  var len = cipher.processBytes(
    ciphertextAndTag,
    0,
    ciphertextAndTag.length,
    output,
    0,
  );
  len += cipher.doFinal(output, len);
  return Uint8List.sublistView(output, 0, len);
}

Uint8List hmacSha256(Uint8List key, List<Uint8List> messages) {
  final hmac = HMac(SHA256Digest(), 64);
  hmac.init(KeyParameter(Uint8List.fromList(key)));
  for (final message in messages) {
    hmac.update(Uint8List.fromList(message), 0, message.length);
  }
  final output = Uint8List(hmac.macSize);
  hmac.doFinal(output, 0);
  return output;
}

Uint8List kdfMiwear(
  Uint8List secretKey,
  Uint8List phoneNonce,
  Uint8List watchNonce,
) {
  if (secretKey.length != 16) {
    throw ArgumentError('secretKey must be 16 bytes');
  }
  if (phoneNonce.length != 16 || watchNonce.length != 16) {
    throw ArgumentError('nonces must be 16 bytes');
  }

  final initKey = Uint8List(32);
  initKey.setRange(0, 16, phoneNonce);
  initKey.setRange(16, 32, watchNonce);

  final hmacKey = hmacSha256(initKey, [secretKey]);

  final okm = Uint8List(64);
  final tag = Uint8List.fromList('miwear-auth'.codeUnits);
  var offset = 0;
  Uint8List prev = Uint8List(0);
  for (var counter = 1; counter <= 3; counter++) {
    final mac = HMac(SHA256Digest(), 64);
    mac.init(KeyParameter(Uint8List.fromList(hmacKey)));
    mac.update(prev, 0, prev.length);
    mac.update(tag, 0, tag.length);
    mac.update(Uint8List.fromList([counter]), 0, 1);
    final block = Uint8List(mac.macSize);
    mac.doFinal(block, 0);
    final end = (offset + 32).clamp(0, 64);
    okm.setRange(offset, end, block.sublist(0, end - offset));
    offset = end;
    prev = block;
  }
  return okm;
}

Uint8List parseAuthKey(String authKeyHex) {
  if (authKeyHex.length != 32) {
    throw ArgumentError('auth key must be 32 hex characters');
  }
  final bytes = Uint8List(16);
  for (var i = 0; i < 16; i++) {
    final byteStr = authKeyHex.substring(i * 2, i * 2 + 2);
    bytes[i] = int.parse(byteStr, radix: 16);
  }
  return bytes;
}

Uint8List generateRandomBytes(int length) {
  final secureRandom = SecureRandom('Fortuna')
    ..seed(
      KeyParameter(
        Uint8List.fromList(
          List.generate(32, (_) => DateTime.now().microsecond % 256),
        ),
      ),
    );
  return secureRandom.nextBytes(length);
}
