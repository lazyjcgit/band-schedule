import 'dart:typed_data';

enum L1DataType {
  nak(0),
  ack(1),
  cmd(2),
  data(3);

  const L1DataType(this.value);
  final int value;

  static L1DataType fromValue(int value) {
    return switch (value) {
      0 => L1DataType.nak,
      1 => L1DataType.ack,
      2 => L1DataType.cmd,
      3 => L1DataType.data,
      _ => throw L1PacketException('Invalid L1 data type: $value'),
    };
  }
}

class L1Packet {
  L1Packet({
    required this.pktType,
    required this.frx,
    required this.seq,
    required this.payload,
  }) {
    length = payload.length;
    crc = _crc16Arc(payload);
  }

  static const int magic = 0xA5A5;
  static const int typeMask = 0x0F;
  static const int frxMask = 0x10;

  final L1DataType pktType;
  final bool frx;
  final int seq;
  late final int length;
  late final int crc;
  final Uint8List payload;

  Uint8List toBytes() {
    final out = BytesBuilder();
    out.addByte(magic & 0xFF);
    out.addByte((magic >> 8) & 0xFF);
    out.addByte(_packTypeFrx(pktType, frx));
    out.addByte(seq & 0xFF);
    out.addByte(length & 0xFF);
    out.addByte((length >> 8) & 0xFF);
    out.addByte(crc & 0xFF);
    out.addByte((crc >> 8) & 0xFF);
    out.add(payload);
    return out.toBytes();
  }

  static L1Packet fromBytes(Uint8List buf) {
    if (buf.length < 8) {
      throw L1PacketException('L1 packet too short: ${buf.length}');
    }
    final foundMagic = buf[0] | (buf[1] << 8);
    if (foundMagic != magic) {
      throw L1PacketException('Bad L1 magic: $foundMagic');
    }
    final (pktType, frx) = _unpackTypeFrx(buf[2]);
    final seq = buf[3];
    final length = buf[4] | (buf[5] << 8);
    final declaredCrc = buf[6] | (buf[7] << 8);
    final expectedTotal = 8 + length;
    if (buf.length < expectedTotal) {
      throw L1PacketException(
        'L1 length mismatch: declared $length, actual ${buf.length - 8}',
      );
    }
    final payload = Uint8List.sublistView(buf, 8, 8 + length);
    final computedCrc = _crc16Arc(payload);
    if (declaredCrc != computedCrc) {
      throw L1PacketException(
        'L1 CRC mismatch: declared $declaredCrc, computed $computedCrc',
      );
    }
    return L1Packet(pktType: pktType, frx: frx, seq: seq, payload: payload);
  }

  static int _packTypeFrx(L1DataType type, bool frx) {
    var b = type.value & typeMask;
    if (frx) b |= frxMask;
    return b;
  }

  static (L1DataType, bool) _unpackTypeFrx(int value) {
    final type = L1DataType.fromValue(value & typeMask);
    final frx = (value & frxMask) != 0;
    return (type, frx);
  }

  static int _crc16Arc(Uint8List data) {
    var crc = 0x0000;
    for (final byte in data) {
      crc ^= byte & 0xFF;
      for (var i = 0; i < 8; i++) {
        if ((crc & 0x0001) != 0) {
          crc = (crc >> 1) ^ 0xA001;
        } else {
          crc >>= 1;
        }
      }
    }
    return crc;
  }
}

class L1PacketException implements Exception {
  L1PacketException(this.message);
  final String message;

  @override
  String toString() => 'L1PacketException: $message';
}
