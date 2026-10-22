package com.sid.tvos;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/** Local status and defaults layered over the preserved tvOS UI. No extra permissions or API keys. */
public final class LocalFeatures {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ExecutorService NETWORK = Executors.newSingleThreadExecutor();
    private static final AtomicBoolean LOADING = new AtomicBoolean();
    private static final Map<Activity, State> ACTIVE = new HashMap<>();
    private static final String CACHE = "local_features";
    private static final int MAX_BYTES = 1024 * 1024;
    private static final String TAG = "local-delhi-status";
    private LocalFeatures() {}

    /** Seed missing defaults only; explicit manual/automatic location and theme choices win. */
    public static void init(Context context) {
        SharedPreferences weather = context.getSharedPreferences("weather", Context.MODE_PRIVATE);
        if (!weather.contains("lat") && !weather.contains("lon")) {
            SharedPreferences.Editor edit = weather.edit().putFloat("lat", 28.6139f)
                    .putFloat("lon", 77.2090f).putString("city", "Delhi");
            if (!weather.contains("manual")) edit.putBoolean("manual", true);
            edit.apply();
        }
        SharedPreferences appearance = context.getSharedPreferences("appearance", Context.MODE_PRIVATE);
        if (!appearance.contains("dark_schedule")) {
            appearance.edit().putInt("dark_schedule", 1).apply();
        }
    }

    public static void onResume(Activity activity) {
        init(activity);
        onPause(activity);
        // Native implementation already respects sunrise/sunset, custom times and a manual override hold.
        try {
            Class<?> schedule = Class.forName("com.sid.tvos.DarkSchedule");
            Method apply = schedule.getDeclaredMethod("apply", Context.class);
            apply.setAccessible(true);
            if (Boolean.TRUE.equals(apply.invoke(null, activity))) {
                Method redraw = activity.getClass().getDeclaredMethod("applyDark");
                redraw.setAccessible(true);
                redraw.invoke(activity);
            }
        } catch (ReflectiveOperationException ignored) {
            // The original minute tick remains responsible for native theme updates.
        }
        View content = activity.findViewById(android.R.id.content);
        if (!(content instanceof FrameLayout)) return;
        FrameLayout host = (FrameLayout) content;
        // The native root's later children are modal panels. Insert below those panels.
        if (host.getChildCount() > 0 && host.getChildAt(0) instanceof FrameLayout)
            host = (FrameLayout) host.getChildAt(0);
        TextView chip = new TextView(activity);
        chip.setTag(TAG);
        chip.setFocusable(false);
        chip.setFocusableInTouchMode(false);
        chip.setClickable(false);
        chip.setTextSize(12);
        chip.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        chip.setSingleLine(true);
        chip.setEllipsize(TextUtils.TruncateAt.END);
        chip.setMaxWidth(dp(activity, 470));
        chip.setGravity(Gravity.CENTER_VERTICAL);
        chip.setPadding(dp(activity, 12), dp(activity, 7), dp(activity, 12), dp(activity, 7));
        FrameLayout.LayoutParams layout = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT,
                Gravity.TOP | Gravity.START);
        layout.leftMargin = dp(activity, 45);
        // Align with the native status clock; the shelf heading starts below this line.
        layout.topMargin = dp(activity, 24);
        int topId = activity.getResources().getIdentifier("topBar", "id", activity.getPackageName());
        View topBar = topId == 0 ? null : activity.findViewById(topId);
        int position = topBar == null ? host.getChildCount() : host.indexOfChild(topBar) + 1;
        host.addView(chip, position < 0 ? host.getChildCount() : position, layout);
        State state = new State(activity, chip);
        ACTIVE.put(activity, state);
        state.run();
    }

    public static void onPause(Activity activity) {
        State state = ACTIVE.remove(activity);
        if (state == null) return;
        MAIN.removeCallbacks(state);
        if (state.chip.getParent() instanceof android.view.ViewGroup)
            ((android.view.ViewGroup) state.chip.getParent()).removeView(state.chip);
    }

    /** Refresh using the location already configured in the launcher's existing Weather settings. */
    public static void refresh(Context context) {
        final Context app = context.getApplicationContext();
        final SharedPreferences weather = app.getSharedPreferences("weather", Context.MODE_PRIVATE);
        final double lat = weather.getFloat("lat", 28.6139f), lon = weather.getFloat("lon", 77.2090f);
        if (!LocalStatusPolicy.coordinates(lat, lon)) return;
        final String key = LocalStatusPolicy.locationKey(lat, lon);
        final SharedPreferences cache = app.getSharedPreferences(CACHE, Context.MODE_PRIVATE);
        long now = System.currentTimeMillis();
        boolean same = key.equals(cache.getString("location", ""));
        long attempt = same ? cache.getLong("attempt", 0) : 0;
        long success = same ? cache.getLong("success", 0) : 0;
        if (!LocalStatusPolicy.refreshDue(attempt, success, now) || !LOADING.compareAndSet(false, true)) return;
        // Drop old-location values immediately, including when the new network request fails.
        if (!same) cache.edit().clear().putString("location", key).putLong("attempt", now).apply();
        else cache.edit().putLong("attempt", now).apply();
        NETWORK.execute(new Runnable() {
            @Override public void run() {
                boolean changed = false;
                try {
                    String query = String.format(Locale.US, "latitude=%.4f&longitude=%.4f", lat, lon);
                    try {
                        JSONObject current = new JSONObject(get("https://api.open-meteo.com/v1/forecast?" + query
                                + "&current=temperature_2m&forecast_days=1&timeformat=unixtime&timezone=UTC"))
                                .getJSONObject("current");
                        double temperature = current.getDouble("temperature_2m");
                        long at = current.getLong("time") * 1000L;
                        if (!Double.isNaN(temperature) && !Double.isInfinite(temperature)
                                && temperature >= -100 && temperature <= 70
                                && LocalStatusPolicy.usable(at, System.currentTimeMillis())) {
                            cache.edit().putInt("temperature", (int) Math.round(temperature)).putLong("weather_at", at).apply();
                            changed = true;
                        }
                    } catch (Exception ignored) { /* Keep a visibly stale, bounded cache if offline. */ }
                    try {
                        JSONObject air = new JSONObject(get("https://air-quality-api.open-meteo.com/v1/air-quality?" + query
                                + "&hourly=pm2_5,pm10,nitrogen_dioxide,sulphur_dioxide,carbon_monoxide,ozone"
                                + "&past_days=2&forecast_days=1&timeformat=unixtime&timezone=UTC"));
                        JSONObject hourly = air.getJSONObject("hourly");
                        JSONArray ts = hourly.getJSONArray("time");
                        if (ts.length() > 96) throw new IOException("Unexpected hourly sample count");
                        long[] times = new long[ts.length()];
                        for (int i = 0; i < times.length; i++) times[i] = ts.getLong(i) * 1000L;
                        double[][] values = new double[IndianAqi.POLLUTANTS.length][times.length];
                        for (int p = 0; p < values.length; p++) {
                            JSONArray row = hourly.optJSONArray(IndianAqi.POLLUTANTS[p]);
                            for (int i = 0; i < times.length; i++)
                                values[p][i] = row == null ? Double.NaN : row.optDouble(i, Double.NaN);
                        }
                        IndianAqi.Result result = IndianAqi.calculate(times, values, System.currentTimeMillis());
                        if (result != null) {
                            cache.edit().putInt("aqi", result.value).putLong("aqi_at", result.at).apply();
                            changed = true;
                        }
                    } catch (Exception ignored) { /* Never turn missing pollutants into zero AQI. */ }
                    // A partial success should not postpone retrying a failed independent data source.
                    if (changed && cache.contains("temperature") && cache.contains("aqi")
                            && !LocalStatusPolicy.stale(cache.getLong("weather_at", 0), System.currentTimeMillis())
                            && !LocalStatusPolicy.stale(cache.getLong("aqi_at", 0), System.currentTimeMillis()))
                        cache.edit().putLong("success", System.currentTimeMillis()).apply();
                } finally {
                    LOADING.set(false);
                    MAIN.post(new Runnable() {
                        @Override public void run() {
                            for (State state : ACTIVE.values()) state.render();
                        }
                    });
                }
            }
        });
    }

    private static String get(String address) throws IOException {
        HttpURLConnection connection = (HttpURLConnection) new URL(address).openConnection();
        connection.setConnectTimeout(7000);
        connection.setReadTimeout(7000);
        connection.setInstanceFollowRedirects(false);
        connection.setRequestProperty("User-Agent", "Yash-TV-Launcher/1 local-status");
        long deadline = System.nanoTime() + 20_000_000_000L;
        try {
            if (connection.getResponseCode() != 200) throw new IOException("Weather service unavailable");
            int length = connection.getContentLength();
            if (length > MAX_BYTES) throw new IOException("Weather response too large");
            try (InputStream input = connection.getInputStream(); ByteArrayOutputStream bytes = new ByteArrayOutputStream()) {
                byte[] buffer = new byte[4096];
                int count;
                while ((count = input.read(buffer)) != -1) {
                    if (System.nanoTime() > deadline) throw new IOException("Weather response deadline exceeded");
                    if (bytes.size() + count > MAX_BYTES) throw new IOException("Weather response too large");
                    bytes.write(buffer, 0, count);
                }
                return bytes.toString("UTF-8");
            }
        } finally { connection.disconnect(); }
    }

    private static int dp(Context context, int value) {
        return Math.round(value * context.getResources().getDisplayMetrics().density);
    }

    private static final class State implements Runnable {
        final WeakReference<Activity> activity;
        final TextView chip;
        final SimpleDateFormat clock = new SimpleDateFormat("h:mm a", Locale.ENGLISH);
        State(Activity activity, TextView chip) {
            this.activity = new WeakReference<>(activity);
            this.chip = chip;
            clock.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
        }
        @Override public void run() {
            Activity current = activity.get();
            if (current == null || current.isFinishing()) return;
            render();
            refresh(current);
            MAIN.postDelayed(this, 30_000L);
        }
        void render() {
            Activity current = activity.get();
            if (current == null) return;
            SharedPreferences appearance = current.getSharedPreferences("appearance", Context.MODE_PRIVATE);
            SharedPreferences location = current.getSharedPreferences("weather", Context.MODE_PRIVATE);
            SharedPreferences cache = current.getSharedPreferences(CACHE, Context.MODE_PRIVATE);
            long now = System.currentTimeMillis();
            String city = location.getString("city", "Delhi");
            if (city == null || city.trim().isEmpty()) city = "Location";
            String key = LocalStatusPolicy.locationKey(location.getFloat("lat", 28.6139f), location.getFloat("lon", 77.2090f));
            boolean same = key.equals(cache.getString("location", ""));
            long weatherAt = same ? cache.getLong("weather_at", 0) : 0;
            long aqiAt = same ? cache.getLong("aqi_at", 0) : 0;
            String temperature = LocalStatusPolicy.usable(weatherAt, now) && cache.contains("temperature")
                    ? cache.getInt("temperature", 0) + "°C" + (LocalStatusPolicy.stale(weatherAt, now) ? " (stale)" : "") : "—°C";
            String aqi = LocalStatusPolicy.usable(aqiAt, now) && cache.contains("aqi")
                    ? LocalStatusPolicy.aqiText(cache.getInt("aqi", -1)) + (LocalStatusPolicy.stale(aqiAt, now) ? " (stale)" : "") : "—";
            chip.setText(city + "  " + temperature + "   ·   AQI(IN est.) " + aqi
                    + "   ·   " + clock.format(new Date(now)) + " IST");
            chip.setContentDescription("Local weather and estimated Indian AQI. " + chip.getText()
                    + ". Modelled Open-Meteo/CAMS data, not an official monitoring-station reading.");
            boolean dark = appearance.getBoolean("dark", false);
            chip.setTextColor(dark ? Color.WHITE : Color.rgb(28, 28, 30));
            GradientDrawable background = new GradientDrawable();
            background.setColor(dark ? 0xCC25252A : 0xDDEFEFF4);
            background.setCornerRadius(dp(current, 18));
            chip.setBackground(background);
            chip.setVisibility(appearance.getBoolean("show_weather_pill", true) ? View.VISIBLE : View.GONE);
            // Native UI's left weather pill otherwise duplicates this line when CW is switched off.
            int id = current.getResources().getIdentifier("weatherPill", "id", current.getPackageName());
            View nativePill = id == 0 ? null : current.findViewById(id);
            if (nativePill != null) nativePill.setVisibility(View.GONE);
        }
    }
}
