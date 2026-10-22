package com.sid.tvos;

import android.content.Context;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.TimeZone;

/** Runs the preserved APK's actual DarkSchedule with host-only preference adapters. */
public final class NativeThemeTest {
    private static int checks;
    private static void require(boolean condition, String label) {
        checks++;
        if (!condition) throw new AssertionError(label);
    }
    private static Calendar at(int hour, int minute) {
        Calendar value = Calendar.getInstance();
        value.set(2026, Calendar.OCTOBER, 22, hour, minute, 0);
        value.set(Calendar.MILLISECOND, 0);
        return value;
    }
    private static boolean dark(Context context, Calendar at) throws Exception {
        Method method = DarkSchedule.class.getDeclaredMethod("isDark", Context.class, Calendar.class);
        method.setAccessible(true);
        return (Boolean) method.invoke(null, context, at);
    }
    public static void main(String[] args) throws Exception {
        TimeZone previous = TimeZone.getDefault();
        try {
            TimeZone.setDefault(TimeZone.getTimeZone("Asia/Kolkata"));
            Context context = new Context();
            require(!DarkSchedule.apply(context), "Manual mode does not rewrite appearance");
            DarkSchedule.setMode(context, 2);
            DarkSchedule.setCustom(context, 22 * 60, 7 * 60);
            require(dark(context, at(22, 0)), "Night starts at boundary");
            require(dark(context, at(23, 59)), "Night before midnight");
            require(dark(context, at(0, 0)), "Night after midnight");
            require(dark(context, at(6, 59)), "Night before sunrise");
            require(!dark(context, at(7, 0)), "Day starts at boundary");
            require(!dark(context, at(14, 0)), "Daytime stays light");
            DarkSchedule.setCustom(context, 9 * 60, 17 * 60);
            require(!dark(context, at(8, 59)), "Nonwrapping interval before start");
            require(dark(context, at(9, 0)), "Nonwrapping interval starts inclusively");
            require(!dark(context, at(17, 0)), "Nonwrapping interval ends exclusively");
            context.getSharedPreferences("appearance", 0).edit().putLong("dark_hold_until", System.currentTimeMillis() + 3600000).apply();
            Appearance.setDark(context, !dark(context, Calendar.getInstance()));
            require(!DarkSchedule.apply(context), "Manual override hold honoured");
            DarkSchedule.setMode(context, 1);
            require(context.getSharedPreferences("appearance", 0).getLong("dark_hold_until", 0) == 0, "Changing schedule clears hold");
            context.getSharedPreferences("weather", 0).edit().putFloat("lat", 28.6139f).putFloat("lon", 77.2090f).apply();
            int[] window = DarkSchedule.window(context, at(12, 0));
            require(window[0] > 17 * 60 && window[0] < 19 * 60, "Delhi October sunset in evening IST");
            require(window[1] > 5 * 60 && window[1] < 7 * 60, "Delhi October sunrise in morning IST");
            require(dark(context, at(23, 0)), "Solar mode is dark at night");
            require(!dark(context, at(12, 0)), "Solar mode is light at midday");
            System.out.println("PASS preserved native theme: " + checks + " checks");
        } finally { TimeZone.setDefault(previous); }
    }
}
