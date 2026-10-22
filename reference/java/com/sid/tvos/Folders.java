package com.sid.tvos;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class Folders {
    public static void delete(Context context, String str) {
        LinkedHashMap<String, List<String>> linkedHashMapLoad = load(context);
        linkedHashMapLoad.remove(str);
        save(context, linkedHashMapLoad);
    }

    private static void dropEmpty(Map<String, List<String>> map) {
        Iterator<List<String>> it = map.values().iterator();
        while (it.hasNext()) {
            if (it.next().isEmpty()) {
                it.remove();
            }
        }
    }

    public static LinkedHashMap<String, List<String>> load(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("folders", 0);
        if (sharedPreferences.getBoolean("seeded", false)) {
            LinkedHashMap<String, List<String>> linkedHashMap = new LinkedHashMap<>();
            try {
                JSONArray jSONArray = new JSONArray(sharedPreferences.getString("json", "[]"));
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    JSONArray jSONArray2 = jSONObject.getJSONArray("apps");
                    ArrayList arrayList = new ArrayList();
                    for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                        arrayList.add(jSONArray2.getString(i3));
                    }
                    linkedHashMap.put(jSONObject.getString("name"), arrayList);
                }
            } catch (Exception unused) {
            }
            return linkedHashMap;
        }
        LinkedHashMap<String, List<String>> linkedHashMap2 = new LinkedHashMap<>();
        for (String str : context.getResources().getStringArray(R.array.default_folders)) {
            String[] strArrSplit = str.split("\\|", 2);
            if (strArrSplit.length == 2) {
                ArrayList arrayList2 = new ArrayList();
                for (String str2 : strArrSplit[1].split(",")) {
                    if (!str2.trim().isEmpty()) {
                        arrayList2.add(str2.trim());
                    }
                }
                linkedHashMap2.put(strArrSplit[0].trim(), arrayList2);
            }
        }
        save(context, linkedHashMap2);
        sharedPreferences.edit().putBoolean("seeded", true).apply();
        return linkedHashMap2;
    }

    public static void moveTo(Context context, String str, String str2) {
        LinkedHashMap<String, List<String>> linkedHashMapLoad = load(context);
        Iterator<List<String>> it = linkedHashMapLoad.values().iterator();
        while (it.hasNext()) {
            it.next().remove(str);
        }
        List<String> arrayList = linkedHashMapLoad.get(str2);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            linkedHashMapLoad.put(str2, arrayList);
        }
        arrayList.add(str);
        dropEmpty(linkedHashMapLoad);
        save(context, linkedHashMapLoad);
    }

    public static void removeApp(Context context, String str) {
        LinkedHashMap<String, List<String>> linkedHashMapLoad = load(context);
        Iterator<List<String>> it = linkedHashMapLoad.values().iterator();
        while (it.hasNext()) {
            it.next().remove(str);
        }
        dropEmpty(linkedHashMapLoad);
        save(context, linkedHashMapLoad);
    }

    public static void rename(Context context, String str, String str2) {
        LinkedHashMap<String, List<String>> linkedHashMapLoad = load(context);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, List<String>> entry : linkedHashMapLoad.entrySet()) {
            linkedHashMap.put(entry.getKey().equals(str) ? str2 : entry.getKey(), entry.getValue());
        }
        save(context, linkedHashMap);
    }

    public static void save(Context context, Map<String, List<String>> map) {
        JSONArray jSONArray = new JSONArray();
        try {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("name", entry.getKey());
                jSONObject.put("apps", new JSONArray((Collection) entry.getValue()));
                jSONArray.put(jSONObject);
            }
        } catch (Exception unused) {
        }
        context.getSharedPreferences("folders", 0).edit().putString("json", jSONArray.toString()).apply();
    }
}
