"""Generate the band quick-app icon (192x192 PNG) without external deps."""

import struct
import zlib

SIZE = 192
BG = (0x1B, 0x2A, 0x41)
CARD = (0xF2, 0xF5, 0xF9)
ACCENT = (0x4A, 0x90, 0xD9)
ACCENT2 = (0x48, 0xB7, 0x9A)
LINE = (0x9A, 0xA8, 0xBA)


def rounded_rect(px, x0, y0, x1, y1, r, color):
    for y in range(y0, y1):
        for x in range(x0, x1):
            dx = 0
            dy = 0
            if x < x0 + r:
                dx = x0 + r - x
            elif x >= x1 - r:
                dx = x - (x1 - r - 1)
            if y < y0 + r:
                dy = y0 + r - y
            elif y >= y1 - r:
                dy = y - (y1 - r - 1)
            if dx * dx + dy * dy > r * r:
                continue
            px[y][x] = color


def main():
    px = [[BG for _ in range(SIZE)] for _ in range(SIZE)]
    # 白色圆角卡片
    rounded_rect(px, 24, 34, 168, 160, 18, CARD)
    # 顶部标题条
    rounded_rect(px, 24, 34, 168, 62, 18, ACCENT)
    for y in range(52, 62):
        for x in range(24, 168):
            px[y][x] = ACCENT
    # 三条“课程”色块，长短不一
    rows = [
        (74, 112, ACCENT),
        (92, 144, ACCENT2),
        (110, 128, (0xE0, 0x91, 0x3C)),
    ]
    for y0, x1, color in rows:
        rounded_rect(px, 38, y0, x1, y0 + 12, 6, color)
        # 左侧时间轴小点
        rounded_rect(px, 26, y0 + 3, 34, y0 + 9, 3, LINE)

    raw = bytearray()
    for row in px:
        raw.append(0)
        for r, g, b in row:
            raw += bytes((r, g, b))

    def chunk(tag, data):
        return (
            struct.pack(">I", len(data))
            + tag
            + data
            + struct.pack(">I", zlib.crc32(tag + data) & 0xFFFFFFFF)
        )

    png = b"\x89PNG\r\n\x1a\n"
    png += chunk(b"IHDR", struct.pack(">IIBBBBB", SIZE, SIZE, 8, 2, 0, 0, 0))
    png += chunk(b"IDAT", zlib.compress(bytes(raw), 9))
    png += chunk(b"IEND", b"")
    with open("band/band-schedule/src/common/logo.png", "wb") as fh:
        fh.write(png)
    print("wrote logo.png", len(png), "bytes")


if __name__ == "__main__":
    main()
