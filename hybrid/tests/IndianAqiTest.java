package io.freemytv;

import java.util.Arrays;

/** Run with javac/java; exercises the calculation without Android or network access. */
public final class IndianAqiTest {
    private static final long HOUR = 3_600_000L, NOW = 1_792_641_600_000L;
    private static int checks;
    private static void check(boolean ok, String message) {
        checks++;
        if (!ok) throw new AssertionError(message);
    }
    private static long[] times() {
        long[] t = new long[25];
        for (int i = 0; i < t.length; i++) t[i] = NOW - (23 - i) * HOUR;
        return t;
    }
    private static double[][] values() { return new double[6][25]; }
    private static void fill(double[][] v, int p, double n) { Arrays.fill(v[p], n); }
    private static int result(double[][] v) { return IndianAqi.calculate(times(), v, NOW).value; }
    public static void main(String[] args) {
        check(IndianAqi.subIndex(0, 45) == 75, "Government example: PM2.5 45 -> 75");
        check(IndianAqi.subIndex(0, 150) == 323, "Government example: PM2.5 150 -> 323");
        check(IndianAqi.subIndex(0, 30) == 50 && IndianAqi.subIndex(0, 60) == 100,
                "PM2.5 category boundaries");
        check(IndianAqi.subIndex(0, 250) == 400 && IndianAqi.subIndex(0, 251) == 401,
                "Severe range is reported as >400");
        double[][] v = values();
        check(result(v) == 0, "Zero concentrations are valid");
        fill(v, 0, 45); fill(v, 1, 300);
        check(result(v) == 250, "Highest sub-index, including PM10, wins");
        v = values(); fill(v, 0, 29); v[0][23] = 53; v[0][24] = 10000;
        check(result(v) == 50, "24-hour PM average; future extreme excluded");
        v = values();
        for (int i = 16; i < 24; i++) v[4][i] = 12000;
        check(result(v) == 229, "CO converts ug to mg and uses 8 hours, not 24");
        v = values(); v[5][23] = 400;
        check(result(v) == 336, "High ozone uses the 1-hour band");
        v = values(); fill(v, 0, Double.NaN); fill(v, 1, Double.NaN);
        check(IndianAqi.calculate(times(), v, NOW) == null, "Particles are required");
        v = values();
        for (int p = 2; p < 6; p++) fill(v, p, Double.NaN);
        check(IndianAqi.calculate(times(), v, NOW) == null, "At least 3 pollutants required");
        v = values();
        for (int p = 0; p < 6; p++) for (int i = 0; i < 9; i++) v[p][i] = Double.NaN;
        check(IndianAqi.calculate(times(), v, NOW) == null, "15 valid hours are insufficient");
        v = values();
        for (int p = 0; p < 6; p++) for (int i = 0; i < 8; i++) v[p][i] = Double.NaN;
        check(result(v) == 0, "16 valid hours are sufficient with complete 8-hour gases");
        long[] t = times(); t[1] = t[0];
        check(IndianAqi.calculate(t, values(), NOW) == null, "Duplicate hours rejected");
        check(IndianAqi.calculate(times(), values(), NOW + 3 * HOUR) == null, "Stale data rejected");
        check(IndianAqi.calculate(times(), values(), NOW - 25 * HOUR) == null, "Future-only data rejected");
        check(IndianAqi.subIndex(0, -1) == -1 && IndianAqi.subIndex(0, Double.NaN) == -1,
                "Invalid concentrations rejected");
        System.out.println(checks + " Indian AQI checks passed");
    }
}
