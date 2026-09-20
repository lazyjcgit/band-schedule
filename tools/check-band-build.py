"""检查手环端编译产物，确认渲染相关的东西真的进了包。

手环的 Vela 模拟器是 Linux 下的 NuttX 二进制，Windows 上跑不起来，
所以这里退一步：直接看编译后的页面 JS，确认样式表、循环指令、
数据绑定都被正确编译进去了。

    python tools/check-band-build.py

包名与路径都从 tools/project.py（读根目录 project.json）取，不硬编码。
"""

import json
import os
import re
import sys
import zipfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from project import BAND_DIST as DIST, BAND_SRC as SRC, BAND_PACKAGE  # noqa: E402


def find_rpk():
    """找到「当前源码对应的」那个包。

    dist 下可能同时存在多个版本的 rpk（比如旧版本回滚包和当前正式包），
    单纯按修改时间取最新会挑到刚放回来的旧包 —— 必须按 manifest 里
    声明的 versionName 精确匹配，才能保证检查的是本次构建的产物。
    """
    if not os.path.isdir(DIST):
        return None
    with open(os.path.join(SRC, 'manifest.json'), encoding='utf-8') as f:
        version = json.load(f).get('versionName', '')
    matches = [os.path.join(DIST, n) for n in os.listdir(DIST)
               if n.startswith(BAND_PACKAGE) and n.endswith('.rpk')
               and '.debug.' not in n and version in n]
    if matches:
        return max(matches, key=os.path.getmtime)
    # 实在没有才退回最新的
    allrpk = [os.path.join(DIST, n) for n in os.listdir(DIST)
              if n.startswith(BAND_PACKAGE) and n.endswith('.rpk')
              and '.debug.' not in n]
    return max(allrpk, key=os.path.getmtime) if allrpk else None


def main():
    rpk = find_rpk()
    if not rpk:
        print('找不到 rpk 产物，先构建')
        return 1

    z = zipfile.ZipFile(rpk)
    manifest = json.loads(z.read('manifest.json'))
    # manifest 里声明的每个页面都要有编译产物
    pages = manifest['router']['pages']
    compiled = {}
    for key in pages:
        entry = '%s/index.js' % key
        if entry in z.namelist():
            compiled[key] = z.read(entry).decode('utf-8', 'ignore')
        else:
            print('页面 %s 没有编译产物 %s' % (key, entry))

    problems = []
    notes = []

    # 1. 包名要一致（互联的硬性前提）
    if manifest['package'] != BAND_PACKAGE:
        problems.append('包名不对：%s' % manifest['package'])
    notes.append('包名 %s，版本 %s' % (manifest['package'], manifest.get('versionName')))

    # 2. 屏幕尺寸
    dw = manifest.get('config', {}).get('designWidth')
    if dw != 192:
        problems.append('designWidth 应为 192（手环 9 标准版），实际 %s' % dw)

    # 3. 入口页面
    notes.append('入口页面 %s' % manifest['router']['entry'])

    # 4+5. 逐页检查：样式高度、循环指令、$item、字段绑定
    for key, js in sorted(compiled.items()):
        page = key.split('/')[-1]
        ux = os.path.join(SRC, key.replace('/', os.sep), 'index.ux')
        css = ''
        if os.path.exists(ux):
            with open(ux, encoding='utf-8') as f:
                text = f.read()
            m = re.search(r'<style>(.*?)</style>', text, re.S)
            css = m.group(1) if m else ''

        # 4. 样式里的固定高度都要真的编进产物
        if css:
            heights = set(re.findall(r'height:\s*(\d+)px', css))
            missing = [h for h in heights if h not in js]
            if missing:
                problems.append('%s: 这些高度值没编进产物：%s'
                                % (page, ', '.join(sorted(missing))))
            notes.append('%s: %d 个固定高度都在产物中' % (page, len(heights)))

        # 5. 循环指令的编译形态（踩过的坑）
        ux_text = open(ux, encoding='utf-8').read() if os.path.exists(ux) else ''
        tpl_match = re.search(r'<template>(.*?)</template>', ux_text, re.S)
        ux_tpl = re.sub(r'<!--.*?-->', '', tpl_match.group(1) if tpl_match else '', flags=re.S)

        if 'for=' in ux_tpl:
            cf = re.search(r'__cf__\(\{__vm__:(\w+),__opts__:\{exp:function\(\)\{return ([^}]+)\}', js)
            if not cf:
                problems.append('%s: 模板里有 for 但产物里找不到循环指令 __cf__' % page)
            else:
                vm, target = cf.group(1), cf.group(2).strip()
                if '__list__' in target or not target.startswith(vm + '.'):
                    problems.append(
                        '%s: 循环遍历目标编译错了：%r —— 裸标识符会让循环一次都不执行、'
                        '列表空白。改用 for="{{数组}}" + $item。' % (page, target))
                else:
                    notes.append('%s: 循环遍历目标 %s（带视图模型前缀，正确）' % (page, target))

        # 6. 不能用 scroll（需要 APILevel 2）
        if '<scroll' in js or '"scroll"' in js:
            problems.append('%s: 产物里还有 scroll 组件（需要 APILevel 2）' % page)

        # 7. 页面里每个 {{ }} 绑定的顶层变量都要在产物里出现（防拼错字段名）
        for field in set(re.findall(r'\{\{\s*([a-zA-Z_]\w*)', ux_tpl)):
            if field == '$item':
                continue
            if field not in js:
                problems.append('%s: 模板绑定了 {{%s}} 但产物里找不到该字段' % (page, field))

        # 8. 版本号字面量：只有入口页必须带（用于确认设备上装的是新包），
        #    其它页面不一定用到 APP_VERSION，会被编译器消掉，不算问题。
        ver = re.search(r'["\']v(\d+\.\d+)["\']', js)
        if ver:
            notes.append('%s: 版本标记 v%s' % (page, ver.group(1)))
        elif page == manifest['router']['entry'].split('/')[-1]:
            problems.append('%s: 入口页产物里找不到 vX.Y 版本字面量（无法确认设备上的版本）'
                            % page)

    # 8. 页面数要和 manifest 一致
    if len(compiled) != len(pages):
        problems.append('编译出的页面数（%d）和 manifest 注册的（%d）不一致'
                        % (len(compiled), len(pages)))

    print('手环端构建产物检查：%s' % os.path.basename(rpk))
    print()
    for n in notes:
        print('  · ' + n)
    print()
    if problems:
        print('发现问题：')
        for p in problems:
            print('  ✗ ' + p)
        return 1
    print('构建产物检查通过')
    return 0


if __name__ == '__main__':
    sys.exit(main())
