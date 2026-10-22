package com.sid.tvos;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.WeakHashMap;

/** Narrow hooks into the preserved renderer; no vendor permissions or Home changes. */
public final class FeatureBridge {
    private static int nextFocusVersion;
    private static final Map<Activity, Integer> focusVersions = new WeakHashMap<>();

    public static void initialize(Context context) {
        LocalFeatures.init(context);
        PlaybackHistory.init(context);
        Discovery.init(context);
    }

    public static void onResume(Activity activity) {
        initialize(activity);
        LocalFeatures.onResume(activity);
        WeakReference<Activity> weak = new WeakReference<>(activity);
        NotifListener.onChange = () -> {
            Activity current = weak.get();
            if (current == null || current.isFinishing()) return;
            try {
                Class<?> watch = Class.forName("com.sid.tvos.WatchNext");
                call(watch, null, "invalidate", new Class<?>[0]);
                int selected = (Integer) field(current.getClass(), "lastFocused").get(null);
                call(current.getClass(), current, "updateContinueWatching", new Class<?>[]{int.class}, selected);
            } catch (ReflectiveOperationException ignored) { }
        };
        NotifListener.onChange.run();
    }

    public static void onPause(Activity activity) {
        LocalFeatures.onPause(activity);
        focusVersions.remove(activity);
        NotifListener.onChange = null;
    }

    @SuppressWarnings("rawtypes")
    public static Map merge(Context context, Map provider) {
        return Discovery.merge(context, PlaybackHistory.merge(context, provider));
    }

    public static void appendSettings(Activity activity, Object panel) {
        try {
            int icon = activity.getResources().getIdentifier("ic_info", "drawable", activity.getPackageName());
            call(panel.getClass(), panel, "action",
                new Class<?>[]{int.class, String.class, String.class, Runnable.class},
                icon, "Yash TV features", "Viewing history and data sources",
                (Runnable) () -> activity.startActivity(new Intent(activity, FeatureSettingsActivity.class)));
        } catch (ReflectiveOperationException ignored) { }
    }

    public static void focusTile(Activity activity, int requested) {
        try {
            Object adapter = field(activity.getClass(), "adapter").get(activity);
            if (adapter == null) return;
            int count = (Integer) call(adapter.getClass(), adapter, "getItemCount", new Class<?>[0]);
            boolean[] usable = new boolean[count];
            for (int i = 0; i < count; i++) {
                Object entry = call(adapter.getClass(), adapter, "entryAt", new Class<?>[]{int.class}, i);
                usable[i] = entry != null && !(Boolean) call(entry.getClass(), entry, "isPlaceholder", new Class<?>[0]);
            }
            int selected = FocusPolicy.select(requested, usable);
            if (selected < 0) return;
            View grid = (View) field(activity.getClass(), "grid").get(activity);
            int version = ++nextFocusVersion;
            focusVersions.put(activity, version);
            requestTile(activity, grid, selected, version, 0);
        } catch (ReflectiveOperationException ignored) { }
    }

    private static void requestTile(Activity activity, View grid, int index, int version, int attempt) {
        if (activity.isFinishing() || activity.isDestroyed()
                || !Integer.valueOf(version).equals(focusVersions.get(activity))) return;
        try {
            Object holder = call(grid.getClass(), grid, "findViewHolderForAdapterPosition", new Class<?>[]{int.class}, index);
            if (holder != null) {
                View item = (View) field(holder.getClass(), "itemView").get(holder);
                int cardId = activity.getResources().getIdentifier("card", "id", activity.getPackageName());
                View card = item.findViewById(cardId);
                if (card != null && card.isShown() && card.isFocusable()) {
                    if (card.isFocused()) {
                        call(activity.getClass(), activity, "onTileFocused", new Class<?>[]{int.class, View.class}, index, card);
                        return;
                    }
                    if (card.requestFocus()) return;
                }
            } else if (attempt == 0) {
                call(grid.getClass(), grid, "scrollToPosition", new Class<?>[]{int.class}, index);
            }
            if (attempt < 12) grid.postDelayed(() -> requestTile(activity, grid, index, version, attempt + 1), 50);
        } catch (ReflectiveOperationException ignored) { }
    }

    private static Field field(Class<?> type, String name) throws NoSuchFieldException {
        for (Class<?> c = type; c != null; c = c.getSuperclass()) {
            try { Field f = c.getDeclaredField(name); f.setAccessible(true); return f; }
            catch (NoSuchFieldException ignored) { }
        }
        throw new NoSuchFieldException(name);
    }

    private static Object call(Class<?> type, Object receiver, String name, Class<?>[] signature, Object... args)
            throws ReflectiveOperationException {
        for (Class<?> c = type; c != null; c = c.getSuperclass()) {
            try {
                Method method = c.getDeclaredMethod(name, signature);
                method.setAccessible(true);
                return method.invoke(receiver, args);
            } catch (NoSuchMethodException ignored) { }
        }
        throw new NoSuchMethodException(name);
    }
}
