package com.sid.tvos;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class Weather {

    public interface Callback {
        void onWeather(int i2, int i3, boolean z2, String str);
    }

    public interface PlaceCallback {
    }

    public static String describe(int i2, boolean z2) {
        if (i2 == 0) {
            return z2 ? "Sunny" : "Clear";
        }
        if (i2 == 1) {
            return z2 ? "Mostly Sunny" : "Mostly Clear";
        }
        if (i2 == 2) {
            return "Partly Cloudy";
        }
        if (i2 == 3) {
            return "Cloudy";
        }
        if (i2 == 45 || i2 == 48) {
            return "Foggy";
        }
        if (i2 >= 51 && i2 <= 57) {
            return "Drizzle";
        }
        if ((i2 >= 61 && i2 <= 67) || (i2 >= 80 && i2 <= 82)) {
            return (i2 == 65 || i2 == 82) ? "Heavy Rain" : "Rain";
        }
        if ((i2 >= 71 && i2 <= 77) || i2 == 85 || i2 == 86) {
            return "Snow";
        }
        return i2 >= 95 ? "Thunderstorms" : "Cloudy";
    }

    private static String get(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(8000);
        httpURLConnection.setReadTimeout(8000);
        httpURLConnection.setRequestProperty("User-Agent", "tvos-launcher");
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[4096];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 <= 0) {
                        String string = byteArrayOutputStream.toString("UTF-8");
                        inputStream.close();
                        httpURLConnection.disconnect();
                        return string;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            httpURLConnection.disconnect();
            throw th3;
        }
    }

    public static int icon(int i2, boolean z2) {
        if (i2 == 0 || i2 == 1) {
            return z2 ? R.drawable.wx_sun : R.drawable.wx_moon;
        }
        if (i2 >= 95) {
            return R.drawable.wx_storm;
        }
        if ((i2 >= 71 && i2 <= 77) || i2 == 85 || i2 == 86) {
            return R.drawable.wx_snow;
        }
        return ((i2 < 51 || i2 > 67) && (i2 < 80 || i2 > 82)) ? R.drawable.wx_cloud : R.drawable.wx_rain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$load$1(SharedPreferences sharedPreferences, Handler handler, final Callback callback) {
        try {
            if (!sharedPreferences.getBoolean("manual", false) && System.currentTimeMillis() - sharedPreferences.getLong("locationAt", 0L) > 86400000) {
                JSONObject jSONObject = new JSONObject(get("https://ipapi.co/json/"));
                sharedPreferences.edit().putFloat("lat", (float) jSONObject.getDouble("latitude")).putFloat("lon", (float) jSONObject.getDouble("longitude")).putString("city", jSONObject.optString("city", "")).putLong("locationAt", System.currentTimeMillis()).apply();
            }
            JSONObject jSONObject2 = new JSONObject(get(String.format(Locale.US, "https://api.open-meteo.com/v1/forecast?latitude=%.3f&longitude=%.3f&current=temperature_2m,weather_code,is_day&daily=temperature_2m_max,temperature_2m_min&forecast_days=1&timezone=auto", Float.valueOf(sharedPreferences.getFloat("lat", 0.0f)), Float.valueOf(sharedPreferences.getFloat("lon", 0.0f)))));
            JSONObject jSONObject3 = jSONObject2.getJSONObject("current");
            final int iRound = (int) Math.round(jSONObject3.getDouble("temperature_2m"));
            final int i2 = jSONObject3.getInt("weather_code");
            final boolean z2 = jSONObject3.getInt("is_day") == 1;
            final String string = sharedPreferences.getString("city", "");
            SharedPreferences.Editor editorPutBoolean = sharedPreferences.edit().putInt("temp", iRound).putInt("code", i2).putBoolean("day", z2);
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("daily");
            if (jSONObjectOptJSONObject != null) {
                editorPutBoolean.putInt("high", (int) Math.round(jSONObjectOptJSONObject.getJSONArray("temperature_2m_max").getDouble(0))).putInt("low", (int) Math.round(jSONObjectOptJSONObject.getJSONArray("temperature_2m_min").getDouble(0)));
            }
            editorPutBoolean.apply();
            handler.post(new Runnable() { // from class: com.sid.tvos.i0
                @Override // java.lang.Runnable
                public final void run() {
                    callback.onWeather(iRound, i2, z2, string);
                }
            });
        } catch (Exception unused) {
            sharedPreferences.edit().putLong("weatherAt", 0L).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setManual$2(PlaceCallback placeCallback, String str) {
        ((F) placeCallback).a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setManual$3(String str, SharedPreferences sharedPreferences, Handler handler, PlaceCallback placeCallback) {
        String str2 = null;
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(get("https://geocoding-api.open-meteo.com/v1/search?count=1&language=en&format=json&name=" + URLEncoder.encode(str, "UTF-8"))).optJSONArray("results");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(0);
                String strOptString = jSONObject.optString("name", str);
                String strOptString2 = jSONObject.optString("admin1", jSONObject.optString("country", ""));
                sharedPreferences.edit().putBoolean("manual", true).putFloat("lat", (float) jSONObject.getDouble("latitude")).putFloat("lon", (float) jSONObject.getDouble("longitude")).putString("city", strOptString).putLong("weatherAt", 0L).apply();
                if (!strOptString2.isEmpty() && !strOptString2.equals(strOptString)) {
                    strOptString = strOptString + ", " + strOptString2;
                }
                str2 = strOptString;
            }
        } catch (Exception unused) {
        }
        handler.post(new a0(placeCallback, str2, 5));
    }

    public static void load(Context context, Callback callback) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("weather", 0);
        Handler handler = new Handler(Looper.getMainLooper());
        if (sharedPreferences.contains("temp")) {
            callback.onWeather(sharedPreferences.getInt("temp", 0), sharedPreferences.getInt("code", 0), sharedPreferences.getBoolean("day", true), sharedPreferences.getString("city", ""));
        }
        if (System.currentTimeMillis() - sharedPreferences.getLong("weatherAt", 0L) < 1800000) {
            return;
        }
        sharedPreferences.edit().putLong("weatherAt", System.currentTimeMillis()).apply();
        new Thread(new RunnableC0012m(sharedPreferences, handler, callback, 5), "weather").start();
    }

    public static String manualPlace(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("weather", 0);
        if (sharedPreferences.getBoolean("manual", false)) {
            return sharedPreferences.getString("city", "");
        }
        return null;
    }

    public static void setAutomatic(Context context) {
        context.getSharedPreferences("weather", 0).edit().putBoolean("manual", false).putLong("locationAt", 0L).putLong("weatherAt", 0L).apply();
    }

    public static void setManual(Context context, final String str, final PlaceCallback placeCallback) {
        final SharedPreferences sharedPreferences = context.getSharedPreferences("weather", 0);
        final Handler handler = new Handler(Looper.getMainLooper());
        new Thread(new Runnable() { // from class: com.sid.tvos.j0
            @Override // java.lang.Runnable
            public final void run() {
                Weather.lambda$setManual$3(str, sharedPreferences, handler, placeCallback);
            }
        }, "place").start();
    }
}
