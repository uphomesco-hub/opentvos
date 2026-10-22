package io.freemytv;

/** Provider history rules shared by ingestion and disk restoration; no Android dependencies. */
final class WatchHistoryPolicy {
    static boolean keep(long position, long duration, long updated, long now) {
        // This is an archive of observed playback, including completed titles. No count/age cutoff.
        return updated > 0 && updated <= now + 300_000;
    }
    static String key(String pkg, String title) { return pkg + ":" + title.trim().replaceAll("\\s+", " ").toLowerCase(java.util.Locale.ROOT); }
    static boolean completed(long position, long duration) { return duration > 0 && position > 0 && duration - position < 30_000; }
    static boolean sharpForCard(int width, int height, int screenWidth) {
        float scale = Math.min(1f, screenWidth / 1920f);
        return width >= 1000*scale/1.15f && height >= 500*scale/1.15f;
    }
    static boolean suitableForScreensaver(int width, int height) { return width>=800 && height>=400 && width/(float)height>=1.4f; }
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
