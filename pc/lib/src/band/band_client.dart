/// 手环客户端：把「扫描 → 连接 → 认证 → 装应用 → 发课表」串起来。
///
/// 这一层是我们自己写的编排代码；底下用的是移植自 OronBox 的设备层
/// （`src/device/`、`src/protocols/`）。
///
/// 典型用法：
/// ```dart
/// final client = BandClient();
/// final devices = await client.scan();          // 找手环
/// await client.connect(mac, name, authkey);     // 连接 + 认证
/// await client.ensureAppInstalled(rpkBytes);    // 没装就装
/// final result = await client.sendSchedule(schedule);  // 发课表并等确认
/// await client.dispose();
/// ```
library;

import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/band/protocol.dart';
import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/core/services/rfcomm_driver.dart';
import 'package:band_schedule_pc/src/device/core/bluetooth_platform.dart';
import 'package:band_schedule_pc/src/device/core/entity.dart';
import 'package:band_schedule_pc/src/device/core/event_bus.dart';
import 'package:band_schedule_pc/src/device/core/runtime.dart';
import 'package:band_schedule_pc/src/device/core/spp_transport.dart';
import 'package:band_schedule_pc/src/device/core/xiaomi_wearable_catalog.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/install_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/resource_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/thirdparty_app_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/auth_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/xiaomi_device_component.dart';
import 'package:band_schedule_pc/src/device/xiaomi/xiaomi_device_factory.dart';
import 'package:band_schedule_pc/src/schedule/models.dart';

/// 要安装到手表上的手环端应用包名。
///
/// ⚠️ 必须与 `project.json` 里 `band.package` 以及手环端 manifest 的 package 一致。
/// 改包名时三处一起改（PC 端代码从这里取，不要再散落字面量）。
const String bandAppPackage = 'io.github.lazyjcgit.bandschedule';

/// 连接/发送过程中可以显示给用户的错误。
class BandException implements Exception {
  const BandException(this.message);
  final String message;

  @override
  String toString() => message;
}

/// 这只设备该用哪套协议栈（对应 `spawnDevice` 的 `kind`）。
///
/// **只有目录里明确标了 sppV1 的型号才走 v1 编解码，其余一律走老的
/// L1/L2 + SAR 路径。** 认不出型号时也走老的 —— 这跟 OronBox 的判断一致，
/// 而且是实测验证过的：手环 9（n66）标的是 sppV2，写死成 v1 的话手环收到
/// 认证请求后完全不回话。
String xiaomiDeviceKindForProtocol(XiaomiWearableProtocol? protocol) =>
    protocol == XiaomiWearableProtocol.sppV1 ? 'xiaomi-spp-v1' : 'xiaomi';

/// 按设备名（或代号）推断该用哪套协议栈。
String xiaomiDeviceKindForName(String name) {
  final identity = xiaomiWearableIdentityForCodename(name) ??
      normalizeXiaomiWearableIdentity(name);
  return xiaomiDeviceKindForProtocol(identity?.protocol);
}

/// 能认出型号就把标准名字给出来，认不出来返回空串。
///
/// 用来挡住"来路不明的名字"：设置里存的名字可能是以前一次失败尝试留下的
/// （自动挑错设备那次就把一个耳机名字存了进去）。这种名字既不该显示在界面上，
/// 也不该参与协议判断。
String xiaomiKnownDeviceName(String name) {
  final identity = xiaomiWearableIdentityForCodename(name) ??
      normalizeXiaomiWearableIdentity(name);
  return identity?.displayName ?? '';
}

/// 发送课表的结果。
class SendResult {
  const SendResult({
    required this.ok,
    required this.message,
    this.frames = 0,
    this.bandCourseCount = 0,
  });

  final bool ok;
  final String message;
  final int frames;

  /// 手环回报的课程条数（用来确认它真的收到了完整数据）
  final int bandCourseCount;
}

class BandClient {
  static final _log = getLogger('BandClient');

  /// [driver] 只在测试里传（注入假的蓝牙驱动）。
  BandClient({RfcommDriver? driver}) : _driver = driver;

  final DeviceRuntime _runtime = DeviceRuntime();
  // ignore: prefer_initializing_formals — 构造参数名对外是 driver，字段是私有 _driver
  RfcommDriver? _driver;
  RfcommConnection? _connection;
  DeviceEntity? _entity;
  StreamSubscription<DeviceEvent>? _events;

  /// 连接过程中的原始字节，双向都记。
  ///
  /// 有了它，「我们发的东西和能连上的实现（OronBox）到底一不一样」就不再是
  /// 靠读代码猜，而是能逐字节对比。连上（或失败）之后就取消订阅，免得
  /// 后面传课表时把日志刷爆。
  StreamSubscription<Uint8List>? _rawIn;
  StreamSubscription<Uint8List>? _rawOut;
  final _rawFrames = <String>[];

  final _acks = <ScheduleAck>[];
  final _readySignals = <void Function()>[];

  DeviceEntity? get entity => _entity;
  bool get isConnected => _entity != null;

  /// 最近一次收到的 ack（手环确认）。
  ScheduleAck? get lastAck => _acks.isEmpty ? null : _acks.last;

  /// 连接阶段抓到的原始帧（用于排查和对比）。
  List<String> get rawFrames => List.unmodifiable(_rawFrames);

  void _startRawCapture(DeviceEntity entity) {
    _rawFrames.clear();
    _rawOut = entity.rawOutgoingData.listen((data) {
      _logRaw('PC → 手环', data);
    });
    _rawIn = entity.rawIncomingData.listen((data) {
      _logRaw('手环 → PC', data);
    });
  }

  Future<void> _stopRawCapture() async {
    await _rawOut?.cancel();
    await _rawIn?.cancel();
    _rawOut = null;
    _rawIn = null;
  }

  void _logRaw(String direction, Uint8List data) {
    final hex = data
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join(' ');
    final line = '$direction  ${data.length} 字节  $hex';
    _rawFrames.add(line);
    if (_rawFrames.length <= 24) {
      _log.info('[原始字节] $line');
    }
  }

  // ---------------- 扫描 ----------------

  /// 扫描附近的蓝牙设备（含手环）。
  ///
  /// 只返回名字里像小米手环/手表的，避免把耳机、鼠标也列出来。
  ///
  /// ⚠️ 这里踩过两个坑，都跟原生的实现方式有关：
  ///
  /// 1. `startScan` 只是**发起**（原生开一个线程去查询，结果通过 scan_events
  ///    通道推回来），而 `stopScan` 只负责**停**，它返回的是系统里**已配对**
  ///    的设备列表、不是本次扫到的。start 之后立刻 stop 等于刚发起就取消。
  /// 2. 原生的 `BluetoothFindFirstDevice` 带 `fIssueInquiry` 时**会阻塞到
  ///    查询结束**才给出第一个结果。查询时长是 `倍率 × 1.28 秒`，倍率由
  ///    请求的毫秒数换算（见 native 里的 `cTimeoutMultiplier`）。所以停得太早
  ///    会在结果出来之前把查询掐掉 —— 12 秒的请求实际要跑约 12.8 秒。
  ///
  /// 所以：先订阅扫描流 → 等够「查询时长 + 余量」→ 再停。
  Future<List<BluetoothEndpoint>> scan({
    Duration timeout = const Duration(seconds: 12),
  }) async {
    final driver = _driver ??= createRfcommDriver();
    await driver.requestPermissions();

    final found = <String, BluetoothEndpoint>{};
    final subscription = driver.scanStream.listen(
      (endpoint) => found[endpoint.address] = endpoint,
      onError: (Object e) => _log.warning('扫描流出错：$e'),
    );

    try {
      await driver.startScan(timeout: timeout);
      await Future<void>.delayed(_inquiryWindow(timeout) +
          const Duration(milliseconds: 1500));
    } finally {
      try {
        // 已配对的设备也一并列出来（它们不一定回应查询）。
        for (final endpoint in await driver.stopScan()) {
          found[endpoint.address] = endpoint;
        }
      } catch (e) {
        _log.warning('停止扫描失败：$e');
      }
      await subscription.cancel();
    }

    _log.info('扫描完成：本次发现 ${found.length} 个设备');
    return found.values.toList(growable: false);
  }

  /// 原生那边一次查询实际会跑多久。
  ///
  /// 算法必须和 native 的 `cTimeoutMultiplier` 一致，否则停早了就什么都扫不到：
  /// `倍率 = clamp((毫秒 + 1279) / 1280, 1, 48)`，时长 = 倍率 × 1280ms。
  static Duration _inquiryWindow(Duration timeout) {
    final ms = timeout.inMilliseconds;
    final multiplier = ((ms + 1279) ~/ 1280).clamp(1, 48);
    return Duration(milliseconds: multiplier * 1280);
  }

  // ---------------- 连接 ----------------

  /// 连接并认证。
  ///
  /// [authkey] 是手环的绑定密钥（32 位十六进制），从「小米账号登录」或
  /// 手动填写获得 —— 没有它连不上，这是小米的硬性设计。
  ///
  /// [rePair] 对应 OronBox 里默认开启的「连接时重新配对」：连之前先在
  /// Windows 里删掉这条设备的蓝牙配对记录，然后再连。为什么要这么做：
  ///
  ///   · 小米手环的 SPP 通道**不需要**蓝牙层配对，安全性由应用层的
  ///     authkey 认证保证；
  ///   · 而**一旦 Windows 这边有配对记录**，Windows 就会在连接时去握手，
  ///     手环那边会把这次连接交给绑定的手机去批准 —— 屏幕上出现
  ///     「请在手机上确认连接」，PC 这边就再也等不到回应（就是卡死）。
  ///
  /// 删掉配对记录再连，Windows 就不会去触发那个批准流程。OronBox 的说明是
  /// 「开启有助于提升连接稳定性，防止官方运动健康抢走设备连接」。
  Future<void> connect(
    String address,
    String name, {
    required String authkey,
    bool rePair = true,
    void Function(String)? onProgress,
  }) async {
    if (authkey.trim().isEmpty) {
      throw const BandException('缺少绑定密钥（authkey），无法连接手环');
    }
    await disconnect();

    final driver = _driver ??= createRfcommDriver();
    // 连接前先确保没有扫描在跑。蓝牙查询会占用射频，正在查询时连 RFCOMM
    // 容易失败（OronBox 在连接前也专门 stopBluetoothScan 一次）。
    try {
      await driver.stopScan();
    } catch (_) {
      // 没在扫就会失败，忽略
    }

    final RfcommConnection connection;
    try {
      connection = await _connectRfcomm(
        driver,
        address,
        name,
        rePair: rePair,
        onProgress: onProgress,
      );
    } on BandException {
      await disconnect();
      rethrow;
    } catch (e) {
      await disconnect();
      throw BandException('连接失败：$e\n'
          '请确认手环在附近、蓝牙已打开、且没有被其它程序占用');
    }
    _connection = connection;

    try {
      onProgress?.call('建立数据通道…');
      final transport = SppTransport.xiaomi(connection);
      await transport.start();

      // ⚠️ kind 决定走哪套协议栈，**不能写死**：
      //   'xiaomi-spp-v1' → sppV1=true  → SPP v1 编解码（version/protobuf 通道）
      //   'xiaomi'        → sppV1=false → 老的 L1/L2 + SAR 分片
      //
      // 之前这里写死成 'xiaomi-spp-v1'，结果手环收到认证请求后**一个字都不回**。
      // 对着 OronBox 的日志才看出来：它连同一只手环时打的是
      // `spawning xiaomi device`（不是 xiaomi-spp-v1），然后
      // `received device verify` 18 毫秒就回来了。
      final identity = xiaomiWearableIdentityForCodename(name) ??
          normalizeXiaomiWearableIdentity(name);
      final kind = xiaomiDeviceKindForProtocol(identity?.protocol);
      _log.info('[$address] 设备型号=${identity?.codename ?? '未知'}'
          ' 协议=${identity?.protocol.name ?? '未知'} → kind=$kind');

      final entity = _runtime.spawnDevice(
        id: address,
        kind: kind,
        transport: transport,
        factory: XiaomiDeviceFactory(),
      );
      _entity = entity;
      _events = _runtime.eventStream.listen(_onEvent);
      // 认证阶段是排查重点，这里开始抓原始字节。
      _startRawCapture(entity);

      onProgress?.call('初始化会话…');
      final component = entity.getRequired<XiaomiDeviceComponent>();
      try {
        await component
            .startSession(spp: true)
            .timeout(const Duration(seconds: 10));
      } on TimeoutException {
        throw const BandException(
          '通道连上了，但手环没有回应会话初始化。\n'
          '通常是手环正被别的主机占用（小米运动健康、或另一台已连接的设备）——\n'
          '把手环和手机的连接断开，或把手机蓝牙关掉，再试一次。',
        );
      }

      onProgress?.call('等待手环确认…（手环上若提示「请在手机上确认连接」，'
          '请到手机的「小米运动健康」里确认）');
      try {
        await entity
            .system<XiaomiAuthSystem>()!
            .authenticate(authkey.trim())
            // 认证系统自己会重发（约 60 秒），这里只负责比它更晚放弃。
            .timeout(const Duration(seconds: 80));
      } on TimeoutException {
        throw const BandException(
          '手环收到了认证请求，但一直没有回话（重发了 9 次，约 60 秒）。\n'
          '链路上一次是通的（会话初始化有来有回），所以不是蓝牙连不上的问题。\n'
          '手环屏幕上如果写着「请在手机上确认连接」，那就是它要求先由\n'
          '绑定的手机放行这次连接。可以试：\n'
          '  · 连接时打开手机的「小米运动健康」，看有没有连接确认的提示，'
          '有就点允许；\n'
          '  · 让手机先连上手环（打开小米运动健康、靠近手环），再从这边连；\n'
          '  · 或者反过来把手机的蓝牙关掉，别让它占着这条连接。\n'
          '「查看运行日志」里有完整的原始字节，出问题时把它发出来。',
        );
      }

      _log.info('[$address] connected and authenticated');
      onProgress?.call('已连接');
    } on BandException {
      await _stopRawCapture();
      await disconnect();
      rethrow;
    } catch (e) {
      await _stopRawCapture();
      await disconnect();
      throw BandException('认证失败：$e\n'
          '最常见的原因是绑定密钥（authkey）不对 —— 手环会直接拒绝');
    }
    await _stopRawCapture();
  }

  /// 建立 RFCOMM 通道，失败就重来一次（跟 OronBox 一样试 2 轮）。
  ///
  /// 第一次常常失败：手环可能还在收尾上一条链路（尤其刚发生过失败的配对），
  /// 或者 Windows 那边还留着状态。中间先 disconnect 一次把状态清干净，
  /// 再连成功率明显更高。
  Future<RfcommConnection> _connectRfcomm(
    RfcommDriver driver,
    String address,
    String name, {
    required bool rePair,
    void Function(String)? onProgress,
  }) async {
    const attempts = 2;
    Object? lastError;

    for (var attempt = 1; attempt <= attempts; attempt += 1) {
      onProgress?.call(attempt == 1
          ? (rePair
              ? '正在连接 $name…（会先解除系统里的旧配对记录）'
              : '正在连接 $name…')
          : '第 $attempt 次尝试连接 $name…');

      try {
        return await driver
            .connect(
              address,
              name,
              // 手环 9 的 SPP 走 RFCOMM channel 5；1 是老设备的兜底
              fallbackChannels: const [5, 1],
              removeBond: rePair,
            )
            // 原生那边每个通道各有 10 秒超时，两轮加上 SDP 最多三十几秒。
            // 再兜一层是为了防住「Windows 弹了配对确认框在等用户点」这种
            // 情况 —— 那样原生会一直等，界面看起来就死住了。
            .timeout(const Duration(seconds: 45));
      } on TimeoutException catch (e) {
        lastError = e;
      } catch (e) {
        lastError = e;
      }

      _log.warning('第 $attempt 次连接 $address 失败：$lastError');

      if (attempt < attempts) {
        try {
          await driver.disconnect();
        } catch (_) {
          // 清理失败不影响重试
        }
        await Future<void>.delayed(const Duration(milliseconds: 500));
      }
    }

    if (lastError is TimeoutException) {
      throw BandException('连接超时了（45 秒没有结果）。\n'
          '如果屏幕上弹出过 Windows 的配对确认框，先把它关掉再试；\n'
          '也确认手环在附近、蓝牙已打开、没有被小米运动健康占用。');
    }
    throw BandException(
      '连不上手环的 SPP 通道：$lastError\n'
      '「No RFCOMM channel available」是最常见的形态，通常是这几种情况：\n'
      '  · 手环被手机占着 —— 关掉手机的蓝牙，或退掉小米运动健康，再连一次；\n'
      '  · 手环的蓝牙刚睡下 —— 抬腕点亮屏幕、在手环上划一下，再连；\n'
      '  · 这台电脑和手环的地址不对（比如换了手环）—— 重新扫描并选中设备；\n'
      '  · 手环上还留着上次的提示 —— 按提示点掉或滑走，再连。',
    );
  }

  Future<void> disconnect() async {
    await _stopRawCapture();
    await _events?.cancel();
    _events = null;
    final c = _connection;
    _connection = null;
    _entity = null;
    _acks.clear();
    _readySignals.clear();
    try {
      await c?.dispose();
    } catch (_) {}
    try {
      await _driver?.disconnect();
    } catch (_) {}
  }

  Future<void> dispose() async {
    await disconnect();
    _runtime.dispose();
    _driver = null;
  }

  // ---------------- 查询 ----------------

  /// 手环上是否已装我们的应用，返回版本号（没装返回 null）。
  Future<int?> installedAppVersion() async {
    final entity = _requireEntity();
    final apps = await entity
        .system<XiaomiResourceSystem>()!
        .fetchInstalledQuickApps()
        .timeout(const Duration(seconds: 15));
    for (final app in apps) {
      if (app.packageName == bandAppPackage) {
        return app.versionCode;
      }
    }
    return null;
  }

  /// 手环型号等信息（显示用）。
  Future<String?> deviceModel() async {
    final entity = _requireEntity();
    try {
      // info_system 里没有直接的 model getter，用系统信息命令兜一下
      return entity.id;
    } catch (_) {
      return null;
    }
  }

  // ---------------- 安装 ----------------

  /// 确保手环上装了我们的应用；没装（或版本不同）就装。
  ///
  /// 返回 true 表示这次真的安装了，false 表示本来就有、跳过。
  Future<bool> ensureAppInstalled(
    Uint8List rpkBytes, {
    void Function(double progress)? onProgress,
    void Function(String)? onStatus,
    bool force = false,
  }) async {
    final entity = _requireEntity();

    if (!force) {
      onStatus?.call('检查手环上的应用…');
      final existing = await installedAppVersion();
      if (existing != null) {
        _log.info('app already installed, versionCode=$existing');
        onStatus?.call('手环上已有「手环课表」，跳过安装');
        return false;
      }
    }

    if (rpkBytes.isEmpty) {
      throw const BandException('rpk 文件是空的');
    }

    onStatus?.call('正在安装到手环（约 10-30 秒，别断开连接）…');
    final install = entity.system<XiaomiInstallSystem>()!;
    await install
        .installApp(rpkBytes, packageName: bandAppPackage, onProgress: onProgress)
        .timeout(const Duration(seconds: 180));

    // 装完确认一下真的在列表里了
    onStatus?.call('确认安装结果…');
    final version = await installedAppVersion();
    if (version == null) {
      throw const BandException(
          '安装命令已发出，但手环的应用列表里还没有它。\n'
          '可以稍等几秒再点一次；若一直如此，重启手环通常能解决');
    }
    _log.info('installed, versionCode=$version');
    return true;
  }

  // ---------------- 发送课表 ----------------

  /// 把整份课表发到手环，并等它确认。
  Future<SendResult> sendSchedule(
    Schedule schedule, {
    void Function(String)? onStatus,
    Duration ackTimeout = const Duration(seconds: 20),
  }) async {
    final entity = _requireEntity();
    if (schedule.courses.isEmpty) {
      throw const BandException('课表是空的，没什么可发的');
    }

    final app = entity.system<XiaomiThirdpartyAppSystem>()!;
    final json = _scheduleToJson(schedule);
    final frames = buildFrames(json);

    // 先确认手环上装了应用，并拿到它的签名信息（发消息要用）
    onStatus?.call('读取手环应用信息…');
    final apps = await entity
        .system<XiaomiResourceSystem>()!
        .fetchInstalledQuickApps()
        .timeout(const Duration(seconds: 15));
    final installed =
        apps.where((a) => a.packageName == bandAppPackage).firstOrNull;
    if (installed == null) {
      throw const BandException(
          '手环上还没装「手环课表」，请先点「安装到手环」');
    }
    final appInfo = ThirdpartyAppInfo(
      packageName: bandAppPackage,
      fingerprint: Uint8List.fromList(installed.fingerprint),
    );

    // 唤醒手环端应用：它启动后才会建立互联会话，否则消息发不到
    onStatus?.call('唤醒手环上的应用…');
    try {
      await app.launchApp(appInfo, '');
      // 给它一点时间把界面拉起来
      await Future<void>.delayed(const Duration(milliseconds: 800));
    } catch (e) {
      _log.warning('launch app before send failed (continuing): $e');
    }

    _acks.clear();
    onStatus?.call(frames.length == 1
        ? '正在下发课表（1 帧）…'
        : '正在下发课表（共 ${frames.length} 帧）…');

    for (var i = 0; i < frames.length; i++) {
      await app
          .sendPhoneMessage(bandAppPackage, encodePayloadBytes(frames[i]),
              app: appInfo)
          .timeout(const Duration(seconds: 10));
      // 手环要逐帧拼接，发太快会压满它的消息队列
      if (frames.length > 1) {
        await Future<void>.delayed(const Duration(milliseconds: 60));
      }
    }

    onStatus?.call('等待手环确认…');
    final ack = await _waitForAck(ackTimeout);
    if (ack == null) {
      return SendResult(
        ok: false,
        frames: frames.length,
        message: '课表已发出，但没等到手环确认。\n'
            '手环上打开「手环课表」看看有没有数据；如果没有，再发一次。',
      );
    }
    if (!ack.ok) {
      return SendResult(
        ok: false,
        frames: frames.length,
        message: '手环返回失败：${ack.error}',
      );
    }
    return SendResult(
      ok: true,
      frames: frames.length,
      bandCourseCount: ack.courses,
      message: '同步成功！手环显示 ${ack.courses} 门课',
    );
  }

  Future<ScheduleAck?> _waitForAck(Duration timeout) {
    if (_acks.isNotEmpty) return Future.value(_acks.last);
    final completer = Completer<ScheduleAck?>();
    void check() {
      if (_acks.isNotEmpty && !completer.isCompleted) {
        completer.complete(_acks.last);
      }
    }

    _readySignals.add(check);
    return completer.future.timeout(timeout, onTimeout: () => null);
  }

  // ---------------- 内部 ----------------

  DeviceEntity _requireEntity() {
    final e = _entity;
    if (e == null) {
      throw const BandException('还没连接手环');
    }
    return e;
  }

  void _onEvent(DeviceEvent event) {
    switch (event) {
      case XiaomiProtocolTrace():
        _logTrace(event.trace);
      case InterconnectMessage():
        final decoded = decodeMessage(decodePayloadBytes(event.payload));
        if (decoded == null) return;
        _log.info('band -> pc: ${decoded.type}');
        if (decoded.type == MsgType.ack) {
          final ack = ScheduleAck.parse(decoded.data);
          if (ack != null) {
            _acks.add(ack);
            for (final notify in List.of(_readySignals)) {
              notify();
            }
          }
        }
      case TransportDisconnected():
        _log.warning('transport disconnected');
      case AuthFailed():
        _log.severe('auth failed: ${event.error}');
      case DeviceError():
        _log.warning('device error: ${event.error}');
      default:
        break;
    }
  }

  /// 把协议层的事件写进日志。
  ///
  /// 移植过来的设备层一直在发这些东西，但以前这里把它们全丢掉了（走了
  /// default 分支），结果连接出问题时只能靠猜「手环到底回了什么」。
  /// 尤其是认证阶段：手环要么回 [authDeviceVerify] 让我们继续，要么什么都不回
  /// （那就是链路层没放行）—— 这两种情况现在一眼能分清。
  ///
  /// 只记字段名和长度，不整包刷 hex（太长会把日志淹掉）。
  void _logTrace(Map<String, Object?> trace) {
    final layer = trace['layer'];
    if (layer == 'operation') {
      _log.fine('[trace] ${trace['operation']} ${trace['stage']}'
          '${trace['error'] == null ? '' : ' 错误=${trace['error']}'}');
      return;
    }
    if (layer != 'wear_packet') return;

    final direction = trace['direction'] == 'incoming' ? '手环 → PC' : 'PC → 手环';
    final type = trace['type'] ?? '?';
    final id = trace['id'] ?? '?';
    final payload = trace['accountPayload'] ?? trace['payload'] ??
        trace['decode'] ?? '?';
    final encrypted = trace['encrypted'] == null
        ? ''
        : (trace['encrypted'] == true ? ' 已加密' : ' 明文');
    _log.info('[协议] $direction  类型=$type id=$id 载荷=$payload$encrypted');

    // 认证相关的载荷单独说清楚，这正是连不上时要看的东西。
    switch (payload) {
      case 'authAppVerify':
        _log.info('[协议] 我们已发出认证请求（authAppVerify），'
            '等手环回 authDeviceVerify');
      case 'authDeviceVerify':
        _log.info('[协议] 手环已响应认证（authDeviceVerify），'
            '说明链路是通的 —— 卡住的原因不在蓝牙配对');
      case 'authDeviceConfirm':
        _log.info('[协议] 手环的认证结论：confirmResult=${trace['confirmResult']}');
    }
  }

  /// 手环端期望的 JSON（字段名必须与 band/band-schedule/src/common/schedule.js 一致）。
  String _scheduleToJson(Schedule s) {
    final buffer = StringBuffer('{');
    buffer.write('"version":${s.version}');
    buffer.write(',"semesterCode":${_jsonString(s.semesterCode)}');
    buffer.write(',"termStartDate":${_jsonString(s.termStartDate)}');
    buffer.write(',"updatedAt":${s.updatedAt}');
    buffer.write(',"sections":[');
    for (var i = 0; i < s.sections.length; i++) {
      final sec = s.sections[i];
      if (i > 0) buffer.write(',');
      buffer
        ..write('{"index":${sec.index}')
        ..write(',"start":${_jsonString(sec.start)}')
        ..write(',"end":${_jsonString(sec.end)}}');
    }
    buffer.write('],"courses":[');
    for (var i = 0; i < s.courses.length; i++) {
      final c = s.courses[i];
      if (i > 0) buffer.write(',');
      buffer
        ..write('{"id":${_jsonString(c.id)}')
        ..write(',"name":${_jsonString(c.name)}')
        ..write(',"teacher":${_jsonString(c.teacher)}')
        ..write(',"room":${_jsonString(c.room)}')
        ..write(',"weekday":${c.weekday}')
        ..write(',"start":${c.start}')
        ..write(',"stop":${c.stop}')
        ..write(',"weeks":[${c.weeks.join(',')}]')
        ..write(',"color":${_jsonString(c.color)}}');
    }
    buffer.write(']}');
    return buffer.toString();
  }

  static String _jsonString(String s) {
    final escaped = s
        .replaceAll('\\', '\\\\')
        .replaceAll('"', '\\"')
        .replaceAll('\n', '\\n')
        .replaceAll('\r', '\\r')
        .replaceAll('\t', '\\t');
    return '"$escaped"';
  }
}

/// 从 rpk 文件名猜包名（用不上时返回 null）。
String? packageNameFromRpkPath(String path) {
  final name = File(path).uri.pathSegments.last;
  // aiot 产物命名：<包名>.release.<版本>.rpk
  final m = RegExp(r'^(.+?)\.(?:release|debug)\.').firstMatch(name);
  return m?.group(1);
}
