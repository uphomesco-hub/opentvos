package com.sid.tvos;

import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class LauncherActions {
    static final String[] IDS = {"dark", "standby", "standby_style", "cc", "settings", "glass", "cw", "cw_art", "status", "icons"};
    private static final int[] NAMES = {R.string.la_dark, R.string.la_standby, R.string.la_standby_style, R.string.la_cc, R.string.la_settings, R.string.la_glass, R.string.la_cw, R.string.la_cw_art, R.string.la_status, R.string.la_icons};
    static final int[] ICONS = {R.drawable.ic_darkmode, R.drawable.ic_standby, R.drawable.ic_clock, R.drawable.ic_controls, R.drawable.ic_settings_gear, R.drawable.ic_glass, R.drawable.ic_cw, R.drawable.ic_poster, R.drawable.ic_statusbar, R.drawable.ic_iconpack};
    static final Set<String> pending = Collections.synchronizedSet(new LinkedHashSet());

    public static String name(Context context, String str) {
        int i2 = 0;
        while (true) {
            String[] strArr = IDS;
            if (i2 >= strArr.length) {
                return str;
            }
            if (strArr[i2].equals(str)) {
                return context.getString(NAMES[i2]);
            }
            i2++;
        }
    }

    public static void run(Context context, String str) {
        Intent intent;
        int i2;
        str.getClass();
        switch (str) {
            case "standby":
                intent = new Intent(context, (Class<?>) StandByActivity.class);
                i2 = 268435456;
                break;
            case "cc":
            case "settings":
                intent = new Intent(context, (Class<?>) MainActivity.class).putExtra("launcher_action", str);
                i2 = 805306368;
                break;
            default:
                String str2 = toggle(context, str);
                if (str2 == null) {
                    return;
                }
                Toast.makeText(context, str2, 0).show();
                MainActivity mainActivity = MainActivity.live;
                if (mainActivity == null || !mainActivity.isFront()) {
                    pending.add(str);
                    return;
                } else {
                    mainActivity.lambda$onResume$3(str);
                    return;
                }
        }
        context.startActivity(intent.addFlags(i2));
    }

    private static String toggle(Context context, String str) {
        boolean zCwArt;
        str.getClass();
        switch (str) {
            case "cw_art":
                zCwArt = true ^ Appearance.cwArt(context);
                Appearance.setCwArt(context, zCwArt);
                break;
            case "status":
                boolean zStatusMinimal = true ^ Appearance.statusMinimal(context);
                Appearance.setStatusMinimal(context, zStatusMinimal);
                StringBuilder sb = new StringBuilder();
                sb.append(name(context, str));
                sb.append(": ");
                sb.append(context.getString(zStatusMinimal ? R.string.status_minimal : R.string.status_full));
                return sb.toString();
            case "cw":
                zCwArt = true ^ Appearance.cwOn(context);
                Appearance.setCwOn(context, zCwArt);
                break;
            case "dark":
                zCwArt = true ^ Appearance.dark(context);
                Appearance.setDark(context, zCwArt);
                DarkSchedule.holdManual(context);
                break;
            case "glass":
                boolean zLiquid = true ^ Appearance.liquid(context);
                Appearance.setGlass(context, zLiquid ? "liquid" : "frosted");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(name(context, str));
                sb2.append(": ");
                sb2.append(context.getString(zLiquid ? R.string.glass_liquid : R.string.glass_frosted));
                return sb2.toString();
            case "icons":
                boolean zEquals = true ^ "tvos".equals(IconPack.current(context));
                IconPack.set(context, zEquals ? "tvos" : "original");
                StringBuilder sb3 = new StringBuilder();
                sb3.append(name(context, str));
                sb3.append(": ");
                sb3.append(context.getString(zEquals ? R.string.icons_tvos : R.string.icons_original));
                return sb3.toString();
            case "standby_style":
                String[] stringArray = context.getResources().getStringArray(R.array.standby_layouts);
                int iStandByLayout = (Appearance.standByLayout(context) + 1) % stringArray.length;
                Appearance.setStandBy(context, "standby_layout", iStandByLayout);
                return name(context, str) + ": " + stringArray[iStandByLayout];
            default:
                return null;
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(name(context, str));
        sb4.append(": ");
        sb4.append(context.getString(zCwArt ? R.string.state_on : R.string.state_off));
        return sb4.toString();
    }
}
