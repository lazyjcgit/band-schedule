import 'dart:typed_data';

enum CmdCode {
  cmdL1startReq(1),
  cmdL1startRsp(2),
  cmdL1stopReq(3),
  cmdL1stopRsp(4);

  const CmdCode(this.value);
  final int value;

  static CmdCode fromValue(int value) {
    return switch (value) {
      1 => CmdCode.cmdL1startReq,
      2 => CmdCode.cmdL1startRsp,
      3 => CmdCode.cmdL1stopReq,
      4 => CmdCode.cmdL1stopRsp,
      _ => throw ArgumentError('Unknown cmd code: $value'),
    };
  }
}

class L1CmdConfigType {
  static const version = 0x01;
  static const mps = 0x02;
  static const txWin = 0x03;
  static const sendTimeout = 0x04;
  static const deviceType = 0x05;
  static const deviceName = 0x06;
  static const osVersion = 0x07;
}

class L1CmdPacket {
  L1CmdPacket({required this.cmd, this.config = const {}});

  final CmdCode cmd;
  final Map<int, Uint8List> config;

  Uint8List toPayloadBytes() {
    final out = BytesBuilder();
    out.addByte(cmd.value);
    for (final entry in config.entries) {
      out.addByte(entry.key);
      final value = entry.value;
      out.addByte(value.length & 0xFF);
      out.addByte((value.length >> 8) & 0xFF);
      out.add(value);
    }
    return out.toBytes();
  }

  static L1CmdPacket? fromPayloadBytes(Uint8List payload) {
    if (payload.isEmpty) return null;
    final cmd = CmdCode.fromValue(payload[0]);
    final config = <int, Uint8List>{};
    var i = 1;
    while (i + 3 <= payload.length) {
      final key = payload[i];
      final valueSize = payload[i + 1] | (payload[i + 2] << 8);
      i += 3;
      if (i + valueSize > payload.length) break;
      config[key] = Uint8List.sublistView(payload, i, i + valueSize);
      i += valueSize;
    }
    return L1CmdPacket(cmd: cmd, config: config);
  }

  (int, int, int)? getVersion() {
    final v = config[L1CmdConfigType.version];
    if (v == null || v.length != 3) return null;
    return (v[0], v[1], v[2]);
  }

  int? getMps() {
    final v = config[L1CmdConfigType.mps];
    if (v == null || v.length != 2) return null;
    return v[0] | (v[1] << 8);
  }

  int? getTxWin() {
    final v = config[L1CmdConfigType.txWin];
    if (v == null || v.length != 2) return null;
    return v[0] | (v[1] << 8);
  }

  int? getSendTimeout() {
    final v = config[L1CmdConfigType.sendTimeout];
    if (v == null || v.length != 2) return null;
    return v[0] | (v[1] << 8);
  }
}

class L1CmdBuilder {
  final Map<int, Uint8List> _config = {};
  CmdCode? _cmd;

  L1CmdBuilder cmd(CmdCode cmd) {
    _cmd = cmd;
    return this;
  }

  L1CmdBuilder version(int major, int minor, int patch) {
    _config[L1CmdConfigType.version] = Uint8List.fromList([
      major,
      minor,
      patch,
    ]);
    return this;
  }

  L1CmdBuilder mps(int mps) {
    _config[L1CmdConfigType.mps] = Uint8List.fromList([
      mps & 0xFF,
      (mps >> 8) & 0xFF,
    ]);
    return this;
  }

  L1CmdBuilder txWin(int win) {
    _config[L1CmdConfigType.txWin] = Uint8List.fromList([
      win & 0xFF,
      (win >> 8) & 0xFF,
    ]);
    return this;
  }

  L1CmdBuilder sendTimeout(int timeoutMs) {
    _config[L1CmdConfigType.sendTimeout] = Uint8List.fromList([
      timeoutMs & 0xFF,
      (timeoutMs >> 8) & 0xFF,
    ]);
    return this;
  }

  L1CmdBuilder deviceType(int devType) {
    _config[L1CmdConfigType.deviceType] = Uint8List.fromList([devType]);
    return this;
  }

  L1CmdBuilder deviceName(String name) {
    final bytes = Uint8List.fromList(name.codeUnits);
    _config[L1CmdConfigType.deviceName] = bytes;
    return this;
  }

  L1CmdBuilder osVersion(int major, int minor, int patch) {
    _config[L1CmdConfigType.osVersion] = Uint8List.fromList([
      major,
      minor,
      patch,
    ]);
    return this;
  }

  L1CmdPacket build() {
    if (_cmd == null) {
      throw StateError('cmd not set');
    }
    return L1CmdPacket(cmd: _cmd!, config: _config);
  }
}
