/// 手环课表助手 —— 主界面。
///
/// 流程：选课表文件（或粘贴文本）→ 预览 → 登录小米账号拿 authkey（或手填）
///      → 连接手环 → 安装/更新手环端应用 → 下发课表
library;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/band/authkey_provider.dart';
import 'package:band_schedule_pc/src/band/band_address.dart';
import 'package:band_schedule_pc/src/band/band_client.dart';
import 'package:band_schedule_pc/src/band/band_settings.dart';
import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/device/core/bluetooth_platform.dart';
import 'package:band_schedule_pc/src/features/accounts/models/mi_account_models.dart';
import 'package:band_schedule_pc/src/platform/file_dialog.dart';
import 'package:band_schedule_pc/src/schedule/ics.dart';
import 'package:band_schedule_pc/src/schedule/models.dart';
import 'package:band_schedule_pc/src/schedule/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BandSettings.init();
  runApp(const BandScheduleApp());
}

class BandScheduleApp extends StatelessWidget {
  const BandScheduleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '手环课表助手',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1F6FEB),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

/// 解析课表的统一结果（ICS 和纯文本两条路径的公共形状）。
class _ParsedSchedule {
  const _ParsedSchedule(this.schedule, this.warnings);

  final Schedule schedule;
  final List<String> warnings;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _log = getLogger('HomePage');
  final _client = BandClient();
  final _auth = AuthKeyProvider();
  final _authKeyController = TextEditingController();
  final _miUserController = TextEditingController();
  final _miPasswordController = TextEditingController();
  final _textController = TextEditingController();
  final _termStartController = TextEditingController();

  Schedule? _schedule;
  String _scheduleSource = '';
  final _warnings = <String>[];
  String _status = '';
  bool _busy = false;
  String? _error;

  List<BluetoothEndpoint> _devices = const [];
  List<MiCloudDevice> _cloudDevices = const [];

  /// 要连接的手环地址。**这是唯一的事实来源** —— 点扫描结果、点记住的设备，
  /// 要连接的手环地址。**这是唯一的事实来源** —— 点扫描结果、用小米账号登录
  /// 带出来的地址，都只是往这个输入框里填。
  ///
  /// 为什么要做成手填：小米手环**不回应电脑的蓝牙查询**（连着手机时更不会），
  /// 实测关了手机蓝牙也扫不到，所以"扫描"这条路对手环是走不通的。
  /// 它只能靠已知地址去连。
  ///
  /// ⚠️ 这里**故意不从设置里预填**。以前会预填"上次连接"的地址，结果一次
  /// 失败的尝试（自动挑错了设备）会把错地址永久存下来，之后每次都在连它。
  /// 地址宁可从空开始，也不要用一个来路不明的值。
  final _macController = TextEditingController();

  /// 连接前是否先删掉 Windows 里的蓝牙配对记录。默认跟 OronBox 一样是开。
  late bool _rePair;

  /// 小米账号返回的手环名字（本次会话内有效）。
  ///
  /// 只存在内存里，不落盘：它是"当场从账号拿到的"，可信；而落盘的值可能被
  /// 一次失败的连接污染（真发生过 —— 存进去过一对耳机的名字）。
  String _deviceNameHint = '';

  @override
  void initState() {
    super.initState();
    _authKeyController.text = BandSettings.authKey;
    _miUserController.text = BandSettings.miAccount;
    _termStartController.text = BandSettings.termStart;
    _rePair = BandSettings.rePairBeforeConnect;
    _restoreLastSchedule();
  }

  void _restoreLastSchedule() {
    final cached = BandSettings.lastSchedule;
    if (cached.isEmpty) return;
    try {
      final json = jsonDecode(cached);
      if (json is Map) {
        _schedule = Schedule.fromJson(Map<String, Object?>.from(json));
        _scheduleSource = '上次导入的课表';
      }
    } catch (_) {
      // 存坏了就忽略，让用户重新选
    }
  }

  @override
  void dispose() {
    _client.dispose();
    _authKeyController.dispose();
    _miUserController.dispose();
    _miPasswordController.dispose();
    _textController.dispose();
    _termStartController.dispose();
    super.dispose();
  }

  void _setStatus(String text) {
    if (mounted) setState(() => _status = text);
  }

  void _setError(String? text) {
    if (mounted) setState(() => _error = text);
  }

  Future<void> _run(Future<void> Function() action) async {
    if (_busy) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await action();
    } on BandException catch (e) {
      _setError(e.message);
    } on AuthKeyException catch (e) {
      _setError(e.message);
    } on FileDialogException catch (e) {
      _setError(e.message);
    } on MissingPluginException {
      _setError('原生功能没装上（可能不是 Windows 平台）');
    } catch (e, st) {
      _log.severe('unexpected error', e, st);
      _setError('出错了：$e');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  // ---------------- ① 选课表 ----------------

  Future<void> _pickFile() => _run(() async {
        final path = await pickScheduleFile();
        if (path == null) return;
        final name = path.split(RegExp(r'[\\/]')).last;
        _setStatus('正在读取 $name…');
        final content = await readTextFile(path);
        _applyParsed(_parse(content), name);
      });

  Future<void> _parsePasted() => _run(() async {
        final text = _textController.text;
        if (text.trim().isEmpty) {
          _setError('先粘贴课表内容');
          return;
        }
        _applyParsed(_parse(text), '粘贴的文本');
      });

  /// 按内容自动判断是 ICS 还是纯文本。
  _ParsedSchedule _parse(String content) {
    final termStart = _termStartController.text.trim();
    final looksIcs = content.contains('BEGIN:VCALENDAR') ||
        content.contains('BEGIN:VEVENT');

    if (looksIcs) {
      final r = parseIcs(content,
          semesterCode: '导入的课表', termStartOverride: termStart);
      if (!r.ok) throw FileDialogException(r.error ?? 'ICS 解析失败');
      return _ParsedSchedule(r.schedule!, r.warnings);
    }

    final r = parseText(content, termStartDate: termStart);
    if (!r.ok) throw FileDialogException(r.error ?? '文本解析失败');
    return _ParsedSchedule(r.schedule!, [if (r.message.isNotEmpty) r.message]);
  }

  void _applyParsed(_ParsedSchedule parsed, String source) {
    setState(() {
      _schedule = parsed.schedule;
      _scheduleSource = source;
      _warnings
        ..clear()
        ..addAll(parsed.warnings);
    });
    BandSettings.setLastSchedule(jsonEncode(parsed.schedule.toJson()));
    BandSettings.setTermStart(_termStartController.text.trim());
    _setStatus('');
    _setError(null);
  }

  // ---------------- ② 小米账号 ----------------

  Future<void> _loginXiaomi() => _run(() async {
        _setStatus('正在登录小米账号…');
        final token = await _auth.loginWithTwoFactor(
          username: _miUserController.text,
          password: _miPasswordController.text,
          onTwoFactor: (url) async {
            if (!mounted) return null;
            _setStatus('需要二次验证，请在弹出的窗口里完成…');
            return _auth.resolveTwoFactor(context, url);
          },
        );
        await BandSettings.setMiAccount(_miUserController.text.trim());
        _miPasswordController.clear();

        _setStatus('正在读取账号里绑定的手环…');
        final devices = await _auth.boundDevices(token);
        if (!mounted) return;
        setState(() => _cloudDevices = devices);

        if (devices.isEmpty) {
          _setError('这个账号下没找到带绑定密钥的手环。\n'
              '在小米运动健康里确认设备已绑定，或改用手动填写 authkey');
          return;
        }
        await _selectCloudDevice(devices.first);
      });

  Future<void> _selectCloudDevice(MiCloudDevice d) async {
    final key = AuthKeyProvider.normalizeAuthKey(d.authKey);
    _authKeyController.text = key;
    // 账号里带的 MAC 正好补上「手环扫不到、需要已知地址」这个缺口：
    // 走这条路就能一次拿到密钥和地址，不用手填。
    _macController.text = normalizeBandAddress(d.mac);
    _deviceNameHint = d.name;
    await BandSettings.setAuthKey(key);
    if (!mounted) return;
    setState(() {});
    _setStatus('已获取「${d.name}」的绑定密钥和地址，可以连接了');
    _setError(null);
  }

  // ---------------- ③ 连接 ----------------

  Future<void> _scan() => _run(() async {
        _setStatus('正在扫描蓝牙设备…（蓝牙查询要十几秒，请稍等）');
        final found = await _client.scan();
        if (!mounted) return;
        setState(() {
          _devices = found;
          // 只有认出来才自动填。以前认不出来就挑第一个，结果会去连耳机、
          // 相机之类的设备（它们没有 SPP 通道，必然失败）—— 这个坑真踩过。
          final likely = _pickLikelyBand(found);
          if (likely != null && _macController.text.trim().isEmpty) {
            _macController.text = likely;
          }
        });
        final likely = _pickLikelyBand(found);
        if (likely != null && _macController.text == likely) {
          _setStatus('找到 ${found.length} 个设备，已填入手环地址，确认后点连接');
        } else if (found.isEmpty) {
          _setStatus('没扫到任何设备');
        } else {
          _setStatus('找到 ${found.length} 个设备，但没认出哪个是手环 —— '
              '可以在下面的地址框里手填手环的 MAC');
        }
        _setError(_scanHint(found));
      });

  /// 扫不到/认不出手环时说清楚原因。
  ///
  /// 关键事实：**小米手环不回应电脑的蓝牙查询**（实测把关掉手机蓝牙也扫不到），
  /// 所以"扫描"对手环基本无效，只能靠已知地址连。这个提示就是防止用户
  /// 一直在那儿点扫描。
  String? _scanHint(List<BluetoothEndpoint> found) {
    if (_pickLikelyBand(found) != null) return null;

    final buffer = StringBuffer();
    buffer.write('小米手环**不回应电脑的蓝牙查询**（关掉手机蓝牙也一样），'
        '所以扫描到它是扫不到的 —— 这是正常现象，不是故障。\n');
    if (_macController.text.trim().isNotEmpty) {
      buffer.write('\n地址框里已经填好手环地址了，直接点「连接」即可。');
    } else {
      buffer.write('\n手环地址可以这样拿到：\n'
          '  · 用上面的「登录小米账号」获取 —— 会连地址一起带出来（最省事）；\n'
          '  · 手环上：设置 → 关于/系统信息 → MAC 地址；\n'
          '  · 手机小米运动健康 → 设备 → 关于设备里也有。\n'
          '拿到后填到下面的「手环蓝牙地址」框里再连接。');
    }
    return buffer.toString();
  }

  /// 从扫描结果里挑一个最像手环的（名字含 band/mi/xiaomi）。
  ///
  /// 认不出来就返回 null —— 交给用户自己决定，绝不瞎猜。
  String? _pickLikelyBand(List<BluetoothEndpoint> list) {
    for (final d in list) {
      final n = d.name.toLowerCase();
      if (n.contains('band') || n.contains('mi ') || n.contains('xiaomi')) {
        return d.address;
      }
    }
    return null;
  }

  Future<void> _connect() => _run(() async {
        // 只用输入框里的值，**不回退**到设置里存的地址：存的值可能是以前一次
        // 失败尝试留下的（自动挑错设备那次就把一个耳机地址存了进去，之后
        // 每次都在连那个耳机）。宁可从空开始。
        final rawMac = _macController.text.trim();
        if (rawMac.isEmpty) {
          _setError('先填手环的蓝牙地址。两个来源：\n'
              '  · 点「登录小米账号」—— 会自动带出地址和密钥（最省事）；\n'
              '  · 手环上「设置 → 关于」或手机小米运动健康里的 MAC 地址。');
          return;
        }
        if (!looksLikeBandAddress(rawMac)) {
          _setError('手环地址格式不对：应该是 12 位十六进制，'
              '形如 AA:BB:CC:DD:EE:FF（分隔符用 : 或 - 都行）');
          return;
        }
        final mac = normalizeBandAddress(rawMac);
        _macController.text = mac;
        final key = AuthKeyProvider.normalizeAuthKey(_authKeyController.text);
        if (!AuthKeyProvider.looksLikeAuthKey(key)) {
          _setError('绑定密钥格式不对：应该是 32 位十六进制。\n'
              '可以用上面的「登录小米账号」自动获取');
          return;
        }
        // 设备名只用来查型号（决定走哪套协议栈），所以只用**当场可核实**的来源：
        // 本次扫描到的名字 > 小米账号返回的名字 > 中性名。
        // 不读设置里存的名字 —— 那可能是以前一次失败尝试留下的（比如耳机）。
        final scannedName = _devices
            .where((d) => d.address == mac)
            .map((d) => d.name)
            .firstOrNull;
        final fromAccount = xiaomiKnownDeviceName(_deviceNameHint);
        final name = scannedName ??
            (fromAccount.isNotEmpty ? fromAccount : '小米手环');

        await BandSettings.setAuthKey(key);

        await _client.connect(
          mac,
          name,
          authkey: key,
          rePair: _rePair,
          onProgress: _setStatus,
        );

        // 连上之后**什么都不往设置里写**：地址和名字都不该被记住
        // （存过一次红米耳机的地址和名字，之后每次都在连那对耳机）。
        _setStatus('已连接到 $name');
      });

  // ---------------- ④ 安装 + 同步 ----------------

  Future<void> _installApp() => _run(() async {
        if (!_client.isConnected) {
          _setError('先连接手环');
          return;
        }
        // 先找随程序分发的手环端应用，找不到再让用户手选
        var rpkPath = await findBundledRpk();
        if (rpkPath == null) {
          _setStatus('没在程序目录找到手环端应用，请手动选择 .rpk 文件');
          rpkPath = await pickRpkFile();
          if (rpkPath == null) return;
        } else {
          _setStatus('使用 ${rpkPath.split(RegExp(r'[\\/]')).last}');
        }
        final bytes = await File(rpkPath).readAsBytes();
        await _client.ensureAppInstalled(
          Uint8List.fromList(bytes),
          onStatus: _setStatus,
          onProgress: (p) =>
              _setStatus('正在安装到手环… ${(p * 100).toStringAsFixed(0)}%'),
          force: true,
        );
        _setStatus('手环端应用已安装');
      });

  Future<void> _sync() => _run(() async {
        final schedule = _schedule;
        if (schedule == null) {
          _setError('先选一个课表文件');
          return;
        }
        if (!_client.isConnected) {
          _setError('先连接手环');
          return;
        }
        final result = await _client.sendSchedule(schedule, onStatus: _setStatus);
        if (result.ok) {
          _setStatus(result.message);
        } else {
          _setError(result.message);
        }
      });

  Future<void> _findAppOnBand() => _run(() async {
        if (!_client.isConnected) {
          _setError('先连接手环');
          return;
        }
        _setStatus('正在读取手环上的应用…');
        final v = await _client.installedAppVersion();
        _setStatus(v == null
            ? '手环上还没装「手环课表」'
            : '手环上已装「手环课表」（版本号 $v）');
      });

  // ---------------- 界面 ----------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('手环课表助手'),
        actions: [
          IconButton(
            tooltip: '查看运行日志',
            icon: const Icon(Icons.description_outlined),
            onPressed: _showLogs,
          ),
        ],
      ),
      body: AbsorbPointer(
        absorbing: _busy,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 880),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildStep1(),
                  const SizedBox(height: 14),
                  _buildStep2(),
                  const SizedBox(height: 14),
                  _buildStep3(),
                  const SizedBox(height: 14),
                  _buildStep4(),
                  const SizedBox(height: 20),
                  _buildStatus(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _card(String title, String subtitle, Widget child,
      {bool done = false}) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(done ? Icons.check_circle : Icons.radio_button_unchecked,
                    size: 18,
                    color: done ? Colors.greenAccent : Colors.white38),
                const SizedBox(width: 8),
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Text(subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.white54)),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: child,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep1() {
    final s = _schedule;
    return _card(
      '① 选择课表',
      '支持课表软件 / 教务系统导出的 .ics 日历文件，也支持手打的文本（课程名 周几 节次 周次 教室 教师）',
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FilledButton.icon(
                onPressed: _pickFile,
                icon: const Icon(Icons.folder_open),
                label: const Text('选择课表文件'),
              ),
              OutlinedButton.icon(
                onPressed: _showPasteDialog,
                icon: const Icon(Icons.edit_note),
                label: const Text('粘贴文本'),
              ),
              if (s != null)
                Text('共 ${s.courses.length} 条排课 · ${s.totalWeeks} 周',
                    style: const TextStyle(color: Colors.greenAccent)),
            ],
          ),
          if (s != null) ...[
            const SizedBox(height: 12),
            Text(
              '来源：$_scheduleSource'
              '${s.termStartDate.isNotEmpty ? '　开学日：${s.termStartDate}' : ''}',
              style: const TextStyle(fontSize: 12, color: Colors.white54),
            ),
            if (_warnings.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text('注意：${_warnings.join('；')}',
                    style:
                        const TextStyle(fontSize: 12, color: Colors.orangeAccent)),
              ),
            const SizedBox(height: 10),
            _buildPreview(s),
          ],
        ],
      ),
      done: s != null,
    );
  }

  Widget _buildPreview(Schedule s) {
    final byDay = <int, List<Course>>{};
    for (final c in s.courses) {
      byDay.putIfAbsent(c.weekday, () => []).add(c);
    }
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          for (final day in (byDay.keys.toList()..sort()))
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 12.5, color: Colors.white70),
                  children: [
                    TextSpan(
                      text: '${WEEKDAY_NAMES[day - 1]}  ',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    TextSpan(
                      text: byDay[day]!
                          .map((c) =>
                              '${c.name}(${c.start}-${c.stop}节 ${c.room})')
                          .join('、'),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStep2() {
    final hasKey = AuthKeyProvider.looksLikeAuthKey(_authKeyController.text);
    return _card(
      '② 获取绑定密钥（authkey）',
      '小米手环需要绑定密钥才能连上。登录小米账号可自动读取，也可以手动填写 32 位十六进制',
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              SizedBox(
                width: 240,
                child: TextField(
                  controller: _miUserController,
                  decoration: const InputDecoration(
                      labelText: '小米账号（手机号/邮箱/ID）', isDense: true),
                ),
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: _miPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: '密码（不保存）', isDense: true),
                ),
              ),
              FilledButton(
                  onPressed: _loginXiaomi, child: const Text('登录并获取')),
            ],
          ),
          if (_cloudDevices.isNotEmpty) ...[
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                for (final d in _cloudDevices)
                  ActionChip(
                    label: Text('${d.name}（${d.mac}）'),
                    onPressed: () => _run(() => _selectCloudDevice(d)),
                  ),
              ],
            ),
          ],
          const SizedBox(height: 10),
          TextField(
            controller: _authKeyController,
            onChanged: (_) => setState(() {}),
            decoration: InputDecoration(
              labelText: '绑定密钥 authkey',
              isDense: true,
              suffixIcon: Icon(
                hasKey ? Icons.check_circle : Icons.error_outline,
                color: hasKey ? Colors.greenAccent : Colors.orangeAccent,
                size: 18,
              ),
            ),
          ),
        ],
      ),
      done: hasKey,
    );
  }

  Widget _buildStep3() {
    return _card(
      '③ 连接手环',
      '手环戴在手上、蓝牙打开（不用连小米运动健康）。'
      '可以直接点「连接」用上次记住的设备；扫描只用来找新设备',
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FilledButton.icon(
                onPressed: _scan,
                icon: const Icon(Icons.bluetooth_searching),
                label: const Text('扫描设备'),
              ),
              FilledButton.tonalIcon(
                onPressed: _connect,
                icon: const Icon(Icons.link),
                label: const Text('连接'),
              ),
              if (_client.isConnected)
                const Text('已连接', style: TextStyle(color: Colors.greenAccent))
              else if (_devices.isNotEmpty)
                Text('找到 ${_devices.length} 个设备',
                    style: const TextStyle(color: Colors.white54)),
            ],
          ),
          const SizedBox(height: 8),
          // 手环地址可以直接手填 —— 因为手环不回应蓝牙查询，扫不到它是常态。
          TextField(
            controller: _macController,
            decoration: const InputDecoration(
              labelText: '手环蓝牙地址（MAC）',
              helperText: '形如 AA:BB:CC:DD:EE:FF。用「登录小米账号」会自动填好；'
                  '也可以在手环的「设置 → 关于」里查',
              helperMaxLines: 2,
              isDense: true,
              prefixIcon: Icon(Icons.bluetooth),
            ),
          ),
          if (_devices.isNotEmpty) ...[
            const SizedBox(height: 10),
            const Text('扫描到的设备（点一下填入上面的地址框）',
                style: TextStyle(fontSize: 12, color: Colors.white54)),
            const SizedBox(height: 6),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                for (final d in _devices)
                  ChoiceChip(
                    label: Text('${d.name}（${d.address}）'),
                    selected: _macController.text == d.address,
                    onSelected: (_) =>
                        setState(() => _macController.text = d.address),
                  ),
              ],
            ),
          ],
          const SizedBox(height: 6),
          CheckboxListTile(
            value: _rePair,
            onChanged: (v) async {
              if (v == null) return;
              setState(() => _rePair = v);
              await BandSettings.setRePairBeforeConnect(v);
            },
            controlAffinity: ListTileControlAffinity.leading,
            dense: true,
            contentPadding: EdgeInsets.zero,
            title: const Text('连接时重新配对（推荐）',
                style: TextStyle(fontSize: 13.5)),
            subtitle: const Text(
              '连接前先删掉 Windows 里的蓝牙配对记录。手环的 SPP 通道不需要'
              '系统配对，而留着配对记录会让手环把连接交给手机批准 —— '
              '屏幕上会出现「请在手机上确认连接」，这边就一直等不到回应。',
              style: TextStyle(fontSize: 12, color: Colors.white54),
            ),
          ),
        ],
      ),
      done: _client.isConnected,
    );
  }

  Widget _buildStep4() {
    return _card(
      '④ 安装应用并同步课表',
      '手环端应用安装约 10-30 秒，期间别断开。装好后点同步',
      Wrap(
        spacing: 10,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          OutlinedButton.icon(
            onPressed: _installApp,
            icon: const Icon(Icons.download),
            label: const Text('安装/更新手环端应用'),
          ),
          OutlinedButton.icon(
            onPressed: _findAppOnBand,
            icon: const Icon(Icons.search),
            label: const Text('检查是否已装'),
          ),
          FilledButton.icon(
            onPressed: _sync,
            icon: const Icon(Icons.sync),
            label: const Text('同步课表到手环'),
          ),
        ],
      ),
    );
  }

  Widget _buildStatus() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_busy)
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: LinearProgressIndicator(),
          ),
        if (_status.isNotEmpty)
          Text(_status, style: const TextStyle(color: Colors.white70)),
        if (_error != null) ...[
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.red.withValues(alpha: 0.10),
              border: Border.all(color: Colors.redAccent.withValues(alpha: 0.5)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.error_outline,
                    color: Colors.redAccent, size: 18),
                const SizedBox(width: 8),
                Expanded(
                  child: SelectableText(_error!,
                      style: const TextStyle(color: Colors.redAccent)),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Future<void> _showPasteDialog() async {
    _textController.clear();
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('粘贴课表文本'),
        content: SizedBox(
          width: 620,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '每行一门课：课程名 周几 节次 周次 教室 教师\n'
                '例如：高等数学 周一 1-2 1-16 A101 张三\n'
                '周次用英文逗号分隔（1,3,5），也可以省略；周几可写 周一/星期一/1',
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _termStartController,
                decoration: const InputDecoration(
                  labelText: '开学日期（第 1 周周一，如 2026-09-07）',
                  helperText: '填了才会按周次过滤；不填则每天显示全部课程',
                  isDense: true,
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _textController,
                maxLines: 9,
                minLines: 6,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '在这里粘贴课表…',
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('取消')),
          FilledButton(
              onPressed: () => Navigator.pop(ctx, true), child: const Text('解析')),
        ],
      ),
    );
    if (ok == true) await _parsePasted();
  }

  void _showLogs() {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('运行日志'),
        content: SizedBox(
          width: 720,
          height: 420,
          child: SelectableText(
            logBuffer.dump(),
            style: const TextStyle(fontSize: 11.5, fontFamily: 'monospace'),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: logBuffer.dump()));
              Navigator.pop(ctx);
            },
            child: const Text('复制全部'),
          ),
          TextButton(
              onPressed: () => Navigator.pop(ctx), child: const Text('关闭')),
        ],
      ),
    );
  }
}
