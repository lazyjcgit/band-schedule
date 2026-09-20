import 'dart:typed_data';

import 'package:band_schedule_pc/src/protocols/xiaomi/crypto/miwear_crypto.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/l2_packet.dart';

class V2L2Cipher implements L2Cipher {
  V2L2Cipher({required this.encKey, required this.decKey});

  final Uint8List encKey;
  final Uint8List decKey;

  @override
  Uint8List encrypt(Uint8List plaintext) {
    return aes128CtrCrypt(encKey, encKey, plaintext);
  }

  @override
  Uint8List decrypt(Uint8List ciphertext) {
    return aes128CtrCrypt(decKey, decKey, ciphertext);
  }
}
