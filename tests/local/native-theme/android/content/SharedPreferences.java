package android.content;

import java.util.HashMap;
import java.util.Map;

/** Minimal host-test preferences; not included in the Android application. */
public final class SharedPreferences {
    private final Map<String, Object> values = new HashMap<>();
    public int getInt(String key, int fallback) { Object value = values.get(key); return value instanceof Integer ? (Integer) value : fallback; }
    public long getLong(String key, long fallback) { Object value = values.get(key); return value instanceof Long ? (Long) value : fallback; }
    public float getFloat(String key, float fallback) { Object value = values.get(key); return value instanceof Float ? (Float) value : fallback; }
    public boolean getBoolean(String key, boolean fallback) { Object value = values.get(key); return value instanceof Boolean ? (Boolean) value : fallback; }
    public boolean contains(String key) { return values.containsKey(key); }
    public Editor edit() { return new Editor(); }
    public final class Editor {
        public Editor putInt(String key, int value) { values.put(key, value); return this; }
        public Editor putLong(String key, long value) { values.put(key, value); return this; }
        public Editor putFloat(String key, float value) { values.put(key, value); return this; }
        public Editor putBoolean(String key, boolean value) { values.put(key, value); return this; }
        public Editor remove(String key) { values.remove(key); return this; }
        public void apply() {}
    }
}
