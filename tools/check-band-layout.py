"""校验手环端各页面的布局能否塞进 192x490 的屏幕。

Vela 的两条硬规矩：
  1. 容器不会被内容撑开 —— 每一层都要有显式 height
  2. padding 是 content-box 之外额外加的 —— 高度账必须把它算进去
踩过的坑：.page 写 height:490 + padding-top:26 会变成 516px 总高，
把底部内容整个推出屏幕。

所以这个脚本做两件事：
  · 每个容器都要有显式 height
  · **每个容器的直接子元素高度合计不能超过它自己的高度**
    （内容太多就会溢出/被裁，必须自己算准）

    python tools/check-band-layout.py
"""

import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, HERE)
from project import BAND_SRC as SRC  # noqa: E402

SCREEN_W = 192
SCREEN_H = 490


def px(value):
    if not value:
        return 0.0
    m = re.match(r'^(-?\d+(?:\.\d+)?)px$', str(value).strip())
    return float(m.group(1)) if m else 0.0


def rule(css, selector):
    """取某个类选择器的属性字典。"""
    m = re.search(r'\n\s*\.' + re.escape(selector) + r'\s*\{([^}]*)\}', css)
    if not m:
        return None
    props = {}
    for line in m.group(1).split(';'):
        if ':' not in line:
            continue
        k, _, v = line.partition(':')
        props[k.strip()] = v.strip()
    return props


def el_height(css, cls):
    """元素自身占的纵向空间：height + 上下 margin + 上下 padding。"""
    r = rule(css, cls)
    if r is None:
        return None
    return (px(r.get('height')) + px(r.get('margin-top')) + px(r.get('margin-bottom'))
            + px(r.get('padding-top')) + px(r.get('padding-bottom')))


def el_width(css, cls):
    r = rule(css, cls)
    if r is None:
        return None
    return (px(r.get('width')) + px(r.get('margin-left')) + px(r.get('margin-right'))
            + px(r.get('padding-left')) + px(r.get('padding-right'))
            + px(r.get('border-left-width')) + px(r.get('border-right-width')))


def tag_scope(text, start):
    """从某个开始标签出发，返回该元素配平后的结束位置。"""
    m = re.match(r'<([a-zA-Z][\w-]*)', text[start:])
    if not m:
        return len(text)
    tag = m.group(1)
    open_re = re.compile(r'<' + re.escape(tag) + r'\b')
    close_re = re.compile(r'</' + re.escape(tag) + r'\s*>')
    depth = 0
    i = start
    while i < len(text):
        o = open_re.search(text, i)
        c = close_re.search(text, i)
        if c is None:
            return len(text)
        if o is not None and o.start() < c.start():
            depth += 1
            i = o.end()
        else:
            depth -= 1
            i = c.end()
            if depth == 0:
                return i
    return len(text)


def children_of(tpl, cls):
    """取某元素的直接子元素 [(class, 是否有 if)]，跳过注释。"""
    start = -1
    for m in re.finditer(r'<[a-zA-Z][\w-]*\s+class="([^"]*)"', tpl):
        if cls in m.group(1).split():
            start = m.start()
            break
    if start < 0:
        return []

    inner = tpl.index('>', start) + 1
    end = tag_scope(tpl, start)
    body = re.sub(r'<!--.*?-->', '', tpl[inner:end], flags=re.S)

    out = []
    pos = 0
    open_re = re.compile(r'<([a-zA-Z][\w-]*)([^>]*)>')
    while pos < len(body):
        m = open_re.search(body, pos)
        if not m:
            break
        attrs = m.group(2)
        c = re.search(r'class="([^"]*)"', attrs)
        if c:
            out.append((c.group(1).split()[0], 'if=' in attrs))
        pos = tag_scope(body, m.start())
    return out


def check(path, name, problems, notes):
    with open(path, encoding='utf-8') as f:
        ux = f.read()

    m = re.search(r'<style>(.*?)</style>', ux, re.S)
    if not m:
        problems.append('%s: 没有 <style> 块' % name)
        return
    css = m.group(1)
    tpl_m = re.search(r'<template>(.*?)</template>', ux, re.S)
    tpl = tpl_m.group(1) if tpl_m else ''

    page = rule(css, 'page')
    if page is None:
        problems.append('%s: 找不到 .page' % name)
        return

    w = px(page.get('width')) + px(page.get('padding-left')) + px(page.get('padding-right'))
    h = px(page.get('height')) + px(page.get('padding-top')) + px(page.get('padding-bottom'))
    if h > SCREEN_H:
        problems.append('%s: .page 纵向超出 %.0fpx（内容会被顶出屏幕）' % (name, h - SCREEN_H))
    if w > SCREEN_W:
        problems.append('%s: .page 横向超出 %.0fpx' % (name, w - SCREEN_W))
    notes.append('%s: .page %gx%g（可用 %gx%g）' % (name, px(page.get('width')),
                                                 px(page.get('height')), w, h))

    # 1. 每个容器都要有显式 height
    for cls in set(re.findall(r'<div\s+class="([^"]+)"', tpl)):
        first = cls.split()[0]
        r = rule(css, first)
        if r is None:
            problems.append('%s: 容器 .%s 没有样式规则' % (name, first))
        elif 'height' not in r:
            problems.append('%s: 容器 .%s 没有显式 height（Vela 不会被内容撑开，'
                            '可能渲染成 0 高）' % (name, first))

    # 2. 子元素高度合计不能超过父容器高度
    for parent, limit in (('page', h),):
        kids = children_of(tpl, parent)
        fixed = 0.0
        conditional = []
        unknown = []
        for cls, has_if in kids:
            eh = el_height(css, cls)
            if eh is None:
                unknown.append(cls)
                continue
            if has_if:
                conditional.append((cls, eh))
            else:
                fixed += eh
        # 带 if 的兄弟元素是互斥的（if/else），取最大的那个
        alt = max((e for _, e in conditional), default=0.0)
        total = fixed + alt
        detail = []
        for cls, has_if in kids:
            eh = el_height(css, cls)
            if eh is not None and not has_if:
                detail.append('%s %g' % (cls, eh))
        if conditional:
            detail.append('max(%s) %g' % (', '.join(c for c, _ in conditional), alt))
        if unknown:
            problems.append('%s: 这些子元素没有样式规则，无法核算高度：%s'
                            % (name, ', '.join(unknown)))
        if total > limit:
            problems.append('%s: 子元素高度合计 %.0fpx 超过 .page 的 %gpx（超出 %.0fpx）—— %s'
                            % (name, total, limit, total - limit, ' + '.join(detail)))
        else:
            notes.append('%s: 子元素合计 %.0f/%gpx（余 %.0f）—— %s'
                         % (name, total, limit, limit - total, ' + '.join(detail)))

    # 3. 横向：单个元素不能超屏
    for cls in set(re.findall(r'<div\s+class="([^"]+)"', tpl)) | \
            set(re.findall(r'<text\s+class="([^"]+)"', tpl)):
        first = cls.split()[0]
        ew = el_width(css, first)
        if ew is not None and ew > SCREEN_W:
            problems.append('%s: .%s 横向占 %gpx，超过屏宽 %d' % (name, first, ew, SCREEN_W))

    # 4. 可点元素的命中范围（返回按钮这类，太小不好按）
    for m2 in re.finditer(r'<text\s+class="([^"]+)"[^>]*@click="([^"]+)"', tpl):
        cls, handler = m2.group(1).split()[0], m2.group(2)
        r = rule(css, cls)
        if not r:
            continue
        bw, bh = px(r.get('width')), px(r.get('height'))
        if bw and bh and (bw < 44 or bh < 30):
            problems.append('%s: .%s 是点击目标（%s），可点范围只有 %gx%g，偏小'
                            % (name, cls, handler, bw, bh))
        elif bw and bh:
            notes.append('%s: .%s 可点范围 %gx%g（%s）' % (name, cls, bw, bh, handler))


def main():
    manifest = json.loads(open(os.path.join(SRC, 'manifest.json'), encoding='utf-8').read())
    problems = []
    notes = []

    for key in manifest['router']['pages']:
        name = key.split('/')[-1]
        path = os.path.join(SRC, key.replace('/', os.sep), 'index.ux')
        if not os.path.exists(path):
            problems.append('%s: 找不到 %s' % (name, path))
            continue
        check(path, name, problems, notes)

    print('手环端布局检查（屏幕 %dx%d，版本 %s）'
          % (SCREEN_W, SCREEN_H, manifest.get('versionName')))
    print()
    for n in notes:
        print('  · ' + n)
    print()
    if problems:
        print('发现问题：')
        for p in problems:
            print('  ✗ ' + p)
        return 1
    print('布局检查通过')
    return 0


if __name__ == '__main__':
    sys.exit(main())
