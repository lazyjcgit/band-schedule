"""Verify the slider offset with zero-mean NCC and a hole-probe sanity check."""

import sys

import numpy as np
from PIL import Image


def luminance(arr: np.ndarray) -> np.ndarray:
    return (
        0.299 * arr[:, :, 0].astype(np.float64)
        + 0.587 * arr[:, :, 1].astype(np.float64)
        + 0.114 * arr[:, :, 2].astype(np.float64)
    )


def main(big_path: str, small_path: str, border: int = 24) -> None:
    big = Image.open(big_path).convert("RGB")
    small = Image.open(small_path).convert("RGBA")
    print("big", big.size, "small", small.size)
    big_l = luminance(np.array(big))
    rgba = np.array(small)
    small_l = luminance(rgba)
    alpha = rgba[:, :, 3]

    ys, xs = np.nonzero(alpha == 255)
    print(f"piece bbox x {xs.min()}..{xs.max()} y {ys.min()}..{ys.max()}")
    x_l, x_r = xs.min() + border, xs.max() - border
    y_t, y_b = ys.min() + border, ys.max() - border
    print(f"template window x {x_l}..{x_r} y {y_t}..{y_b}")

    tpl = small_l[y_t : y_b + 1, x_l : x_r + 1]
    tpl_z = tpl - tpl.mean()
    tpl_norm = np.sqrt((tpl_z ** 2).sum())

    h, w = big_l.shape
    win_w, win_h = x_r - x_l + 1, y_b - y_t + 1
    scores = []
    for x in range(0, w - win_w):
        win = big_l[y_t : y_b + 1, x : x + win_w]
        wz = win - win.mean()
        denom = np.sqrt((wz ** 2).sum()) * tpl_norm
        scores.append(float((wz * tpl_z).sum() / denom) if denom > 1e-6 else 0.0)
    scores = np.array(scores)

    # template's left edge in big coordinates is (x + x_l) when block left = x
    order = np.argsort(scores)[::-1][:8]
    print("top ZNCC peaks (block left x, score, x+x_l):")
    for x in order:
        print(f"   x={x:4d}  zncc={scores[x]:.4f}  templateLeft={x + x_l}")

    best = int(order[0])
    print("median zncc", float(np.median(scores)), "std", float(scores.std()))
    print(f"BEST block-left = {best}  (zncc {scores[best]:.4f})")
    for canvas in (280, 278, 276, 590):
        print(f"   moveLength for canvas={canvas}: {round(best * canvas / w)}")

    # sanity: paste piece at best offset and compare seam energy with random offsets
    def seam(x: int) -> float:
        piece = big_l[y_t : y_b + 1, x : x + win_w]
        return float(np.abs(piece - tpl).mean())

    print("mean|piece-template| at best:", round(seam(best), 2))
    others = [seam(x) for x in range(0, w - win_w, 7)]
    print("median over all offsets:", round(float(np.median(others)), 2))


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2], int(sys.argv[3]) if len(sys.argv) > 3 else 24)
