package com.sid.tvos;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/** The original dock defaults name Google TV packages that do not exist on Fire TV. */
final class FavouriteDefaults {
    private static final String[][] FAMILIES = {
        {"com.netflix.ninja"},
        {"com.amazon.firebat", "com.amazon.amazonvideo.livingroom"},
        {"com.amazon.firetv.youtube", "com.google.android.youtube.tv"},
        {"in.startv.hotstar"},
        {"com.crunchyroll.crunchyroid"}
    };
    static void apply(Context context) {
        SharedPreferences prefs = context.getSharedPreferences("favorites", 0);
        if (prefs.getBoolean("yash_defaults_checked", false)) return;
        String previous = prefs.getString("order", null);
        boolean valid = false;
        if (previous != null) for (String pkg : previous.split(",")) if (launchable(context,pkg)) valid = true;
        SharedPreferences.Editor edit = prefs.edit().putBoolean("yash_defaults_checked", true);
        // An explicit empty dock is a user choice. Only migrate missing or wholly unavailable defaults.
        if (previous == null || !previous.isEmpty() && !valid) {
            List<String> defaults = new ArrayList<>();
            for (String[] family : FAMILIES) for (String pkg : family) if (launchable(context,pkg)) {
                defaults.add(pkg); break;
            }
            edit.putString("order", TextUtils.join(",", defaults));
        }
        edit.apply();
    }
    private static boolean launchable(Context context,String pkg) {
        if (pkg.isEmpty()) return false;
        return context.getPackageManager().getLeanbackLaunchIntentForPackage(pkg) != null
            || context.getPackageManager().getLaunchIntentForPackage(pkg) != null;
    }
}
