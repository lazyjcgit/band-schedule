/// 统一的 HTTP 客户端（纯 Dio，不依赖 Riverpod 等 DI 框架）。
///
/// 取代 OronBox 的 app_http_transport.dart / dio_provider.dart：
/// 那两个把 Dio 实例挂在 Riverpod 的 provider 上，而我们的 PC 端不需要
/// 依赖注入框架（就一个 HttpClient），所以直接返回配置好的实例。
library;

import 'dart:io';

import 'package:dio/dio.dart';

/// 给小米账号相关请求用的 Dio。
///
/// 注意：小米账号接口对 UA 和 Cookie 敏感，这里保留 Cookie 以便登录流程
/// 连续多次请求（登录 → 二次验证 → 拉设备列表）能共享会话。
Dio createAppHttpTransport() {
  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
    headers: {
      HttpHeaders.userAgentHeader:
          'MiFit/6.3.0 (Windows; BandSchedule) Dart/${Platform.version.split(' ').first}',
    },
    // 小米接口在登录过程中会用 3xx/4xx 表达状态，交给调用方判断
    validateStatus: (code) => code != null && code < 500,
  ));
  // 让 Cookie 在请求之间保持（登录流程要用）
  dio.interceptors.add(CookieKeepAliveInterceptor());
  return dio;
}

/// 一个极简的 Cookie 保持器：把 Set-Cookie 存下来，后续请求带上。
class CookieKeepAliveInterceptor extends Interceptor {
  final Map<String, String> _jar = <String, String>{};

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    final setCookies = response.headers[HttpHeaders.setCookieHeader];
    if (setCookies != null && setCookies.isNotEmpty) {
      for (final raw in setCookies) {
        final pair = raw.split(';').first;
        final idx = pair.indexOf('=');
        if (idx > 0) {
          _jar[pair.substring(0, idx).trim()] = pair.substring(idx + 1).trim();
        }
      }
    }
    handler.next(response);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_jar.isNotEmpty) {
      options.headers[HttpHeaders.cookieHeader] =
          _jar.entries.map((e) => '${e.key}=${e.value}').join('; ');
    }
    handler.next(options);
  }
}
