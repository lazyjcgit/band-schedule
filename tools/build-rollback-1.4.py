"""单独构建一个 v1.4 的回滚包（旧版界面：只有主页、底部是「重新同步」）。

为什么要单独做：v2.0 把入口换成了 pages/home，旧的 pages/index 从 router 里移除了，
所以直接构建只会产出 2.0 的包，没有能装的旧版本。

做法：临时把 manifest 切回 1.4 的形态 → 构建 → **无论成败都还原**
（用 try/finally 保证，还原的是原始字节，不依赖我重新敲一遍 JSON）。
另外 aiot 打包会清空 dist，所以先把现有的包挪到别处，构建完再一起放回来。

    python tools/build-rollback-1.4.py

产物：band/band-schedule/dist/<包名>.release.<版本>.rpk
      （与 2.0.0 的包并存，不会互相覆盖）
"""

import json
import os
import shutil
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, HERE)
from project import BAND_DIR as BAND  # noqa: E402
SRC = os.path.join(BAND, 'src')
MANIFEST = os.path.join(SRC, 'manifest.json')
DIST = os.path.join(BAND, 'dist')
NPM_CLI = os.path.join(HERE, 'npmboot', 'pkg', 'package', 'bin', 'npm-cli.js')

ROLLBACK_VERSION = '1.4.0'
ROLLBACK_CODE = 1


def find_node():
    for cand in [
        os.path.join(os.environ.get('USERPROFILE', ''), '.cache', 'codex-runtimes',
                     'codex-primary-runtime', 'dependencies', 'node', 'bin', 'node.exe'),
        shutil.which('node'),
    ]:
        if cand and os.path.exists(cand):
            return cand
    raise SystemExit('找不到 node.exe')


def rollback_manifest(original):
    """在原始 manifest 基础上，把入口切回 pages/index、版本号降到 1.x。"""
    m = json.loads(original.decode('utf-8'))
    m['versionName'] = ROLLBACK_VERSION
    m['versionCode'] = ROLLBACK_CODE
    m['router'] = {
        'entry': 'pages/index',
        'pages': {
            'pages/index': {'component': 'index'},
        },
    }
    return json.dumps(m, ensure_ascii=False, indent=2).encode('utf-8')


def build(node, env):
    r = subprocess.run(
        [node, NPM_CLI, 'run', 'release'],
        cwd=BAND, env=env, capture_output=True, text=True, errors='ignore',
    )
    out = (r.stdout or '') + (r.stderr or '')
    return r.returncode, out


def main():
    node = find_node()
    with open(MANIFEST, 'rb') as f:
        original = f.read()

    # aiot 会清空 dist，先把现有的包挪到临时目录保住
    stash = tempfile.mkdtemp(prefix='rpk-stash-')
    existing = []
    if os.path.isdir(DIST):
        for n in os.listdir(DIST):
            if n.endswith('.rpk'):
                shutil.move(os.path.join(DIST, n), os.path.join(stash, n))
                existing.append(n)
    print('先保住已有产物：%s' % (', '.join(existing) if existing else '（无）'))

    env = dict(os.environ)
    env['PATH'] = os.path.dirname(node) + os.pathsep + env.get('PATH', '')

    try:
        with open(MANIFEST, 'wb') as f:
            f.write(rollback_manifest(original))
        print('已临时切换 manifest → 入口 pages/index，版本 %s' % ROLLBACK_VERSION)

        code, out = build(node, env)
        if code != 0:
            print('构建失败（退出码 %s）：' % code)
            print(out[-3000:])
            return 1
        print('构建完成')
    finally:
        # 无论成功失败都要还原：manifest 恢复原始字节
        with open(MANIFEST, 'wb') as f:
            f.write(original)
        print('已还原 manifest（入口 pages/home，版本 2.0.0）')
        # 把之前挪走的包放回去
        for n in existing:
            shutil.move(os.path.join(stash, n), os.path.join(DIST, n))
        shutil.rmtree(stash, ignore_errors=True)

    produced = [n for n in os.listdir(DIST)
                if n.endswith('.rpk') and ROLLBACK_VERSION.replace('.', '.') in n]
    if not produced:
        # 名字可能是 aiot 按 manifest 版本拼的，兜底找最新的那个
        allrpk = sorted(
            (os.path.join(DIST, n) for n in os.listdir(DIST) if n.endswith('.rpk')),
            key=os.path.getmtime, reverse=True)
        if not allrpk:
            print('没找到构建产物')
            return 1
        produced = [os.path.basename(allrpk[0])]

    # 确认回滚包里带的确实是旧页面
    import zipfile
    name = produced[0]
    z = zipfile.ZipFile(os.path.join(DIST, name))
    m = json.loads(z.read('manifest.json'))
    js = z.read('pages/index/index.js').decode('utf-8', 'ignore')
    print()
    print('回滚包检查：')
    print('  文件        : %s' % name)
    print('  包名        : %s' % m['package'])
    print('  版本        : %s（versionCode %s）' % (m.get('versionName'), m.get('versionCode')))
    print('  入口        : %s' % m['router']['entry'])
    print('  注册页面    : %s' % list(m['router']['pages'].keys()))
    print('  界面版本标记: %s' % ('v1.4 ✓' if '"v1.4"' in js or "'v1.4'" in js else '未找到'))

    print()
    print('dist 下现在的包：')
    for n in sorted(os.listdir(DIST)):
        if n.endswith('.rpk'):
            print('  %-46s %d' % (n, os.path.getsize(os.path.join(DIST, n))))
    print()
    print('装 1.4：oronbox --nogui install quickapp ./band/band-schedule/dist/%s' % name)
    return 0


if __name__ == '__main__':
    sys.exit(main())
