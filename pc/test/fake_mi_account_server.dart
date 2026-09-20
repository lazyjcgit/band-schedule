/// 一个假的小米账号服务器：把请求按顺序喂给 Dio，不碰真实网络。
///
/// 用来测登录/二次验证这条链路 —— 之前那个
/// 「验证完了还说缺凭据」的 bug 就出在这里，而这条链路以前一次都没被测过。
library;

import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';

/// 一次记录下来的请求，方便断言「发出去的报文长什么样」。
class RecordedRequest {
  RecordedRequest(this.method, this.uri, this.body, this.headers);

  final String method;
  final Uri uri;
  final String body;
  final Map<String, dynamic> headers;

  /// 这次请求带的 Cookie 头（没带则为空串）。
  String get cookie {
    for (final entry in headers.entries) {
      if (entry.key.toLowerCase() == 'cookie') {
        return '${entry.value}';
      }
    }
    return '';
  }

  /// 这次请求带的 Cookie **名字**，用于断言（值不参与比较）。
  List<String> get cookieNames => cookie
      .split(';')
      .map((pair) => pair.split('=').first.trim())
      .where((name) => name.isNotEmpty)
      .toList();
}

/// 一条预设的响应。
class FakeReply {
  FakeReply({
    required this.body,
    this.statusCode = 200,
    this.headers = const {},
  });

  /// 快捷构造：小米接口的正文前缀是 `&&&START&&&`。
  factory FakeReply.json(Object payload, {Map<String, String> headers = const {}}) {
    return FakeReply(body: '&&&START&&&${jsonEncode(payload)}', headers: headers);
  }

  final String body;
  final int statusCode;
  final Map<String, String> headers;
}

/// 按「路径关键字」排队发响应的假适配器。
///
/// 同一个路径被请求多次时，依次取列表里下一条；用完了就一直复用最后一条。
class FakeMiAccountServer implements HttpClientAdapter {
  final requests = <RecordedRequest>[];
  final _queues = <String, List<FakeReply>>{};

  /// 给某个路径关键字排一串响应。
  void when(String pathContains, List<FakeReply> replies) {
    _queues[pathContains] = List<FakeReply>.from(replies);
  }

  /// 给某个路径关键字排一条「永远返回它」的响应。
  void always(String pathContains, FakeReply reply) {
    _queues[pathContains] = [reply];
  }

  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<Uint8List>? requestStream,
      Future<void>? cancelFuture) async {
    final body = requestStream == null
        ? ''
        : utf8.decode(await requestStream.fold<List<int>>(
            <int>[], (all, chunk) => all..addAll(chunk)));

    requests.add(RecordedRequest(
      options.method,
      options.uri,
      body,
      Map<String, dynamic>.from(options.headers),
    ));

    final reply = _pick(options.uri.toString(), options.method);
    if (reply == null) {
      return ResponseBody.fromString('not stubbed: ${options.uri}', 404);
    }
    return ResponseBody.fromString(
      reply.body,
      reply.statusCode,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
        for (final entry in reply.headers.entries)
          entry.key: [entry.value],
      },
    );
  }

  FakeReply? _pick(String url, String method) {
    for (final entry in _queues.entries) {
      if (!url.contains(entry.key)) continue;
      final queue = entry.value;
      if (queue.length > 1) {
        return queue.removeAt(0);
      }
      return queue.isEmpty ? null : queue.first;
    }
    return null;
  }

  @override
  void close({bool force = false}) {}
}
