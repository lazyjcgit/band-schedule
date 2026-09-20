"""Probe GitHub repos: metadata, file tree, and selected raw files.

Usage:
    python tools/ghprobe.py repo <owner/name> [max_files]
    python tools/ghprobe.py raw <owner/name> <path> [branch]
"""

import json
import sys
import urllib.request

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"


def api(path: str):
    req = urllib.request.Request(
        "https://api.github.com" + path,
        headers={"User-Agent": UA, "Accept": "application/vnd.github+json"},
    )
    return json.loads(urllib.request.urlopen(req, timeout=30).read().decode())


def raw(repo: str, path: str, branch: str = "main") -> str:
    url = f"https://raw.githubusercontent.com/{repo}/{branch}/{path}"
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    return urllib.request.urlopen(req, timeout=30).read().decode("utf-8", "ignore")


def repo(full: str, max_files: int = 60) -> None:
    d = api("/repos/" + full)
    print(
        f"=== {full} | stars {d['stargazers_count']} | lang {d['language']} "
        f"| updated {d['updated_at']} | size {d['size']}KB"
    )
    print("desc:", (d.get("description") or "")[:250])
    branch = d["default_branch"]
    tree = api(f"/repos/{full}/git/trees/{branch}?recursive=1")
    paths = [t["path"] for t in tree["tree"]]
    print(f"branch={branch} files={len(paths)}")
    for p in paths[:max_files]:
        print("  ", p)


if __name__ == "__main__":
    if sys.argv[1] == "repo":
        repo(sys.argv[2], int(sys.argv[3]) if len(sys.argv) > 3 else 60)
    elif sys.argv[1] == "raw":
        print(raw(sys.argv[2], sys.argv[3], sys.argv[4] if len(sys.argv) > 4 else "main"))
