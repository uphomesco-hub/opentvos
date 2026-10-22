package io.freemytv;

/** Host checks for ingestion/retention boundaries and preserving image resolution. */
public final class WatchHistoryPolicyTest {
    private static int checks;
    private static void check(boolean value, String why) { checks++;if (!value) throw new AssertionError(why); }
    public static void main(String[] args) {
        long now = 1_792_641_600_000L;
        check(WatchHistoryPolicy.keep(0, 0, now, now), "Explicit CW with unknown progress remains history");
        check(WatchHistoryPolicy.keep(1000, 600_000, now - 13L * 86400_000, now), "13-day playback retained");
        check(WatchHistoryPolicy.keep(1000, 600_000, now - 365L * 86400_000, now), "Year-old observed playback retained");
        check(WatchHistoryPolicy.keep(600_000, 600_000, now, now), "Completed playback retained for reopening");
        check(WatchHistoryPolicy.keep(570_000, 600_000, now, now), "Exactly 30 seconds left retained");
        check(!WatchHistoryPolicy.keep(0, 0, now + 600_000, now), "Future timestamps rejected");
        check(!WatchHistoryPolicy.keep(0, 0, 0, now), "Undated entries rejected");
        check(WatchHistoryPolicy.netflixKey("  Example   MOVIE ").equals(WatchHistoryPolicy.netflixKey("Example movie")), "Notification reposts deduplicate by normalized title");
        check(!WatchHistoryPolicy.netflixKey("Example movie").equals(WatchHistoryPolicy.netflixKey("Another movie")), "Different observed titles remain separate");
        check(WatchHistoryPolicy.sampleSize(1280, 720, 1280, 720) == 1, "Full HD-ready provider pixels retained");
        check(WatchHistoryPolicy.sampleSize(240, 136, 1280, 720) == 1, "Low resolution fallback never sampled smaller");
        check(WatchHistoryPolicy.sampleSize(7680, 4320, 1280, 720) == 4, "Large decoding is bounded");
        check(WatchHistoryPolicy.sharpForCard(871,490,1920), "Existing Netflix background remains sharp on full-size card");
        check(!WatchHistoryPolicy.sharpForCard(320,180,1920), "Tiny session icon does not pretend to be HD");
        check(WatchHistoryPolicy.sharpForCard(640,360,1280), "720p UI uses actual card pixel requirements");
        check(WatchHistoryPolicy.sharpForCard(1280,720,1920), "Prime landscape hero fills card");
        check(WatchHistoryPolicy.suitableForScreensaver(1280,720), "Landscape HD image can be a screensaver");
        check(WatchHistoryPolicy.suitableForScreensaver(871,490), "Netflix shared background joins watched-title slideshow");
        check(!WatchHistoryPolicy.suitableForScreensaver(320,180), "Tiny images excluded from fullscreen screensaver");
        check(!WatchHistoryPolicy.suitableForScreensaver(1000,1500), "Portrait posters excluded from fullscreen screensaver");
        check(WatchHistoryPolicy.completed(600000,600000), "Completed titles labelled as watched");
        check(!WatchHistoryPolicy.completed(1000,600000), "Unfinished title remains resumable");
        System.out.println(checks + " watch history policy checks passed");
    }
}
