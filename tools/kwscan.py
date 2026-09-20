"""Scan files for keywords and print surrounding context.

Usage:
    python tools/kwscan.py <file> [file...] -- <kw1> [kw2 ...]
    python tools/kwscan.py <file> --ctx <kw> [radius]
"""

import re
import sys


def main() -> None:
    args = sys.argv[1:]
    files, kws = [], []
    ctx_kw, ctx_radius = None, 120
    if "--ctx" in args:
        i = args.index("--ctx")
        ctx_kw = args[i + 1]
        if len(args) > i + 2 and args[i + 2].isdigit():
            ctx_radius = int(args[i + 2])
        files = args[:i]
    elif "--" in args:
        i = args.index("--")
        files, kws = args[:i], args[i + 1:]
    else:
        files, kws = args, ["captcha", "Captcha"]

    for path in files:
        try:
            with open(path, encoding="utf-8", errors="ignore") as fh:
                text = fh.read()
        except OSError as exc:
            print(f"!! {path}: {exc}")
            continue
        print(f"===== {path} (len {len(text)})")
        if ctx_kw:
            for m in re.finditer(re.escape(ctx_kw), text):
                s = max(0, m.start() - ctx_radius)
                print(f"  @{m.start()}: ...{text[s:m.end() + ctx_radius]}...")
            continue
        for kw in kws:
            print(f"  {kw}: {text.count(kw)}")
        for kw in kws:
            for m in re.finditer(re.escape(kw), text):
                s = max(0, m.start() - 60)
                snippet = text[s : m.end() + 90].replace("\n", " ")
                print(f"  [{kw}] ...{snippet}...")
                break


if __name__ == "__main__":
    main()
