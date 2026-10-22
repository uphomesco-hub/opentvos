package com.sid.tvos;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
abstract class Appearance {
    static final float[] RECENT_WIDTH = {0.3f, 0.36f, 0.44f};
    static final int[] SB_COLOURS = {-10163, -10230082, -10827526, -36957, -855305};
    static final int[] ROW_ICON_COUNT = {4, 5, 6};
    static final int[] ROW_GAP_DP = {4, 8, 14};
    static final int[][] CW_DP = {new int[]{297, 167}, new int[]{352, 198}, new int[]{407, 229}};
    static final int[] CW_OFFSET_DP = {-30, 0, 30};
    static final int[] FAV_OFFSET_DP = {-40, 0, 10};

    public static int blur(Context context) {
        return context.getSharedPreferences("appearance", 0).getInt("blur", 6);
    }

    public static float blurScale(Context context) {
        return blur(context) / 6.0f;
    }

    public static boolean cwArt(Context context) {
        return CwBackground.mode(context) == 0;
    }

    public static boolean cwBlur(Context context) {
        return context.getSharedPreferences("appearance", 0).getBoolean("cw_blur", false);
    }

    public static int cwBlurLevel(Context context) {
        return context.getSharedPreferences("appearance", 0).getInt("cw_blur_level", 4);
    }

    public static boolean cwOn(Context context) {
        return context.getSharedPreferences("appearance", 0).getBoolean("cw_on", true);
    }

    public static boolean dark(Context context) {
        return context.getSharedPreferences("appearance", 0).getBoolean("dark", false);
    }

    public static String glass(Context context) {
        return context.getSharedPreferences("appearance", 0).getString("glass", "liquid");
    }

    public static boolean liquid(Context context) {
        return "liquid".equals(glass(context));
    }

    public static boolean recentRam(Context context) {
        return context.getSharedPreferences("appearance", 0).getBoolean("recent_ram", true);
    }

    public static int recentSize(Context context) {
        return context.getSharedPreferences("appearance", 0).getInt("recent_size", 1);
    }

    public static void setBlur(Context context, int i2) {
        context.getSharedPreferences("appearance", 0).edit().putInt("blur", Math.max(0, Math.min(10, i2))).apply();
    }

    public static void setCwArt(Context context, boolean z2) {
        context.getSharedPreferences("appearance", 0).edit().putBoolean("cw_art", z2).putInt("cw_bg", !z2 ? 1 : 0).apply();
    }

    public static void setCwBlur(Context context, boolean z2) {
        context.getSharedPreferences("appearance", 0).edit().putBoolean("cw_blur", z2).apply();
    }

    public static void setCwBlurLevel(Context context, int i2) {
        context.getSharedPreferences("appearance", 0).edit().putInt("cw_blur_level", Math.max(1, Math.min(10, i2))).apply();
    }

    public static void setCwOn(Context context, boolean z2) {
        context.getSharedPreferences("appearance", 0).edit().putBoolean("cw_on", z2).apply();
    }

    public static void setDark(Context context, boolean z2) {
        context.getSharedPreferences("appearance", 0).edit().putBoolean("dark", z2).apply();
    }

    public static void setGlass(Context context, String str) {
        context.getSharedPreferences("appearance", 0).edit().putString("glass", str).apply();
    }

    public static void setRecent(Context context, int i2, boolean z2) {
        context.getSharedPreferences("appearance", 0).edit().putInt("recent_size", i2).putBoolean("recent_ram", z2).apply();
    }

    public static void setShow(Context context, String str, boolean z2) {
        context.getSharedPreferences("appearance", 0).edit().putBoolean("show_" + str, z2).apply();
    }

    public static void setStandBy(Context context, String str, int i2) {
        context.getSharedPreferences("appearance", 0).edit().putInt(str, i2).apply();
    }

    public static void setStatusMinimal(Context context, boolean z2) {
        context.getSharedPreferences("appearance", 0).edit().putBoolean("status_minimal", z2).apply();
    }

    public static void setStep(Context context, String str, int i2) {
        context.getSharedPreferences("appearance", 0).edit().putInt(str, i2).apply();
    }

    public static boolean show(Context context, String str) {
        return context.getSharedPreferences("appearance", 0).getBoolean("show_" + str, true);
    }

    public static int standByColour(Context context) {
        return context.getSharedPreferences("appearance", 0).getInt("standby_colour", 0);
    }

    public static int standByLayout(Context context) {
        return context.getSharedPreferences("appearance", 0).getInt("standby_layout", 0);
    }

    public static int standByLeft(Context context) {
        return context.getSharedPreferences("appearance", 0).getInt("standby_left", 0);
    }

    public static int standByRight(Context context) {
        return context.getSharedPreferences("appearance", 0).getInt("standby_right", 4);
    }

    public static boolean statusMinimal(Context context) {
        return context.getSharedPreferences("appearance", 0).getBoolean("status_minimal", true);
    }

    public static int step(Context context, String str) {
        return context.getSharedPreferences("appearance", 0).getInt(str, 1);
    }
}
