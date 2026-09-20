"""Fetch and parse Xiaomi Vela QuickApp documentation (iot.mi.com/vela/quickapp).

Usage:
    python tools/veladoc.py nav [url]
    python tools/veladoc.py text <url> [chars]
"""

import re
import sys
import urllib.request

UA = (
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
    "(KHTML, like Gecko) Chrome/124.0 Safari/537.36"
)
ROOT = "https://iot.mi.com/vela/quickapp/zh/guide/"


def get(url: str) -> str:
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    return urllib.request.urlopen(req, timeout=30).read().decode("utf-8", "ignore")


def strip(html: str) -> str:
    html = re.sub(r"(?is)<(script|style)[^>]*>.*?</\1>", " ", html)
    html = re.sub(r"(?i)</(p|div|li|h[1-6]|tr)>", "\n", html)
    html = re.sub(r"<[^>]+>", " ", html)
    html = html.replace("&nbsp;", " ").replace("&amp;", "&")
    html = html.replace("&lt;", "<").replace("&gt;", ">").replace("&quot;", '"')
    html = re.sub(r"[ \t\r\f\v]+", " ", html)
    return re.sub(r"\n\s*\n+", "\n", html).strip()


def nav(url: str = ROOT) -> None:
    html = get(url)
    seen = []
    for m in re.finditer(r'href="(/vela/quickapp/zh/[^"]+)"[^>]*>([^<]{0,90})', html):
        path, text = m.group(1), re.sub(r"\s+", " ", m.group(2)).strip()
        if (path, text) in seen:
            continue
        seen.append((path, text))
    for path, text in seen:
        print(f"{text[:46]:48s} {path}")
    print(f"-- {len(seen)} links")


def text(url: str, chars: int = 6000) -> None:
    print(strip(get(url))[:chars])


def hrefs(url: str, flt: str = "") -> None:
    html = get(url)
    for m in re.finditer(r'href="([^"]+)"', html):
        href = m.group(1)
        if flt and flt not in href:
            continue
        if not flt and (href.startswith(("/vela", "#")) or "/" not in href):
            continue
        print(href)


if __name__ == "__main__":
    if sys.argv[1] == "nav":
        nav(sys.argv[2] if len(sys.argv) > 2 else ROOT)
    elif sys.argv[1] == "text":
        text(sys.argv[2], int(sys.argv[3]) if len(sys.argv) > 3 else 6000)
    elif sys.argv[1] == "hrefs":
        hrefs(sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else "")
