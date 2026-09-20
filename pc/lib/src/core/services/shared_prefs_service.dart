/// 轻量键值存储（纯 Dart，不依赖 shared_preferences 插件）。
///
/// 为什么自己写：Flutter 在 Windows 上构建插件需要开启系统「开发者模式」
/// （符号链接支持），我们不想为了存几个键值就要求用户改系统设置。
/// 这里直接写一个 JSON 文件到用户配置目录，接口和原来的 SharedPreferences
/// 保持一致（get 同步、set 异步落盘），调用方无需改动。
library;

import 'dart:convert';
import 'dart:io';

class SharedPrefsService {
  SharedPrefsService._();

  static final SharedPrefsService _instance = SharedPrefsService._();
  static SharedPrefsService get instance => _instance;

  /// 内存里的键值。**初始就是空表而不是 null** —— 这样即使调用方忘了
  /// `init()`（或 init 失败），读配置也不会抛异常把界面搞崩。
  /// 界面因为读一个配置项而崩溃是不可接受的。
  Map<String, Object?> _data = <String, Object?>{};
  File? _file;
  bool _loadedFromDisk = false;

  /// 是否已经把磁盘上的值读进来了。
  bool get isInitialized => _loadedFromDisk;

  /// 配置目录：Windows 用 %APPDATA%\band-schedule，其它平台用 ~/.config/band-schedule
  static Directory get _configDir {
    final env = Platform.environment;
    final base = Platform.isWindows
        ? (env['APPDATA'] ?? Directory.current.path)
        : (env['XDG_CONFIG_HOME'] ?? '${env['HOME'] ?? '.'}/.config');
    return Directory('$base${Platform.pathSeparator}band-schedule');
  }

  /// 读取磁盘上的配置。可以重复调用（第二次直接返回）。
  Future<void> init() async {
    if (_loadedFromDisk) return;
    try {
      final dir = _configDir;
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }
      _file = File('${dir.path}${Platform.pathSeparator}prefs.json');
      if (_file!.existsSync()) {
        final text = await _file!.readAsString();
        final decoded = jsonDecode(text);
        if (decoded is Map) {
          _data = decoded.map((k, v) => MapEntry(k.toString(), v));
        }
      }
      _loadedFromDisk = true;
    } catch (_) {
      // 读不了就当作空配置继续跑，不要让程序起不来
      _loadedFromDisk = true;
    }
  }

  /// 从磁盘重新读一遍（另一个进程可能改过）。
  Future<void> reload() async {
    _loadedFromDisk = false;
    _data = <String, Object?>{};
    await init();
  }

  Future<void> _persist() async {
    final f = _file;
    if (f == null) return; // init 没跑过，这次改动只在内存里
    try {
      // 先写临时文件再改名，避免写一半崩了把数据写坏
      final tmp = File('${f.path}.tmp');
      await tmp.writeAsString(jsonEncode(_data));
      await tmp.rename(f.path);
    } catch (_) {
      // 落盘失败不影响本次运行
    }
  }

  String? getString(String key) => _data[key] as String?;

  Future<bool> setString(String key, String value) async {
    _data[key] = value;
    await _persist();
    return true;
  }

  Future<bool> remove(String key) async {
    _data.remove(key);
    await _persist();
    return true;
  }

  bool? getBool(String key) => _data[key] as bool?;

  Future<bool> setBool(String key, bool value) async {
    _data[key] = value;
    await _persist();
    return true;
  }

  int? getInt(String key) {
    final v = _data[key];
    if (v is int) return v;
    if (v is num) return v.toInt();
    return null;
  }

  Future<bool> setInt(String key, int value) async {
    _data[key] = value;
    await _persist();
    return true;
  }

  double? getDouble(String key) {
    final v = _data[key];
    if (v is double) return v;
    if (v is num) return v.toDouble();
    return null;
  }

  Future<bool> setDouble(String key, double value) async {
    _data[key] = value;
    await _persist();
    return true;
  }

  List<String>? getStringList(String key) {
    final v = _data[key];
    if (v is List) return v.map((e) => e.toString()).toList();
    return null;
  }

  Future<bool> setStringList(String key, List<String> value) async {
    _data[key] = value;
    await _persist();
    return true;
  }
}
