package com.sid.tvos;

import java.util.Arrays;

/** Host-Java checks for published index boundaries, sparse histories and stale display behaviour. */
public final class LocalPolicyTest {
    private static int checks;
    private static void require(boolean condition, String label) {
        checks++;
        if (!condition) throw new AssertionError(label);
    }
    public static void main(String[] args) {
        int[] at30 = {30, 50, 40, 40, 1, 50};
        int[] at60 = {60, 100, 80, 80, 2, 100};
        for (int p = 0; p < at30.length; p++) {
            require(IndianAqi.subIndex(p, at30[p]) == 50, "Good boundary " + p);
            require(IndianAqi.subIndex(p, at60[p]) == 100, "Satisfactory boundary " + p);
            require(IndianAqi.subIndex(p, -1) == -1, "Negative concentration " + p);
            require(IndianAqi.subIndex(p, Double.NaN) == -1, "Missing concentration " + p);
        }
        require(IndianAqi.subIndex(0, 15) == 25, "PM2.5 interpolation");
        require(IndianAqi.subIndex(0, 251) == 401, "Severe lower bound");
        require(IndianAqi.subIndex(6, 10) == -1, "Invalid pollutant");
        long now = 1_800_000_000_000L / 3_600_000L * 3_600_000L;
        long[] times = new long[24];
        double[][] values = new double[6][24];
        for (int i = 0; i < 24; i++) times[i] = now - (23L - i) * 3_600_000L;
        Arrays.fill(values[0], 60); Arrays.fill(values[1], 50);
        Arrays.fill(values[2], 40); Arrays.fill(values[3], 40);
        Arrays.fill(values[4], 1000); Arrays.fill(values[5], 50);
        IndianAqi.Result result = IndianAqi.calculate(times, values, now);
        require(result != null && result.value == 100 && result.at == now, "Worst sub-index is result");
        double[][] fewer = values.clone();
        for (int p = 2; p < 6; p++) fewer[p] = null;
        require(IndianAqi.calculate(times, fewer, now) == null, "Requires three pollutants");
        double[][] noParticles = values.clone(); noParticles[0] = null; noParticles[1] = null;
        require(IndianAqi.calculate(times, noParticles, now) == null, "Requires particulate pollutant");
        require(IndianAqi.calculate(times, values, now + 2 * 3_600_000L) == null, "Reject stale hourly samples");
        long[] duplicate = times.clone(); duplicate[1] = duplicate[0];
        require(IndianAqi.calculate(duplicate, values, now) == null, "Reject duplicate hours");
        long[] fractional = times.clone(); fractional[0]++;
        require(IndianAqi.calculate(fractional, values, now) == null, "Reject partial-hour timestamps");
        double[][] sparse = new double[6][24];
        for (double[] row : sparse) { Arrays.fill(row, Double.NaN); for (int i = 9; i < 24; i++) row[i] = 1; }
        require(IndianAqi.calculate(times, sparse, now) == null, "Requires sixteen valid hours");
        Arrays.fill(values[0], 1); Arrays.fill(values[4], 2000);
        require(IndianAqi.calculate(times, values, now).value == 100, "CO converted from micrograms to milligrams");
        Arrays.fill(values[4], 0); values[5][23] = 800;
        require(IndianAqi.calculate(times, values, now).value == 401, "Ozone one-hour severe concentration preserved");
        require(LocalStatusPolicy.usable(now - LocalStatusPolicy.HOUR, now), "One hour cache retained");
        require(!LocalStatusPolicy.stale(now - LocalStatusPolicy.HOUR, now), "One hour cache fresh");
        require(LocalStatusPolicy.stale(now - 2 * LocalStatusPolicy.HOUR, now), "Two hour cache visibly stale");
        require(!LocalStatusPolicy.usable(now - 24 * LocalStatusPolicy.HOUR, now), "Day-old cache unavailable");
        require(!LocalStatusPolicy.usable(now + LocalStatusPolicy.HOUR, now), "Reject future cache after clock reset");
        require(!LocalStatusPolicy.usable(0, now), "Never show missing as fresh");
        require(LocalStatusPolicy.aqiText(401).equals(">400"), "Severe lower-bound display");
        require(LocalStatusPolicy.aqiText(-1).equals("—"), "Missing AQI display");
        require(LocalStatusPolicy.coordinates(28.6139, 77.2090), "Delhi coordinates");
        require(!LocalStatusPolicy.coordinates(Double.NaN, 77), "Reject invalid latitude");
        require(!LocalStatusPolicy.coordinates(28, 181), "Reject invalid longitude");
        require(LocalStatusPolicy.refreshDue(0, 0, now), "Initial fetch");
        require(!LocalStatusPolicy.refreshDue(now - 1000, 0, now), "Failure retry bounded");
        require(!LocalStatusPolicy.refreshDue(now - 10 * LocalStatusPolicy.MINUTE, now - 10 * LocalStatusPolicy.MINUTE, now), "Fresh cache avoids fetch");
        require(LocalStatusPolicy.refreshDue(now + LocalStatusPolicy.HOUR, now, now), "Clock correction retries");
        System.out.println("PASS local status: " + checks + " checks");
    }
}
