import 'dart:typed_data';

import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;

enum L2Channel {
  pb(1),
  mass(2),
  massVoice(3),
  fileSensor(4),
  fileFitness(5),
  ota(6),
  network(7),
  lyra(8),
  research(9),
  multiModal(10);

  const L2Channel(this.value);
  final int value;

  static L2Channel fromValue(int value) {
    return switch (value) {
      1 => L2Channel.pb,
      2 => L2Channel.mass,
      3 => L2Channel.massVoice,
      4 => L2Channel.fileSensor,
      5 => L2Channel.fileFitness,
      6 => L2Channel.ota,
      7 => L2Channel.network,
      8 => L2Channel.lyra,
      9 => L2Channel.research,
      10 => L2Channel.multiModal,
      _ => throw L2PacketException('Invalid L2 channel: $value'),
    };
  }

  static L2Channel? tryFromValue(int value) {
    try {
      return fromValue(value);
    } on L2PacketException {
      return null;
    }
  }
}

enum L2OpCode {
  write(1),
  writeEnc(2),
  read(3);

  const L2OpCode(this.value);
  final int value;

  static L2OpCode fromValue(int value) {
    return switch (value) {
      1 => L2OpCode.write,
      2 => L2OpCode.writeEnc,
      3 => L2OpCode.read,
      _ => throw L2PacketException('Invalid L2 opcode: $value'),
    };
  }
}

abstract class L2Cipher {
  Uint8List encrypt(Uint8List plaintext);
  Uint8List decrypt(Uint8List ciphertext);
}

class L2Packet {
  L2Packet({
    required this.channel,
    required this.opcode,
    required this.payload,
  });

  final L2Channel channel;
  final L2OpCode opcode;
  final Uint8List payload;

  Uint8List toBytes() {
    final out = BytesBuilder();
    out.addByte(channel.value);
    out.addByte(opcode.value);
    out.add(payload);
    return out.toBytes();
  }

  static L2Packet fromBytes(Uint8List buf, {L2Cipher? cipher}) {
    if (buf.length < 2) {
      throw L2PacketException('L2 packet too short: ${buf.length}');
    }
    final channel = L2Channel.fromValue(buf[0]);
    final opcode = L2OpCode.fromValue(buf[1]);
    final body = Uint8List.sublistView(buf, 2);
    final payload = (opcode == L2OpCode.writeEnc && cipher != null)
        ? cipher.decrypt(body)
        : Uint8List.fromList(body);
    return L2Packet(channel: channel, opcode: opcode, payload: payload);
  }

  factory L2Packet.pbWrite(pb.WearPacket packet) {
    return L2Packet(
      channel: L2Channel.pb,
      opcode: L2OpCode.write,
      payload: packet.writeToBuffer(),
    );
  }

  factory L2Packet.pbWriteBytes(Uint8List payload) {
    return L2Packet(
      channel: L2Channel.pb,
      opcode: L2OpCode.write,
      payload: payload,
    );
  }

  factory L2Packet.pbWriteEnc(pb.WearPacket packet, L2Cipher cipher) {
    final plaintext = packet.writeToBuffer();
    return L2Packet(
      channel: L2Channel.pb,
      opcode: L2OpCode.writeEnc,
      payload: cipher.encrypt(plaintext),
    );
  }

  factory L2Packet.pbWriteEncBytes(Uint8List payload, L2Cipher cipher) {
    return L2Packet(
      channel: L2Channel.pb,
      opcode: L2OpCode.writeEnc,
      payload: cipher.encrypt(payload),
    );
  }

  pb.WearPacket toWearPacket() {
    if (channel != L2Channel.pb) {
      throw L2PacketException('L2 channel is not PB: $channel');
    }
    return pb.WearPacket.fromBuffer(payload);
  }
}

class L2PacketException implements Exception {
  L2PacketException(this.message);
  final String message;

  @override
  String toString() => 'L2PacketException: $message';
}
