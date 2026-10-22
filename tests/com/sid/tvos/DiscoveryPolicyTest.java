package com.sid.tvos;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/** Plain-JVM regression tests: no Android runtime, account, API key or private viewing data. */
public final class DiscoveryPolicyTest {
    private static void check(boolean value, String message) {
        if (!value) throw new AssertionError(message);
    }
    public static void main(String[] args) {
        check("netflix".equals(DiscoveryPolicy.service(" Netflix ")), "Netflix channel classification");
        check("prime".equals(DiscoveryPolicy.service("Amazon Prime Video")), "Amazon channel classification");
        check("prime".equals(DiscoveryPolicy.service("Prime Video")), "Prime alias classification");
        check(DiscoveryPolicy.service("Netflix Fan Channel") == null, "Do not infer streaming providers by substring");
        check(DiscoveryPolicy.service("Amazon Freevee") == null, "Do not infer Prime entitlement from Amazon branding");

        String netflix = "com.netflix.ninja", prime = "com.amazon.firebat", otherPrime = "com.amazon.amazonvideo.livingroom";
        Map<String, Object> rows = new LinkedHashMap<>();
        check(DiscoveryPolicy.mayFill(null, netflix), "Null provider response permits discovery");
        check(DiscoveryPolicy.mayFill(rows, netflix), "Missing app row permits discovery");
        rows.put(netflix, new ArrayList<>());
        check(DiscoveryPolicy.mayFill(rows, netflix), "Empty app row permits discovery");
        rows.put(netflix, Arrays.asList(new Object()));
        check(!DiscoveryPolicy.mayFill(rows, netflix), "One real history item takes priority over every discovery item");
        check(DiscoveryPolicy.mayFill(rows, prime, otherPrime), "Netflix history must not suppress Prime discovery");
        rows.put(otherPrime, Arrays.asList(new Object()));
        check(!DiscoveryPolicy.mayFill(rows, prime, otherPrime), "Alternate installed Prime package is the same service");
        rows.put(prime, "unexpected provider type");
        check(!DiscoveryPolicy.mayFill(rows, prime), "Unknown nonempty provider data must be preserved");

        check(DiscoveryPolicy.officialSite("netflix", "https://www.netflix.com/title/12345"), "Official Netflix title URL");
        check(DiscoveryPolicy.officialSite("netflix", "https://www.netflix.com/in/title/12345"), "Local Netflix title URL");
        check(!DiscoveryPolicy.officialSite("netflix", "https://www.netflix.com/browse"), "Homepage is not a title deep link");
        check(!DiscoveryPolicy.officialSite("netflix", "https://www.netflix.com.evil.example/title/12345"), "Reject domain suffix spoofing");
        check(!DiscoveryPolicy.officialSite("netflix", "https://www.netflix.com@evil.example/title/12345"), "Reject user-info spoofing");
        check(!DiscoveryPolicy.officialSite("netflix", "http://www.netflix.com/title/12345"), "Reject plaintext deep links");
        check(!DiscoveryPolicy.officialSite("netflix", "intent://title/12345#Intent;scheme=https;end"), "Reject arbitrary intent URIs");
        check(!DiscoveryPolicy.officialSite("prime", "https://www.netflix.com/title/12345"), "Do not send Netflix links to Prime");
        check(DiscoveryPolicy.officialSite("prime", "https://www.primevideo.com/detail/0ABC123"), "Official Prime URL");
        check(!DiscoveryPolicy.officialSite("prime", "https://www.primevideo.com/detail/"), "Prime detail root is not a title");
        check(!DiscoveryPolicy.officialSite("prime", "https://www.primevideo.com/detail/../account"), "Reject title path traversal");
        check(!DiscoveryPolicy.officialSite("prime", "https://www.primevideo.com:8443/detail/0ABC123"), "Reject unusual URL ports");
        check(DiscoveryPolicy.image("https://static.tvmaze.com/uploads/images/original_untouched/1/2.jpg"), "TVmaze image CDN");
        check(!DiscoveryPolicy.image("https://static.tvmaze.com.evil.example/uploads/images/1.jpg"), "Reject untrusted artwork host");
        check(DiscoveryPolicy.source("https://www.tvmaze.com/shows/1/title"), "Source attribution link");
        check(!DiscoveryPolicy.source("https://www.tvmaze.com/redirect?url=https://evil.example"), "Reject source redirects");

        long now = 1_800_000_000_000L;
        check(DiscoveryPolicy.usableCache(now - DiscoveryPolicy.CACHE_MS, now), "Stale-while-revalidate cache remains usable");
        check(!DiscoveryPolicy.usableCache(now - DiscoveryPolicy.MAX_STALE_MS - 1, now), "Expired stale cache cannot live forever");
        check(!DiscoveryPolicy.usableCache(now + 1, now), "Clock rollback cannot preserve a future cache forever");
        check(!DiscoveryPolicy.usableCache(0, now), "Missing cache is not valid");
        System.out.println("PASS DiscoveryPolicy: service attribution, row precedence, deep-link isolation and cache expiry");
    }
}
