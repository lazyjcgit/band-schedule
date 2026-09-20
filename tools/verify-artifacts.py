"""校验 dist/pc 里的产物确实是本次该出的东西。

起因：手环端的打包脚本在版本号没变时，会把同名的旧包「还原」回去，
覆盖掉刚打出来的新包 —— 显示构建成功，实际发出去的是老包。这种错光看
构建日志发现不了，只能反查产物内容。所以这里做完就直接验，并且让
build_pc.py 自动调用。

    python tools/verify-artifacts.py                 # 校验 dist/pc
    python tools/verify-artifacts.py <exe> <rpk>     # 校验指定的产物
"""

import io
import os
import re
import sys
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..'))
DIST = os.path.join(ROOT, 'dist', 'pc')

sys.path.insert(0, HERE)
from project import BAND_PACKAGE  # noqa: E402

# exe 里必须能找到的东西 —— 都是 C++ 原生的标记。
# 中文字面量存 UTF-8，L"..." 宽字符串存 UTF-16LE，所以编码要分开写。
EXE_MARKERS = [
    ('2FA 验证窗口标题', 'Xiaomi account verification', 'utf-16-le'),
    ('2FA 从账号域取会话 cookie', 'https://account.xiaomi.com/', 'utf-16-le'),
    ('2FA 取消时的中文提示', '验证窗口关掉了', 'utf-8'),
    ('2FA 取消时回报 cookie 名单', '窗口里看到过这些 cookie', 'utf-8'),
    ('SPP 蓝牙通道', 'bandschedule/classic_spp', 'utf-8'),
    ('2FA 通道名', 'bandschedule/mi_account_2fa', 'utf-8'),
    ('文件选择框通道', 'bandschedule/file_dialog', 'utf-8'),
]

# exe 里不该还留着的死代码标记（没有 WebView2 时的 stub 分支）
EXE_ABSENT = [
    ('WebView2 stub（不该出现）', 'requires the Microsoft Edge', 'utf-8'),
]

# rpk 里的文案：这几句已经改成「电脑端」了，不该再出现「手机」
RPK_MARKERS = [
    ('首页提示提到电脑端助手', '手环课表助手', 'utf-8'),
    ('「下一节课」页的提示', '先在电脑的', 'utf-8'),
]

RPK_ABSENT = [
    ('残留「手机上打开」', '在手机上打开', 'utf-8'),
    ('残留「手机 App」', '手机 App', 'utf-8'),
    ('残留「重连手机」', '重连手机', 'utf-8'),
]

"""
界面文案要面向所有大学生，不该出现某一所学校或某个客户端的名字。
这些"禁忌词"本身不该印在公开脚本里，所以放在 tools/forbidden-copy.txt
（已 gitignore），本机有就检查、没有就跳过。
"""
FORBIDDEN_FILE = os.path.join(HERE, 'forbidden-copy.txt')


def forbidden_words():
    if not os.path.exists(FORBIDDEN_FILE):
        return []
    words = []
    for line in io.open(FORBIDDEN_FILE, encoding='utf-8', errors='ignore'):
        text = line.strip()
        if text and not text.startswith('#'):
            words.append(text)
    return words

# Dart 代码在 data/app.so 里（不是 exe）。原生层查过了，这里查 Dart 侧。
# ⚠️ AOT 快照里的字符串编码分两种，用错会一律找不到（那样「不该存在」的
# 检查会变成永远通过，等于没查）：
#   · 含非 ASCII 的（中文）→ UTF-16LE
#   · 纯 ASCII 的          → 单字节 Latin-1
DART_MARKERS = [
    ('2FA 重发原登录请求', '原样重发 serviceLoginAuth2 拿到了票据', 'utf-16-le'),
    ('2FA 报错带 cookie 名单', '这次带回的 cookie', 'utf-16-le'),
    ('通用课表文案', '课表软件 / 教务系统导出的 .ics', 'utf-16-le'),
    ('协议诊断：认证响应', '手环已响应认证', 'utf-16-le'),
    ('协议诊断：bondExisted', 'bondExisted', 'ascii'),
    ('协议诊断：accountPayload', 'accountPayload', 'ascii'),
]

DART_ABSENT = [
    ('旧 2FA 兜底日志（应无）', '直接用 2FA cookie 换票据失败', 'utf-16-le'),
]

failures = []


def check(blob, label, needle, encoding, should_exist, where):
    hit = needle.encode(encoding) in blob
    ok = hit is should_exist
    if not ok:
        failures.append('%s：%s「%s」' % (where, '缺少' if should_exist else '仍存在', label))
    return ok


def verify_exe(path):
    print('exe  %s' % path)
    if not os.path.exists(path):
        failures.append('找不到 %s' % path)
        print('  不存在')
        return
    blob = io.open(path, 'rb').read()
    print('  %.2f MB，写入时间 %s' % (len(blob) / 1048576,
                                  _mtime(path)))
    for label, needle, encoding in EXE_MARKERS:
        _report(label, check(blob, label, needle, encoding, True, 'exe'))
    for label, needle, encoding in EXE_ABSENT:
        _report(label, check(blob, label, needle, encoding, False, 'exe'))
    check_sources_not_newer(
        path, [os.path.join(ROOT, 'pc', 'windows', 'runner')],
        ('.cpp', '.h'))


def verify_rpk(path):
    print('rpk  %s' % path)
    if not os.path.exists(path):
        failures.append('找不到 %s' % path)
        print('  不存在')
        return
    blob = b''
    with zipfile.ZipFile(path) as archive:
        for name in archive.namelist():
            try:
                blob += archive.read(name)
            except (OSError, zipfile.BadZipFile):
                pass
    print('  %.1f KB，写入时间 %s' % (os.path.getsize(path) / 1024, _mtime(path)))
    for label, needle, encoding in RPK_MARKERS:
        _report(label, check(blob, label, needle, encoding, True, 'rpk'))
    for label, needle, encoding in RPK_ABSENT:
        _report(label, check(blob, label, needle, encoding, False, 'rpk'))

    # 禁忌词（校名、写死的客户端名等）—— 清单在 gitignore 的本地文件里
    words = forbidden_words()
    if words:
        for word in words:
            _report('不该出现：%s' % word,
                    check(blob, word, word, 'utf-8', False, 'rpk'))
    else:
        print('  --  %s 不存在，跳过禁忌词检查' % os.path.basename(FORBIDDEN_FILE))


def verify_dart_snapshot(path):
    print('dart %s' % path)
    if not os.path.exists(path):
        failures.append('找不到 %s' % path)
        print('  不存在')
        return
    blob = io.open(path, 'rb').read()
    print('  %.2f MB，写入时间 %s' % (len(blob) / 1048576, _mtime(path)))
    for label, needle, encoding in DART_MARKERS:
        _report(label, check(blob, label, needle, encoding, True, 'dart'))
    for label, needle, encoding in DART_ABSENT:
        _report(label, check(blob, label, needle, encoding, False, 'dart'))
    check_sources_not_newer(
        path, [os.path.join(ROOT, 'pc', 'lib')], ('.dart',))


def check_sources_not_newer(artifact, source_dirs, suffixes):
    """产物比源码还旧 = 忘了重新构建，装的还是上一版。

    这种错在「内容反查」里可能看不出来（改动没碰那些被查的字符串时），
    所以单独用时间戳兜一道。
    """
    if not os.path.exists(artifact):
        return
    built = os.path.getmtime(artifact)
    newest = 0.0
    newest_path = ''
    for directory in source_dirs:
        for root, dirs, files in os.walk(directory):
            dirs[:] = [d for d in dirs
                       if d not in {'build', '.dart_tool', '.plugin_symlinks'}]
            for name in files:
                if not name.endswith(suffixes):
                    continue
                path = os.path.join(root, name)
                mtime = os.path.getmtime(path)
                if mtime > newest:
                    newest = mtime
                    newest_path = path
    if newest > built:
        failures.append('%s 比源码旧，没重新构建（新的是 %s）'
                        % (os.path.basename(artifact), newest_path))
        _report('产物比源码新（没忘构建）', False)
    else:
        _report('产物比源码新（没忘构建）', True)


def _mtime(path):
    import datetime
    return datetime.datetime.fromtimestamp(
        os.path.getmtime(path)).strftime('%Y-%m-%d %H:%M:%S')


def _report(label, ok):
    print('  %-3s %s' % ('ok' if ok else 'FAIL', label))


def main():
    try:
        sys.stdout.reconfigure(line_buffering=True)
    except (AttributeError, OSError):
        pass

    argv = sys.argv[1:]
    if len(argv) >= 2:
        exe, rpk = argv[0], argv[1]
    else:
        exe = os.path.join(DIST, 'band_schedule_pc.exe')
        rpks = ([n for n in sorted(os.listdir(DIST))
                 if n.startswith(BAND_PACKAGE) and n.endswith('.rpk')]
                if os.path.isdir(DIST) else [])
        rpk = os.path.join(DIST, rpks[0]) if rpks else ''

    print('== 产物校验 ==')
    verify_exe(exe)
    print()
    verify_dart_snapshot(os.path.join(os.path.dirname(exe), 'data', 'app.so'))
    print()
    verify_rpk(rpk)

    print()
    if failures:
        print('校验没通过：')
        for item in failures:
            print('  · %s' % item)
        return 1
    print('产物校验通过（exe 的原生代码、app.so 的 Dart 代码、rpk 的文案都是新的）。')
    return 0


if __name__ == '__main__':
    sys.exit(main())
