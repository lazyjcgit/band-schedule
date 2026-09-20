/// 小米账号登录 / 二次验证这条链路的测试。
///
/// 之前这里一次都没测过，结果出了一个「网页里明明验证完了，却报
/// 『仍然需要账号凭据』」的 bug。下面用假服务器把两种情况都钉住：
///   · 会话有效 → 必须换到票据
///   · 会话无效 → 必须给出说得清原因的中文报错（而不是含糊的英文）
library;

import 'package:band_schedule_pc/src/features/accounts/models/mi_account_models.dart';
import 'package:band_schedule_pc/src/features/accounts/services/mi_account_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_mi_account_server.dart';

/// 一次「服务端只是要个凭据」的回应。
const _signOnly = {'_sign': 'sign-token', 'qs': '?sid=miothealth&_json=true'};

/// 一次「会话有效」的回应，带 STS 地址。
Map<String, dynamic> _authenticated() => {
      'code': 0,
      'ssecurity': 'ssecurity-value',
      'userId': 12345678,
      'cUserId': 'cuser-value',
      'passToken': 'pass-token-value',
      'location': 'https://sts-hlth.io.mi.com/healthapp/sts?sig=abc',
    };

/// 让 STS 那一步返回 serviceToken。
FakeReply _stsReply() => FakeReply(
      body: 'ok',
      headers: {'set-cookie': 'serviceToken=service-token-value; Path=/'},
    );

({MiAccountService service, FakeMiAccountServer server}) buildService() {
  final server = FakeMiAccountServer();
  final dio = Dio(BaseOptions(validateStatus: (code) => code != null && code < 500))
    ..httpClientAdapter = server;
  return (service: MiAccountService(dio: dio), server: server);
}

void main() {
  group('小米账号登录', () {
    test('要求二次验证时抛 MiAccountTwoFactorRequired，而不是笼统的登录失败', () async {
      final (:service, :server) = buildService();
      server.always('serviceLogin?', FakeReply.json(_signOnly));
      server.always(
        'serviceLoginAuth2',
        FakeReply.json({
          'notificationUrl': 'https://account.xiaomi.com/pass/auth/2fa?x=1',
          // 关键：小米要求二次验证时**也会回 _sign**。
          // 如果先判 _sign，这里就会被误报成「登录失败」。
          '_sign': 'another-sign',
        }),
      );

      expect(
        () => service.login(username: 'user', password: 'pw'),
        throwsA(isA<MiAccountTwoFactorRequired>().having(
          (e) => e.url,
          'url',
          contains('2fa'),
        )),
      );
    });

    test('登录成功时依次走完 serviceLogin → Auth2 → STS，并带出 serviceToken', () async {
      final (:service, :server) = buildService();
      server.always('serviceLogin?', FakeReply.json(_signOnly));
      server.always('serviceLoginAuth2', FakeReply.json(_authenticated()));
      server.always('sts-hlth', _stsReply());

      final token = await service.login(username: 'user', password: 'pw');

      expect(token.ssecurity, 'ssecurity-value');
      expect(token.serviceToken, 'service-token-value');
      expect(token.cUserId, 'cuser-value');
      expect(token.passToken, 'pass-token-value');
      // 密码不能明文出现在任何一次请求里。
      for (final request in server.requests) {
        expect(request.body.contains('pw'), isFalse,
            reason: '请求里不该出现明文密码：${request.uri}');
      }
    });

    test('extraCookieHeader 里的凭据会带上，并且复用它的 deviceId', () async {
      final (:service, :server) = buildService();
      server.always('serviceLogin?', FakeReply.json(_signOnly));
      server.always('serviceLoginAuth2', FakeReply.json(_authenticated()));
      server.always('sts-hlth', _stsReply());

      await service.login(
        username: 'user',
        password: 'pw',
        extraCookieHeader: 'passToken=from-webview; deviceId=dev-from-webview',
      );

      final first = server.requests.first;
      expect(first.cookieNames, containsAll(<String>['passToken', 'deviceId']));
      // 复用同一个 deviceId，会话才连得上；不能新生成一个。
      expect(first.cookie, contains('deviceId=dev-from-webview'));
      expect(first.cookie, contains('passToken=from-webview'));
    });
  });

  group('二次验证后接着登录', () {
    test('原样重发 serviceLoginAuth2 能换到票据（关键：不能重新 GET serviceLogin）', () async {
      final (:service, :server) = buildService();
      // 重发那次请求时，服务端看到 context 已验证，直接给 location。
      server.always('serviceLoginAuth2', FakeReply.json(_authenticated()));
      server.always('sts-hlth', _stsReply());
      // serviceLogin 一次都不该被请求（它只会换来一个新的 context）
      server.always('serviceLogin?', FakeReply.json(_signOnly));

      final token = await service.completeTwoFactorLogin(
        challenge: const MiAccountTwoFactorRequired(
          url: 'https://account.xiaomi.com/fe/service/identity/authStart'
              '?sid=miothealth&context=CTX',
          deviceId: 'challenge-device',
          form: {
            'sid': 'miothealth',
            '_sign': 'the-original-sign',
            'qs': '%3Fsid%3Dmiothealth%26_json%3Dtrue',
            'callback': 'https://sts-hlth.io.mi.com/healthapp/sts',
            'user': 'user',
            '_json': 'true',
          },
        ),
        cookieHeader: 'passToken=t; cUserId=c; deviceId=d',
        username: 'user',
        password: 'pw',
      );

      expect(token.serviceToken, 'service-token-value');
      expect(server.requests.map((r) => r.uri.toString()).toList()
          .where((u) => u.contains('serviceLogin?')), isEmpty,
          reason: '重发路线不该再去 GET serviceLogin');
      // 重发必须带**同一个** _sign，否则服务端认不出是哪个 context。
      final post = server.requests.firstWhere(
          (r) => r.uri.toString().contains('serviceLoginAuth2'));
      expect(post.body, contains('_sign=the-original-sign'));
      expect(post.body, contains('user=user'));
      // 密码以 MD5 大写形式出现，不能是明文。
      expect(post.body, isNot(contains('pw')));
      // deviceId 要用**起头那个**（创建 context 时的身份），
      // 不能被验证窗口自己那个顶掉。
      expect(post.cookie, contains('deviceId=challenge-device'));
      // 但窗口带回来的会话 cookie 要一起带上。
      expect(post.cookie, contains('passToken=t'));
      expect(post.cookie, contains('cUserId=c'));
    });

    test('重发也失败时退回 cookie 换票据，两条失败都写进报错', () async {
      final (:service, :server) = buildService();
      // 重发仍然要验证 → 抛 MiAccountTwoFactorRequired
      server.always('serviceLoginAuth2', FakeReply.json({
        'notificationUrl': 'https://account.xiaomi.com/fe/service/identity'
            '/authStart?sid=miothealth&context=CTX',
      }));
      // cookie 换票据也不认
      server.always('serviceLogin?', FakeReply.json({
        ..._signOnly,
        'description': '登录验证失败',
      }));

      await expectLater(
        service.completeTwoFactorLogin(
          challenge: const MiAccountTwoFactorRequired(
            url: 'https://account.xiaomi.com/fe/service/identity/authStart'
                '?sid=miothealth&context=CTX',
            deviceId: 'challenge-device',
            form: {
              'sid': 'miothealth',
              '_sign': 'the-original-sign',
              'user': 'user',
            },
          ),
          cookieHeader: 'passToken=t; cUserId=c; deviceId=d',
          username: 'user',
          password: 'pw',
        ),
        throwsA(isA<StateError>()
            .having((e) => e.message, 'message', contains('登录验证失败'))
            .having((e) => e.message, 'message', contains('重发原登录请求也失败了'))
            .having((e) => e.message, 'message', contains('passToken'))),
      );
    });

    test('会话有效时换到票据', () async {
      final (:service, :server) = buildService();
      server.always('serviceLogin?', FakeReply.json(_authenticated()));
      server.always('sts-hlth', _stsReply());

      final token = await service.completeTwoFactorLogin(
        challenge: const MiAccountTwoFactorRequired(
          url: 'https://account.xiaomi.com/pass/auth/2fa?x=1',
          deviceId: 'challenge-device',
        ),
        cookieHeader: 'passToken=t; cUserId=c; deviceId=d',
      );

      expect(token.serviceToken, 'service-token-value');
      expect(token.ssecurity, 'ssecurity-value');
      expect(server.requests.first.cookieNames,
          containsAll(<String>['passToken', 'cUserId', 'deviceId']));
    });

    test('会话无效时报错说得清原因，并带上服务端的原话', () async {
      final (:service, :server) = buildService();
      // 服务端一直不认这个会话，只给 _sign。
      server.always('serviceLogin?', FakeReply.json({
        ..._signOnly,
        'description': 'need login',
      }));

      await expectLater(
        service.completeTwoFactorLogin(
          challenge: const MiAccountTwoFactorRequired(
            url: 'https://account.xiaomi.com/pass/auth/2fa?x=1',
            deviceId: 'challenge-device',
          ),
          cookieHeader: 'passToken=t; cUserId=c; deviceId=d',
        ),
        throwsA(isA<StateError>()
            .having((e) => e.message, 'message', contains('仍然要求'))
            .having((e) => e.message, 'message', contains('passToken'))
            .having((e) => e.message, 'message', contains('need login'))),
      );
    });

    test('服务端还要二次验证时，报错与「要凭据」区分开', () async {
      final (:service, :server) = buildService();
      server.always('serviceLogin?', FakeReply.json({
        'notificationUrl': 'https://account.xiaomi.com/pass/auth/2fa?again=1',
      }));

      await expectLater(
        service.completeTwoFactorLogin(
          challenge: const MiAccountTwoFactorRequired(
            url: 'https://account.xiaomi.com/pass/auth/2fa?x=1',
            deviceId: 'challenge-device',
          ),
          cookieHeader: 'passToken=t; cUserId=c; deviceId=d',
        ),
        throwsA(isA<StateError>()
            .having((e) => e.message, 'message', contains('二次验证'))),
      );
    });
  });

  group('要求二次验证时抛出的挑战', () {
    test('带着当初那次 serviceLoginAuth2 的请求原文', () async {
      final (:service, :server) = buildService();
      server.always('serviceLogin?', FakeReply.json(_signOnly));
      server.always(
        'serviceLoginAuth2',
        FakeReply.json({
          'notificationUrl': 'https://account.xiaomi.com/fe/service/identity'
              '/authStart?sid=miothealth&context=CTX',
        }),
      );

      try {
        await service.login(username: 'user', password: 'pw');
        fail('应该要求二次验证');
      } on MiAccountTwoFactorRequired catch (challenge) {
        // 没有这份原文就没法在验证完之后把登录接上。
        expect(challenge.form['_sign'], 'sign-token');
        expect(challenge.form['user'], 'user');
        expect(challenge.form['sid'], 'miothealth');
        expect(challenge.form['qs'], isNotEmpty);
        expect(challenge.form['callback'], contains('sts-hlth'));
      }
    });
  });
}
