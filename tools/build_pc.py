"""打包 PC 端：构建 Release + 把手环端 rpk 一起放进输出目录。

输出到 `dist/pc/`，用户拿到这个目录就能用（exe 和 rpk 在一起，
程序会自动找到 rpk，不用手动选文件）。

    python tools/build_pc.py
"""

import os
import shutil
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..'))
PC = os.path.join(ROOT, 'pc')
DIST = os.path.join(ROOT, 'dist', 'pc')
BAND_DIST = os.path.join(ROOT, 'band', 'band-schedule', 'dist')

sys.path.insert(0, HERE)
from project import BAND_PACKAGE  # noqa: E402


def find_flutter():
    for cand in [
        r'D:\flutter-toolchain\sdk\flutter\bin\flutter.bat',
        shutil.which('flutter'),
    ]:
        if cand and os.path.exists(cand):
            return cand
    raise SystemExit('找不到 flutter，请把 Flutter 的 bin 目录加进 PATH')


def resolve_ascii_root():
    """选一个纯英文路径来构建。

    原因：MSVC/CMake 会把绝对路径写进中间产物（.vcxproj 里的源文件路径），
    中文路径下和英文联接路径下混着构建就会出现
    "cannot open source file ...\\cpp_client_wrapper\\xxx.cc" 之类的错误 ——
    缓存里记的是另一次构建的路径。统一走同一个英文路径就没这问题。
    """
    junction = r'D:\band-schedule'
    if os.path.isdir(junction):
        return junction
    return ROOT


def purge_old_backups(dist):
    """清掉以前留下的改名备份（程序已经关掉的话就能删掉）。"""
    removed = 0
    for root, _dirs, files in os.walk(dist):
        for name in files:
            if not name.endswith('.old-running'):
                continue
            try:
                os.remove(os.path.join(root, name))
                removed += 1
            except OSError:
                pass
    return removed


def copy_one(source, target, moved, dist):
    """复制单个文件；覆盖不了就先把它改名挪开再放新的。

    程序运行中时，dist 里这几类文件覆盖不了：
      · exe / dll —— 被进程独占（WinError 5）
      · icudtl.dat、字体 —— 被 Flutter 内存映射（Errno 22）
    但**改名**它们都是允许的（句柄挂在文件对象上，不挂在路径上）。
    所以直接试覆盖，失败就改名让路，新文件随后写进原路径。
    挪开的备份留在原地，下次构建（程序已关）会自动清掉。
    """
    try:
        shutil.copy2(source, target)
        return
    except OSError:
        pass
    backup = target + '.old-running'
    try:
        os.replace(target, backup)
    except OSError as error:
        raise SystemExit('覆盖不了 %s，改名让路也失败：%s' % (target, error))
    moved.append(os.path.relpath(target, dist).replace('\\', '/'))
    shutil.copy2(source, target)


def collect(dist, release):
    """把 Release 产物收进 dist。

    逐文件原地覆盖，**不先删目录**：以前是 rmtree 再 copytree，一旦有文件
    被占用就会删到一半失败，把一个还能用的安装目录毁掉（真发生过）。
    旧版本的 rpk 也因此会留着 —— 这正是我们要的（多版本并存）。
    """
    os.makedirs(dist, exist_ok=True)
    purged = purge_old_backups(dist)
    if purged:
        print('  顺手清掉 %d 个上次留下的 .old-running 备份' % purged)

    moved = []
    for root, _dirs, files in os.walk(release):
        rel = os.path.relpath(root, release)
        target_dir = dist if rel == '.' else os.path.join(dist, rel)
        os.makedirs(target_dir, exist_ok=True)
        for name in files:
            copy_one(os.path.join(root, name),
                     os.path.join(target_dir, name), moved, dist)

    if moved:
        print('  程序正在运行，这些文件覆盖不了，已把旧的改名让路：')
        for item in moved:
            print('    %s' % item)
    return moved


def main():
    # 子进程（flutter / 校验脚本）是直接写控制台的，我们自己 print 的内容
    # 在管道里会被缓冲到退出时才吐出来，日志顺序就乱了。改成逐行刷新。
    try:
        sys.stdout.reconfigure(line_buffering=True)
    except (AttributeError, OSError):
        pass

    flutter = find_flutter()
    env = dict(os.environ)
    env.setdefault('PUB_HOSTED_URL', 'https://pub.flutter-io.cn')
    env.setdefault('FLUTTER_STORAGE_BASE_URL', 'https://storage.flutter-io.cn')

    # 始终用同一个（英文）路径构建
    pc_dir = os.path.join(resolve_ascii_root(), 'pc')

    print('== 构建 PC 端（Release）==')
    print('   项目目录：%s' % pc_dir)
    r = subprocess.run([flutter, 'build', 'windows', '--release'],
                       cwd=pc_dir, env=env)
    if r.returncode != 0:
        print()
        print('构建失败。如果报的是 "cannot open source file ...cpp_client_wrapper..."，')
        print('那是中文路径和英文联接路径混用导致的缓存错乱，删掉中间产物再试：')
        print('  Remove-Item -Recurse -Force "%s\\build\\windows"' % pc_dir)
        return 1

    release = os.path.join(pc_dir, 'build', 'windows', 'x64', 'runner', 'Release')
    if not os.path.isdir(release):
        print('找不到 Release 产物：%s' % release)
        return 1

    print()
    print('== 收集到 dist/pc ==')
    moved = collect(DIST, release)
    if moved:
        print('  注：程序还开着，旧文件改名为 *.old-running 留在目录里（不影响使用）。')
        print('      关掉程序后再跑一次构建就会自动清掉。')

    # 把手环端 rpk 一起放进去，这样程序能自动找到
    rpks = []
    if os.path.isdir(BAND_DIST):
        rpks = [f for f in os.listdir(BAND_DIST)
                if f.startswith(BAND_PACKAGE) and f.endswith('.rpk')]
        # 只放我们自己包名的正式包（不带回滚包）
        for name in rpks:
            shutil.copy2(os.path.join(BAND_DIST, name),
                         os.path.join(DIST, name))

    print()
    print('输出目录：dist/pc')
    for n in sorted(os.listdir(DIST)):
        p = os.path.join(DIST, n)
        if os.path.isdir(p):
            size = sum(os.path.getsize(os.path.join(r, f))
                       for r, _, fs in os.walk(p) for f in fs)
            print('  %-30s <dir>  %6.1f MB' % (n, size / 1048576))
        else:
            print('  %-30s %6.2f MB' % (n, os.path.getsize(p) / 1048576))
    total = sum(os.path.getsize(os.path.join(r, f))
                for r, _, fs in os.walk(DIST) for f in fs)
    print('  %-30s %6.1f MB' % ('合计', total / 1048576))
    if not rpks:
        print()
        print('提示：band/band-schedule/dist 下没有 %s*.rpk，' % BAND_PACKAGE)
        print('      先跑 tools/build-all.ps1 生成手环端应用，再重新打包。')
        return 1

    # 反查产物内容：exe 里得是刚编的原生代码，rpk 里得是当前的文案。
    # 手环端打包在版本号没变时会「还原」同名旧包，光看构建日志发现不了。
    print()
    result = subprocess.run([sys.executable,
                             os.path.join(HERE, 'verify-artifacts.py')],
                            cwd=ROOT)
    return result.returncode


if __name__ == '__main__':
    sys.exit(main())
