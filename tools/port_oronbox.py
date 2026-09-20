"""把 OronBox 的协议层/设备层移植到我们的 PC 工程。

搬这三棵树：
  protocols/           协议定义与实现（含生成的 protobuf）
  device/core/         传输抽象
  device/xiaomi/       小米（Vela）设备实现
再按需搬 core/ 下少量文件（日志、模型、错误、RFCOMM 驱动等）。

不搬 ZeppOS（我们用不到），不搬 features/app（那是有 UI 耦合的应用层）。

搬完做两件事：
  1. package:oronbox/ → package:band_schedule_pc/
  2. 报告哪些文件还需要人工改（比如 import 了 flutter 的）

    python tools/port_oronbox.py
"""

import os
import re
import shutil
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..'))
SRC = os.path.join(ROOT, '_ref', 'OronBox', 'lib')
DST = os.path.join(ROOT, 'pc', 'lib')
PKG = 'band_schedule_pc'

# 整棵树搬运
TREES = [
    'src/protocols',
    'src/device/core',
    'src/device/xiaomi',
]

# 按需搬运的单个文件（相对 lib/）
FILES = [
    # 日志
    'src/core/logging/logging_service.dart',
    # 模型
    'src/core/models/bt_models.dart',
    'src/core/models/xiaomi_health_models.dart',
    # 错误
    'src/core/errors/app_error.dart',
    # 网络（账号登录用）
    'src/core/network/app_http_transport.dart',
    # 常量
    'src/core/constants/style_constants.dart',
    # RFCOMM / 连接保活
    'src/core/services/rfcomm_driver.dart',
    'src/core/services/rfcomm_driver_native.dart',
    'src/core/services/rfcomm_driver_web.dart',
    'src/core/services/default_bluetooth_platform.dart',
    'src/core/services/connection_keep_alive.dart',
    'src/core/services/connection_keep_alive_io.dart',
    'src/core/services/connection_keep_alive_stub.dart',
    'src/core/services/shared_prefs_service.dart',
]

COPY_EXT = ('.dart', '.proto')


def copy_tree(rel, copied, missing):
    src = os.path.join(SRC, rel.replace('/', os.sep))
    if not os.path.isdir(src):
        missing.append(rel + '（目录不存在）')
        return
    for root, _, names in os.walk(src):
        for n in names:
            if not n.endswith(COPY_EXT):
                continue
            fp = os.path.join(root, n)
            relpath = os.path.relpath(fp, SRC)
            out = os.path.join(DST, relpath)
            os.makedirs(os.path.dirname(out), exist_ok=True)
            shutil.copy2(fp, out)
            copied.append(relpath.replace(os.sep, '/'))


def copy_file(rel, copied, missing):
    src = os.path.join(SRC, rel.replace('/', os.sep))
    if not os.path.isfile(src):
        missing.append(rel)
        return
    out = os.path.join(DST, rel.replace('/', os.sep))
    os.makedirs(os.path.dirname(out), exist_ok=True)
    shutil.copy2(src, out)
    copied.append(rel)


def main():
    if not os.path.isdir(SRC):
        print('找不到 %s —— 请先把 OronBox 放到 _ref/OronBox' % SRC)
        return 1

    copied = []
    missing = []
    for t in TREES:
        copy_tree(t, copied, missing)
    for f in FILES:
        copy_file(f, copied, missing)

    print('已移植 %d 个文件' % len(copied))
    if missing:
        print()
        print('以下路径在 OronBox 里不存在（可能需要调整）：')
        for m in missing:
            print('  - ' + m)

    # 改包路径
    changed = 0
    flutter_users = []
    for rel in copied:
        fp = os.path.join(DST, rel.replace('/', os.sep))
        with open(fp, encoding='utf-8', errors='ignore') as f:
            text = f.read()
        new = text.replace('package:oronbox/', 'package:%s/' % PKG)
        if new != text:
            with open(fp, 'w', encoding='utf-8') as f:
                f.write(new)
            changed += 1
        # 记录 import 了 flutter 的文件，等会儿要人工处理
        if re.search(r"import\s+'package:flutter/", new):
            flutter_users.append(rel)

    print('改了包路径的文件：%d 个' % changed)
    print()
    if flutter_users:
        print('以下文件 import 了 Flutter，需要人工处理（可能要删掉或替换）：')
        for f in flutter_users:
            print('  - ' + f)
    else:
        print('没有文件依赖 Flutter。')

    return 0


if __name__ == '__main__':
    sys.exit(main())
