package com.sid.tvos;

/** Adapted from the MIT-licensed Free My TV customisation (see THIRD_PARTY_NOTICES).
 * Indian AQI breakpoints applied to modelled concentrations; never an official station reading.
 * Reference: ies.gov.in/arthapedia/concept/national-air-quality-index.
 * Concentrations are in ug/m3; only CO is converted to mg/m3. */
final class IndianAqi {
    static final String[] POLLUTANTS = {"pm2_5", "pm10", "nitrogen_dioxide", "sulphur_dioxide", "carbon_monoxide", "ozone"};
    private static final double[][] LIMITS = {
        {0, 30, 60, 90, 120, 250}, {0, 50, 100, 250, 350, 430},
        {0, 40, 80, 180, 280, 400}, {0, 40, 80, 380, 800, 1600},
        {0, 1, 2, 10, 17, 34}, {0, 50, 100, 168, 208, 748}
    };
    private static final int[] INDEX = {0, 50, 100, 200, 300, 400};
    private static final long HOUR = 3_600_000L;

    static final class Result {
        final int value; // 401 means a lower bound (>400), not a fabricated severe-band number.
        final long at;
        Result(int value, long at) { this.value = value; this.at = at; }
    }

    static int subIndex(int pollutant, double concentration) {
        if (pollutant < 0 || pollutant >= POLLUTANTS.length || !valid(concentration)) return -1;
        double[] limits = LIMITS[pollutant];
        for (int i = 1; i < limits.length; i++) {
            if (concentration <= limits[i]) return (int) Math.round(INDEX[i - 1]
                    + (concentration - limits[i - 1]) * (INDEX[i] - INDEX[i - 1]) / (limits[i] - limits[i - 1]));
        }
        return 401;
    }

    static Result calculate(long[] times, double[][] values, long now) {
        if (times == null || values == null || values.length != POLLUTANTS.length) return null;
        long at = 0;
        for (int i = 0; i < times.length; i++) {
            if (times[i] % HOUR != 0) return null;
            if (i > 0 && times[i] <= times[i - 1]) return null;
            if (times[i] <= now) at = times[i];
        }
        if (at == 0 || now - at >= 2 * HOUR) return null;
        int available = 0, highest = -1;
        boolean particles = false;
        for (int p = 0; p < POLLUTANTS.length; p++) {
            if (values[p] == null || values[p].length != times.length) continue;
            // Require at least 16 valid hours even for the gases with an 8-hour average.
            if (count(times, values[p], at, 24) < 16) continue;
            int hours = p >= 4 ? 8 : 24;
            if (count(times, values[p], at, hours) < (hours == 8 ? 8 : 16)) continue;
            double mean = mean(times, values[p], at, hours);
            if (p == 4) mean /= 1000; // CO: ug/m3 -> mg/m3.
            int index;
            if (p == 5) {
                // Above 208 ug/m3, India's ozone bands use the one-hour concentration.
                index = subIndex(p, Math.min(208, mean));
                for (int i = 0; i < times.length; i++) if (times[i] == at && valid(values[p][i]) && values[p][i] > 208)
                    index = Math.max(index, subIndex(p, values[p][i]));
            } else index = subIndex(p, mean);
            available++;
            particles |= p < 2;
            highest = Math.max(highest, index);
        }
        return available >= 3 && particles ? new Result(highest, at) : null;
    }

    private static boolean valid(double value) { return !Double.isNaN(value) && !Double.isInfinite(value) && value >= 0; }
    private static int count(long[] times, double[] values, long at, int hours) {
        int count = 0;
        long previousHour = Long.MIN_VALUE;
        for (int i = 0; i < times.length; i++) if (times[i] > at - hours * HOUR && times[i] <= at && valid(values[i])) {
            long hour = times[i] / HOUR;
            if (hour != previousHour) count++;
            previousHour = hour;
        }
        return count;
    }
    private static double mean(long[] times, double[] values, long at, int hours) {
        double total = 0;
        int n = 0;
        for (int i = 0; i < times.length; i++) if (times[i] > at - hours * HOUR && times[i] <= at && valid(values[i])) {
            total += values[i];
            n++;
        }
        return total / n;
    }
}
