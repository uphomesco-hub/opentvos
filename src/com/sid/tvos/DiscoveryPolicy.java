package com.sid.tvos;

import java.net.URI;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/** Pure validation and precedence rules for public discovery, never viewing history. */
public final class DiscoveryPolicy {
    public static final String NETFLIX = "netflix", PRIME = "prime";
    public static final int LIMIT = 15;
    public static final long CACHE_MS = 6 * 60 * 60 * 1000L;
    public static final long BACKOFF_MS = 30 * 60 * 1000L;
    public static final long MAX_STALE_MS = 7 * 24 * 60 * 60 * 1000L;
    private DiscoveryPolicy() {}

    public static String service(String channel) {
        if (channel == null) return null;
        String s = channel.trim().toLowerCase(Locale.ROOT);
        if (s.equals("netflix")) return NETFLIX;
        if (s.equals("amazon prime video") || s.equals("prime video")) return PRIME;
        return null;
    }

    /** Never overwrite an app's provider or locally observed playback items. */
    public static boolean mayFill(Map<?, ?> rows, String... packages) {
        if (rows == null) return true;
        for (String name : packages) {
            Object existing = rows.get(name);
            if (existing != null && (!(existing instanceof List) || !((List<?>) existing).isEmpty())) return false;
        }
        return true;
    }

    public static boolean usableCache(long fetchedAt, long now) {
        return fetchedAt > 0 && fetchedAt <= now && now - fetchedAt <= MAX_STALE_MS;
    }

    private static URI https(String value) {
        if (value == null || value.length() > 2000) return null;
        try {
            URI u = new URI(value);
            if (!"https".equalsIgnoreCase(u.getScheme()) || u.getHost() == null || u.getRawUserInfo() != null
                    || (u.getPort() != -1 && u.getPort() != 443)) return null;
            return u;
        } catch (Exception ignored) { return null; }
    }

    /** API-supplied official links are only opened inside the matching streaming package. */
    public static boolean officialSite(String service, String value) {
        URI u = https(value);
        if (u == null) return false;
        String host = u.getHost().toLowerCase(Locale.ROOT);
        String path = u.getPath();
        if (path == null || path.length() <= 1) return false;
        if (NETFLIX.equals(service)) {
            return (host.equals("netflix.com") || host.equals("www.netflix.com"))
                    && path.matches("/(?:[a-z]{2}(?:-[A-Z]{2})?/)?(?:title|watch)/[0-9]+/?");
        }
        if (!PRIME.equals(service) || !(host.equals("primevideo.com") || host.equals("www.primevideo.com")
                || host.equals("app.primevideo.com"))) return false;
        for (String segment : path.split("/")) if (segment.equals(".") || segment.equals("..")) return false;
        return path.matches("/(?:[a-z]{2}/)?detail/[^/]+(?:/[^/]+)*/?");
    }

    public static boolean image(String value) {
        URI u = https(value);
        return u != null && "static.tvmaze.com".equalsIgnoreCase(u.getHost())
                && u.getPath() != null && u.getPath().startsWith("/uploads/images/");
    }

    public static boolean source(String value) {
        URI u = https(value);
        return u != null && "www.tvmaze.com".equalsIgnoreCase(u.getHost())
                && u.getPath() != null && u.getPath().matches("/shows/[0-9]+(?:/[^/]*)?");
    }
}
