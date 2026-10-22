package com.sid.tvos;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
abstract class DarkSchedule {
    public static boolean apply(Context context) {
        boolean zIsDark;
        if (mode(context) == 0) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        if (calendar.getTimeInMillis() < prefs(context).getLong("dark_hold_until", 0L) || (zIsDark = isDark(context, calendar)) == Appearance.dark(context)) {
            return false;
        }
        Appearance.setDark(context, zIsDark);
        return true;
    }

    public static int customOff(Context context) {
        return prefs(context).getInt("dark_off_min", 420);
    }

    public static int customOn(Context context) {
        return prefs(context).getInt("dark_on_min", 1320);
    }

    public static void holdManual(Context context) {
        if (mode(context) == 0) {
            return;
        }
        prefs(context).edit().putLong("dark_hold_until", next(context, Calendar.getInstance())).apply();
    }

    private static boolean isDark(Context context, Calendar calendar) {
        int[] iArrWindow = window(context, calendar);
        int i2 = calendar.get(12) + (calendar.get(11) * 60);
        int i3 = iArrWindow[0];
        int i4 = iArrWindow[1];
        if (i3 <= i4) {
            if (i2 < i3 || i2 >= i4) {
                return false;
            }
        } else if (i2 < i3 && i2 >= i4) {
            return false;
        }
        return true;
    }

    public static int mode(Context context) {
        return prefs(context).getInt("dark_schedule", 0);
    }

    private static long next(Context context, Calendar calendar) {
        boolean zIsDark = isDark(context, calendar);
        Calendar calendar2 = (Calendar) calendar.clone();
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        for (int i2 = 0; i2 < 2880; i2++) {
            calendar2.add(12, 1);
            if (isDark(context, calendar2) != zIsDark) {
                return calendar2.getTimeInMillis();
            }
        }
        return calendar.getTimeInMillis() + 86400000;
    }

    private static double norm(double d2, double d3) {
        double d4 = d2 % d3;
        return d4 < 0.0d ? d4 + d3 : d4;
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences("appearance", 0);
    }

    public static void setCustom(Context context, int i2, int i3) {
        prefs(context).edit().putInt("dark_on_min", i2).putInt("dark_off_min", i3).remove("dark_hold_until").apply();
    }

    public static void setMode(Context context, int i2) {
        prefs(context).edit().putInt("dark_schedule", i2).remove("dark_hold_until").apply();
    }

    private static double sin(double d2) {
        return Math.sin(Math.toRadians(d2));
    }

    public static int sun(Calendar calendar, double d2, double d3, boolean z2) {
        double d4 = d3 / 15.0d;
        double d5 = ((((double) (z2 ? 6 : 18)) - d4) / 24.0d) + ((double) calendar.get(6));
        double d6 = (0.9856d * d5) - 3.289d;
        double dNorm = norm((sin(d6 * 2.0d) * 0.02d) + (sin(d6) * 1.916d) + d6 + 282.634d, 360.0d);
        double dNorm2 = norm(Math.toDegrees(Math.atan(Math.tan(Math.toRadians(dNorm)) * 0.91764d)), 360.0d);
        double dFloor = (((Math.floor(dNorm / 90.0d) * 90.0d) + dNorm2) - (Math.floor(dNorm2 / 90.0d) * 90.0d)) / 15.0d;
        double dSin = sin(dNorm) * 0.39782d;
        double dCos = (Math.cos(Math.toRadians(90.833d)) - (dSin * sin(d2))) / (Math.cos(Math.toRadians(d2)) * Math.cos(Math.asin(dSin)));
        if (dCos > 1.0d || dCos < -1.0d) {
            return -1;
        }
        double dAcos = Math.acos(dCos);
        return ((int) Math.round(norm((((double) TimeZone.getDefault().getOffset(calendar.getTimeInMillis())) / 3600000.0d) + norm((((((z2 ? 360.0d - Math.toDegrees(dAcos) : Math.toDegrees(dAcos)) / 15.0d) + dFloor) - (d5 * 0.06571d)) - 6.622d) - d4, 24.0d), 24.0d) * 60.0d)) % 1440;
    }

    public static int[] window(Context context, Calendar calendar) {
        if (mode(context) == 2) {
            return new int[]{customOn(context), customOff(context)};
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("weather", 0);
        if (!sharedPreferences.contains("lat")) {
            return new int[]{1110, 390};
        }
        double d2 = sharedPreferences.getFloat("lat", 0.0f);
        double d3 = sharedPreferences.getFloat("lon", 0.0f);
        int iSun = sun(calendar, d2, d3, false);
        int iSun2 = sun(calendar, d2, d3, true);
        return new int[]{iSun >= 0 ? iSun : 1110, iSun2 >= 0 ? iSun2 : 390};
    }
}
