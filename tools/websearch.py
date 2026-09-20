"""Tiny web research helper (Bing RSS / Baidu HTML / raw page fetch).

Usage:
    python tools/websearch.py search "query" [n]
    python tools/websearch.py baidu "query" [n]
    python tools/websearch.py fetch "https://example.com" [chars]
    python tools/websearch.py links "https://example.com" [filter]
"""

import re
import sys
import urllib.parse
import urllib.request

UA = (
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
    "(KHTML, like Gecko) Chrome/124.0 Safari/537.36"
)


def _get(url: str) -> str:
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    with urllib.request.urlopen(req, timeout=30) as resp:
        raw = resp.read()
    for enc in ("utf-8", "gbk", "latin-1"):
        try:
            return raw.decode(enc)
        except UnicodeDecodeError:
            continue
    return raw.decode("utf-8", "ignore")


def search(query: str, n: int = 8) -> None:
    html = _get(
        "https://www.so.com/s?ie=utf-8&q="
        + urllib.parse.quote(query)
    )
    chunks = re.split(r'<(?:li|div)[^>]+class="res-list', html)[1:]
    if not chunks:
        chunks = re.findall(r'<h3[^>]*>(.*?)</h3>', html, re.S)
    count = 0
    for chunk in chunks:
        m = re.search(r'<a[^>]*href="([^"]+)"[^>]*(?:data-mdurl="[^"]*")?[^>]*>(.*?)</a>', chunk, re.S)
        if not m:
            continue
        href, title = m.group(1), _clean(m.group(2))
        if not title or href.startswith("javascript"):
            continue
        count += 1
        print(f"[{count}] {title}\n    {href}")
        snip = re.search(r'class="res-desc"[^>]*>(.*?)</p>', chunk, re.S) or re.search(
            r'class="res-rich[^"]*"[^>]*>(.*?)</div>', chunk, re.S
        )
        if snip:
            print(f"    {_clean(snip.group(1))[:300]}")
        if count >= n:
            break
    if count == 0:
        print("(no results; raw length %d)" % len(html))


def baidu(query: str, n: int = 8) -> None:
    html = _get("https://www.baidu.com/s?wd=" + urllib.parse.quote(query))
    blocks = re.findall(r'<div[^>]+class="result[^"]*"[^>]*>(.*?)</div>\s*</div>', html, re.S)
    count = 0
    for block in blocks:
        m = re.search(r'<a[^>]+href="([^"]+)"[^>]*>(.*?)</a>', block, re.S)
        if not m:
            continue
        href, title = m.group(1), _clean(m.group(2))
        if not title:
            continue
        count += 1
        print(f"[{count}] {title}\n    {href[:200]}")
        abstract = re.search(r'class="[^"]*(?:content-right|c-abstract|summary)[^"]*"[^>]*>(.*?)</span>', block, re.S)
        if abstract:
            print(f"    {_clean(abstract.group(1))[:280]}")
        if count >= n:
            break
    if count == 0:
        print("(no results; raw length %d)" % len(html))


def links(url: str, flt: str = "") -> None:
    html = _get(url)
    hrefs = re.findall(r'href="([^"]+)"[^>]*>(.*?)</a>', html, re.S)
    seen = set()
    for href, text in hrefs:
        text = _clean(text)
        key = (href, text)
        if key in seen:
            continue
        seen.add(key)
        if flt and flt.lower() not in href.lower() and flt.lower() not in text.lower():
            continue
        print(f"{text[:70]!r} -> {href[:160]}")


def _clean(text: str) -> str:
    text = re.sub(r"<!\[CDATA\[(.*?)\]\]>", r"\1", text, flags=re.S)
    text = re.sub(r"<[^>]+>", "", text)
    return re.sub(r"\s+", " ", text).strip()


def fetch(url: str, chars: int = 6000) -> None:
    text = _get(url)
    text = re.sub(r"(?is)<(script|style)[^>]*>.*?</\1>", " ", text)
    text = re.sub(r"<[^>]+>", " ", text)
    text = re.sub(r"&nbsp;?", " ", text)
    text = re.sub(r"&amp;", "&", text)
    text = re.sub(r"[ \t\r\f\v]+", " ", text)
    text = re.sub(r"\n\s*\n+", "\n", text)
    print(text.strip()[:chars])


if __name__ == "__main__":
    mode = sys.argv[1]
    if mode == "search":
        search(sys.argv[2], int(sys.argv[3]) if len(sys.argv) > 3 else 8)
    elif mode == "baidu":
        baidu(sys.argv[2], int(sys.argv[3]) if len(sys.argv) > 3 else 8)
    elif mode == "links":
        links(sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else "")
    elif mode == "fetch":
        fetch(sys.argv[2], int(sys.argv[3]) if len(sys.argv) > 3 else 6000)
    else:
        print(__doc__)
