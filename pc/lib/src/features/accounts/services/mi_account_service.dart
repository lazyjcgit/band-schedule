import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/core/network/app_http_transport.dart';
import 'package:band_schedule_pc/src/core/services/shared_prefs_service.dart';
import 'package:band_schedule_pc/src/features/accounts/models/mi_account_models.dart';

/// Extracts bound-device credentials from a Xiaomi Fitness wearable-log ZIP.
///
/// Xiaomi devices expose the device key as `encrypt_key`, while Huami devices
/// use `auth_key`. Only complete source-list records with a valid MAC and a
/// 16-byte hexadecimal key are returned; account-cookie `auth_key` values are
/// therefore ignored.
List<MiCloudDevice> extractMiDevicesFromWearableLogZip(List<int> bytes) {
  const maxArchiveBytes = 64 * 1024 * 1024;
  const maxLogBytes = 32 * 1024 * 1024;
  const maxTotalLogBytes = 128 * 1024 * 1024;
  if (bytes.isEmpty || bytes.length > maxArchiveBytes) {
    throw const FormatException('Invalid or oversized wearable log archive');
  }

  final archive = ZipDecoder().decodeBytes(bytes);
  final candidates = <String, MiCloudDevice>{};
  var totalLogBytes = 0;
  final recordPattern = RegExp(
    r'\{"sid":"(?:\\.|[^"])*".*?"detail":\{[^{}]*\}\}',
    dotAll: true,
  );
  final responsePattern = RegExp(
    r'provideHttpLog:\s*(\{"code":0.*"result":\{"list":\[.*\]\}\})',
  );
  final keyPattern = RegExp(r'^[0-9a-fA-F]{32}$');
  final macPattern = RegExp(r'^(?:[0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}$');

  void addRecord(Map<dynamic, dynamic> value) {
    final device = MiCloudDevice.fromJson(value.cast<String, dynamic>());
    final mac = device.mac.trim().toUpperCase();
    final authKey = device.authKey.trim().toLowerCase();
    if (!macPattern.hasMatch(mac) || !keyPattern.hasMatch(authKey)) return;
    candidates[mac] = MiCloudDevice(
      name: device.name.trim(),
      model: device.model.trim(),
      mac: mac,
      authKey: authKey,
      firmwareVersion: device.firmwareVersion.trim(),
      serialNumber: device.serialNumber.trim(),
    );
  }

  for (final file in archive.files) {
    if (!file.isFile) continue;
    final name = file.name.split(RegExp(r'[/\\]')).last;
    if (!RegExp(
      r'^XiaomiFit\.(?:device|main)\.log(?:\.bak\.\d+)?$',
    ).hasMatch(name)) {
      continue;
    }
    if (file.size > maxLogBytes) continue;
    totalLogBytes += file.size;
    if (totalLogBytes > maxTotalLogBytes) {
      throw const FormatException('Wearable log archive is too large');
    }

    final content = file.readBytes();
    if (content == null) continue;
    final log = utf8.decode(content, allowMalformed: true);
    for (final match in responsePattern.allMatches(log)) {
      try {
        final value = jsonDecode(match.group(1)!);
        List? list;
        if (value is Map && value['result'] is Map) {
          list = (value['result'] as Map)['list'] as List?;
        }
        for (final record in list ?? const []) {
          if (record is Map) addRecord(record);
        }
      } on FormatException {
        // Fall through to individual-record recovery below.
      }
    }
    for (final match in recordPattern.allMatches(log)) {
      try {
        final value = jsonDecode(match.group(0)!);
        if (value is Map) addRecord(value);
      } on FormatException {
        // Logs can end mid-line. Ignore incomplete records and keep scanning.
      }
    }
    file.clear();
  }
  return candidates.values.toList(growable: false);
}

class MiAccountService {
  MiAccountService({Dio? dio}) : _dio = dio ?? createAppHttpTransport();

  static final _log = getLogger('MiAccountService');
  final Dio _dio;

  static const _sessionKey = 'mi.account.token';
  static const _legacySessionKey = 'mi_account.session';
  static const _sdkVersion = 'accountsdk-18.8.15';
  static const _healthSid = 'miothealth';
  static const _serviceLoginUrl =
      'https://account.xiaomi.com/pass/serviceLogin?sid=$_healthSid&_json=true';
  static const _serviceLoginAuthUrl =
      'https://account.xiaomi.com/pass/serviceLoginAuth2';
  static const _deviceListUrl =
      'https://hlth.io.mi.com/app/v1/source/get_source_list';

  static const defaultUserAgent =
      'Mozilla/5.0 (Linux; Android 13; OronBox) AppleWebKit/537.36 '
      '(KHTML, like Gecko) Chrome/120.0 Mobile Safari/537.36';

  Future<MiAccountToken?> loadStoredToken() async {
    final prefs = SharedPrefsService.instance;
    if (!prefs.isInitialized) await prefs.init();
    final raw =
        prefs.getString(_sessionKey) ?? prefs.getString(_legacySessionKey);
    if (raw == null || raw.isEmpty) return null;
    try {
      final value = jsonDecode(raw);
      final token = value is Map<String, Object?>
          ? MiAccountToken.fromJson(value)
          : value is Map
          ? MiAccountToken.fromJson(value.cast<String, Object?>())
          : null;
      if (token != null && prefs.getString(_sessionKey) == null) {
        await prefs.setString(_sessionKey, jsonEncode(token.toJson()));
        await prefs.remove(_legacySessionKey);
      }
      return token;
    } catch (_) {
      // Treat a malformed session as signed out.
    }
    return null;
  }

  Future<void> persistToken(MiAccountToken token) async {
    if (!token.isValid) {
      throw StateError('Cannot persist an invalid Xiaomi session');
    }
    final prefs = SharedPrefsService.instance;
    if (!prefs.isInitialized) await prefs.init();
    await prefs.setString(_sessionKey, jsonEncode(token.toJson()));
    await prefs.remove(_legacySessionKey);
  }

  Future<void> clearStoredToken() async {
    final prefs = SharedPrefsService.instance;
    if (!prefs.isInitialized) await prefs.init();
    await prefs.remove(_sessionKey);
    await prefs.remove(_legacySessionKey);
  }

  /// Renews the short-lived Xiaomi service session with the stored pass token.
  ///
  /// Xiaomi does not return a reliable client-visible expiry timestamp for
  /// the service token. The account pass token is the credential used to run
  /// the serviceLogin -> STS exchange again. If that credential is no longer
  /// accepted, the caller must ask the user to sign in again.
  Future<MiAccountToken> refreshToken({
    required MiAccountToken token,
    String userAgent = defaultUserAgent,
  }) async {
    if (token.userId.isEmpty ||
        token.deviceId.isEmpty ||
        token.passToken.isEmpty) {
      await invalidateStoredToken(token);
      throw const MiAccountSessionExpired();
    }

    // Do not send the old serviceToken here. Xiaomi's account endpoint uses
    // the long-lived account cookies to mint a fresh service session.
    final cookieJar = _CookieJar()
      ..set('sdkVersion', _sdkVersion)
      ..set('deviceId', token.deviceId)
      ..set('userId', token.userId)
      ..set('passToken', token.passToken);
    if (token.cUserId.isNotEmpty) cookieJar.set('cUserId', token.cUserId);

    late final Response<String> response;
    try {
      response = await _dio.get<String>(
        _serviceLoginUrl,
        options: _requestOptions(userAgent, cookieJar),
      );
    } on DioException catch (error) {
      final status = error.response?.statusCode;
      if (_isSessionFailureStatus(status)) {
        await invalidateStoredToken(token);
        throw MiAccountSessionExpired(statusCode: status);
      }
      rethrow;
    }
    cookieJar.mergeSetCookie(response.headers);

    final body = _fillAuthResponseFromHeaders(
      _decodeJsonBody(response.data),
      response.headers,
    );
    final code = _parseCode(body);
    final requiresInteractiveLogin =
        (body['_sign']?.toString() ?? '').isNotEmpty ||
        (body['notificationUrl']?.toString() ?? '').trim().isNotEmpty;
    if (code != 0 || requiresInteractiveLogin) {
      await invalidateStoredToken(token);
      throw MiAccountSessionExpired(statusCode: code > 0 ? code : null);
    }

    late final MiAccountToken refreshed;
    try {
      refreshed = await _finishLogin(
        body,
        userAgent: userAgent,
        deviceId: token.deviceId,
        cookieJar: cookieJar,
      );
    } on DioException catch (error) {
      final status = error.response?.statusCode;
      if (_isSessionFailureStatus(status)) {
        await invalidateStoredToken(token);
        throw MiAccountSessionExpired(statusCode: status);
      }
      rethrow;
    } on StateError {
      await invalidateStoredToken(token);
      throw const MiAccountSessionExpired();
    }

    await _persistRefreshedTokenIfCurrent(token, refreshed);
    _log.info('Xiaomi account service session refreshed');
    return refreshed;
  }

  /// Clears the persisted session only when it is still the session that
  /// failed. A login started concurrently must not be removed by an older
  /// request completing later.
  Future<void> invalidateStoredToken(MiAccountToken token) async {
    final stored = await loadStoredToken();
    if (stored == null || !_sameSession(stored, token)) return;
    await clearStoredToken();
    _log.warning(
      'Xiaomi account session invalidated after authentication failure',
    );
  }

  /// 登录小米账号。
  ///
  /// [extraCookieHeader] 用来把「已经建立好的账号会话」塞进来 —— 典型场景是
  /// 用户刚在二次验证窗口里完成了验证，此时 WebView 里已经有了 passToken 等
  /// 已认证 cookie。带着它们再走一次登录，服务端的 serviceLogin 会直接返回票据
  /// （和浏览器里的行为一致），不会再次要求二次验证。
  Future<MiAccountToken> login({
    required String username,
    required String password,
    String userAgent = defaultUserAgent,
    String extraCookieHeader = '',
  }) async {
    final cookieJar = _CookieJar()..set('sdkVersion', _sdkVersion);
    if (extraCookieHeader.trim().isNotEmpty) {
      // 先放外部会话，这样下面能复用它带来的 deviceId（会话连续性）
      cookieJar.mergeCookieHeader(extraCookieHeader);
    }
    final deviceId = cookieJar.value('deviceId') ?? _randomDeviceId();
    cookieJar.set('deviceId', deviceId);

    final step1 = await _dio.get<String>(
      _serviceLoginUrl,
      options: _requestOptions(userAgent, cookieJar),
    );
    cookieJar.mergeSetCookie(step1.headers);

    final step1Body = _decodeJsonBody(step1.data);
    final sign = step1Body['_sign']?.toString();
    if (sign == null || sign.isEmpty) {
      return _finishLogin(
        step1Body,
        userAgent: userAgent,
        deviceId: deviceId,
        cookieJar: cookieJar,
      );
    }

    final passwordHash = md5
        .convert(utf8.encode(password))
        .toString()
        .toUpperCase();
    final form = <String, String>{
      'sid': _healthSid,
      'hash': passwordHash,
      'callback': 'https://sts-hlth.io.mi.com/healthapp/sts',
      'qs': '%3Fsid%3Dmiothealth%26_json%3Dtrue',
      'user': username,
      '_sign': sign,
      '_json': 'true',
    };

    final step2 = await _dio.post<String>(
      _serviceLoginAuthUrl,
      data: form,
      options: _requestOptions(userAgent, cookieJar),
    );
    cookieJar.mergeSetCookie(step2.headers);

    final step2Body = _decodeJsonBody(step2.data);
    // 顺序很重要：要求二次验证时小米**同样会回一个 _sign**，
    // 先判 _sign 会把「需要验证」误报成「登录失败」。
    final notificationUrl = step2Body['notificationUrl']?.toString() ?? '';
    if (notificationUrl.trim().isNotEmpty) {
      // 把这次请求的原文带上：用户验证完之后要原样重发，才能接着这次登录。
      throw MiAccountTwoFactorRequired(
        url: notificationUrl.trim(),
        deviceId: deviceId,
        form: Map<String, String>.unmodifiable(form),
      );
    }
    if ((step2Body['_sign']?.toString() ?? '').isNotEmpty) {
      throw StateError('小米账号登录还有一步凭据没走完（服务端又回了 _sign）');
    }
    return _finishLogin(
      step2Body,
      userAgent: userAgent,
      deviceId: deviceId,
      cookieJar: cookieJar,
    );
  }

  Future<List<MiCloudDevice>> fetchBoundDevices({
    required MiAccountToken token,
    String userAgent = defaultUserAgent,
  }) async {
    final body = await _miServiceCallEncrypted(
      token: token,
      url: _deviceListUrl,
      paramsPlain: const {'data': '{"page_size":50,"status":1}'},
      userAgent: userAgent,
    );

    final payload = jsonDecode(body) as Map<String, dynamic>;
    final code = _parseCode(payload);
    if (_isSessionFailureCode(code)) {
      await invalidateStoredToken(token);
      throw MiAccountSessionExpired(statusCode: code);
    }
    if (code != 0 && code != 200) {
      throw StateError(
        'Xiaomi device list failed: code=$code, message=${payload['message'] ?? payload['msg'] ?? ''}',
      );
    }
    final result =
        (payload['result'] as Map?)?.cast<String, dynamic>() ??
        const <String, dynamic>{};
    final list = (result['list'] as List?) ?? const [];
    return list
        .whereType<Map>()
        .map((item) => MiCloudDevice.fromJson(item.cast<String, dynamic>()))
        .toList();
  }

  Future<String> fetchAgpsFileUrl({
    required MiAccountToken token,
    required String source,
    required int type,
    required bool online,
    required int days,
    required String model,
    String userAgent = defaultUserAgent,
  }) async {
    final url = online
        ? 'https://hlth.io.mi.com/healthapp/agps/get_online_file'
        : 'https://hlth.io.mi.com/healthapp/agps/get_offline_file';
    final body = await _miServiceCallEncrypted(
      token: token,
      url: url,
      signaturePath: '/agps/${online ? 'get_online_file' : 'get_offline_file'}',
      paramsPlain: {
        'data': jsonEncode({
          'source': source,
          'days': days,
          'gps_type': type,
          'model': model,
        }),
      },
      userAgent: userAgent,
    );
    final decoded = jsonDecode(body);
    final payload = decoded is Map
        ? decoded.cast<String, dynamic>()
        : const <String, dynamic>{};
    final code = _parseCode(payload);
    if (_isSessionFailureCode(code)) {
      await invalidateStoredToken(token);
      throw MiAccountSessionExpired(statusCode: code);
    }
    if (code != 0 && code != 200) {
      throw StateError(
        'Xiaomi AGPS metadata failed: code=$code, '
        'message=${payload['message'] ?? payload['msg'] ?? ''}',
      );
    }
    final result = (payload['result'] as Map?)?.cast<String, dynamic>();
    final fileUrl = result?['agps_fds_url']?.toString() ?? '';
    if (fileUrl.isEmpty) {
      throw StateError('Xiaomi AGPS response has no file URL');
    }
    return fileUrl;
  }

  /// 用验证窗口的会话接着把登录走完。
  ///
  /// **关键是第一条路：原样重发当初那次 `serviceLoginAuth2`。**
  /// 验证地址长这样：
  /// `account.xiaomi.com/fe/service/identity/authStart?sid=…&context=…`
  /// 里面的 `context` 才是「这次登录尝试」的身份。用户在网页上完成验证，
  /// 验证掉的是**那个 context**；重新 GET 一次 `serviceLogin` 会拿到一个
  /// 全新的 context，服务端自然还是回 `_sign` 让你验证 —— 这就是之前
  /// 「网页里明明验证完了却说没验证」的原因。
  ///
  /// 第二条路（cookie 直接换票据）留作兜底：账号已经是登录态时，
  /// `serviceLogin` 会直接给 `location`。
  Future<MiAccountToken> completeTwoFactorLogin({
    required MiAccountTwoFactorRequired challenge,
    required String cookieHeader,
    String username = '',
    String password = '',
    String userAgent = defaultUserAgent,
  }) async {
    _log.info('二次验证完成，接着登录。窗口带回来的 cookie：'
        '${_cookieNames(cookieHeader)}');

    // 把账密补进原文（构造 challenge 时不一定带着密码）。
    final replay = Map<String, String>.from(challenge.form);
    if (username.isNotEmpty) replay['user'] = username;
    if (password.isNotEmpty) {
      replay['hash'] =
          md5.convert(utf8.encode(password)).toString().toUpperCase();
    }

    String? replayFailure;
    if (replay['_sign']?.isNotEmpty == true && replay['user']?.isNotEmpty == true) {
      // 重发要**尽量还原当初那次请求**，所以 deviceId 用起头那个（app 生成的），
      // 而不是验证窗口自己那个 —— context 是 app 用前者的身份建出来的。
      final replayJar = _CookieJar()..set('sdkVersion', _sdkVersion);
      replayJar.set('deviceId', challenge.deviceId);
      replayJar.mergeCookieHeader(cookieHeader, skip: const {'deviceId'});
      try {
        final token = await _replayAuthRequest(
          replay,
          userAgent: userAgent,
          cookieJar: replayJar,
          deviceId: challenge.deviceId,
        );
        _log.info('原样重发 serviceLoginAuth2 拿到了票据');
        return token;
      } catch (e) {
        replayFailure = '$e';
        _log.warning('重发 serviceLoginAuth2 没成功（$e），改用 cookie 直接换票据');
      }
    } else {
      _log.warning('这次没有可重发的登录请求（缺 _sign/user），直接试 cookie 换票据');
    }

    // 兜底这条路走的是验证窗口那个会话，所以 deviceId 以窗口里的为准。
    final deviceId =
        _extractCookieValue(cookieHeader, 'deviceId') ?? challenge.deviceId;
    final cookieJar = _CookieJar()
      ..set('sdkVersion', _sdkVersion)
      ..set('deviceId', deviceId)
      ..mergeCookieHeader(cookieHeader);

    return _completeWithCookiesOnly(
      cookieJar: cookieJar,
      deviceId: deviceId,
      userAgent: userAgent,
      cookieNames: _cookieNames(cookieHeader),
      replayFailure: replayFailure,
    );
  }

  /// 原样重发 `serviceLoginAuth2`：服务端看到这个 `_sign` 对应的 context
  /// 已经验证过，就会直接回 `location`。
  ///
  /// 会重试几次：「验证已完成」在服务端可能还没落定，第一次重发偶尔仍会
  /// 回一个 `notificationUrl`。这种情况等一会儿再发同样的请求就好，
  /// 不要去重新 GET `serviceLogin`（那等于换一个新的 context 从头再来）。
  Future<MiAccountToken> _replayAuthRequest(
    Map<String, String> form, {
    required String userAgent,
    required _CookieJar cookieJar,
    required String deviceId,
  }) async {
    for (var attempt = 0; attempt < 3; attempt += 1) {
      if (attempt > 0) {
        await Future<void>.delayed(Duration(milliseconds: 900 * attempt));
      }

      final response = await _dio.post<String>(
        _serviceLoginAuthUrl,
        data: form,
        options: _requestOptions(userAgent, cookieJar),
      );
      cookieJar.mergeSetCookie(response.headers);

      final body = _fillAuthResponseFromHeaders(
        _decodeJsonBody(response.data),
        response.headers,
      );
      final notificationUrl = body['notificationUrl']?.toString() ?? '';
      if (notificationUrl.trim().isNotEmpty) {
        _log.warning('第 ${attempt + 1} 次重发 serviceLoginAuth2：'
            '服务端还要求二次验证');
        continue;
      }
      return _finishLogin(
        body,
        userAgent: userAgent,
        deviceId: deviceId,
        cookieJar: cookieJar,
      );
    }
    throw StateError('重发了 3 次 serviceLoginAuth2，服务端仍然要求二次验证');
  }

  /// 只靠会话 cookie 去 `serviceLogin` 换票据（账号已是登录态时可用）。
  Future<MiAccountToken> _completeWithCookiesOnly({
    required _CookieJar cookieJar,
    required String deviceId,
    required String userAgent,
    required String cookieNames,
    String? replayFailure,
  }) async {
    Map<String, dynamic>? lastCredentialStepBody;
    var stillWantsTwoFactor = false;
    for (var attempt = 0; attempt < 3; attempt += 1) {
      if (attempt > 0) {
        await Future<void>.delayed(Duration(milliseconds: 700 * attempt));
      }

      final step1 = await _dio.get<String>(
        _serviceLoginUrl,
        options: _requestOptions(userAgent, cookieJar),
      );
      cookieJar.mergeSetCookie(step1.headers);

      final body = _fillAuthResponseFromHeaders(
        _decodeJsonBody(step1.data),
        step1.headers,
      );
      // 又是 notificationUrl：服务端还在要求二次验证，说明验证窗口那边
      // 的结果根本没落到这个会话上。
      final notificationUrl = body['notificationUrl']?.toString() ?? '';
      if (notificationUrl.trim().isNotEmpty) {
        _log.warning('第 ${attempt + 1} 次换票据：服务端还要二次验证');
        stillWantsTwoFactor = true;
        continue;
      }
      // 回了 _sign 就是「这个会话我不认，请重新给凭据」。
      if ((body['_sign']?.toString() ?? '').isNotEmpty) {
        _log.warning('第 ${attempt + 1} 次换票据：服务端仍然要凭据');
        lastCredentialStepBody = body;
        continue;
      }

      return _finishLogin(
        body,
        userAgent: userAgent,
        deviceId: deviceId,
        cookieJar: cookieJar,
      );
    }
    final reason = lastCredentialStepBody == null
        ? ''
        : '（服务端说：'
            '${lastCredentialStepBody['description'] ?? lastCredentialStepBody['desc'] ?? '没给原因'}）\n';
    final whatFailed =
        stillWantsTwoFactor ? '服务端仍然要求做二次验证' : '服务端仍然要求重新给账号密码';
    final replayNote =
        replayFailure == null ? '' : '重发原登录请求也失败了：$replayFailure\n';
    throw StateError(
      '$whatFailed，换票据没成功。\n'
      '$reason$replayNote'
      '这次带回的 cookie：$cookieNames\n'
      '可以改用「手动填写 authkey」，或重试一次登录。',
    );
  }

  Future<MiAccountToken> _finishLogin(
    Map<String, dynamic> authResp, {
    required String userAgent,
    required String deviceId,
    required _CookieJar cookieJar,
  }) async {
    final code = _parseCode(authResp);
    final ssecurity = authResp['ssecurity']?.toString() ?? '';
    final notificationUrl = authResp['notificationUrl']?.toString();
    if (notificationUrl != null && notificationUrl.trim().isNotEmpty) {
      throw MiAccountTwoFactorRequired(
        url: notificationUrl,
        deviceId: deviceId,
      );
    }
    if (code != 0 || ssecurity.isEmpty) {
      if (code == 70016) {
        throw StateError('小米账号或密码不对');
      }
      throw StateError(
        '小米账号登录失败：code=$code，'
        '${authResp['description'] ?? authResp['desc'] ?? '服务端没给说明'}',
      );
    }

    final location = authResp['location']?.toString() ?? '';
    if (location.isEmpty) {
      throw StateError('小米账号登录成功但没给 STS 地址，拿不到 serviceToken');
    }

    final step3 = await _dio.get<String>(
      location,
      options: _requestOptions(userAgent, cookieJar),
    );
    cookieJar.mergeSetCookie(step3.headers);
    final serviceToken =
        cookieJar.value('serviceToken') ??
        _extractHeaderCookie(step3.headers, 'serviceToken');
    if (serviceToken == null || serviceToken.isEmpty) {
      throw StateError('小米账号登录没换到 serviceToken');
    }

    return MiAccountToken(
      userId: authResp['userId']?.toString() ?? '',
      deviceId: deviceId,
      ssecurity: ssecurity,
      serviceToken: serviceToken,
      cUserId:
          cookieJar.value('cUserId') ?? authResp['cUserId']?.toString() ?? '',
      passToken:
          cookieJar.value('passToken') ??
          authResp['passToken']?.toString() ??
          '',
      psecurity: authResp['psecurity']?.toString() ?? '',
    );
  }

  Future<String> _miServiceCallEncrypted({
    required MiAccountToken token,
    required String url,
    String? signaturePath,
    required Map<String, String> paramsPlain,
    required String userAgent,
    bool allowRefresh = true,
  }) async {
    final nonce = _generateNonce(DateTime.now().millisecondsSinceEpoch);
    final signedNonce = _calcSignedNonce(token.ssecurity, nonce);
    final path = signaturePath ?? Uri.parse(url).path;

    final signedParams = Map<String, String>.from(paramsPlain);
    signedParams['rc4_hash__'] = _generateEncSignature(
      path: path,
      method: 'POST',
      signedNonce: signedNonce,
      params: paramsPlain,
    );

    final encryptedParams = _rc4EncryptParams(signedNonce, signedParams);
    encryptedParams['signature'] = _generateEncSignature(
      path: path,
      method: 'POST',
      signedNonce: signedNonce,
      params: encryptedParams,
    );
    encryptedParams['_nonce'] = nonce;

    final cookieParts = <String>[
      'sdkVersion=$_sdkVersion',
      'locale=en_us',
      if (token.deviceId.isNotEmpty) 'deviceId=${token.deviceId}',
      if (token.userId.isNotEmpty) 'userId=${token.userId}',
      if (token.cUserId.isNotEmpty) 'cUserId=${token.cUserId}',
      if (token.passToken.isNotEmpty) 'passToken=${token.passToken}',
      'serviceToken=${token.serviceToken}',
    ];

    late final Response<String> response;
    try {
      response = await _dio.post<String>(
        url,
        data: encryptedParams,
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          responseType: ResponseType.plain,
          headers: {
            'User-Agent': userAgent,
            'region_tag': 'cn',
            'HandleParams': 'true',
            'Cookie': cookieParts.join('; '),
          },
        ),
      );
    } on DioException catch (error) {
      final status = error.response?.statusCode;
      if (_isSessionFailureStatus(status)) {
        if (!allowRefresh) {
          await invalidateStoredToken(token);
          throw MiAccountSessionExpired(statusCode: status);
        }
        final refreshed = await refreshToken(
          token: token,
          userAgent: userAgent,
        );
        return _miServiceCallEncrypted(
          token: refreshed,
          url: url,
          signaturePath: signaturePath,
          paramsPlain: paramsPlain,
          userAgent: userAgent,
          allowRefresh: false,
        );
      }
      rethrow;
    }

    final raw = (response.data ?? '').trim();
    if (raw.isEmpty) return raw;
    final encoded = raw.startsWith('"') && raw.endsWith('"')
        ? raw.substring(1, raw.length - 1)
        : raw;
    final encrypted = base64.decode(encoded);
    final decrypted = _rc4Crypt(base64.decode(signedNonce), encrypted);
    final result = utf8.decode(decrypted);
    if (_bodySignalsSessionFailure(result)) {
      if (!allowRefresh) {
        await invalidateStoredToken(token);
        throw const MiAccountSessionExpired();
      }
      final refreshed = await refreshToken(
        token: token,
        userAgent: userAgent,
      );
      return _miServiceCallEncrypted(
        token: refreshed,
        url: url,
        signaturePath: signaturePath,
        paramsPlain: paramsPlain,
        userAgent: userAgent,
        allowRefresh: false,
      );
    }
    return result;
  }

  Options _requestOptions(String userAgent, _CookieJar cookieJar) {
    return Options(
      contentType: Headers.formUrlEncodedContentType,
      responseType: ResponseType.plain,
      headers: {'User-Agent': userAgent, 'Cookie': cookieJar.header},
    );
  }

  Map<String, dynamic> _decodeJsonBody(String? body) {
    const prefix = '&&&START&&&';
    final text = (body ?? '').trim();
    final stripped = text.startsWith(prefix)
        ? text.substring(prefix.length)
        : text;
    return jsonDecode(stripped) as Map<String, dynamic>;
  }

  Map<String, dynamic> _fillAuthResponseFromHeaders(
    Map<String, dynamic> body,
    Headers headers,
  ) {
    final filled = Map<String, dynamic>.from(body);
    for (final key in ['passToken', 'cUserId', 'userId']) {
      filled.putIfAbsent(key, () => _extractHeaderCookie(headers, key));
    }

    final extensionPragma =
        _headerValue(headers, 'extension-pragma') ??
        _headerValue(headers, 'Extension-Pragma');
    if (extensionPragma != null && extensionPragma.isNotEmpty) {
      try {
        final extension = jsonDecode(extensionPragma) as Map<String, dynamic>;
        for (final key in ['ssecurity', 'psecurity', 'nonce']) {
          final value = extension[key];
          if ((filled[key]?.toString() ?? '').isEmpty && value != null) {
            filled[key] = value;
          }
        }
      } catch (_) {
        // Xiaomi sometimes omits this header; malformed values should not hide
        // the primary account response.
      }
    }
    return filled;
  }

  String? _headerValue(Headers headers, String name) {
    final values = headers.map[name] ?? headers.map[name.toLowerCase()];
    return values?.firstOrNull?.trim();
  }

  int _parseCode(Map<String, dynamic> value) {
    final raw = value['code'];
    if (raw is int) return raw;
    if (raw is num) return raw.toInt();
    return int.tryParse(raw?.toString() ?? '') ?? -1;
  }

  bool _isSessionFailureStatus(int? status) => status == 401 || status == 403;

  bool _isSessionFailureCode(int code) => code == 401 || code == 403;

  bool _bodySignalsSessionFailure(String body) {
    try {
      final value = jsonDecode(body);
      return value is Map &&
          _isSessionFailureCode(_parseCode(value.cast<String, dynamic>()));
    } catch (_) {
      return false;
    }
  }

  bool _sameSession(MiAccountToken first, MiAccountToken second) =>
      first.ssecurity == second.ssecurity &&
      first.serviceToken == second.serviceToken;

  Future<void> _persistRefreshedTokenIfCurrent(
    MiAccountToken previous,
    MiAccountToken refreshed,
  ) async {
    final stored = await loadStoredToken();
    if (stored == null || !_sameRefreshSource(stored, previous)) return;
    await persistToken(refreshed);
  }

  bool _sameRefreshSource(MiAccountToken first, MiAccountToken second) =>
      first.userId == second.userId &&
      first.deviceId == second.deviceId &&
      first.passToken == second.passToken;

  String _generateNonce(int millis) {
    final random = Random.secure();
    final bytes = BytesBuilder();
    bytes.add(List<int>.generate(8, (_) => random.nextInt(256)));
    final minutes = millis ~/ 60000;
    bytes.add([
      (minutes >> 24) & 0xff,
      (minutes >> 16) & 0xff,
      (minutes >> 8) & 0xff,
      minutes & 0xff,
    ]);
    return base64.encode(bytes.toBytes());
  }

  String _calcSignedNonce(String ssecurity, String nonce) {
    final bytes = BytesBuilder()
      ..add(base64.decode(ssecurity))
      ..add(base64.decode(nonce));
    return base64.encode(sha256.convert(bytes.toBytes()).bytes);
  }

  String _generateEncSignature({
    required String path,
    required String method,
    required String signedNonce,
    required Map<String, String> params,
  }) {
    final keys = params.keys.toList()..sort();
    final pieces = <String>[
      method.toUpperCase(),
      path,
      for (final key in keys) '$key=${params[key]}',
      signedNonce,
    ];
    return base64.encode(sha1.convert(utf8.encode(pieces.join('&'))).bytes);
  }

  Map<String, String> _rc4EncryptParams(
    String signedNonce,
    Map<String, String> paramsPlain,
  ) {
    final key = base64.decode(signedNonce);
    final keys = paramsPlain.keys.toList()..sort();
    final cipher = _Rc4(key)..drop(1024);
    return {
      for (final keyName in keys)
        keyName: base64.encode(
          cipher.crypt(utf8.encode(paramsPlain[keyName]!)),
        ),
    };
  }

  Uint8List _rc4Crypt(List<int> key, List<int> data) {
    final cipher = _Rc4(key)..drop(1024);
    return cipher.crypt(data);
  }

  String _randomDeviceId() {
    const chars = 'abcdefghijklmnopqrstuvwxyz';
    final random = Random.secure();
    return List.generate(6, (_) => chars[random.nextInt(chars.length)]).join();
  }

  String? _extractHeaderCookie(Headers headers, String name) {
    final setCookie = headers.map['set-cookie'] ?? const <String>[];
    for (final cookie in setCookie) {
      final value = _parseCookiePair(cookie, name);
      if (value != null) return value;
    }
    return null;
  }

  /// 只列 cookie 的**名字**：值等同于凭据，不能进日志。
  String _cookieNames(String cookieHeader) {
    return cookieHeader
        .split(';')
        .map((pair) => pair.split('=').first.trim())
        .where((name) => name.isNotEmpty)
        .join(',');
  }

  String? _extractCookieValue(String cookieHeader, String name) {
    for (final rawPair in cookieHeader.split(';')) {
      final pair = rawPair.trim();
      final index = pair.indexOf('=');
      if (index <= 0) continue;
      if (pair.substring(0, index).trim() == name) {
        return pair.substring(index + 1).trim();
      }
    }
    return null;
  }
}

class _CookieJar {
  final _values = <String, String>{};

  String get header =>
      _values.entries.map((entry) => '${entry.key}=${entry.value}').join('; ');

  String? value(String key) => _values[key];

  void set(String key, String value) {
    if (key.isNotEmpty && value.isNotEmpty) {
      _values[key] = value;
    }
  }

  void mergeSetCookie(Headers headers) {
    final setCookie = headers.map['set-cookie'] ?? const <String>[];
    for (final cookie in setCookie) {
      final pair = cookie.split(';').first.trim();
      final index = pair.indexOf('=');
      if (index <= 0) continue;
      set(pair.substring(0, index).trim(), pair.substring(index + 1).trim());
    }
  }

  /// [skip] 里的名字不会被覆盖（重发旧请求时要保住原来的 deviceId）。
  void mergeCookieHeader(String cookieHeader, {Set<String> skip = const {}}) {
    for (final rawPair in cookieHeader.split(';')) {
      final pair = rawPair.trim();
      final index = pair.indexOf('=');
      if (index <= 0) continue;
      final name = pair.substring(0, index).trim();
      if (skip.contains(name)) continue;
      set(name, pair.substring(index + 1).trim());
    }
  }
}

String? _parseCookiePair(String cookie, String name) {
  final pair = cookie.split(';').first.trim();
  final index = pair.indexOf('=');
  if (index <= 0) return null;
  final cookieName = pair.substring(0, index).trim();
  if (cookieName != name && !cookieName.endsWith('_$name')) return null;
  return pair.substring(index + 1).trim();
}

class _Rc4 {
  _Rc4(List<int> key) {
    for (var n = 0; n < 256; n++) {
      _s[n] = n;
    }
    var j = 0;
    for (var n = 0; n < 256; n++) {
      j = (j + _s[n] + key[n % key.length]) & 0xff;
      final tmp = _s[n];
      _s[n] = _s[j];
      _s[j] = tmp;
    }
  }

  final _s = Uint8List(256);
  var _i = 0;
  var _j = 0;

  void drop(int count) {
    for (var n = 0; n < count; n++) {
      _next();
    }
  }

  Uint8List crypt(List<int> data) {
    final out = Uint8List(data.length);
    for (var n = 0; n < data.length; n++) {
      out[n] = data[n] ^ _next();
    }
    return out;
  }

  int _next() {
    _i = (_i + 1) & 0xff;
    _j = (_j + _s[_i]) & 0xff;
    final tmp = _s[_i];
    _s[_i] = _s[_j];
    _s[_j] = tmp;
    return _s[(_s[_i] + _s[_j]) & 0xff];
  }
}

/// 全局单例。原来这里是个 Riverpod provider（`Provider<MiAccountService>`），
/// 我们的 PC 端不引入依赖注入框架，直接暴露一个懒加载的单例。
final MiAccountService miAccountService = MiAccountService();
