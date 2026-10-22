package com.sid.tvos;

/** Run with javac/java; no emulator or account data is needed. */
public final class PlaybackPolicyTest {
    private static void check(boolean value,String message){if(!value)throw new AssertionError(message);}
    public static void main(String[] args) {
        check(PlaybackPolicy.explicitNetflixContinueWatching("Continue Watching"),"Published heading");
        check(PlaybackPolicy.explicitNetflixContinueWatching(" CONTINUE  WATCHING: for Yash "),"Heading formatting");
        check(!PlaybackPolicy.explicitNetflixContinueWatching("Because you watched yesterday"),"Recommendations cannot become history");
        check(!PlaybackPolicy.explicitNetflixContinueWatching("New on Netflix"),"Promotional notifications cannot become history");
        check(!PlaybackPolicy.explicitNetflixContinueWatching("Continue watchings"),"Heading prefix must be a word boundary");
        check(PlaybackPolicy.validPrimeId("amzn1.dv.gti.1234-abcd"),"Observed stable GTI");
        check(!PlaybackPolicy.validPrimeId("https://example.com/title"),"Arbitrary media IDs are not Prime links");
        check(!PlaybackPolicy.validPrimeId("amzn1.dv.gti.bad?autoplay=1"),"ID cannot inject link parameters");
        check(PlaybackPolicy.validNetflixId("81234567"),"Stable Netflix ID");
        check(!PlaybackPolicy.validNetflixId("Netflix media session"),"Generic Netflix session cannot create history");
        check(PlaybackPolicy.unfinished(60_000,3_600_000),"Observed partial playback");
        check(!PlaybackPolicy.unfinished(0,3_600_000),"Startup placeholder cannot create history");
        check(!PlaybackPolicy.unfinished(3_590_000,3_600_000),"Near-complete title removed");
        check(!PlaybackPolicy.unfinished(3_600_001,3_600_000),"Overrun cannot be resumable");
        check(!PlaybackPolicy.unfinished(60_000,0),"Unknown duration cannot be treated as measured progress");
        long now=1_700_000_000_000L;
        check(PlaybackPolicy.fresh(now-PlaybackPolicy.EXPIRY_MS,now),"Expiry boundary");
        check(!PlaybackPolicy.fresh(now-PlaybackPolicy.EXPIRY_MS-1,now),"Old history expires");
        check(!PlaybackPolicy.fresh(now+120_000,now),"Future timestamp cannot indefinitely retain history");
        System.out.println("PASS: notification provenance, stable IDs, completion, and expiry rules");
    }
}
