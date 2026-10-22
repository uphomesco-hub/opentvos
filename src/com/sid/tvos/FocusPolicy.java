package com.sid.tvos;

/** Select a real tile, including when the favourite dock contains only placeholders. */
final class FocusPolicy {
    static int select(int requested, boolean[] usable) {
        if (usable.length == 0) return -1;
        int start = Math.max(0, Math.min(requested, usable.length - 1));
        if (usable[start]) return start;
        for (int distance = 1; distance < usable.length; distance++) {
            if (start + distance < usable.length && usable[start + distance]) return start + distance;
            if (start - distance >= 0 && usable[start - distance]) return start - distance;
        }
        return -1;
    }
}
