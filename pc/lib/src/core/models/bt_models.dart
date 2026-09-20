/// 设备相关的数据模型。
///
/// 原本是 Freezed 生成的数据类，移植时改成了**手写的普通不可变类**：
///   · 只有 8 个简单值对象，没有 union、没人用 copyWith —— 手写完全够
///   · 省掉 freezed / json_serializable / build_runner 三个开发期依赖和代码生成步骤，
///     让这个开源项目 clone 下来就能编译
///   · 相等性（==/hashCode）保留，因为设备层有「和上一次比较判断有没有变化」的用法
library;

enum ChargeStatus { unknown, charging, notCharging, full }

/// 扫描到的蓝牙设备。
class BTDeviceInfo {
  const BTDeviceInfo({
    required this.name,
    required this.addr,
    required this.connectType,
  });

  final String name;
  final String addr;
  final String connectType;

  factory BTDeviceInfo.fromJson(Map<String, dynamic> json) => BTDeviceInfo(
        name: json['name'] as String? ?? '',
        addr: json['addr'] as String? ?? '',
        connectType: json['connectType'] as String? ?? '',
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'addr': addr,
        'connectType': connectType,
      };

  @override
  bool operator ==(Object other) =>
      other is BTDeviceInfo &&
      other.name == name &&
      other.addr == addr &&
      other.connectType == connectType;

  @override
  int get hashCode => Object.hash(name, addr, connectType);

  @override
  String toString() => 'BTDeviceInfo($name, $addr, $connectType)';
}

/// 一台已配对的小米穿戴设备（含 authkey）。
class MiWearState {
  const MiWearState({
    required this.name,
    required this.addr,
    required this.connectType,
    this.authkey,
    this.codename,
    this.disconnected = false,
  });

  final String name;
  final String addr;
  final String connectType;
  final String? authkey;
  final String? codename;
  final bool disconnected;

  factory MiWearState.fromJson(Map<String, dynamic> json) => MiWearState(
        name: json['name'] as String? ?? '',
        addr: json['addr'] as String? ?? '',
        connectType: json['connectType'] as String? ?? '',
        authkey: json['authkey'] as String?,
        codename: json['codename'] as String?,
        disconnected: json['disconnected'] as bool? ?? false,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'addr': addr,
        'connectType': connectType,
        if (authkey != null) 'authkey': authkey,
        if (codename != null) 'codename': codename,
        'disconnected': disconnected,
      };

  MiWearState copyWith({
    String? name,
    String? addr,
    String? connectType,
    String? authkey,
    String? codename,
    bool? disconnected,
  }) =>
      MiWearState(
        name: name ?? this.name,
        addr: addr ?? this.addr,
        connectType: connectType ?? this.connectType,
        authkey: authkey ?? this.authkey,
        codename: codename ?? this.codename,
        disconnected: disconnected ?? this.disconnected,
      );

  @override
  bool operator ==(Object other) =>
      other is MiWearState &&
      other.name == name &&
      other.addr == addr &&
      other.connectType == connectType &&
      other.authkey == authkey &&
      other.codename == codename &&
      other.disconnected == disconnected;

  @override
  int get hashCode =>
      Object.hash(name, addr, connectType, authkey, codename, disconnected);

  @override
  String toString() => 'MiWearState($name, $addr, authkey=${authkey != null})';
}

class ChargeInfo {
  const ChargeInfo({this.state = 0, this.timestamp});

  final int state;
  final int? timestamp;

  factory ChargeInfo.fromJson(Map<String, dynamic> json) => ChargeInfo(
        state: json['state'] as int? ?? 0,
        timestamp: json['timestamp'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'state': state,
        if (timestamp != null) 'timestamp': timestamp,
      };

  @override
  bool operator ==(Object other) =>
      other is ChargeInfo && other.state == state && other.timestamp == timestamp;

  @override
  int get hashCode => Object.hash(state, timestamp);

  @override
  String toString() => 'ChargeInfo(state=$state, timestamp=$timestamp)';
}

class BatteryStatus {
  const BatteryStatus({
    required this.capacity,
    this.chargeStatus = ChargeStatus.unknown,
    this.chargeInfo,
  });

  final int capacity;
  final ChargeStatus chargeStatus;
  final ChargeInfo? chargeInfo;

  factory BatteryStatus.fromJson(Map<String, dynamic> json) => BatteryStatus(
        capacity: json['capacity'] as int? ?? 0,
        chargeStatus: _chargeStatusFromName(json['chargeStatus'] as String?),
        chargeInfo: json['chargeInfo'] == null
            ? null
            : ChargeInfo.fromJson(
                Map<String, dynamic>.from(json['chargeInfo'] as Map)),
      );

  Map<String, dynamic> toJson() => {
        'capacity': capacity,
        'chargeStatus': chargeStatus.name,
        if (chargeInfo != null) 'chargeInfo': chargeInfo!.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      other is BatteryStatus &&
      other.capacity == capacity &&
      other.chargeStatus == chargeStatus &&
      other.chargeInfo == chargeInfo;

  @override
  int get hashCode => Object.hash(capacity, chargeStatus, chargeInfo);

  @override
  String toString() => 'BatteryStatus($capacity%, ${chargeStatus.name})';
}

ChargeStatus _chargeStatusFromName(String? name) {
  for (final v in ChargeStatus.values) {
    if (v.name == name) return v;
  }
  return ChargeStatus.unknown;
}

/// 手环上安装的一个第三方应用。
class AppInfo {
  const AppInfo({
    required this.packageName,
    this.fingerprint = const <int>[],
    this.versionCode = 0,
    this.canRemove = false,
    required this.appName,
  });

  final String packageName;
  final List<int> fingerprint;
  final int versionCode;
  final bool canRemove;
  final String appName;

  factory AppInfo.fromJson(Map<String, dynamic> json) => AppInfo(
        packageName: json['packageName'] as String? ?? '',
        fingerprint: (json['fingerprint'] as List?)?.cast<int>() ?? const [],
        versionCode: json['versionCode'] as int? ?? 0,
        canRemove: json['canRemove'] as bool? ?? false,
        appName: json['appName'] as String? ?? '',
      );

  Map<String, dynamic> toJson() => {
        'packageName': packageName,
        'fingerprint': fingerprint,
        'versionCode': versionCode,
        'canRemove': canRemove,
        'appName': appName,
      };

  @override
  bool operator ==(Object other) =>
      other is AppInfo &&
      other.packageName == packageName &&
      other.versionCode == versionCode &&
      other.canRemove == canRemove &&
      other.appName == appName;

  @override
  int get hashCode =>
      Object.hash(packageName, versionCode, canRemove, appName);

  @override
  String toString() => 'AppInfo($appName, $packageName, v$versionCode)';
}

class StorageInfo {
  const StorageInfo({required this.used, required this.total});

  final int used;
  final int total;

  factory StorageInfo.fromJson(Map<String, dynamic> json) => StorageInfo(
        used: json['used'] as int? ?? 0,
        total: json['total'] as int? ?? 0,
      );

  Map<String, dynamic> toJson() => {'used': used, 'total': total};

  @override
  bool operator ==(Object other) =>
      other is StorageInfo && other.used == used && other.total == total;

  @override
  int get hashCode => Object.hash(used, total);

  @override
  String toString() => 'StorageInfo($used/$total)';
}

class SystemInfo {
  const SystemInfo({
    required this.serialNumber,
    required this.firmwareVersion,
    required this.imei,
    required this.model,
    this.storageInfo,
  });

  final String serialNumber;
  final String firmwareVersion;
  final String imei;
  final String model;
  final StorageInfo? storageInfo;

  factory SystemInfo.fromJson(Map<String, dynamic> json) => SystemInfo(
        serialNumber: json['serialNumber'] as String? ?? '',
        firmwareVersion: json['firmwareVersion'] as String? ?? '',
        imei: json['imei'] as String? ?? '',
        model: json['model'] as String? ?? '',
        storageInfo: json['storageInfo'] == null
            ? null
            : StorageInfo.fromJson(
                Map<String, dynamic>.from(json['storageInfo'] as Map)),
      );

  Map<String, dynamic> toJson() => {
        'serialNumber': serialNumber,
        'firmwareVersion': firmwareVersion,
        'imei': imei,
        'model': model,
        if (storageInfo != null) 'storageInfo': storageInfo!.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      other is SystemInfo &&
      other.serialNumber == serialNumber &&
      other.firmwareVersion == firmwareVersion &&
      other.imei == imei &&
      other.model == model &&
      other.storageInfo == storageInfo;

  @override
  int get hashCode => Object.hash(
      serialNumber, firmwareVersion, imei, model, storageInfo);

  @override
  String toString() => 'SystemInfo($model, fw $firmwareVersion)';
}

class WatchfaceInfo {
  const WatchfaceInfo({
    required this.id,
    required this.name,
    this.isCurrent = false,
    this.canRemove = false,
    this.versionCode = 0,
    this.canEdit = false,
    this.backgroundColor = '',
    this.backgroundImage = '',
    this.style = '',
    this.backgroundImageList = const <String>[],
  });

  final String id;
  final String name;
  final bool isCurrent;
  final bool canRemove;
  final int versionCode;
  final bool canEdit;
  final String backgroundColor;
  final String backgroundImage;
  final String style;
  final List<String> backgroundImageList;

  factory WatchfaceInfo.fromJson(Map<String, dynamic> json) => WatchfaceInfo(
        id: json['id'] as String? ?? '',
        name: json['name'] as String? ?? '',
        isCurrent: json['isCurrent'] as bool? ?? false,
        canRemove: json['canRemove'] as bool? ?? false,
        versionCode: json['versionCode'] as int? ?? 0,
        canEdit: json['canEdit'] as bool? ?? false,
        backgroundColor: json['backgroundColor'] as String? ?? '',
        backgroundImage: json['backgroundImage'] as String? ?? '',
        style: json['style'] as String? ?? '',
        backgroundImageList:
            (json['backgroundImageList'] as List?)?.cast<String>() ?? const [],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'isCurrent': isCurrent,
        'canRemove': canRemove,
        'versionCode': versionCode,
        'canEdit': canEdit,
        'backgroundColor': backgroundColor,
        'backgroundImage': backgroundImage,
        'style': style,
        'backgroundImageList': backgroundImageList,
      };

  @override
  bool operator ==(Object other) =>
      other is WatchfaceInfo &&
      other.id == id &&
      other.name == name &&
      other.isCurrent == isCurrent &&
      other.canRemove == canRemove &&
      other.versionCode == versionCode;

  @override
  int get hashCode =>
      Object.hash(id, name, isCurrent, canRemove, versionCode);

  @override
  String toString() => 'WatchfaceInfo($name, $id)';
}
