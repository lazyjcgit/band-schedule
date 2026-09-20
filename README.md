# 手环课表 · 小米手环 9

把课表同步到小米手环 9，抬腕就能看今天上什么课。

```
课表文件(.ics/文本) ──▶ PC 端「手环课表助手」 ──蓝牙 SPP──▶ 手环快应用(RPK)
                        解析 + 连接 + 装应用 + 下发         按星期/周次显示今日课表
```

**不需要安卓手机，也不需要小米运动健康** —— PC 端直接用蓝牙和手环通信，
会自动把手环端应用装上去。

## 目录结构

```
├── pc/                       电脑端 App（Flutter/Dart，本项目的主体）
│   ├── lib/src/protocols/    蓝牙协议（vela-v5）        ← 移植自 OronBox（AGPL）
│   ├── lib/src/device/       设备抽象与小米实现          ← 移植自 OronBox（AGPL）
│   ├── lib/src/schedule/     课表解析（ICS / 纯文本）
│   ├── lib/src/band/         与手环端的通信、authkey 获取
│   └── windows/runner/       原生部分：SPP 通道、文件选择框、2FA 窗口
├── band/band-schedule/       手环端 Vela 快应用（JavaScript + .ux → .rpk）
├── dist/pc/                  打包好的电脑端（exe + rpk，拿到就能用）
└── tools/                    构建脚本与测试
```

> `dist/`、`_ref/`、`tools/toolchain/`、`tools/npmboot/`、小米官方资料，
> 以及打包用的签名密钥都**不在仓库里**（原因见「构建」一节）。
> 早期的手机端 App（`android/`）同样不发布，原因见下。

### 手机端为什么弃用

最初的方案是「安卓 App 抓课表 → 小米互联通道下发给手环」，需要装小米运动健康、
并在里面授权。现在的方案（PC 端直连）不需要这些，链路更短、依赖更少，
所以安卓端不再维护。

代码**没有随仓库发布**（`.gitignore` 里排除了 `android/`）：它当初是**针对某一所学校**
写的（包名、界面文案、抓取接口都带着校名），和本项目「面向所有大学生」的定位不符；
另外它还含有签名用的密钥库和明文密码。需要参考的话，与 PC 端重复的部分
（分帧协议、设备层）在 `pc/lib/src/band/` 和 `pc/lib/src/device/` 里都有，
而且是通用化的版本。

> **路径说明**：MSVC/CMake 不接受含中文的工程路径。项目实际文件在
> `D:\我的小项目\小米手环课表`，构建时走目录联接
> `D:\band-schedule`（`mklink /J D:\band-schedule "D:\我的小项目\小米手环课表"`）。
> 两个构建脚本都会自动选这个联接路径。

## 目前进度

**手环端（`band/band-schedule/`）**

- [x] 摸清小米手环 9 的应用形态：**Vela OS 快应用（RPK）**，打通构建链，产出已签名 `.rpk`
- [x] 今日课表界面：日期/周次、每节课的时间地点老师，字号按真实课表边界调过
- [x] 「下一节课」页：大字显示开始时间和地点，下课后自动切换到下一门
- [x] 本地存储（退出重进数据还在）
- [x] 下发改成分帧 + 手环端重组 + ack 确认（单帧 < 1KB，长课表不会被截断）
- [x] 消息按 **UTF-8** 收编解（字节载荷 / 畸形字符串都能认，中文课表才发得过去）
- [x] 纯逻辑有 Node 测试（`tools/test_band.js` 40 项、`test_next.js` 16 项、`test_store.js` 8 项）
- [x] 三个静态检查：页面（组件/循环写法/高度）、布局、编译产物

**PC 端（`pc/`）**

- [x] Flutter Windows 桌面应用，走蓝牙 SPP 直连手环（不需要小米运动健康）
- [x] 课表解析：ICS（课表软件/教务导出）+ 纯文本，含真实课表端到端比对
- [x] 小米账号登录取 authkey（含二次验证窗口：验证绑在 context 上，完成后要原样重发登录请求）
- [x] 连接 → 安装手环端应用 → 下发课表，全流程串通
- [x] 协议栈按型号判定（手环 9 走老的 L1/L2 + SAR，不能写死成 SPP v1 编解码）
- [x] 「选择课表文件 → 预览 → 连接 → 同步」四步界面
- [x] 界面文案面向所有大学生（不出现某一所学校或某个客户端软件的名字）
- [x] 打包后自动反查产物内容（`tools/verify-artifacts.py`）
- [x] **真机验证通过**：连接、认证、装应用、课表下发到手环显示，全链路跑通
- [x] 发布前审查脚本（`tools/preflight-publish.py`：密钥 / 个人信息 / 体积 / 许可证）

> **关于 403 的更正**（手机端时代，记录一下思路）：早先我判断「问题在学校那一侧」
> 是**错的** —— 另一个能用的客户端能正常取到课表，说明接口是好的。真正的原因在
> 我们自己的请求头上：给 `.do` 这类 XHR 风格的 JSON 接口加了浏览器导航式的
> `Accept` 和 `Referer`，而**能跑通的那个客户端只带 User-Agent**。
> 教训是通用的：**请求头要尽量裸**，别自作聪明加一堆。

### 二次验证（2FA）是怎么处理的

小米账号开了二次验证时，PC 端会弹一个内嵌浏览器窗口让你完成验证，然后接着把登录走完。
这条路上的坑都踩过并修好了，按踩到的顺序：

1. **只从「当前页面」取 cookie 会漏**。验证流程结束时页面可能停在别的域上，而
   `passToken` / `cUserId` 是挂在 `account.xiaomi.com` 上的。现在两处都取，合并使用。
2. **判断「验证完成」的条件曾经太松**。`userId` 在验证还没做完时就会下发，用它当
   判据会提前结束等待，把一个没认证的会话递给登录接口。现在要求 `passToken`，
   或者 `cUserId` + `userId` 同时出现。
3. **`_sign` 和 `notificationUrl` 的判断顺序写反了**。小米要求二次验证时
   **也会回 `_sign`**，先判 `_sign` 会把「需要验证」误报成「登录失败」。现在先看
   `notificationUrl`。
4. **最关键的一条：验证完之后必须「原样重发」当初那次 `serviceLoginAuth2`。**

   验证地址是 `account.xiaomi.com/fe/service/identity/authStart?sid=…&context=…`，
   里面的 **`context` 才是「这次登录尝试」的身份**。用户在网页上完成验证，验证掉的
   是**那个 context**。

   之前的做法是拿窗口里的 cookie 重新 `GET serviceLogin` —— 但那会生成一个**全新的
   context**，服务端当然还是回 `_sign` 要求验证。日志里就是这个现象：cookie 名单里
   明明有 `passToken` 和 `cUserId`，三次换票据全回「仍然要凭据」，重跑一遍账密登录
   又弹一次验证窗口。

   所以 `MiAccountTwoFactorRequired` 现在会把**当初那次请求的原文**
   （`_sign` / `qs` / `callback` / `user` / `hash`）一起带上，验证完成后照原样重发，
   服务端认出这个 context 已验证，直接回 `location`。重发时 `deviceId` 用**起头那个**
   （app 生成的，context 是拿它建出来的），不能被验证窗口自己那个顶掉；窗口带回来的
   会话 cookie 则一起带上。

   拿 cookie 直接换票据那条路留作兜底：账号已经是登录态时 `serviceLogin` 会直接给
   `location`。

真出问题时，界面右上角的「查看运行日志」里有用的信息：
- `二次验证窗口返回的 cookie：…` —— **只有 cookie 名字**，值是凭据不进日志
- `原样重发 serviceLoginAuth2 拿到了票据` / `重发 serviceLoginAuth2 没成功（…）`
- `第 N 次换票据：服务端仍然要凭据 / 还要二次验证` —— 兜底那条路的结果

兜底方案始终是「手动填写 authkey」（在小米运动健康的日志里能找到）。

### 为什么不能写死协议栈（手环连不上的真正原因）

连接时会向设备层 `spawnDevice` 传一个 `kind`，它决定走哪套协议栈：

| kind | 走的路径 |
| --- | --- |
| `xiaomi-spp-v1` | SPP v1 编解码（version / protobuf 通道） |
| `xiaomi` | 老的 L1/L2 + SAR 分片 |

**只有设备目录里明确标了 `sppV1` 的型号才能用 v1 编解码，其余一律走老的。**
判断依据写在 `xiaomiDeviceKindForProtocol()`，认不出型号时也走老的。

原来这里写死成 `xiaomi-spp-v1`，现象是：蓝牙连得上、会话初始化也有来有回，
但发出认证请求后**手环一个字节都不回**，等 60 秒超时。

对着 OronBox 的日志才看出来 —— 连同一只手环（Xiaomi Smart Band 9），它打的是：

```
spawning xiaomi device          ← 不是 xiaomi-spp-v1
starting SPP hello
SPP hello completed
starting auth
SAR started: local_tx_win=32 remote_tx_win=3 send_timeout_ms=16000
received device verify, building confirm    ← 18 毫秒后就收到了
auth confirmed
```

关键是 `spawning xiaomi device`：它走的是老的 L1/L2 路径，而且会启动 **SAR**
（分片重传控制器，日志里的 `SAR started`）。我们走 v1 编解码时 `sar.start()`
根本不会执行（代码里是 `if (!sppV1) sar.start();`），认证帧的封装方式也不一样。

查目录也印证了这一点：手环 9（代号 `n66` / 型号 `M2345B1`）标的是
**`sppV2`**，本来就不该用 v1。

> 教训：**协议层代码逐字节对齐了，不代表行为一致 —— 调用它的参数也可能是错的。**
> 这次是靠「同一台设备、同一时刻，能连上的实现怎么打日志」才定位到的，
> 光读代码永远看不出来。

### 手环不回应蓝牙查询（所以扫描对它无效）

实测（关掉手机蓝牙也一样）：**小米手环不回应电脑的经典蓝牙查询**，
所以它不会出现在扫描结果里。这不是故障，是它的行为。

因此第③步的设计是围绕**已知地址**做的：

- 地址可以直接手填（`AA:BB:CC:DD:EE:FF`）；
- 「登录小米账号」会**连地址一起带出来**（小米云端的设备列表里有 MAC）——
  这是新用户的正路：走一趟就有密钥和地址，直接连接；
- 扫描按钮只用来找别的设备，扫不到手环时界面会直接说明原因，
  不再让用户反复点；
- 扫描结果**不会**再自动选一个不相干的设备去连（以前认不出来就挑第一个，
  结果去连耳机，必然失败）。

**地址和名字都不落到设置里。** 早期版本会存"上次连接"，而且是**先存再连**，
于是失败的尝试也会被固化 —— 实际后果是一次自动挑错设备的尝试把一对红米耳机的
地址和名字存了进去，之后每次启动都在连那对耳机，界面上还把它当成手环显示。
现在地址只活在界面输入框里，设备名只用「本次扫描到的」或「小米账号返回的」
这种当场可核实的值。旧版留下的 `band.mac` / `band.name` 会被忽略，不用手动清理。

### 连接时为什么要「重新配对」

连接前会先在 Windows 里删掉这条设备的蓝牙配对记录，然后再连（界面上的
「连接时重新配对」，默认开）。这一步是跟 OronBox 学的 —— 它的同名设置默认也是开，
说明写的是「开启有助于提升连接稳定性，防止官方运动健康抢走设备连接」。

原因是小米手环的 SPP 通道**不需要蓝牙层配对**，安全性由应用层的 authkey 认证保证；
而系统里一旦留着配对记录，Windows 就会在连接时去握手，手环那边会把这次连接
**交给绑定的手机去批准** —— 屏幕上出现「请在手机上确认连接」，PC 这边就再也等不到
回应，看起来就是卡死。删掉配对记录再连就不会走到那一步。

同理，**不要先在 Windows 设置里「添加设备」**去配对手环：那次配对同样会触发手机批准。
直接用程序里的「扫描设备 → 连接」就行。

连不上时的排查顺序：

1. 保持「连接时重新配对」勾着，重试一次。
2. 把手机蓝牙关掉，或退掉小米运动健康 —— 别让它抢这条连接。
3. 在 Windows 设置 → 蓝牙和其他设备里，手动删掉手环那条记录，再回来连一次。
4. 还不行就看「查看运行日志」：卡在哪一步（连接 / 会话初始化 / 认证）都是分开报的，
   而且每步都有超时，不会再无限等下去。

连接本身会**自动重试 2 次**（跟 OronBox 一样），两次之间先断开清一次状态：
第一次失败很常见，手环可能还在收尾上一条链路（尤其刚发生过失败的配对）。

### 构建后为什么要反查产物

手环端的打包脚本会把 `dist/` 里已有的旧 rpk 先挪走、打完再放回来（好让多个版本
并存）。但**版本号没变时新包和旧包同名**，放回来就把刚打的覆盖了 —— 日志显示
构建成功，实际发出去的是老包。已经改成同名时以新包为准，并且在
`tools/build-all.ps1` 里加了「这次到底有没有产出新包」的断言。

`tools/build_pc.py` 打完包会自动跑 `tools/verify-artifacts.py`，直接进 exe 和 rpk
里查内容：exe 里得能找到刚写的原生标记（通道名、账号域等），rpk 里不能还有改掉的
旧文案。这样"构建成功但产物是旧的"这类错不会再悄悄溜过去。

## 构建

> **先看这一条：仓库里没有打包签名用的密钥。**
>
> `band/band-schedule/sign/` 和 `android/keystore/` 都在 `.gitignore` 里 ——
> 私钥公开等于把"以你的名义发版本"的能力交出去。
> **自己构建时用自己的密钥即可**：手环是按**包名**授权的，不校验签名者是谁，
> 所以换了密钥不影响安装和使用。生成方法：用 aiot-toolkit 的
> `generate sign`（或直接仿照 `band/band-schedule/sign/` 下的目录结构放一对
> PEM）。只有一种情况必须用回原密钥：想覆盖安装到**已经装过旧包**的手环上
> —— 那时先卸载再装即可。
>
> 同理，`_ref/`（对照用的上游克隆）、`tools/toolchain/`、`tools/npmboot/`
> 都不在仓库里，需要时按 README 里的版本自己准备。
>
> **小米的接口文档和 SDK 示例也不在仓库里**（`docs/xiaomi/` 下的 PDF、txt、demo）
> —— 那是小米的版权材料，不适合跟着开源仓库转发。手环端用到的
> `@system.interconnect` 接口以官方文档为准，请从官方开发者渠道获取。

```powershell
# 电脑端：构建 + 打包到手环端 rpk 一起放进 dist/pc
python tools/build_pc.py

# 手环端：测试 → 检查 → 打包 rpk
powershell -ExecutionPolicy Bypass -File tools/build-all.ps1

# 只跑测试（不需要 Android 工具链）
python tools/run-band-tests.py       # 上面 4 套 Node 测试，一次跑完并汇总
node tools/test_band.js              # 手环端纯逻辑，40 项
node tools/test_next.js              # 「下一节课」规则，16 项
node tools/test_store.js             # 本地存取（storage 读回），8 项
node tools/test_oronbox_plugin.js    # 调试插件 + 真实课表，13 项
python tools/run_cookie_test.py      # cookie 持久化解析（用真实 OkHttp 验证）

# PC 端（Dart）
cd pc && flutter analyze && flutter test    # 48 项（解析 / 登录 2FA / 扫描 / 地址 / 协议栈 / 载荷编码 / 界面）

# 静态检查（也接在构建流程里）
python tools/check-band-pages.py     # 组件白名单 / 循环写法 / 每层容器高度
python tools/check-band-layout.py    # 各页面高度宽度是否超出 192x490
python tools/check-band-build.py     # 编译产物：循环指令前缀、样式、分页
python tools/verify-artifacts.py     # 反查 dist/pc 的 exe 和 rpk 内容

# 发布前审查：密钥/个人信息/签名文件/体积/许可证
python tools/preflight-publish.py
```

分开构建：

```powershell
# 手环端
cd band/band-schedule
npm install && npm run release     # dist/io.github.lazyjcgit.bandschedule.release.3.0.0.rpk
```

要点：

* `aiot-toolkit` 必须锁 **1.1.0**（2.x 与 minimatch 10 不兼容，会静默不编译）
* 首次 `npm install` 后要 `npm install-scripts approve sharp && npm rebuild sharp`
  （libvips 走 GitHub 容易超时，建议加 npmmirror 镜像环境变量）
* 包名/应用名/路径都从根目录 `project.json` 读，改名只改那一处
* `tools/` 下 `_` 开头的文件是开发时的临时脚本，不参与构建流程

## 安装到手环

**推荐直接走 PC 端应用**（`dist/pc/band_schedule_pc.exe`）：连上手环后点「安装」即可，
rpk 就在 exe 旁边，程序会自己找到。装完接着点「同步课表到手环」，整个过程不用碰手机。

下面是**手动**的官方侧载路径，用于 PC 端连不上、或想单独排查的情况。
本节历史背景：早先这条链路是靠一个自制的安卓 App 完成的，那个 App 已经弃用，
原因见上面「手机端为什么弃用」。

**顺序不能错：先侧载 rpk，再申请权限。** 这两条依据：

1. 官方《interconnect 测试》文档的步骤就是「1. 通过小米运动健康安装快应用 …到手表上。
   2. 手机端安装安卓应用」—— **rpk 在前**。
2. 实机诊断证实：手环上没装 rpk 时，小米运动健康对权限查询直接回
   `app not installed`，申请授权也不会有任何反应。也就是说**没装 rpk 之前，
   授权这条路根本走不通**，`设备授权管理` 里也不会出现我们的应用。

手动侧载：

1. **手机装「小米运动健康」，连上手环 9。** 我的 → 右上角 `+` → 添加新设备。
2. **侧载 RPK**（这一步走的是工厂调试入口，**不需要任何授权**）：
   小米运动健康 → 我的 → 滑到底部 → **设备工厂设置** → `ThirdAppDemo`
   → `click to input package name` 输入包名 `io.github.lazyjcgit.bandschedule`
   → `install third app` 选择 `band/band-schedule/dist/` 下的
   [io.github.lazyjcgit.bandschedule.release.3.0.0.rpk](band/band-schedule/dist/io.github.lazyjcgit.bandschedule.release.3.0.0.rpk)。
   安装成功会有 toast 提示。
3. **在 PC 端应用里申请权限**：连上手环后点「诊断手环」，确认报告里出现
   `手环端应用：已安装 ✓`；再点「同步课表到手环」，这时才会弹出授权页，点**允许**。
4. **回小米运动健康确认**：（我的 / 设置）→ **设备授权管理** → 「手环课表」应为已允许。
5. **再同步一次**。手环上打开「手环课表」，点底部状态栏也能主动请求同步。

其它两条官方说明：

* **卸载**：同第 2 步，最后选 `uninstall third app`。
* **重装**：文档建议「先输入包名 uninstall 老包再安装新包」，这样桌面图标会被真正替换掉。
  所以以后重新打包 RPK 之后，按这个顺序覆盖安装，别直接装。

> `设备工厂设置 → ThirdAppDemo` 是**调试入口**，不同版本的小米运动健康里位置/名称可能不一样。
> 正式发布通道要联系小米谈合作，个人自用只有这条路。

装完之后怎么确认真的通了，看下面「同步到手环」和「排障」两节。

## 用 OronBox 直接从电脑调试手环（强烈推荐）

[OronBox](https://github.com/zxor-org/OronBox) 是开源的 VelaOS 设备管理工具，
支持 Windows/macOS/Linux/Android，**能直连手环装 rpk，还能按包名直接给快应用发消息**。
我们的 PC 端就是照搬它的设备层做的，但 OronBox 本身作为排查工具依然好用。

**装/更新 rpk（CLI）：**

```sh
oronbox --nogui device paired
oronbox --nogui device connect AA:BB:CC:DD:EE:FF
oronbox --nogui app uninstall io.github.lazyjcgit.bandschedule   # 重装前先卸载，否则图标可能不更新
oronbox --nogui install quickapp ./band/band-schedule/dist/io.github.lazyjcgit.bandschedule.release.3.0.0.rpk
oronbox --nogui app list                                         # 确认装上了、版本对不对
oronbox --nogui app launch io.github.lazyjcgit.bandschedule
```

**单独验证手环渲染（把整条下发链路摘掉）：**

```powershell
# 1) 把真实课表转成手环吃的格式（.ics 从课表软件/教务系统导出）
python tools/ics_to_schedule.py <你的课表.ics> dist/schedule-real.json
# 2) 打包调试插件（会自动把上面这份真实课表注入进去）
python tools/build-oronbox-plugin.py
```

3. OronBox → 插件页 → **导入插件** → 选 `dist/oronbox-devtool.obp`
4. 打开「手环课表调试台」，它会显示**对照基准**：用 PC 端同款算法算出的「今天应有 N 门」
5. 点「**看手环应用**」确认手环已装 `io.github.lazyjcgit.bandschedule`
6. 点「**发送到手环**」
7. 手环上打开「手环课表」，对照两边的数字是否一致

这一步能把问题**一刀切开**：插件直发数据、手环能正常显示 ⇒ 手环端没问题，
故障在下发链路；手环还是不显示 ⇒ 就是手环端渲染的问题。

首帧发送时会弹一次授权（`interconnect` 是中风险，作用域就是目标包名），
选「始终允许」即可。

## 手环端界面（v2.0）

两个页面，底部按钮从「重新同步」改成**跳转**：

**主页 `pages/home`** —— 今天要上的课，字号整体放大

| 元素 | v1.x | v2.0 | 说明 |
| --- | --- | --- | --- |
| 日期 | 15px | **19px** | 加粗 |
| 起止时间 | 11px | **14px** | 加粗，列表里最该看清的一行 |
| 课程名 | 14px | **16px** | 加粗，**超过 9 个字截断成「前 9 字…」** |
| 地点 | 11px | **13px** | 用亮蓝色，一眼可见 |
| 老师 | 10px | **12px** | |
| 底部 | 「点此请求更新」 | — | 改成跳转按钮，顺带显示下一节课摘要 |

真实课表单日最多 5 门、课名最长 18 字（「习近平新时代中国特色社会主义思想概论」），
所以字号是**按最坏情况反推的**：5 行 × 72px = 360 ≤ 380px；
地点+老师同行最宽 144px ≤ 168px。这些都在 `check-band-layout.py` 里强制校验。

**「下一节课」页 `pages/next`** —— 突出上课时间和地点

```
‹ 返回                    下一节课
        今天 周二 · 第 2 周

             08:30                  ← 54px 最大字号

     10:05 下课 · 第1-2节

           上课地点
        ┌─────────────┐
        │   A-418     │            ← 34px 加粗 + 蓝底色块
        └─────────────┘

        计算机通信与网络              ← 超长课名截断
            周路,杨力
        距上课还有 5 分钟             ← 正在上时显示「还有 N 分钟下课」
  点左上角返回 · 每分钟自动更新
```

显示规则正是你要的那条：**取「结束时间还没到」的最早一门课** ——

- 正在上的课会一直显示到它下课
- 一下课立刻自动切到下一门（比如 10:05 下课，10:05 那一刻就换成下午那节）
- 今天全上完了就往后找，最多看 7 天，标签变成「明天」/「周三」等
- 页面每 20 秒重算一次，从别的页面返回时也会重算

这条规则有 16 项测试兜着，其中一项专门断言「10:05 下课那一刻就切换」。

> 两个文件都是**新增**的，`pages/index/index.ux`（v1.x 旧版）保留未动，
> 但已从 manifest 的 router 里移除，不再打包 —— 需要回退时把它加回去即可。

## 版本与回退

`band/band-schedule/dist/` 下可以**同时并存多个版本**的包，按文件名区分。
当前版本：

| 包 | 界面 | 说明 |
| --- | --- | --- |
| `io.github.lazyjcgit.bandschedule.release.3.0.0.rpk` | 主页 + 下一节课页 | **当前版本** |

> 早期的包用的是另一个包名（校名相关，见 `.gitignore` 的说明）。换了包名之后，
> 新旧包在手环上会**各占一个图标、可以并存**、互不影响 —— 这正好方便对照。
> 想彻底清掉旧版：在手环的应用列表里长按卸载，或用 OronBox `app uninstall <旧包名>`。

**旧版源码**在 `band/band-schedule/src/pages/index/index.ux`（v1.4，未改动）。
它不在 manifest 的 router 里，所以不参与打包。

单独重建回滚包：

```powershell
python tools/build-rollback-1.4.py
```

这个脚本会**临时**把 manifest 切回 `pages/index`/1.4.0、构建、然后**用 try/finally
把 manifest 还原成原始字节**（不依赖重新敲一遍 JSON，改坏了也不会残留）。
构建完 dist 下多个包并存。

> ⚠️ 两个注意点（都已在脚本里处理）：
> 1. **`aiot` 打包会清空 `dist/`** —— 直接构建会把别的版本删掉。
>    `build-all.ps1` 和 `build-rollback-1.4.py` 都会先把已有的 rpk 挪走、构建完再放回来。
>    放回来时**同名以新包为准**（版本号没变时新包和旧包同名，早期版本会把新包覆盖掉）。
> 2. **产物检查要认准版本** —— `check-band-build.py` 按 manifest 里的 `versionName`
>    精确匹配文件名，不会误检查成回滚包。

全新安装当前版本：

```sh
oronbox --nogui install quickapp ./dist/pc/io.github.lazyjcgit.bandschedule.release.3.0.0.rpk
```

> **版本管理的演进**：上面这套「保留旧源码 + 回滚包」是**还没有 git 的时候**
> 用来兜底的手动办法。现在项目已用 git 管理，回退直接 checkout 旧提交/旧 tag 即可，
> 比靠文件名区分可靠得多；`build-rollback-1.4.py` 保留下来是为了能随时重建
> 那个 v1.4 的包在手环上做对照。

## 手环端的排查线索

> ### `storage.get` 的回调直接给值，不是 `{data: …}`（v2.1 修的）
>
> 症状：**退出应用再进来数据全没了；「下一节课」页一进去就显示"没有数据"。**
>
> 原因：`storage.get({key, success(data){...}})` 里的 `data` **就是存进去的字符串本身**。
> 本项目原先写的是 `const raw = data && data.data` —— 永远取到 `undefined`，
> 所以课表一直只在内存里、从没真正读回来过。两个页面各写了一份这个读取代码，
> 于是同一个 bug 存在两处。
>
> 依据是官方闹钟应用（它必须持久化）的写法：
> `velasim/app/com.xiaomi.watch.alarm/Home/index.js`
>
> ```js
> storage.get({ key: 'eventList', success: function (data) {
>   resolve(data ? JSON.parse(data) : [])     // 直接对 data 做 JSON.parse
> }})
> ```
>
> 修法：读写统一收进 `common/store.js`（`loadScheduleRaw` / `saveSchedule`），
> 两个页面共用，不再各写一份。`unwrapStored` 同时兼容字符串和 `{data:'…'}` 两种形态。
> `tools/test_store.js` 断言了两个页面都必须引用该模块、且不得再出现 `data.data`。
>
> 另外 `saveSchedule` 会在写入后**回读并核对长度**（手环上没有 logcat，
> 静默写失败很难查）。课表 JSON 实测约 4KB，远小于任何限制。

## 手环端的排查线索

手环上看不了 logcat，所以界面上直接留了线索：

- 顶部小字是**诊断行**：`v1.2 · 共22门 · 今2门 · 第2周 · 开学2026-09-07`
  —— 版本号用于确认新包真的装上了（侧载很容易装成旧包）
- 底部是**状态行**，点它可以主动重新同步

对照关系：

| 诊断行显示 | 含义 |
| --- | --- |
| `共0` | 数据没收到或解析失败，看 PC 端「查看运行日志」里的下发记录 |
| `共22 · 今0` | 数据收到了，今天确实没课 |
| `共22 · 今2` 但列表空白 | 渲染问题（Vela 的容器高度，见下） |
| `周?` | `termStartDate` 缺失，周次过滤会退化成不过滤 |
| 版本号不是最新 | 装的是旧包，重新侧载（先 uninstall） |

> ### `for` 循环必须用不带别名的写法（列表空白的真凶）
>
> 症状：**诊断行正常显示「今2」，但课程列表一片空白。**
>
> 原因：`for="别名 in 数组"` 这种写法在 **aiot-toolkit 1.1.0** 下会被编译坏。
> 对比同一份代码的两种写法在编译产物里的样子：
>
> ```js
> // for="course in courses"  ← 坏的：courses 是裸标识符，没带视图模型前缀
> __cf__({__opts__:{exp:function(){return{__list__:courses,__tid__:"id"}},value:"course"}}, …)
>                                                  ^^^^^^^ 运行时取不到 → 循环不执行
>
> // for="{{courses}}"  ← 对的：t.courses，与官方 demo 产出一致
> __cf__({__opts__:{exp:function(){return t.courses}}}, …)
>                                              ^^^^^^^^^
> ```
>
> 判定依据是**官方 rpk 的编译产物**（小米自己的 interconnect 测试应用，实测可用）：
> 它是 `exp:function(){return e.dataTypes}` —— 直接访问视图模型属性、不带别名、
> 循环体内用 `$item`。所以我们照这个写法来：`for="{{courses}}"` + `{{$item.name}}`。
>
> 这也解释了为什么其它文字都正常：`{{diagText}}` 这类是普通文本绑定，
> 编译路径和循环指令完全不同。
>
> `tools/check-band-build.py` 现在会**断言产物里循环目标是 `t.xxx` 形式**，
> 一旦编成裸标识符（或又用回别名写法）就直接让构建失败。
>
> ### Vela 容器必须给显式高度
>
> 相关坑：**Vela 的容器 `div` 不会像浏览器那样被内容撑开**——不给 `height` 就按 0 渲染。
> 所以每一层容器（`.item`、`.item-head`、`.item-name`、`.item-foot`…）都要写死高度。
> 官方 `div` 文档的所有示例都显式写了 `height`；真机验证过的参考实现
> （m0tral/MiWatchHyperOSApps）里每一层容器也都有显式高度。
>
> 还有：`.page { height:490px; padding-top:26px }` 在默认 `content-box` 下总高是 516px，
> 会把底部状态栏整个推出屏幕 —— 顶部留白要改用 `margin-top`。
> 尺寸账由 `tools/check-band-layout.py` 强制校验。
>
> ### 为什么没用 `<scroll>`
>
> `scroll` 组件在文档里标注 **`2+`**（需要 APILevel 2），而 manifest 声明的是
> `minAPILevel: 1`。一天最多几门课，本来也不需要滚动，所以改用普通 `div` + 显式高度。
> `tools/check-band-build.py` 会断言产物里没有 `scroll`。

## 数据来源

课表从 PC 端进来，两条路：

1. **课表文件**（点「选择课表文件」）：`.ics` 日历文件（课表软件 / 教务系统导出的都认），
   或者手打的纯文本。
2. **粘贴文本**（点「粘贴文本」）：不想存成文件时直接粘，格式见下。

```
课程名 周几 节次 周次 教室 教师
高等数学 周一 1-2 1-16 A101 张三
大学英语 3 5-6 1-16 B203 李四
体育 五 3-4 1,3,5,7 操场
```

周几可以写 `1~7` 或 `周一~周日`；节次写 `3` 或 `3-4`；周次可以省略（表示每周都上）。
分隔符用空格或中文逗号；**周次列表内部用英文逗号**（`1,3,5`），这个区别解析器是认的。

## 同步到手环：怎么确认它真的成功了

点「同步课表到手环」之后，状态栏会按顺序报这些：

```
找到设备：小米手环 9（<nodeId>）
正在下发课表（12KB，共 45 帧）…
手环已确认收到，手环显示 42 门课
```

**最后一句是手环回的确认**，不是电脑自说自话。数据流程是：

```
PC：切成 ≤300 字符的帧 → 逐帧发送 → 等手环 ack
手环：按 seq 拼回 JSON → 存本地 → 按「今天 + 第几周」过滤 → 回 ack
```

任何一帧丢了、或手环拼不出合法 JSON，都会走重发或明确报错，不会静默成功。

## 排障

**第一件事：点「诊断手环」。** 它会跑一遍整条链路并输出报告（同时复制到剪贴板），
哪一环断了直接看得到：

```
· 蓝牙适配器：可用 ✓
· 已配对设备：2 个
· 目标设备：小米手环 9（AA:BB:CC:DD:EE:FF）
· SPP 通道：已连接 ✓
· 设备认证：通过 ✓（authkey 32 位）
· 手环端应用：已安装 ✓ v3.0.0
```

常见对应关系：

| 报告里的现象 | 原因 / 处理 |
| --- | --- |
| `未找到手环` | 先在系统蓝牙里配对一次（Windows 设置 → 蓝牙和其他设备） |
| `SPP 通道：连不上` | 手环被小米运动健康占着。关掉手机的蓝牙或退掉那个 App 再试 |
| `设备认证：失败` | authkey 不对。重新登录小米账号取，或手动填正确的 32 位十六进制 |
| `手环端应用：未安装` | 点「安装手环端应用」，rpk 就在 exe 旁边 |
| `登录小米账号：仍然要求二次验证/凭据` | 见上面「二次验证（2FA）是怎么处理的」，先看运行日志里的 cookie 名单 |
| `手环显示「课表接收不完整」` | 分片没发全，点手环底部状态栏重新同步即可 |

PC 端的原生层日志：界面右上角「**查看运行日志**」，可一键复制。

> 实机日志里这两个报错是**成对出现**的，含义正好相反，别搞混：
> `permission denied` 是「没授权」（当前会话的既定状态），
> `app not installed` 是「手环端还没装 rpk」，后者必须先解决，否则授权流程根本走不通。

其它现象：

| 现象 | 原因 / 处理 |
| --- | --- |
| 手环显示「等待电脑连接…」不动 | PC 端要**先连上手环**（连上后才会把手环端应用叫起来）。手环上点状态栏可主动请求同步 |
| 手环显示「电脑端没连上手环」 | PC 端没连上，或连的不是这台设备 |
| 手环显示「课表接收不完整」 | 分片没发全，点手环底部状态栏重新同步即可 |
| 点「同步课表到手环」没反应 | 蓝牙没连上。先点「诊断手环」看报告，再回来同步 |

> **关于超时**（手机端时代踩的坑，PC 端已经不存在这个问题）：当年用的小米安卓
> SDK 内部是「先 bindService，再把请求排进队列」，服务没连上时请求会永远躺在
> 队列里，**成功和失败回调都不触发**，SDK 自身没有超时。所以那时候每个调用都
> 得自己套超时。PC 端走的是原生 SPP 通道，每一步都有明确的超时和报错。

PC 端的原生层日志：界面右上角「**查看运行日志**」，可一键复制。

## 注意

本项目为个人学习用途，只读取**本人**课表，不涉及批量采集。
登录凭据仅保存在本机，且已在清单里关闭备份（`allowBackup=false` +
`data_extraction_rules.xml`），不会被云备份或 `adb backup` 带走。
