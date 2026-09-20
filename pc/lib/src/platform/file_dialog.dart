/// 系统文件选择框（走我们自己写的原生通道 `bandschedule/file_dialog`）。
///
/// 不用 file_picker 之类的 Flutter 插件：插件在 Windows 上构建需要符号链接支持
/// （要开系统「开发者模式」），为一个选择框不值得。
///
/// 原生实现见 `windows/runner/file_dialog_channel.cpp`。
library;

import 'dart:io';

import 'package:band_schedule_pc/src/band/band_client.dart';
import 'package:flutter/services.dart';

const MethodChannel _channel = MethodChannel('bandschedule/file_dialog');

/// 常见课表文件的后缀。
const List<String> scheduleExtensions = ['ics', 'txt', 'csv'];

/// 让用户选一个课表文件；取消返回 null。
Future<String?> pickScheduleFile() =>
    pickFile(title: '选择课表文件', label: '课表文件', extensions: scheduleExtensions);

/// 让用户选一个 rpk（手环快应用安装包）；取消返回 null。
Future<String?> pickRpkFile() =>
    pickFile(title: '选择手环应用（.rpk）', label: '快应用', extensions: ['rpk']);

/// 在程序目录及其附近找一个手环端 rpk，省得用户手动去翻。
///
/// 分享出去的包里 rpk 会和 exe 放在一起（见仓库的 dist/pc），
/// 所以优先看 exe 所在目录；开发时 exe 在 build/... 下，再多看几层。
Future<String?> findBundledRpk() async {
  if (!Platform.isWindows) return null;

  final exeDir = File(Platform.resolvedExecutable).parent;
  final candidates = <Directory>[
    exeDir,
    Directory('${exeDir.path}${Platform.pathSeparator}rpk'),
    // 开发时：从 build/windows/x64/runner/Release 往上找仓库根
    Directory('${exeDir.path}${Platform.pathSeparator}..'
        '${Platform.pathSeparator}..${Platform.pathSeparator}..'
        '${Platform.pathSeparator}..${Platform.pathSeparator}..'
        '${Platform.pathSeparator}band${Platform.pathSeparator}band-schedule'
        '${Platform.pathSeparator}dist'),
  ];

  for (final dir in candidates) {
    if (!dir.existsSync()) continue;
    final hits = <File>[];
    for (final entity in dir.listSync()) {
      if (entity is! File) continue;
      final name = entity.uri.pathSegments.last;
      // 只认我们这个包名的正式包，避免把调试包或别的应用装上去
      if (name.startsWith(bandAppPackage) && name.endsWith('.rpk')) {
        hits.add(entity);
      }
    }
    if (hits.isNotEmpty) {
      // 有多个版本时取最新的
      hits.sort((a, b) => b.statSync().modified.compareTo(a.statSync().modified));
      return hits.first.path;
    }
  }
  return null;
}

/// 通用文件选择。取消或平台不支持时返回 null。
Future<String?> pickFile({
  String title = '',
  String label = '文件',
  List<String> extensions = const [],
}) async {
  if (!Platform.isWindows) {
    // 目前只实现了 Windows 的原生通道；其它平台先明确返回 null，
    // 而不是抛异常让界面崩掉。
    return null;
  }
  try {
    final path = await _channel.invokeMethod<String>('pickFile', {
      'title': title,
      'label': label,
      'extensions': extensions,
    });
    if (path == null || path.isEmpty) return null;
    return path;
  } on MissingPluginException {
    // 原生通道没注册（比如跑在非 Windows 上）—— 当作"没选"
    return null;
  } on PlatformException catch (e) {
    throw FileDialogException('打开文件选择框失败：${e.message ?? e.code}');
  }
}

class FileDialogException implements Exception {
  const FileDialogException(this.message);
  final String message;

  @override
  String toString() => message;
}

/// 读文件内容（带一层大小保护，避免误选了几十 MB 的文件把界面卡住）。
Future<String> readTextFile(String path, {int maxBytes = 4 * 1024 * 1024}) async {
  final file = File(path);
  if (!file.existsSync()) {
    throw FileDialogException('文件不存在：$path');
  }
  final size = file.lengthSync();
  if (size > maxBytes) {
    throw FileDialogException(
        '文件太大了（${(size / 1024 / 1024).toStringAsFixed(1)} MB），课表文件不该这么大');
  }
  return file.readAsString();
}
