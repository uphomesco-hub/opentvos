package com.sid.tvos;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class Favorites {
    public static boolean add(Context context, String str, int i2) {
        List<String> listLoad = load(context);
        if (listLoad.contains(str)) {
            return true;
        }
        if (listLoad.size() >= i2) {
            return false;
        }
        listLoad.add(str);
        save(context, listLoad);
        return true;
    }

    public static List<String> load(Context context) {
        String string = context.getSharedPreferences("favorites", 0).getString("order", null);
        if (string == null) {
            ArrayList arrayList = new ArrayList(Arrays.asList(context.getResources().getStringArray(R.array.dock_apps)));
            save(context, arrayList);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str : string.split(",")) {
            if (!str.isEmpty()) {
                arrayList2.add(str);
            }
        }
        return arrayList2;
    }

    public static int move(Context context, String str, int i2) {
        List<String> listLoad = load(context);
        int iIndexOf = listLoad.indexOf(str);
        int i3 = i2 + iIndexOf;
        if (iIndexOf < 0 || i3 < 0 || i3 >= listLoad.size()) {
            return -1;
        }
        Collections.swap(listLoad, iIndexOf, i3);
        save(context, listLoad);
        return i3;
    }

    public static void remove(Context context, String str) {
        List<String> listLoad = load(context);
        if (listLoad.remove(str)) {
            save(context, listLoad);
        }
    }

    private static void save(Context context, List<String> list) {
        context.getSharedPreferences("favorites", 0).edit().putString("order", TextUtils.join(",", list)).apply();
    }
}
