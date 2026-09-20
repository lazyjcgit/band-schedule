/// 极简日志服务（纯 Dart，不依赖 Flutter）。
///
/// 为什么自己写：OronBox 原始的 logging_service.dart 依赖 flutter/foundation 的
/// 全局错误钩子（FlutterError / PlatformDispatcher）和 kIsWeb / kReleaseMode。
/// 我们的设备层只需要「拿一个 logger，往里写日志」这点能力（移植过来的 130 个文件里
/// 只用到 getLogger 和 fine/info/warning/severe），所以换成不依赖 Flutter 的实现，
/// 让这一层保持纯 Dart、可单独测试。
///
/// 控制台输出用 debugPrint 风格的分级前缀；同时保留内存环形缓冲，
/// 方便界面上做「查看日志」。
library;

import 'dart:async';
import 'dart:collection';
import 'dart:io';

enum Level { fine, info, warning, severe }

/// 一条日志记录。
class LogRecord {
  LogRecord(this.time, this.level, this.loggerName, this.message, [this.error]);

  final DateTime time;
  final Level level;
  final String loggerName;
  final String message;
  final Object? error;

  @override
  String toString() {
    final t = '${time.hour.toString().padLeft(2, '0')}:'
        '${time.minute.toString().padLeft(2, '0')}:'
        '${time.second.toString().padLeft(2, '0')}';
    final tag = level.name.toUpperCase().padRight(7);
    final err = error == null ? '' : '  [$error]';
    return '$t $tag $loggerName: $message$err';
  }
}

/// 内存里的环形日志缓冲，界面可以直接读它。
class LogBuffer {
  LogBuffer({this.capacity = 2000});

  final int capacity;
  final Queue<LogRecord> _records = Queue<LogRecord>();
  final StreamController<LogRecord> _controller =
      StreamController<LogRecord>.broadcast();

  List<LogRecord> get records => List.unmodifiable(_records);
  Stream<LogRecord> get stream => _controller.stream;

  void add(LogRecord record) {
    _records.addLast(record);
    while (_records.length > capacity) {
      _records.removeFirst();
    }
    if (!_controller.isClosed) _controller.add(record);
  }

  void clear() => _records.clear();

  /// 拼成多行文本，方便「复制日志」。
  String dump() => _records.map((r) => r.toString()).join('\n');
}

final LogBuffer logBuffer = LogBuffer();

/// 低于这个级别的日志不输出到控制台（默认 info，fine 只在需要时开）。
Level minConsoleLevel = Level.info;

/// 是否输出到控制台。测试时可以关掉。
bool logToConsole = true;

class Logger {
  Logger(this.name);

  final String name;

  void fine(String message, [Object? error, StackTrace? stackTrace]) =>
      _write(Level.fine, message, error);

  void info(String message, [Object? error, StackTrace? stackTrace]) =>
      _write(Level.info, message, error);

  void warning(String message, [Object? error, StackTrace? stackTrace]) =>
      _write(Level.warning, message, error);

  void severe(String message, [Object? error, StackTrace? stackTrace]) =>
      _write(Level.severe, message, error);

  void _write(Level level, String message, Object? error) {
    final record = LogRecord(DateTime.now(), level, name, message, error);
    logBuffer.add(record);
    if (logToConsole && level.index >= minConsoleLevel.index) {
      // 用 stderr 以免和正常输出混在一起
      stderr.writeln(record.toString());
    }
  }
}

final Map<String, Logger> _loggers = <String, Logger>{};

/// 取一个具名 logger；同名返回同一个实例。
Logger getLogger(String name) => _loggers.putIfAbsent(name, () => Logger(name));
