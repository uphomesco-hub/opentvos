package com.sid.tvos;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.view.KeyEvent;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
abstract class Remaps {
    static volatile boolean capturing;
    static volatile CaptureListener onCaptured;

    public interface CaptureListener {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:18:0x0047  */
    public static String actionName(Context context, String str) {
        if (str == null) {
            return "";
        }
        if (str.startsWith("app:")) {
            String strSubstring = str.substring(4);
            try {
                PackageManager packageManager = context.getPackageManager();
                return context.getString(R.string.remap_open_app, packageManager.getApplicationLabel(packageManager.getApplicationInfo(strSubstring, 0)));
            } catch (Exception unused) {
                return strSubstring;
            }
        }
        if (str.startsWith("launcher:")) {
            return LauncherActions.name(context, str.substring(9));
        }
        switch (str) {
            case "playpause":
                return context.getString(R.string.remap_playpause);
            case "back":
                return context.getString(R.string.remap_back);
            case "home":
                return context.getString(R.string.remap_home);
            case "mute":
                return context.getString(R.string.remap_mute);
            case "recents":
                return context.getString(R.string.remap_recents);
            case "settings":
                return context.getString(R.string.settings);
            default:
                return context.getString(R.string.remap_none);
        }
    }

    public static Map<Integer, String> all(Context context) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, ?> entry : prefs(context).getAll().entrySet()) {
            if (entry.getKey().startsWith("k") && (entry.getValue() instanceof String)) {
                try {
                    treeMap.put(Integer.valueOf(Integer.parseInt(entry.getKey().substring(1))), (String) entry.getValue());
                } catch (NumberFormatException unused) {
                }
            }
        }
        return treeMap;
    }

    public static boolean enableService(Context context) {
        if (serviceEnabled(context)) {
            return true;
        }
        if (context.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") != 0) {
            return false;
        }
        try {
            String strFlattenToString = new ComponentName(context, (Class<?>) RemapService.class).flattenToString();
            String string = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
            if (string != null && !string.isEmpty()) {
                strFlattenToString = string + ":" + strFlattenToString;
            }
            Settings.Secure.putString(context.getContentResolver(), "enabled_accessibility_services", strFlattenToString);
            Settings.Secure.putInt(context.getContentResolver(), "accessibility_enabled", 1);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean ensureServiceEnabled(Context context) {
        if (serviceEnabled(context)) {
            return true;
        }
        if (needed(context)) {
            return enableService(context);
        }
        return false;
    }

    public static String get(Context context, int i2) {
        return prefs(context).getString("k" + i2, null);
    }

    public static String keyName(int i2) {
        String strKeyCodeToString = KeyEvent.keyCodeToString(i2);
        if (strKeyCodeToString.startsWith("KEYCODE_")) {
            strKeyCodeToString = strKeyCodeToString.substring(8);
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strKeyCodeToString.split("_")) {
            if (!str.isEmpty()) {
                if (sb.length() > 0) {
                    sb.append(' ');
                }
                sb.append(str.charAt(0));
                sb.append(str.substring(1).toLowerCase());
            }
        }
        return sb.toString();
    }

    public static void kickIfStuck(Context context) {
        if (!RemapService.connected && needed(context) && serviceEnabled(context)) {
            try {
                PackageManager packageManager = context.getPackageManager();
                ComponentName componentName = new ComponentName(context, (Class<?>) RemapService.class);
                packageManager.setComponentEnabledSetting(componentName, 2, 1);
                packageManager.setComponentEnabledSetting(componentName, 0, 1);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean needed(Context context) {
        return (all(context).isEmpty() && RemapService.systemHomeIsUs(context)) ? false : true;
    }

    public static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences("remaps", 0);
    }

    public static void remove(Context context, int i2) {
        prefs(context).edit().remove("k" + i2).apply();
    }

    public static boolean reserved(int i2) {
        if (i2 == 4 || i2 == 26 || i2 == 66) {
            return true;
        }
        switch (i2) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return true;
            default:
                return false;
        }
    }

    public static boolean serviceEnabled(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
        String strFlattenToString = new ComponentName(context, (Class<?>) RemapService.class).flattenToString();
        if (string != null) {
            if (!string.contains(strFlattenToString)) {
                if (string.contains(context.getPackageName() + "/.RemapService")) {
                }
            }
            return true;
        }
        return false;
    }

    public static void set(Context context, int i2, String str) {
        prefs(context).edit().putString("k" + i2, str).apply();
    }
}
