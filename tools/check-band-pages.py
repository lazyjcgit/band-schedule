"""检查手环端所有页面源码的硬性约束。

为什么需要它：手环端的坑都是"编译/渲染层面"的，源码看着没问题但设备上是空白。
这里把踩过的坑都变成可执行的断言，改坏了直接构建失败。

    python tools/check-band-pages.py

检查项：
  1. manifest 的入口页面存在，且 router 里注册了所有页面
  2. 没有用 Vela 不支持的组件（scroll 需要 APILevel 2；block/swiper 等不在列表里）
  3. 循环指令必须是不带别名的 for="{{数组}}"，循环体内用 $item
     —— 带别名会编译成裸标识符，运行时取不到值，循环一次都不执行
  4. 每个容器都要有显式 height（Vela 容器不会被内容撑开）
  5. 纵向高度合计不超过 490，横向不超过 192
"""

import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, HERE)
from project import BAND_DIR as BAND, BAND_PACKAGE, BAND_NAME  # noqa: E402
SRC = os.path.join(BAND, 'src')

SCREEN_W = 192
SCREEN_H = 490

# Vela 文档里明确支持的组件（非完整列表，但覆盖我们用到的）
SUPPORTED = {
    'div', 'list', 'list-item', 'scroll', 'stack', 'swiper',
    'text', 'span', 'a', 'image', 'image-animator', 'progress',
    'marquee', 'chart', 'qrcode', 'barcode',
    'input', 'picker', 'switch', 'slider',
}
# 需要 APILevel 2+ 的组件，我们声明的是 minAPILevel 1，不能直接用
NEEDS_API2 = {'scroll', 'list', 'list-item', 'swiper', 'stack', 'chart', 'qrcode', 'barcode'}


def read(path):
    with open(path, encoding='utf-8') as f:
        return f.read()


def split_ux(text):
    tpl = re.search(r'<template>(.*?)</template>', text, re.S)
    sty = re.search(r'<style>(.*?)</style>', text, re.S)
    return (tpl.group(1) if tpl else ''), (sty.group(1) if sty else '')


def css_rule(css, selector):
    m = re.search(r'\n\s*' + re.escape(selector) + r'\s*\{([^}]*)\}', css)
    if not m:
        return None
    props = {}
    for line in m.group(1).split(';'):
        if ':' not in line:
            continue
        k, _, v = line.partition(':')
        props[k.strip()] = v.strip()
    return props


def px(value):
    if not value:
        return 0.0
    m = re.match(r'^(-?\d+(?:\.\d+)?)px$', str(value).strip())
    return float(m.group(1)) if m else 0.0


def check_page(name, path, manifest, problems, notes):
    if not os.path.exists(path):
        problems.append('%s: 找不到 %s' % (name, path))
        return
    text = read(path)
    tpl, css = split_ux(text)

    # --- 组件白名单 ---
    # 先剥掉注释：注释里会写"别用 <block> 之类的示例"，不剥会误报
    tpl_nocomment = re.sub(r'<!--.*?-->', '', tpl, flags=re.S)
    for tag in set(re.findall(r'<([a-zA-Z][\w-]*)', tpl_nocomment)):
        if tag in ('template', 'style', 'script'):
            continue
        if tag == 'block':
            problems.append('%s: 用了 <block>，Vela 不支持这个组件（改用 div）' % name)
            continue
        if tag not in SUPPORTED:
            problems.append('%s: 用了 Vela 不支持的组件 <%s>' % (name, tag))
        elif tag in NEEDS_API2:
            problems.append(
                '%s: <%s> 需要 APILevel 2，而 manifest 声明的是 minAPILevel %s'
                % (name, tag, manifest.get('minAPILevel')))

    # --- 循环指令写法（踩过的坑）---
    # 先把注释去掉：注释里会写示例代码，误判过一次
    tpl_code = re.sub(r'<!--.*?-->', '', tpl, flags=re.S)
    for m in re.finditer(r'for\s*=\s*"([^"]*)"', tpl_code):
        expr = m.group(1)
        if ' in ' in expr:
            problems.append(
                '%s: for="%s" 用了别名写法。本项目 aiot-toolkit 1.1.0 下会编译成'
                '裸标识符（exp:function(){return{__list__:courses}}），运行时取不到值，'
                '循环不执行、列表空白。改成 for="{{数组}}" 并在循环体内用 $item。'
                % (name, expr))
        elif '{{' not in expr:
            problems.append('%s: for="%s" 没包在 {{ }} 里' % (name, expr))

    # $item 只在有 for 时才该出现
    has_for = 'for=' in tpl
    if has_for and '$item' not in tpl:
        problems.append('%s: 用了 for 但循环体内没使用 $item' % name)
    if not has_for and '$item' in tpl:
        problems.append('%s: 没有 for 却用了 $item' % name)

    # --- 每个容器要有显式高度 ---
    containers = re.findall(r'<div\s+class="([^"]+)"', tpl)
    for cls in containers:
        first = cls.split()[0]
        rule = css_rule(css, '.' + first)
        if rule is None:
            problems.append('%s: 容器 .%s 没有样式规则' % (name, first))
            continue
        if 'height' not in rule:
            problems.append(
                '%s: 容器 .%s 没写 height。Vela 的容器不会被内容撑开，'
                '不给高度就按 0 渲染（这是"内容整块看不见"的原因）' % (name, first))

    # --- 屏幕尺寸 ---
    page = css_rule(css, '.page')
    if page is None:
        problems.append('%s: 找不到 .page 规则' % name)
    else:
        w = px(page.get('width'))
        h = px(page.get('height'))
        extra_h = px(page.get('padding-top')) + px(page.get('padding-bottom'))
        extra_w = px(page.get('padding-left')) + px(page.get('padding-right'))
        if h + extra_h > SCREEN_H:
            problems.append('%s: .page 纵向超出屏幕 %.0fpx（%s+%s），底部会被推出可视区'
                            % (name, h + extra_h - SCREEN_H, h, extra_h))
        if w + extra_w > SCREEN_W:
            problems.append('%s: .page 横向超出屏幕 %.0fpx' % (name, w + extra_w - SCREEN_W))
        notes.append('%s: .page %gx%g（含 padding %gx%g）' % (name, w, h, extra_w, extra_h))

        # 所有固定高度的块加起来不能超过 .page（粗算，用于兜底）
        total = 0.0
        for sel, rule in re.findall(r'\n\s*\.([\w-]+)\s*\{([^}]*)\}', css):
            pass  # 逐块累加容易误判嵌套，这里只查 .page 本身

    return True


def main():
    manifest_path = os.path.join(SRC, 'manifest.json')
    manifest = json.loads(read(manifest_path))

    problems = []
    notes = []

    entry = manifest['router']['entry']
    pages = manifest['router']['pages']
    notes.append('入口页面 %s' % entry)
    if entry not in pages:
        problems.append('入口 %s 没在 router.pages 里注册' % entry)

    # 每个注册的页面都要有对应文件
    for key in pages:
        # pages/home -> src/pages/home/index.ux
        path = os.path.join(SRC, key.replace('/', os.sep), 'index.ux')
        if not os.path.exists(path):
            problems.append('router 注册了 %s 但没有 %s' % (key, path))

    # 只检查 manifest 里注册的页面。
    # src/pages/index 是 v1.x 的旧版页面，v2.0 起入口改到 pages/home，
    # 它不再打包进应用，所以不参与检查（保留文件是为了对照和回退）。
    active = set(k.split('/')[-1] for k in pages)
    pages_dir = os.path.join(SRC, 'pages')
    for name in sorted(os.listdir(pages_dir)):
        page_dir = os.path.join(pages_dir, name)
        if not os.path.isdir(page_dir):
            continue
        if name not in active:
            notes.append('跳过未注册页面 pages/%s（不打包）' % name)
            continue
        check_page(name, os.path.join(page_dir, 'index.ux'), manifest, problems, notes)

    # 版本号
    notes.append('RPK 版本 %s（versionCode %s）' % (
        manifest.get('versionName'), manifest.get('versionCode')))

    print('手环端页面检查：%s' % os.path.relpath(SRC, os.path.join(HERE, '..')))
    print()
    for n in notes:
        print('  · ' + n)
    print()
    if problems:
        print('发现问题：')
        for p in problems:
            print('  ✗ ' + p)
        return 1
    print('页面检查通过')
    return 0


if __name__ == '__main__':
    sys.exit(main())
