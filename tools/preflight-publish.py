"""上传 GitHub 之前的只读审查。

    python tools/preflight-publish.py

查四类"一旦 push 出去就很难收回"的东西：

  1. 个人敏感信息：手环绑定密钥（authkey）、小米账号、设备 MAC
  2. 签名材料：打包 rpk/apk 用的私钥和证书（公开等于把签名权交出去）
  3. 不该进仓库的大东西：第三方克隆、构建产物、中间产物
  4. 开源合规：LICENSE 在不在、移植来源有没有标注

敏感值**从本机配置里读**（`%APPDATA%\\band-schedule\\prefs.json`），
不写死在脚本里 —— 否则这个脚本自己就成了泄露源。
"""

import io
import json
import os
import re
import sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)),
                                    '..'))
PREFS = os.path.join(os.environ.get('APPDATA', ''), 'band-schedule',
                     'prefs.json')

SKIP_DIRS = {'.git', '_ref', 'node_modules', 'build', 'dist', '.dart_tool',
             '.plugin_symlinks', '.gradle', '.idea', '.vscode', 'packages'}
TEXT_EXT = {'.dart', '.js', '.json', '.md', '.txt', '.ps1', '.py', '.kt',
            '.java', '.xml', '.yaml', '.yml', '.ux', '.h', '.cpp', '.json5',
            '.properties', '.gradle', '.arb', '.html', '.csv', '.sh'}

failures = []
warnings = []


def load_ignore_patterns():
    """读 .gitignore 里的规则（够用的近似实现）。

    为什么不直接调 `git check-ignore`：这台机器上没装 git。
    这里的匹配规则覆盖常见写法（`*.pem`、`build/`、`band/x/sign/`、`!白名单`），
    装了 git 之后以 `git check-ignore -v <path>` 为准。
    """
    path = os.path.join(ROOT, '.gitignore')
    if not os.path.exists(path):
        return []
    rules = []
    for line in io.open(path, encoding='utf-8', errors='ignore'):
        line = line.strip()
        if not line or line.startswith('#'):
            continue
        negate = line.startswith('!')
        if negate:
            line = line[1:]
        rules.append((line, negate))
    return rules


def is_ignored(rel_path, patterns, is_dir=False):
    """近似判断某个相对路径会不会被 .gitignore 排除（后匹配的规则优先）。"""
    segments = rel_path.split('/')
    ignored = False
    for pattern, negate in patterns:
        if _matches(segments, pattern, is_dir):
            ignored = not negate
    return ignored


def _matches(segments, pattern, is_dir):
    """把 .gitignore 的一条规则套到路径上。

    规则分两种（和 git 的语义一致）：
      · 带斜杠 `a/b/c`  → 从仓库根开始逐段匹配
      · 不带斜杠 `*.pem` → 匹配任意层级上的名字
    每段内部支持 `*` / `?`。
    """
    dir_only = pattern.endswith('/')
    pat = pattern.rstrip('/')
    parts = pat.split('/')

    if len(parts) == 1:
        # 裸名字：任意层级。目录规则只匹配"目录"（以及它下面的内容），
        # 所以对文件要排除掉最后一段。
        limit = len(segments) if (is_dir or not dir_only) else len(segments) - 1
        return any(_glob_match(segments[i], parts[0]) for i in range(limit))

    # 带斜杠：从根开始逐段比
    if dir_only and not is_dir and len(parts) >= len(segments):
        return False  # 目录规则不该匹配到同名的文件
    if len(parts) > len(segments):
        return False
    return all(_glob_match(segments[i], parts[i]) for i in range(len(parts)))


def _glob_match(text, pattern):
    """支持 * 和 ? 的简单通配（够 .gitignore 用了）。"""
    regex = ''
    for ch in pattern:
        if ch == '*':
            regex += '[^/]*'
        elif ch == '?':
            regex += '[^/]'
        else:
            regex += re.escape(ch)
    return re.fullmatch(regex, text) is not None


def local_secrets():
    """从本机配置里取出真实值，用来反查仓库里有没有泄漏。"""
    if not os.path.exists(PREFS):
        return {}
    try:
        data = json.load(io.open(PREFS, encoding='utf-8'))
    except (OSError, ValueError):
        return {}
    keys = {
        'band.authkey': '手环绑定密钥 authkey',
        'band.mac': '手环 MAC',
        'band.name': '手环名字',
        'band.mi_user': '小米账号',
    }
    found = {}
    for key, label in keys.items():
        value = data.get(key)
        if isinstance(value, str) and len(value.strip()) >= 6:
            found[label] = value.strip()
    return found


def tracked_files():
    for base, dirs, files in os.walk(ROOT):
        dirs[:] = [d for d in dirs if d not in SKIP_DIRS]
        for name in files:
            yield os.path.join(base, name)


def rel(path):
    return os.path.relpath(path, ROOT).replace('\\', '/')


def section(title):
    print()
    print('=' * 70)
    print(title)
    print('=' * 70)


def main():
    secrets = local_secrets()

    section('① 本机真实值有没有出现在仓库里')
    patterns = load_ignore_patterns()
    if not secrets:
        print('  （读不到 %s，跳过这一项）' % PREFS)
    hits = 0
    for path in tracked_files():
        if is_ignored(rel(path), patterns, is_dir=os.path.isdir(path)):
            continue  # 不会进仓库的文件不用管（临时脚本、构建产物等）
        try:
            text = io.open(path, encoding='utf-8', errors='ignore').read()
        except OSError:
            continue
        for label, value in secrets.items():
            if value in text:
                print('  ⚠ %-52s ← %s' % (rel(path), label))
                failures.append('%s 里有%s' % (rel(path), label))
                hits += 1
    if secrets and not hits:
        print('  ok 没找到')

    section('② 广义模式：像密钥 / 手机号 / 票据的东西')
    patterns = [
        (r'"band\.authkey"\s*:\s*"[0-9a-f]{32}"', '写死的 authkey'),
        (r'(?i)(pass_?token|service_?token|ssecurity)\s*[:=]\s*["\']?'
         r'[A-Za-z0-9+/=]{20,}', '小米票据'),
        (r'\b1[3-9]\d{9}\b', '像手机号'),
    ]
    hits = 0
    for path in tracked_files():
        if os.path.splitext(path)[1].lower() not in TEXT_EXT:
            continue
        if is_ignored(rel(path), load_ignore_patterns(),
                      is_dir=os.path.isdir(path)):
            continue
        for number, line in enumerate(
                io.open(path, encoding='utf-8', errors='ignore')
                .read().splitlines(), 1):
            stripped = line.strip()
            # 示例值不算：全 0、测试用的假值
            if re.search(r'0{8,}', stripped) or 'example' in stripped.lower():
                continue
            for pattern, label in patterns:
                if re.search(pattern, stripped):
                    print('  %s:%d  [%s]' % (rel(path), number, label))
                    print('        %s' % stripped[:96])
                    hits += 1
                    break
    if not hits:
        print('  ok 没找到')
    else:
        warnings.append('有 %d 处疑似密钥/手机号，逐条确认（示例值可以忽略）' % hits)

    section('③ 签名材料（公开 = 把签名权交出去）')
    patterns = load_ignore_patterns()
    risky = 0
    exposed = 0
    for path in tracked_files():
        name = os.path.basename(path).lower()
        ext = os.path.splitext(name)[1]
        if ext in ('.jks', '.keystore', '.p12', '.pfx', '.pem', '.key', '.der') \
                or name in ('privatekey', 'certificate'):
            risky += 1
            if not is_ignored(rel(path), patterns, is_dir=False):
                print('  ⚠ 会被提交：%s' % rel(path))
                exposed += 1
    if risky == 0:
        print('  ok 没找到')
    elif exposed:
        failures.append('%d 个签名文件会被提交，必须加进 .gitignore' % exposed)
    else:
        print('  ok 找到 %d 个签名文件，但都已被 .gitignore 排除' % risky)

    section('④ 体积：跟着仓库走会很痛苦的东西')
    heavy = 0
    for name in ['_ref', 'dist', 'build', 'band/band-schedule/node_modules',
                 'pc/build', 'tools/toolchain', 'tools/npmboot',
                 'docs/xiaomi/demo']:
        full = os.path.join(ROOT, name.replace('/', os.sep))
        if not os.path.isdir(full):
            continue
        total = 0
        for base, _dirs, files in os.walk(full):
            for item in files:
                try:
                    total += os.path.getsize(os.path.join(base, item))
                except OSError:
                    pass
        ignored = is_ignored(name, patterns, is_dir=True)
        flag = '已排除' if ignored else '⚠ 会被提交'
        print('  %-40s %8.1f MB  %s' % (name, total / 1048576, flag))
        if not ignored:
            failures.append('%s（%.0f MB）会被提交' % (name, total / 1048576))
        else:
            heavy += 1
    if heavy:
        print('  这些都不进仓库，别人 clone 下来只有源码。')

    section('⑤ 开源合规')
    has_license = any(os.path.exists(os.path.join(ROOT, n))
                      for n in ('LICENSE', 'LICENSE.md', 'LICENSE.txt'))
    print('  %-42s %s' % ('根目录 LICENSE',
                          '有' if has_license else '没有 ← 必须补'))
    if not has_license:
        failures.append('缺 LICENSE')
    pc_readme = os.path.join(ROOT, 'pc', 'README.md')
    if os.path.exists(pc_readme):
        text = io.open(pc_readme, encoding='utf-8', errors='ignore').read()
        mentioned = 'OronBox' in text
        print('  %-42s %s' % ('pc/README.md 提到上游 OronBox',
                              '有' if mentioned else '没有 ← 必须写'))
        if not mentioned:
            failures.append('pc/README.md 没标注上游来源')

    print()
    print('=' * 70)
    if failures:
        print('还有 %d 项要处理：' % len(failures))
        for item in failures:
            print('  · %s' % item)
        return 1
    for item in warnings:
        print('提示：%s' % item)
    print('审查通过，可以建仓库了。')
    return 0


def check_paths(paths):
    """`--check <路径>`：判断这些文件到底会不会进仓库。

    装不了 git 的时候这就是 `git check-ignore` 的替代品。
    """
    patterns = load_ignore_patterns()
    for item in paths:
        # ⚠️ 只能用前缀替换，不能 lstrip('./') —— 那会把 .gitignore 这类
        # 文件名开头的点也吃掉（显示成 gitignore，判断也会跟着错）。
        normalized = item.replace('\\', '/')
        while normalized.startswith('./'):
            normalized = normalized[2:]
        normalized = normalized.lstrip('/')
        full = os.path.join(ROOT, normalized.replace('/', os.sep))
        # 文件存在就按实际类型判断；不存在就按"有没有扩展名"猜
        is_dir = os.path.isdir(full) if os.path.exists(full) \
            else '.' not in os.path.basename(normalized)
        print('%-58s %s' % (normalized,
                            '不进仓库' if is_ignored(normalized, patterns,
                                                   is_dir=is_dir)
                            else '会进仓库'))
    return 0


if __name__ == '__main__':
    if len(sys.argv) > 2 and sys.argv[1] == '--check':
        sys.exit(check_paths(sys.argv[2:]))
    sys.exit(main())
