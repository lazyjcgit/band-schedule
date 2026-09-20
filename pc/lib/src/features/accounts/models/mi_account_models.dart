class MiAccountToken {
  const MiAccountToken({
    required this.userId,
    required this.deviceId,
    required this.ssecurity,
    required this.serviceToken,
    required this.cUserId,
    required this.passToken,
    required this.psecurity,
  });

  final String userId;
  final String deviceId;
  final String ssecurity;
  final String serviceToken;
  final String cUserId;
  final String passToken;
  final String psecurity;

  bool get isValid => ssecurity.isNotEmpty && serviceToken.isNotEmpty;

  Map<String, Object?> toJson() => {
    'user_id': userId,
    'device_id': deviceId,
    'ssecurity': ssecurity,
    'service_token': serviceToken,
    'c_user_id': cUserId,
    'pass_token': passToken,
    'psecurity': psecurity,
  };

  static MiAccountToken? fromJson(Map<String, Object?> json) {
    final token = MiAccountToken(
      userId: json['user_id']?.toString() ?? '',
      deviceId: json['device_id']?.toString() ?? '',
      ssecurity: json['ssecurity']?.toString() ?? '',
      serviceToken: json['service_token']?.toString() ?? '',
      cUserId: json['c_user_id']?.toString() ?? '',
      passToken: json['pass_token']?.toString() ?? '',
      psecurity: json['psecurity']?.toString() ?? '',
    );
    return token.isValid ? token : null;
  }
}

class MiCloudDevice {
  const MiCloudDevice({
    required this.name,
    required this.model,
    required this.mac,
    required this.authKey,
    required this.firmwareVersion,
    required this.serialNumber,
  });

  final String name;
  final String model;
  final String mac;
  final String authKey;
  final String firmwareVersion;
  final String serialNumber;

  bool get hasAuthKey => mac.trim().isNotEmpty && authKey.trim().isNotEmpty;

  factory MiCloudDevice.fromJson(Map<String, dynamic> json) {
    final detail =
        (json['detail'] as Map?)?.cast<String, dynamic>() ??
        const <String, dynamic>{};
    return MiCloudDevice(
      name: json['name']?.toString() ?? '',
      model: json['model']?.toString() ?? '',
      mac: detail['mac']?.toString() ?? detail['mac_address']?.toString() ?? '',
      authKey:
          detail['encrypt_key']?.toString() ??
          detail['auth_key']?.toString() ??
          '',
      firmwareVersion: detail['fw_ver']?.toString() ?? '',
      serialNumber: detail['sn']?.toString() ?? '',
    );
  }
}

/// 服务端要求二次验证。
///
/// [form] 是**当初那次 `serviceLoginAuth2` 请求的原文**（含 `_sign` / `qs` /
/// `callback` / `user` / `hash`）。这个字段是必须的：通知地址里的 `context`
/// 把「这次登录尝试」唯一标识出来了，用户在网页上完成验证，验证的是**这个
/// context**。所以要接着登录就得**原样重发那次请求**——重新 GET 一次
/// `serviceLogin` 只会拿到一个全新的 context，服务端自然还是要求验证。
class MiAccountTwoFactorRequired implements Exception {
  const MiAccountTwoFactorRequired({
    required this.url,
    required this.deviceId,
    this.form = const <String, String>{},
  });

  final String url;
  final String deviceId;
  final Map<String, String> form;

  @override
  String toString() => '小米账号需要二次验证：$url';
}

class MiAccountSessionExpired implements Exception {
  const MiAccountSessionExpired({this.statusCode});

  final int? statusCode;

  @override
  String toString() => 'Xiaomi account session expired';
}
