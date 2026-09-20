"""把 OronBox 调试插件打包成 .obp（本质是 ZIP，根目录要有 manifest.json）。

打包时会把 dist/schedule-real.json（真实课表）注入到 main.js，
这样调试台默认就能发送你本学期的真实课表。

    python tools/ics_to_schedule.py <课表.ics> dist/schedule-real.json   # 先导出真实课表
    python tools/build-oronbox-plugin.py

产物：dist/oronbox-devtool.obp
"""

import json
import os
import sys
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(HERE, 'oronbox-devtool')
DIST = os.path.abspath(os.path.join(HERE, '..', 'dist'))
OUT = os.path.join(DIST, 'oronbox-devtool.obp')
REAL = os.path.join(DIST, 'schedule-real.json')

# 官方对包内容的硬限制
MAX_TOTAL = 64 * 1024 * 1024
MAX_FILE = 8 * 1024 * 1024
MAX_FILES = 4096


def inject_real_schedule(main_js):
    """把真实课表塞进 main.js 的 REAL_SCHEDULE 占位符。"""
    if not os.path.exists(REAL):
        print('没找到 %s，插件将只带演示数据' % os.path.relpath(REAL, os.path.dirname(DIST)))
        print('（想用真实课表就先跑：python tools/ics_to_schedule.py <课表.ics> dist/schedule-real.json）')
        return main_js, 0

    with open(REAL, encoding='utf-8') as f:
        schedule = json.load(f)
    compact = json.dumps(schedule, ensure_ascii=False, separators=(',', ':'))

    marker = 'const REAL_SCHEDULE = null'
    if marker not in main_js:
        raise SystemExit('main.js 里找不到 REAL_SCHEDULE 占位符，无法注入')
    # 用字符串再 parse 一次，避免把 JSON 当成 JS 字面量直接拼进去时的转义问题
    injected = 'const REAL_SCHEDULE = JSON.parse(%s)' % json.dumps(compact)
    return main_js.replace(marker, injected), len(schedule.get('courses', []))


def main():
    manifest_path = os.path.join(SRC, 'manifest.json')
    if not os.path.exists(manifest_path):
        print('找不到 %s' % manifest_path)
        return 1

    with open(manifest_path, encoding='utf-8') as f:
        manifest = json.load(f)

    # 先按官方规则自检，避免装到设备上才被拒
    problems = []
    if manifest.get('api_level') != 1:
        problems.append('api_level 必须是 1')
    if not manifest.get('id'):
        problems.append('缺少 id')
    if manifest.get('runtime') not in ('js', 'wasm', 'hybrid'):
        problems.append('runtime 必须是 js/wasm/hybrid')
    entry = manifest.get('entry', 'main.js')
    if not entry.endswith(('.js', '.mjs', '.cjs')):
        problems.append('js 运行时下 entry 必须是 .js/.mjs/.cjs')
    allowed = {'ui', 'file', 'network', 'interconnect', 'provider', 'device',
               'protocol', 'appside'}
    bad = set(manifest.get('permissions', [])) - allowed
    if bad:
        problems.append('permissions 里有不支持的项：%s' % ', '.join(sorted(bad)))
    if not os.path.exists(os.path.join(SRC, entry)):
        problems.append('entry 文件不存在：%s' % entry)

    if problems:
        print('manifest 自检没通过：')
        for p in problems:
            print('  - ' + p)
        return 1

    # 读源文件，注入真实课表
    files = []
    course_count = 0
    for root, dirs, names in os.walk(SRC):
        for n in names:
            full = os.path.join(root, n)
            rel = os.path.relpath(full, SRC).replace(os.sep, '/')
            if rel.startswith('..') or ':' in rel:
                problems.append('非法路径：%s' % rel)
                continue
            with open(full, encoding='utf-8') as f:
                content = f.read()
            if rel == entry:
                content, course_count = inject_real_schedule(content)
            files.append((rel, content))

    if len(files) > MAX_FILES:
        print('文件数超过上限 %d' % MAX_FILES)
        return 1

    total = 0
    for rel, content in files:
        size = len(content.encode('utf-8'))
        total += size
        if size > MAX_FILE:
            print('%s 超过单文件上限 8MiB' % rel)
            return 1
    if total > MAX_TOTAL:
        print('展开后总大小超过 64MiB')
        return 1

    os.makedirs(DIST, exist_ok=True)
    # 根目录必须能直接看到 manifest.json，所以不套外壳目录
    with zipfile.ZipFile(OUT, 'w', zipfile.ZIP_DEFLATED) as z:
        for rel, content in sorted(files):
            z.writestr(rel, content)

    print('已生成 %s' % OUT)
    print('  %d 个文件，%d 字节' % (len(files), os.path.getsize(OUT)))
    if course_count:
        print('  已注入真实课表：%d 条排课' % course_count)
    else:
        print('  未注入真实课表（只有演示数据）')
    for rel, content in sorted(files):
        print('    %-16s %d' % (rel, len(content.encode('utf-8'))))
    print()
    print('安装：OronBox → 插件页 → 导入插件 → 选择这个 .obp')
    return 0


if __name__ == '__main__':
    sys.exit(main())

