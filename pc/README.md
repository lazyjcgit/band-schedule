# 手环课表助手（PC 端）

把课表同步到小米手环 9 的桌面工具：**选一个课表文件 → 连接手环 → 自动安装快应用 → 下发整学期课表**。

不需要小米运动健康，也不需要安卓手机 —— 软件通过蓝牙 SPP 直接和手环通信。

## 怎么用

拿到 `dist/pc/` 整个目录（里面有 exe 和手环端 rpk），双击 `band_schedule_pc.exe`：

1. **选择课表** —— 点「选择课表文件」选课表软件 / 教务系统导出的 `.ics`，
   或者点「粘贴文本」手打。解析后会显示预览（每周几、什么课、在哪）
2. **获取绑定密钥** —— 小米手环需要 authkey 才能连上（小米的硬性设计）。
   填小米账号密码点「登录并获取」最省事；也可以手动填 32 位十六进制
3. **连接手环** —— 在地址框里填手环的蓝牙地址（点「登录小米账号」会自动带出来），
   点「连接」。注意手环**不回应电脑的蓝牙扫描**，所以别指望扫描列表里能找到它
4. **安装并同步** —— 点「安装/更新手环端应用」（**会自动找同目录下的 rpk**，不用你选），
   再点「同步课表到手环」

手环上打开「手环课表」就能看到今天上什么课了。

> **authkey 是什么**：手环蓝牙通道的最高权限，等同密码。它存在
> `%APPDATA%\band-schedule\prefs.json`（只在本机），程序里也明确标注了这一点。
> **密码不会被保存**，登录后即从内存清掉。

## 许可证与来源（重要）

本项目以 **AGPL-3.0** 发布。原因是它的设备通信层**移植自
[OronBox](https://github.com/zxor-org/OronBox)**（同样是 AGPL-3.0），
AGPL 的传染性要求衍生作品使用相同许可证。

具体移植了什么、怎么移植，见下面的「目录结构」；
`lib/src/protocols/`、`lib/src/device/`、`lib/src/features/` 以及
`windows/runner/classic_spp_channel.cpp`、`windows/runner/mi_account_2fa_channel.cpp`
都来自 OronBox，移植脚本在 `tools/port_oronbox.py` 和 `tools/port_native.py`，可复现。

我们对上游代码做的改动：

- 去掉 ZeppOS（Amazfit / 手环 7）支持 —— 只保留小米 Vela 设备，协议栈完全不同
- 去掉健康、天气同步、表盘市场、插件系统等功能 —— 与「同步课表」无关
- 用**手写的普通 Dart 类**替换 Freezed 生成的数据类，省掉代码生成器依赖
- 用不依赖 Flutter 插件的方式重写了本地存储（`SharedPrefsService`）
- 去掉 Riverpod 依赖注入，改成普通单例
- 只用 SPP 通道，不依赖 BLE 插件
- 新增：课表解析、与手环端 RPK 的通信协议、界面、文件选择框

## 构建

```powershell
# 一键构建 + 打包（产物到 dist/pc）
python tools/build_pc.py
```

手动构建：

```powershell
flutter doctor          # 确认 "Visual Studio - develop Windows apps" 是 √

# 小米账号二次验证的界面需要 WebView2 SDK（只影响「登录小米账号」这条路）
# 它约 20 MB，不跟着仓库走，所以要自己跑这一步下到 windows/packages/（CMake 会自动找到）
powershell -File windows\scripts\install_webview2_sdk.ps1 -Version 1.0.4191.47

flutter pub get
flutter run -d windows      # 开发
flutter build windows --release
flutter test                # 48 项测试
```

> **不需要**开启 Windows「开发者模式」：本项目刻意不使用任何 Flutter 插件
> （插件构建需要符号链接支持，那要求开发者模式）。文件选择框和蓝牙传输都走原生实现。

> ⚠️ **构建路径要固定**：MSVC/CMake 会把绝对路径写进中间产物，中文路径和
> 英文联接路径（`D:\band-schedule`）混着构建会出现
> `cannot open source file ...cpp_client_wrapper\xxx.cc` 这类报错。
> `tools/build_pc.py` 固定走联接路径；手工构建时如果撞上，删掉
> `pc\build\windows` 再试。

WebView2 SDK 是可选的：不装也能编译运行，只是登录小米账号时如果被要求二次验证会走不通
（CMake 会打印警告，C++ 那边有 `BANDSCHEDULE_HAVE_WEBVIEW2` 宏守卫）。

## 目录结构

```
pc/
├── lib/
│   ├── src/protocols/     蓝牙协议（vela-v5）+ 生成的 protobuf   ← 移植自 OronBox
│   ├── src/device/        设备抽象与小米实现                    ← 移植自 OronBox
│   ├── src/features/      小米账号登录、已装应用列表             ← 移植自 OronBox
│   ├── src/core/          日志、模型、键值存储、RFCOMM 驱动
│   ├── src/schedule/      课表解析（ICS / 纯文本）、数据模型      ← 本项目新增
│   ├── src/band/          与手环端 RPK 的通信、authkey、设置      ← 本项目新增
│   ├── src/platform/      文件选择框封装                        ← 本项目新增
│   └── main.dart          界面（四步流程）
├── test/                  课表解析 + 界面测试
└── windows/
    ├── runner/
    │   ├── classic_spp_channel.cpp    蓝牙 SPP(RFCOMM)          ← 移植自 OronBox
    │   ├── mi_account_2fa_channel.cpp 账号二次验证的 WebView     ← 移植自 OronBox
    │   ├── file_dialog_channel.cpp    系统文件选择框             ← 本项目新增
    │   └── utils.cpp 等               Flutter 模板 + WebView2 目录
    └── scripts/install_webview2_sdk.ps1
```

## 平台通道（两边名字必须一致）

| 通道 | 方向 | 用途 |
| --- | --- | --- |
| `bandschedule/classic_spp` | Dart → C++ | 连接/断开/发送 |
| `bandschedule/classic_spp/events` | C++ → Dart | 收到的数据、连接状态 |
| `bandschedule/classic_spp/scan_events` | C++ → Dart | 扫描到的蓝牙设备 |
| `bandschedule/mi_account_2fa` | Dart → C++ | 弹出二次验证窗口 |
| `bandschedule/file_dialog` | Dart → C++ | 系统文件选择框 |

> ⚠️ 改通道名时 C++ 和 Dart 必须同步改（`tools/port_native.py` 里有替换表）。
> 只改一边不会编译报错，但运行时会抛 `MissingPluginException` 或**静默无响应**。

## 和手环端的通信协议

`lib/src/band/protocol.dart`，必须与手环端
`band/band-schedule/src/common/protocol.js` 一致。

课表 JSON 较大（几 KB），而单帧缓冲约 1KB，所以按 **300 字符切帧**
（中文一字最多 3 字节 ≈ 900 字节），手环端按 `seq` 拼回来，收齐落盘后回 `ack`。详见协议文件里的注释。

## 手环端应用

手环上运行的是 `band/band-schedule/`（包名 `io.github.lazyjcgit.bandschedule`），
本工具会自动把它装到手表上。两者通过小米的 interconnect 通道通信，
手环端把收到的课表存本地，按「今天 + 第几周」过滤后显示。

