package com.sid.tvos;

/** Pure validation and freshness policy for the local status chip. */
final class LocalStatusPolicy {
    static final long MINUTE = 60_000L;
    static final long HOUR = 60 * MINUTE;
    static final long REFRESH = 30 * MINUTE;
    static final long RETRY = 5 * MINUTE;
    static final long FRESH = 90 * MINUTE;
    static final long RETAIN = 24 * HOUR;

    static boolean coordinates(double lat, double lon) {
        return !Double.isNaN(lat) && !Double.isNaN(lon)
                && lat >= -90 && lat <= 90 && lon >= -180 && lon <= 180;
    }
    static String locationKey(double lat, double lon) {
        return String.format(java.util.Locale.US, "%.4f,%.4f", lat, lon);
    }
    static boolean usable(long at, long now) {
        return at > 0 && at <= now + 5 * MINUTE && now - at < RETAIN;
    }
    static boolean stale(long at, long now) {
        return !usable(at, now) || now - at >= FRESH;
    }
    static boolean refreshDue(long attempt, long success, long now) {
        if (attempt > now || success > now) return true; // clock corrected backwards
        return now - attempt >= RETRY && now - success >= REFRESH;
    }
    static String aqiText(int value) {
        return value > 400 ? ">400" : value >= 0 ? Integer.toString(value) : "—";
    }
}
