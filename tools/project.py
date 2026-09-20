"""项目标识与路径的单一来源。

所有工具都从这里取值，不要在各自文件里硬编码包名/应用名/目录名 ——
改名或改路径时只改根目录的 project.json。

    from project import PROJECT, BAND_DIR, BAND_SRC, BAND_PACKAGE, BAND_NAME
"""

import json
import os

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..'))

with open(os.path.join(ROOT, 'project.json'), encoding='utf-8') as _f:
    PROJECT = json.load(_f)

BAND = PROJECT['band']
PC = PROJECT['pc']

# 手环端
BAND_DIR = os.path.join(ROOT, BAND['dir'].replace('/', os.sep))
BAND_SRC = os.path.join(BAND_DIR, 'src')
BAND_DIST = os.path.join(BAND_DIR, 'dist')
BAND_PACKAGE = BAND['package']
BAND_NAME = BAND['name']
BAND_MANIFEST = os.path.join(BAND_SRC, 'manifest.json')

# 手机端（已弃用，仅保留产物校验用）
ANDROID_DIR = os.path.join(ROOT, 'android')
APK_RELEASE = os.path.join(
    ANDROID_DIR, 'app', 'build', 'outputs', 'apk', 'release', 'app-release.apk')


def rpk_name(version):
    """按包名 + 版本拼出 rpk 文件名（与 aiot 的命名规则一致）。"""
    return '%s.release.%s.rpk' % (BAND_PACKAGE, version)
