package io.freemytv;

/** Provider history rules shared by ingestion and disk restoration; no Android dependencies. */
final class WatchHistoryPolicy {
    static final int MAX_PER_APP = 15;
    static final long MAX_AGE_MS = 14L * 86400_000;
    static boolean keep(long position, long duration, long updated, long now) {
        if (updated <= 0 || updated > now + 300_000 || now - updated > MAX_AGE_MS) return false;
        // Some providers publish no progress. An explicit Continue Watching entry remains valid then.
        return duration <= 0 || position < 0 || duration - position >= 30_000;
    }
    static String netflixKey(String title) {
        return "netflix:" + title.trim().replaceAll("\\s+", " ").toLowerCase(java.util.Locale.ROOT);
    }
    static int sampleSize(int width, int height, int maxWidth, int maxHeight) {
        int sample = 1;
        while (width / sample > maxWidth * 2 || height / sample > maxHeight * 2) sample *= 2;
        return sample;
    }
    private WatchHistoryPolicy() {}
}
