package com.sid.tvos;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.media.tv.TvContract;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
abstract class WatchNext {
    private static final String[] COLUMNS = {"package_name", "title", "episode_title", "season_display_number", "episode_display_number", "short_description", "poster_art_uri", "thumbnail_uri", "intent_uri", "last_playback_position_millis", "duration_millis", "browsable"};
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static Map<String, List<Item>> cached;
    private static long cachedAt;

    public interface Callback {
    }

    public static final class Item {
        String art;
        Intent intent;
        float progress;
        String section;
        String subtitle;
        String title;
    }

    private static void addChannelRows(Context context, Map<String, List<Item>> map) {
        String[] strArr = {"title", "short_description", "poster_art_uri", "thumbnail_uri", "intent_uri", "last_playback_position_millis", "duration_millis"};
        try {
            Cursor cursorQuery = context.getContentResolver().query(TvContract.Channels.CONTENT_URI, new String[]{"_id", "package_name", "display_name", "type"}, null, null, "_id");
            while (cursorQuery != null) {
                try {
                    if (!cursorQuery.moveToNext()) {
                        break;
                    }
                    String string = cursorQuery.getString(1);
                    if ("TYPE_PREVIEW".equals(cursorQuery.getString(3)) && string != null && !map.containsKey(string)) {
                        ArrayList arrayList = new ArrayList();
                        Cursor cursorQuery2 = context.getContentResolver().query(TvContract.buildPreviewProgramsUriForChannel(cursorQuery.getLong(0)), strArr, null, null, null);
                        while (cursorQuery2 != null) {
                            try {
                                if (!cursorQuery2.moveToNext() || arrayList.size() >= 15) {
                                    break;
                                }
                                Item item = new Item();
                                String string2 = cursorQuery2.getString(0);
                                item.title = string2;
                                if (string2 != null && !string2.isEmpty()) {
                                    item.subtitle = cursorQuery2.getString(1);
                                    item.art = cursorQuery2.getString(2) != null ? cursorQuery2.getString(2) : cursorQuery2.getString(3);
                                    long j = cursorQuery2.getLong(5);
                                    long j2 = cursorQuery2.getLong(6);
                                    item.progress = (j2 <= 0 || j <= 0) ? -1.0f : Math.min(100.0f, (j * 100.0f) / j2);
                                    item.section = cursorQuery.getString(2);
                                    String string3 = cursorQuery2.getString(4);
                                    if (string3 != null) {
                                        try {
                                            item.intent = Intent.parseUri(string3, 1);
                                        } catch (Exception unused) {
                                        }
                                    }
                                    arrayList.add(item);
                                }
                            } catch (Throwable th) {
                                try {
                                    cursorQuery2.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                    throw th;
                                }
                            }
                        }
                        if (cursorQuery2 != null) {
                            cursorQuery2.close();
                        }
                        if (!arrayList.isEmpty()) {
                            map.put(string, arrayList);
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        cursorQuery.close();
                        throw th3;
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                        throw th3;
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception unused2) {
        }
    }

    public static String[] bestArt(String str) {
        if (str == null) {
            return new String[0];
        }
        Matcher matcher = Pattern.compile("^(https?://image\\.tmdb\\.org/t/p/)w\\d+(/.*)$").matcher(str);
        if (matcher.matches()) {
            return new String[]{matcher.group(1) + "original" + matcher.group(2), str};
        }
        Matcher matcher2 = Pattern.compile("^(https?://i\\.ytimg\\.com/vi/[^/]+/)[a-z0-9_]+\\.jpg(\\?.*)?$").matcher(str);
        if (!matcher2.matches()) {
            return new String[]{str};
        }
        return new String[]{matcher2.group(1) + "maxresdefault.jpg", matcher2.group(1) + "hq720.jpg", str};
    }

    public static void invalidate() {
        cachedAt = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$load$0(Callback callback, Map map) {
        ((C0015p) callback).a(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$load$1(Context context, Callback callback) {
        Map<String, List<Item>> mapQuery = query(context);
        if (mapQuery == null) {
            cachedAt = 0L;
        } else {
            cached = mapQuery;
            MAIN.post(new a0(callback, mapQuery, 4));
        }
    }

    public static Map<String, List<Item>> load(Context context, Callback callback) {
        if (System.currentTimeMillis() - cachedAt > 60000) {
            cachedAt = System.currentTimeMillis();
            new Thread(new a0(context.getApplicationContext(), callback, 3), "watch-next").start();
        }
        return cached;
    }

    private static Map<String, List<Item>> query(Context context) {
        String string;
        String str;
        HashMap map = new HashMap();
        if (Build.VERSION.SDK_INT < 26) {
            return map;
        }
        try {
            Cursor cursorQuery = context.getContentResolver().query(TvContract.WatchNextPrograms.CONTENT_URI, COLUMNS, null, null, "last_engagement_time_utc_millis DESC");
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return map;
            }
            while (cursorQuery.moveToNext()) {
                try {
                    if (cursorQuery.getInt(11) != 0 && (string = cursorQuery.getString(0)) != null) {
                        Item item = new Item();
                        item.title = cursorQuery.getString(1);
                        String string2 = cursorQuery.getString(2);
                        String string3 = cursorQuery.getString(3);
                        String string4 = cursorQuery.getString(4);
                        if (string3 != null && string4 != null) {
                            Locale locale = Locale.US;
                            if (string2 == null || string2.isEmpty()) {
                                str = "";
                            } else {
                                str = " · " + string2;
                            }
                            string2 = "S" + string3 + " · E" + string4 + str;
                        } else if (string2 == null || string2.isEmpty()) {
                            string2 = cursorQuery.getString(5);
                        }
                        item.subtitle = string2;
                        String string5 = cursorQuery.getString(6);
                        String string6 = cursorQuery.getString(7);
                        if (string5 == null) {
                            string5 = string6;
                        }
                        item.art = string5;
                        long j = cursorQuery.getLong(9);
                        long j2 = cursorQuery.getLong(10);
                        item.progress = j2 > 0 ? Math.min(100.0f, (j * 100.0f) / j2) : -1.0f;
                        String string7 = cursorQuery.getString(8);
                        if (string7 != null) {
                            try {
                                item.intent = Intent.parseUri(string7, 1);
                            } catch (Exception unused) {
                            }
                        }
                        String str2 = item.title;
                        if (str2 != null && !str2.isEmpty()) {
                            List arrayList = (List) map.get(string);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                map.put(string, arrayList);
                            }
                            if (arrayList.size() < 15) {
                                arrayList.add(item);
                            }
                        }
                    }
                } catch (Throwable th) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            cursorQuery.close();
            addChannelRows(context, map);
            return map;
        } catch (SecurityException unused2) {
            return map;
        } catch (Exception unused3) {
            return null;
        }
    }
}
