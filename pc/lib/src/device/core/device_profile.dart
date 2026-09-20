import 'package:band_schedule_pc/src/device/core/ble_requirement.dart';
import 'package:band_schedule_pc/src/device/core/connect_type.dart';
import 'package:band_schedule_pc/src/device/core/device_kind.dart';
import 'package:band_schedule_pc/src/device/core/xiaomi_wearable_catalog.dart';

class DeviceProfile {
  const DeviceProfile({
    required this.id,
    required this.kind,
    required this.namePattern,
    required this.illustrationAsset,
    required this.preferredConnectType,
    this.bleRequiredCharacteristics = xiaomiRequiredBleCharacteristics,
    this.bleDesiredMtu = 517,
    this.bleAttemptPair = true,
    this.classicServiceUuid,
    this.classicFallbackChannels = const [5, 1],
  });

  final String id;
  final DeviceKind kind;
  final RegExp namePattern;
  final String illustrationAsset;
  final ConnectType preferredConnectType;
  final List<BleRequiredCharacteristic> bleRequiredCharacteristics;
  final int? bleDesiredMtu;
  final bool bleAttemptPair;
  final String? classicServiceUuid;
  final List<int> classicFallbackChannels;

  bool matches(String name) => namePattern.hasMatch(name);
}

class DeviceRegistry {
  const DeviceRegistry._();

  static const _xiaomiWatchAsset = 'assets/images/devices/xiaomi-watch.svg';
  static const _xiaomiBandAsset = 'assets/images/devices/xiaomi-band.svg';
  static const _xiaomiBandProAsset =
      'assets/images/devices/xiaomi-band-pro.svg';

  static final List<DeviceProfile> profiles = [
    DeviceProfile(
      id: 'redmi-band',
      kind: DeviceKind.xiaomi,
      namePattern: RegExp(r'Redmi Band \w', caseSensitive: false),
      illustrationAsset: 'assets/images/devices/redmi-band.svg',
      preferredConnectType: ConnectType.spp,
    ),
    DeviceProfile(
      id: 'redmi-watch',
      kind: DeviceKind.xiaomi,
      namePattern: RegExp(r'Redmi Watch \w', caseSensitive: false),
      illustrationAsset: 'assets/images/devices/redmi-watch.svg',
      preferredConnectType: ConnectType.spp,
    ),
    DeviceProfile(
      id: 'xiaomi-band-pro',
      kind: DeviceKind.xiaomi,
      namePattern: RegExp(
        r'Xiaomi Smart Band \w\w? Pro .{4}|小米手环\w\w? Pro',
        caseSensitive: false,
      ),
      illustrationAsset: 'assets/images/devices/xiaomi-band-pro.svg',
      preferredConnectType: ConnectType.spp,
    ),
    DeviceProfile(
      id: 'xiaomi-band',
      kind: DeviceKind.xiaomi,
      namePattern: RegExp(
        r'Xiaomi Smart Band \w\w? ?\S{4}?|小米手环\w\w?',
        caseSensitive: false,
      ),
      illustrationAsset: 'assets/images/devices/xiaomi-band.svg',
      preferredConnectType: ConnectType.spp,
    ),
    DeviceProfile(
      id: 'xiaomi-watch-s',
      kind: DeviceKind.xiaomi,
      namePattern: RegExp(
        r'Xiaomi Watch S\w(?: Pro)? (?:eSIM )?\S{4}',
        caseSensitive: false,
      ),
      illustrationAsset: _xiaomiWatchAsset,
      preferredConnectType: ConnectType.spp,
    ),
    // 说明：这里删掉了上游的 ZeppOS(Amazfit/Mi Band 7 等) 设备档案。
    // 本项目只支持小米 Vela 设备（手环 8 Pro / 9 / 10 等），
    // ZeppOS 走的是完全不同的协议栈，留在这里只会增加移植和维护成本。
  ];

  static DeviceProfile resolve(String name) {
    for (final profile in profiles) {
      if (profile.matches(name)) return profile;
    }
    return unknown;
  }

  static DeviceProfile resolveIdentity({
    required String name,
    String? codename,
  }) {
    final directProfile = resolve(name);

    final identity =
        xiaomiWearableIdentityForCodename(codename) ??
        normalizeXiaomiWearableIdentity(name);
    if (identity != null) {
      return _resolveFamily(identity.family);
    }

    return directProfile;
  }

  static DeviceProfile _resolveFamily(XiaomiWearableFamily family) {
    return switch (family) {
      XiaomiWearableFamily.band => _profileById('xiaomi-band'),
      XiaomiWearableFamily.bandPro => _profileById('xiaomi-band-pro'),
      XiaomiWearableFamily.redmiWatch => _profileById('redmi-watch'),
      XiaomiWearableFamily.xiaomiWatch => _profileById('xiaomi-watch-s'),
      XiaomiWearableFamily.unknown => unknown,
    };
  }

  static DeviceProfile _profileById(String id) {
    return profiles.firstWhere((profile) => profile.id == id);
  }

  static DeviceProfile unknown = DeviceProfile(
    id: 'unknown',
    kind: DeviceKind.xiaomi,
    namePattern: RegExp(r'.*'),
    illustrationAsset: _xiaomiWatchAsset,
    preferredConnectType: ConnectType.spp,
    // Unknown BLE devices must be connected far enough to discover services;
    // their protocol is selected from actual characteristics afterwards.
    bleRequiredCharacteristics: const [],
  );
}
