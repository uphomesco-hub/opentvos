package io.freemytv;

/** Host checks for ingestion/retention boundaries and preserving image resolution. */
public final class WatchHistoryPolicyTest {
    private static int checks;
    private static void check(boolean value, String why) { checks++;if (!value) throw new AssertionError(why); }
    public static void main(String[] args) {
        long now = 1_792_641_600_000L;
        check(WatchHistoryPolicy.keep(0, 0, now, now), "Explicit CW with unknown progress remains history");
        check(WatchHistoryPolicy.keep(1000, 600_000, now - 13L * 86400_000, now), "13-day playback retained");
        check(!WatchHistoryPolicy.keep(1000, 600_000, now - 15L * 86400_000, now), "15-day playback expires");
        check(!WatchHistoryPolicy.keep(580_001, 600_000, now, now), "Completed playback removed");
        check(WatchHistoryPolicy.keep(570_000, 600_000, now, now), "Exactly 30 seconds left retained");
        check(!WatchHistoryPolicy.keep(0, 0, now + 600_000, now), "Future timestamps rejected");
        check(!WatchHistoryPolicy.keep(0, 0, 0, now), "Undated entries rejected");
        check(WatchHistoryPolicy.netflixKey("  Example   MOVIE ").equals(WatchHistoryPolicy.netflixKey("Example movie")), "Notification reposts deduplicate by normalized title");
        check(!WatchHistoryPolicy.netflixKey("Example movie").equals(WatchHistoryPolicy.netflixKey("Another movie")), "Different observed titles remain separate");
        check(WatchHistoryPolicy.sampleSize(1280, 720, 1280, 720) == 1, "Full HD-ready provider pixels retained");
        check(WatchHistoryPolicy.sampleSize(240, 136, 1280, 720) == 1, "Low resolution fallback never sampled smaller");
        check(WatchHistoryPolicy.sampleSize(7680, 4320, 1280, 720) == 4, "Large decoding is bounded");
        System.out.println(checks + " watch history policy checks passed");
    }
}
