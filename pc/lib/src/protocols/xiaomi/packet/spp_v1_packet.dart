import 'dart:typed_data';

import 'package:band_schedule_pc/src/device/xiaomi/utils/auth_utils.dart';
import 'package:band_schedule_pc/src/protocols/xiaomi/crypto/miwear_crypto.dart';

enum XiaomiSppV1Channel { version, protobuf, activity, data }

class XiaomiSppV1Packet {
  const XiaomiSppV1Packet({
    required this.channel,
    required this.dataType,
    required this.payload,
  });

  static const preamble = [0xba, 0xdc, 0xfe];
  static const int plain = 0;
  static const int encrypted = 1;
  static const int auth = 2;

  final XiaomiSppV1Channel channel;
  final int dataType;
  final Uint8List payload;
}

class XiaomiSppV1Codec {
  XiaomiSppV1Codec();

  final _buffer = BytesBuilder(copy: false);
  int _frameSerial = 0;
  int _encryptionCounter = 0;
  XiaomiAuthKeys? authKeys;

  Uint8List versionRequest() => _encode(
    channel: XiaomiSppV1Channel.version,
    dataType: XiaomiSppV1Packet.plain,
    payload: Uint8List(0),
    opcode: 0,
    needsResponse: true,
  );

  Uint8List encodeProtobuf(Uint8List payload, {required bool authenticate}) {
    final keys = authKeys;
    if (authenticate || keys == null) {
      return _encode(
        channel: XiaomiSppV1Channel.protobuf,
        dataType: authenticate
            ? XiaomiSppV1Packet.auth
            : XiaomiSppV1Packet.plain,
        payload: payload,
      );
    }
    final counter = ++_encryptionCounter;
    final nonce = Uint8List(12)
      ..setRange(0, 4, keys.encNonce)
      ..buffer.asByteData().setUint32(8, counter, Endian.little);
    final encrypted = aes128CcmEncrypt(
      keys.encKey,
      nonce,
      Uint8List(0),
      payload,
    );
    final body = BytesBuilder()
      ..addByte(counter & 0xff)
      ..addByte((counter >> 8) & 0xff)
      ..add(encrypted);
    return _encode(
      channel: XiaomiSppV1Channel.protobuf,
      dataType: XiaomiSppV1Packet.encrypted,
      payload: body.toBytes(),
    );
  }

  Uint8List encodeData(Uint8List payload) {
    final keys = authKeys;
    final encrypted = keys == null
        ? payload
        : aes128CcmEncrypt(
            keys.encKey,
            Uint8List(12)..setRange(0, 4, keys.encNonce),
            Uint8List(0),
            payload,
          );
    return _encode(
      channel: XiaomiSppV1Channel.data,
      dataType: keys == null
          ? XiaomiSppV1Packet.plain
          : XiaomiSppV1Packet.encrypted,
      payload: encrypted,
    );
  }

  List<XiaomiSppV1Packet> add(Uint8List bytes) {
    _buffer.add(bytes);
    var data = _buffer.takeBytes();
    final packets = <XiaomiSppV1Packet>[];
    var offset = 0;
    while (offset + 11 <= data.length) {
      final start = _findPreamble(data, offset);
      if (start < 0) {
        offset = data.length;
        break;
      }
      if (data.length - start < 11) {
        offset = start;
        break;
      }
      final declared = data[start + 5] | (data[start + 6] << 8);
      final frameLength = declared + 8;
      if (data.length - start < frameLength) {
        offset = start;
        break;
      }
      if (data[start + frameLength - 1] != 0xef || declared < 3) {
        offset = start + 1;
        continue;
      }
      final rawChannel = data[start + 3] & 0x0f;
      final dataType = data[start + 9];
      var payload = Uint8List.sublistView(
        data,
        start + 10,
        start + frameLength - 1,
      );
      final keys = authKeys;
      if (dataType == XiaomiSppV1Packet.encrypted && keys != null) {
        final nonce = Uint8List(12)..setRange(0, 4, keys.decNonce);
        payload = aes128CcmDecrypt(keys.decKey, nonce, Uint8List(0), payload);
      }
      packets.add(
        XiaomiSppV1Packet(
          channel: _channel(rawChannel),
          dataType: dataType,
          payload: Uint8List.fromList(payload),
        ),
      );
      offset = start + frameLength;
    }
    if (offset < data.length) _buffer.add(Uint8List.sublistView(data, offset));
    return packets;
  }

  Uint8List _encode({
    required XiaomiSppV1Channel channel,
    required int dataType,
    required Uint8List payload,
    int opcode = 2,
    bool needsResponse = false,
  }) {
    final out = BytesBuilder()
      ..add(XiaomiSppV1Packet.preamble)
      ..addByte(_rawChannel(channel))
      ..addByte(0x80 | (needsResponse ? 0x40 : 0))
      ..addByte((payload.length + 3) & 0xff)
      ..addByte(((payload.length + 3) >> 8) & 0xff)
      ..addByte(opcode)
      ..addByte(_frameSerial++ & 0xff)
      ..addByte(dataType)
      ..add(payload)
      ..addByte(0xef);
    return out.toBytes();
  }

  int _findPreamble(Uint8List data, int start) {
    for (var i = start; i + 2 < data.length; i++) {
      if (data[i] == 0xba && data[i + 1] == 0xdc && data[i + 2] == 0xfe) {
        return i;
      }
    }
    return -1;
  }

  int _rawChannel(XiaomiSppV1Channel channel) => switch (channel) {
    XiaomiSppV1Channel.version => 0,
    XiaomiSppV1Channel.protobuf => 2,
    XiaomiSppV1Channel.activity => 3,
    XiaomiSppV1Channel.data => 5,
  };

  XiaomiSppV1Channel _channel(int raw) => switch (raw) {
    0 => XiaomiSppV1Channel.version,
    1 || 2 => XiaomiSppV1Channel.protobuf,
    3 => XiaomiSppV1Channel.activity,
    5 => XiaomiSppV1Channel.data,
    _ => XiaomiSppV1Channel.activity,
  };
}
