# 一键构建：手环端 RPK（+ 可选的手机端 APK、OronBox 调试插件）
#
# 用法（在项目根目录）：
#   powershell -ExecutionPolicy Bypass -File tools/build-all.ps1
#   powershell -ExecutionPolicy Bypass -File tools/build-all.ps1 -WithAndroid   # 额外构建已弃用的手机端
#
# 包名/应用名/路径都从根目录 project.json 读取（tools/project.py 是 Python 侧的同一份）。
# 依赖的 JDK / Android SDK / Gradle 都在 D:\android-toolchain 下。

param(
    [switch]$WithAndroid
)

$ErrorActionPreference = "Stop"

$Toolchain = "D:\android-toolchain"
$ProjectRoot = Split-Path -Parent $PSScriptRoot   # 项目根目录

# 纯英文路径能避开 MSVC/CMake/AGP 对中文路径的限制；此处自动选用联接。
# （没建联接也能跑，只是中文路径下某些工具会报错，README 里写了怎么建。）
$AsciiRoot = "D:\band-schedule"
if (Test-Path $AsciiRoot) { $ProjectRoot = $AsciiRoot }

# ---- 读 project.json（包名等标识的唯一来源）----
$Proj = Get-Content (Join-Path $ProjectRoot "project.json") -Raw | ConvertFrom-Json
$BandDir = Join-Path $ProjectRoot $Proj.band.dir
$BandPackage = $Proj.band.package

$env:JAVA_HOME = Join-Path $Toolchain "jdk17\jdk-17.0.2"
$env:ANDROID_HOME = Join-Path $Toolchain "android-sdk"
$env:GRADLE_USER_HOME = Join-Path $Toolchain "gradle-home"
$env:Path = "$env:JAVA_HOME\bin;$env:Path"

# node 不一定在 PATH 里（这台机器上它在 codex 运行时目录下），逐个候选找一遍
function Resolve-Node {
    $cmd = Get-Command node -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }
    $candidates = @(
        (Join-Path $env:USERPROFILE ".cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe")
    ) + (Get-ChildItem (Join-Path $env:USERPROFILE ".cache\codex-runtimes") -Directory -ErrorAction SilentlyContinue |
            ForEach-Object { Join-Path $_.FullName "dependencies\node\bin\node.exe" })
    foreach ($c in $candidates) { if ($c -and (Test-Path $c)) { return $c } }
    throw "找不到 node.exe，请安装 Node 或把它的目录加进 PATH。"
}

$NodeExe = Resolve-Node

# 用哪份 npm？
#   1. 仓库里自带的（tools\npmboot\...）—— 这台机器当初用到的；
#   2. 系统装的 npm（PATH 里能找到）；
#   3. node 自带的 npm（…/node_modules/npm/bin/npm-cli.js）。
# 顺序兜底的原因：vendored 的 npm 有 14MB，不该跟着版本库走，
# 所以 .gitignore 把它排除了 —— 别人 clone 下来只有源码，得靠系统 npm。
#
# ⚠️ 注意 `| Out-Host`：PowerShell 的函数会把**所有输出**当成返回值，
# npm 刷了一堆日志的话，函数返回的就成了"日志数组 + 退出码"，
# 调用方拿它跟 0 比永远不相等（这个坑踩过：包明明打出来了，却报构建失败）。
function Invoke-Npm {
    param([string[]]$NpmArgs)
    $vendored = Join-Path $ProjectRoot "tools\npmboot\pkg\package\bin\npm-cli.js"
    if (Test-Path $vendored) {
        & $NodeExe $vendored @NpmArgs | Out-Host
        return $LASTEXITCODE
    }
    $npm = Get-Command npm -ErrorAction SilentlyContinue
    if ($npm) {
        & $npm.Source @NpmArgs | Out-Host
        return $LASTEXITCODE
    }
    $bundled = Join-Path (Split-Path -Parent $NodeExe) "node_modules\npm\bin\npm-cli.js"
    if (Test-Path $bundled) {
        & $NodeExe $bundled @NpmArgs | Out-Host
        return $LASTEXITCODE
    }
    throw "找不到 npm。装好 Node（自带 npm）后重试；或者把 npm 放到 tools\npmboot\pkg\package\bin\npm-cli.js"
}

$Gradle = Join-Path $Toolchain "gradle-dist\gradle-8.9\bin\gradle.bat"
$ApkSigner = Join-Path $Toolchain "android-sdk\build-tools\35.0.0\apksigner.bat"

Write-Host "node: $NodeExe" -ForegroundColor DarkGray
Write-Host "包名: $BandPackage" -ForegroundColor DarkGray

Write-Host "== 手环端逻辑测试 ==" -ForegroundColor Cyan
& $NodeExe (Join-Path $ProjectRoot "tools\test_band.js")
if ($LASTEXITCODE -ne 0) { throw "手环端逻辑测试没通过，先修好再打包。" }

Write-Host "== 下一节课逻辑测试 ==" -ForegroundColor Cyan
& $NodeExe (Join-Path $ProjectRoot "tools\test_next.js")
if ($LASTEXITCODE -ne 0) { throw "下一节课逻辑测试没通过。" }

Write-Host "== 本地存取测试 ==" -ForegroundColor Cyan
& $NodeExe (Join-Path $ProjectRoot "tools\test_store.js")
if ($LASTEXITCODE -ne 0) { throw "本地存取测试没通过。" }

Write-Host "== 手环端页面检查 ==" -ForegroundColor Cyan
& python (Join-Path $ProjectRoot "tools\check-band-pages.py")
if ($LASTEXITCODE -ne 0) { throw "手环端页面检查没通过（组件/循环写法/高度）。" }

Write-Host "== 手环端布局检查 ==" -ForegroundColor Cyan
& python (Join-Path $ProjectRoot "tools\check-band-layout.py")
if ($LASTEXITCODE -ne 0) { throw "手环端布局超出屏幕，先修好再打包。" }

Write-Host "== OronBox 调试插件测试 ==" -ForegroundColor Cyan
& $NodeExe (Join-Path $ProjectRoot "tools\test_oronbox_plugin.js")
if ($LASTEXITCODE -ne 0) { throw "OronBox 调试插件测试没通过。" }

# cookie 解析测试是针对早期那套学校接口写的探针，未随仓库发布。
# 本机有就跑（保留回归价值），没有就跳过 —— 它不是手环端构建的必要条件。
$cookieTest = Join-Path $ProjectRoot "tools\run_cookie_test.py"
if (Test-Path $cookieTest) {
    Write-Host "== cookie 解析测试（学校接口探针，可选）==" -ForegroundColor Cyan
    & python $cookieTest
    if ($LASTEXITCODE -ne 0) { throw "cookie 解析测试没通过，先修好再打包。" }
}

Write-Host "== 构建手环端 RPK ==" -ForegroundColor Cyan
Push-Location $BandDir
$stash = Join-Path $env:TEMP ("rpk-stash-" + [guid]::NewGuid().ToString("N"))
$stashed = @()
$buildStarted = Get-Date
try {
    # aiot 打包时会清空 dist/，先把它里面已有的 rpk（比如单独构建的回滚包）挪走，
    # 构建完再放回来，否则每次构建都会把别的版本删掉。
    $dist = Join-Path $BandDir "dist"
    if (Test-Path $dist) {
        New-Item -ItemType Directory -Force -Path $stash | Out-Null
        Get-ChildItem $dist -Filter *.rpk | ForEach-Object {
            Move-Item $_.FullName (Join-Path $stash $_.Name) -Force
            $script:stashed += $_.Name
        }
    }
    if ($stashed.Count -gt 0) {
        Write-Host "  （已暂时挪开：$($stashed -join ', ')）" -ForegroundColor DarkGray
    }

    # npm 脚本内部会调 node，把它临时加进 PATH
    $env:Path = "$(Split-Path -Parent $NodeExe);$env:Path"
    if ((Invoke-Npm -NpmArgs @('run', 'release')) -ne 0) {
        throw "RPK 构建失败。"
    }
} finally {
    # 把挪开的包放回来，和本次构建的产物并存。
    # 同名时（版本号没变就是同名）必须让本次的产物赢 —— 否则会把刚打出来的
    # 包又换回旧的，显示"构建成功"但发出去的其实是老包。
    if ($stashed.Count -gt 0) {
        $dist = Join-Path $BandDir "dist"
        $superseded = @()
        foreach ($n in $stashed) {
            $target = Join-Path $dist $n
            if (Test-Path $target) {
                $superseded += $n
            } else {
                Move-Item (Join-Path $stash $n) $target -Force
            }
        }
        if ($superseded.Count -gt 0) {
            Write-Host "  （同名，保留本次新构建的：$($superseded -join ', ')）" -ForegroundColor DarkGray
        }
    }
    Remove-Item $stash -Recurse -Force -ErrorAction SilentlyContinue

    # 确认这次真的产出了新包。dist 里留着旧包时最容易"看着成功、装的还是旧的"。
    $fresh = Get-ChildItem (Join-Path $BandDir "dist") -Filter "$BandPackage*.rpk" -ErrorAction SilentlyContinue |
        Where-Object { $_.LastWriteTime -ge $buildStarted } |
        Sort-Object LastWriteTime -Descending
    if (-not $fresh) {
        Write-Host "  dist 里还是构建前的旧包，本次没有产出 $BandPackage*.rpk" -ForegroundColor Red
        Get-ChildItem (Join-Path $BandDir "dist") -Filter *.rpk |
            Select-Object Name, Length, LastWriteTime
        Pop-Location
        throw "RPK 没有重新生成，别用 dist 里的旧包。"
    }

    Get-ChildItem (Join-Path $BandDir "dist") -Filter *.rpk |
        Select-Object Name, Length, LastWriteTime
    Pop-Location
}

Write-Host "== 手环端构建产物检查 ==" -ForegroundColor Cyan
& python (Join-Path $ProjectRoot "tools\check-band-build.py")
if ($LASTEXITCODE -ne 0) { throw "手环端构建产物检查没过（样式或绑定没编进去）" }

# 包名一致性：RPK 的包名必须与 project.json 一致
$rpkJson = Get-Content (Join-Path $BandDir "src\manifest.json") -Raw | ConvertFrom-Json
if ($rpkJson.package -ne $BandPackage) {
    throw "RPK 包名（$($rpkJson.package)）与 project.json（$BandPackage）不一致。"
}

if ($WithAndroid) {
    # 手机端已弃用，而且**没有随仓库发布**（.gitignore 排除了 android/）：
    # 它是针对某一所学校写的，还带着签名密钥库和明文密码。
    # 只有本机还留着那份代码时才谈得上构建它。
    $androidDir = Join-Path $ProjectRoot "android"
    if (-not (Test-Path $androidDir)) {
        throw "本地没有 android/ 目录 —— 手机端未随仓库发布。这个开关只在你还留着那份代码时才有意义。"
    }
    Write-Host "== 构建手机端 APK（已弃用）==" -ForegroundColor Yellow
    Push-Location $androidDir
    try {
        & $Gradle --no-daemon assembleRelease
        if ($LASTEXITCODE -ne 0) { throw "APK 构建失败。" }
        $apk = Join-Path $ProjectRoot "android\app\build\outputs\apk\release\app-release.apk"
        Write-Host "注意：它的包名是旧的，和手环端新包名 $BandPackage 不一致，不能再互联。" -ForegroundColor Yellow
        Write-Host "      （可以对照，但不能用来给手环端下发数据。）" -ForegroundColor DarkGray
    } finally { Pop-Location }
}

Write-Host "== 打包 OronBox 调试插件 ==" -ForegroundColor Cyan
& python (Join-Path $ProjectRoot "tools\build-oronbox-plugin.py")
if ($LASTEXITCODE -ne 0) { throw "OronBox 调试插件打包失败。" }

Write-Host "完成。产物：$($Proj.band.dir)\dist\*.rpk" -ForegroundColor Green
