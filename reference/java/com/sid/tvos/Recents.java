package com.sid.tvos;

import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class Recents {
    private static void addIfLaunchable(Context context, List<String> list, String str, int i2) {
        if (list.size() >= i2 || list.contains(str) || str.equals(context.getPackageName()) || context.getPackageManager().getLeanbackLaunchIntentForPackage(str) == null) {
            return;
        }
        list.add(str);
    }

    public static void dismiss(Context context, String str) {
        List<String> listHistory = history(context);
        listHistory.remove(str);
        prefs(context).edit().putString("order", TextUtils.join(",", listHistory)).putLong("closed_" + str, System.currentTimeMillis()).apply();
    }

    private static List<String> fromUsageStats(Context context) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT < 22) {
            return arrayList;
        }
        try {
            UsageStatsManager usageStatsManager = (UsageStatsManager) context.getSystemService("usagestats");
            if (usageStatsManager == null) {
                return arrayList;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            List<UsageStats> listQueryUsageStats = usageStatsManager.queryUsageStats(4, jCurrentTimeMillis - 604800000, jCurrentTimeMillis);
            if (listQueryUsageStats == null) {
                return arrayList;
            }
            ArrayList<UsageStats> arrayList2 = new ArrayList();
            SharedPreferences sharedPreferencesPrefs = prefs(context);
            for (UsageStats usageStats : listQueryUsageStats) {
                if (usageStats.getLastTimeUsed() > 0 && usageStats.getTotalTimeInForeground() > 0) {
                    if (usageStats.getLastTimeUsed() > sharedPreferencesPrefs.getLong("closed_" + usageStats.getPackageName(), 0L)) {
                        arrayList2.add(usageStats);
                    }
                }
            }
            Collections.sort(arrayList2, new g0());
            for (UsageStats usageStats2 : arrayList2) {
                if (!arrayList.contains(usageStats2.getPackageName())) {
                    arrayList.add(usageStats2.getPackageName());
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    private static List<String> history(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : prefs(context).getString("order", "").split(",")) {
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$fromUsageStats$0(UsageStats usageStats, UsageStats usageStats2) {
        return Long.compare(usageStats2.getLastTimeUsed(), usageStats.getLastTimeUsed());
    }

    public static List<String> list(Context context, int i2) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = fromUsageStats(context).iterator();
        while (it.hasNext()) {
            addIfLaunchable(context, arrayList, it.next(), i2);
        }
        Iterator<String> it2 = history(context).iterator();
        while (it2.hasNext()) {
            addIfLaunchable(context, arrayList, it2.next(), i2);
        }
        return arrayList;
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences("recents", 0);
    }

    public static void record(Context context, String str) {
        if (str == null) {
            return;
        }
        List<String> listHistory = history(context);
        listHistory.remove(str);
        listHistory.add(0, str);
        while (listHistory.size() > 12) {
            listHistory.remove(listHistory.size() - 1);
        }
        prefs(context).edit().putString("order", TextUtils.join(",", listHistory)).apply();
    }

    public static Intent showIntent(Context context) {
        return new Intent(context, (Class<?>) MainActivity.class).putExtra("show_recents", true).addFlags(805306368);
    }
}
