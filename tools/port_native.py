"""把 OronBox 的 Windows 原生部分移植到我们的 PC 工程。

搬三块：
  classic_spp_channel.{h,cpp}   蓝牙 SPP（RFCOMM）—— 设备通信的主通道
  mi_account_2fa_channel.{h,cpp} 小米账号二次验证的 WebView —— 登录拿 authkey 用
  utils 里补一个 GetWebView2UserDataFolder（WebView2 的数据目录）

同时把品牌串统一（oronbox → bandschedule）。**平台通道名必须两边一致**，
所以 Dart 侧的 rfcomm_driver_native.dart 和 2FA resolver 也要一起改，
改漏一边会静默连不上（通道没注册，调用直接抛 MissingPluginException）。

    python tools/port_native.py
"""

import io
import os
import re
import shutil
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..'))
REF = os.path.join(ROOT, '_ref', 'OronBox')
PC = os.path.join(ROOT, 'pc')

# ---- 要搬的 C++ 文件 ----
CPP_FILES = [
    'classic_spp_channel.h',
    'classic_spp_channel.cpp',
    'mi_account_2fa_channel.h',
    'mi_account_2fa_channel.cpp',
]

# ---- 要搬的 Dart 文件（小米账号二次验证的解析器）----
DART_FILES = [
    'src/features/accounts/services/mi_account_two_factor_resolver.dart',
    'src/features/accounts/services/mi_account_two_factor_resolver_base.dart',
    'src/features/accounts/services/mi_account_two_factor_resolver_io.dart',
    'src/features/accounts/services/mi_account_two_factor_resolver_stub.dart',
]

# ---- 品牌与通道名替换（C++ 和 Dart 都要做，保持一致）----
REBRAND = [
    ('oronbox/classic_spp', 'bandschedule/classic_spp'),
    ('oronbox/mi_account_2fa', 'bandschedule/mi_account_2fa'),
    ('ORONBOX_HAVE_WEBVIEW2', 'BANDSCHEDULE_HAVE_WEBVIEW2'),
    ('OronBoxMiAccount2FAWindow', 'BandScheduleMiAccount2FAWindow'),
    ('OronboxMiAccount2FA', 'BandScheduleMiAccount2FA'),
    ('L"\\\\OronBox"', 'L"\\\\BandSchedule"'),
    ('package:oronbox/', 'package:band_schedule_pc/'),
]

# utils.cpp/h 要补的函数（WebView2 用户数据目录）
WEBVIEW2_FUNC_DECL = '''
// Returns a writable, per-user WebView2 user data folder and creates it when
// necessary. Returns an empty string when the folder cannot be prepared.
std::wstring GetWebView2UserDataFolder();
'''

WEBVIEW2_FUNC_IMPL = '''
namespace {

bool EnsureDirectory(const std::wstring& path) {
  if (::CreateDirectoryW(path.c_str(), nullptr)) {
    return true;
  }
  if (::GetLastError() != ERROR_ALREADY_EXISTS) {
    return false;
  }
  const DWORD attributes = ::GetFileAttributesW(path.c_str());
  return attributes != INVALID_FILE_ATTRIBUTES &&
         (attributes & FILE_ATTRIBUTE_DIRECTORY) != 0;
}

}  // namespace

std::wstring GetWebView2UserDataFolder() {
  std::vector<wchar_t> buffer(32768);
  const DWORD length = ::GetEnvironmentVariableW(
      L"LOCALAPPDATA", buffer.data(), static_cast<DWORD>(buffer.size()));
  if (length == 0 || length >= buffer.size()) {
    return {};
  }

  std::wstring root(buffer.data(), length);
  while (!root.empty() && (root.back() == L'\\\\' || root.back() == L'/')) {
    root.pop_back();
  }
  if (root.empty()) {
    return {};
  }

  const std::wstring app_folder = root + L"\\\\BandSchedule";
  if (!EnsureDirectory(app_folder)) {
    return {};
  }
  const std::wstring webview_folder = app_folder + L"\\\\WebView2";
  if (!EnsureDirectory(webview_folder)) {
    return {};
  }
  return webview_folder;
}
'''


def rebrand(text):
    for old, new in REBRAND:
        text = text.replace(old, new)
    return text


def copy_native():
    src_dir = os.path.join(REF, 'windows', 'runner')
    dst_dir = os.path.join(PC, 'windows', 'runner')
    done = []
    for f in CPP_FILES:
        src = os.path.join(src_dir, f)
        if not os.path.exists(src):
            print('  缺 %s' % f)
            continue
        with io.open(src, encoding='utf-8', errors='ignore') as fh:
            t = fh.read()
        with io.open(os.path.join(dst_dir, f), 'w', encoding='utf-8', newline='') as fh:
            fh.write(rebrand(t))
        done.append(f)
    return done


def copy_webview2_script():
    src = os.path.join(REF, 'windows', 'scripts', 'install_webview2_sdk.ps1')
    dst_dir = os.path.join(PC, 'windows', 'scripts')
    if not os.path.exists(src):
        return None
    os.makedirs(dst_dir, exist_ok=True)
    shutil.copy2(src, os.path.join(dst_dir, 'install_webview2_sdk.ps1'))
    return 'windows/scripts/install_webview2_sdk.ps1'


def patch_utils():
    """把 GetWebView2UserDataFolder 加进我们的 utils.h/.cpp（不覆盖模板原有内容）。"""
    h = os.path.join(PC, 'windows', 'runner', 'utils.h')
    c = os.path.join(PC, 'windows', 'runner', 'utils.cpp')

    with io.open(h, encoding='utf-8') as f:
        th = f.read()
    if 'GetWebView2UserDataFolder' not in th:
        th = th.replace('#endif  // RUNNER_UTILS_H_',
                        WEBVIEW2_FUNC_DECL + '\n#endif  // RUNNER_UTILS_H_')
        with io.open(h, 'w', encoding='utf-8', newline='') as f:
            f.write(th)
        print('  utils.h：已加声明')
    else:
        print('  utils.h：已有，跳过')

    with io.open(c, encoding='utf-8') as f:
        tc = f.read()
    if 'GetWebView2UserDataFolder' not in tc:
        tc = tc.rstrip() + '\n' + WEBVIEW2_FUNC_IMPL
        with io.open(c, 'w', encoding='utf-8', newline='') as f:
            f.write(tc)
        print('  utils.cpp：已加实现')
    else:
        print('  utils.cpp：已有，跳过')


def copy_dart():
    done = []
    for rel in DART_FILES:
        src = os.path.join(REF, 'lib', rel.replace('/', os.sep))
        dst = os.path.join(PC, 'lib', rel.replace('/', os.sep))
        if not os.path.exists(src):
            print('  缺 %s' % rel)
            continue
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        with io.open(src, encoding='utf-8', errors='ignore') as f:
            t = f.read()
        with io.open(dst, 'w', encoding='utf-8', newline='') as f:
            f.write(rebrand(t))
        done.append(rel)
    return done


def patch_dart_channels():
    """Dart 侧已有的文件里，通道名也要跟着改。"""
    target = os.path.join(PC, 'lib', 'src', 'core', 'services',
                          'rfcomm_driver_native.dart')
    with io.open(target, encoding='utf-8') as f:
        t = f.read()
    new = t.replace("'oronbox/classic_spp", "'bandschedule/classic_spp")
    if new != t:
        with io.open(target, 'w', encoding='utf-8', newline='') as f:
            f.write(new)
        print('  rfcomm_driver_native.dart：通道名已改')
    else:
        print('  rfcomm_driver_native.dart：无需改或已改')


def main():
    print('=== 1) 搬 C++ 文件 ===')
    for f in copy_native():
        print('  ' + f)

    print()
    print('=== 2) 补 utils 里的 WebView2 目录函数 ===')
    patch_utils()

    print()
    print('=== 3) 搬 WebView2 SDK 安装脚本 ===')
    s = copy_webview2_script()
    print('  ' + (s or '（源头没有）'))

    print()
    print('=== 4) 搬 Dart 的 2FA 解析器 ===')
    for f in copy_dart():
        print('  ' + f)

    print()
    print('=== 5) 统一 Dart 侧的通道名 ===')
    patch_dart_channels()

    return 0


if __name__ == '__main__':
    sys.exit(main())
