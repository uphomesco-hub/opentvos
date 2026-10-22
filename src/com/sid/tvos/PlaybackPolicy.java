package com.sid.tvos;

import java.util.Locale;

/** Platform independent rules for observed playback, never inferred recommendations. */
public final class PlaybackPolicy {
    public static final int LIMIT = 15;
    public static final long EXPIRY_MS = 14L * 24 * 60 * 60 * 1000;
    private PlaybackPolicy() {}
    public static boolean validPrimeId(String id) {
        return id != null && id.matches("amzn1\\.dv\\.gti\\.[A-Za-z0-9-]{1,100}");
    }
    public static boolean validNetflixId(String id) {
        return id != null && id.matches("[0-9]{3,20}");
    }
    public static boolean unfinished(long position, long duration) {
        return position > 0 && duration > 0 && position < duration && duration - position >= 30_000;
    }
    public static boolean fresh(long updated, long now) {
        return updated > 0 && updated <= now + 60_000 && now - updated <= EXPIRY_MS;
    }
    public static boolean explicitNetflixContinueWatching(String title) {
        String t = normalize(title);
        return t.equals("continue watching") || t.startsWith("continue watching:")
            || t.startsWith("continue watching ") || t.startsWith("continue watching·");
    }
    public static String normalize(String value) {
        return value == null ? "" : value.trim().toLowerCase(Locale.ROOT).replaceAll("\\s+", " ");
    }
    public static String titleKey(String title, String subtitle) {
        return normalize(title) + "|" + normalize(subtitle);
    }
}
