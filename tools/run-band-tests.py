"""跑手环端的几套 Node 测试并汇总（这台机器上 node 不在 PATH 里，要自己找）。"""

import glob
import os
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..'))

SUITES = [
    ('test_band.js', '手环端纯逻辑'),
    ('test_next.js', '「下一节课」规则'),
    ('test_store.js', '本地存取'),
    ('test_oronbox_plugin.js', 'OronBox 调试插件'),
]


def find_node():
    found = None
    for candidate in [os.path.join(
            os.path.expanduser('~'), '.cache', 'codex-runtimes',
            'codex-primary-runtime', 'dependencies', 'node', 'bin', 'node.exe')]:
        if os.path.exists(candidate):
            found = candidate
    for candidate in glob.glob(os.path.join(
            os.path.expanduser('~'), '.cache', 'codex-runtimes', '*',
            'dependencies', 'node', 'bin', 'node.exe')):
        found = found or candidate
    return found


def main():
    node = find_node()
    if not node:
        print('找不到 node.exe')
        return 1
    print('node: %s' % node)
    print()

    failed = 0
    for name, label in SUITES:
        script = os.path.join(HERE, name)
        result = subprocess.run([node, script], cwd=ROOT,
                                capture_output=True, text=True,
                                encoding='utf-8', errors='replace')
        lines = [l for l in (result.stdout or '').splitlines() if l.strip()]
        ok = len([l for l in lines if l.strip().startswith('ok')])
        # 只认「以 FAIL/✗ 开头」的结果行。测试本身会故意打印
        # 「[protocol] decode failed: …」这类日志（验证坏输入不崩），
        # 拿 'fail' 子串去匹配会把它误判成失败。
        bad = [l for l in lines
               if l.strip().startswith(('FAIL', 'fail', '✗', 'not ok'))]
        status = 'FAIL' if (result.returncode != 0 or bad) else 'ok'
        if status == 'FAIL':
            failed += 1
        print('%-3s %-16s %2d 项通过，退出码 %d' % (status, label, ok,
                                                result.returncode))
        for line in bad[:5]:
            print('      %s' % line.strip())
        if result.returncode != 0 and not bad:
            tail = (result.stderr or result.stdout or '').splitlines()[-4:]
            for line in tail:
                print('      %s' % line.strip())

    print()
    print('全部通过。' if failed == 0 else '%d 套没通过。' % failed)
    return 0 if failed == 0 else 1


if __name__ == '__main__':
    sys.exit(main())
