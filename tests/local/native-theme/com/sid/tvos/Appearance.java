package com.sid.tvos;

import android.content.Context;

/** Host adapter with the original APK's exact dark preference key. */
abstract class Appearance {
    static boolean dark(Context context) { return context.getSharedPreferences("appearance", 0).getBoolean("dark", false); }
    static void setDark(Context context, boolean value) { context.getSharedPreferences("appearance", 0).edit().putBoolean("dark", value).apply(); }
}
