package android.content;

import java.util.HashMap;
import java.util.Map;

public final class Context {
    private final Map<String, SharedPreferences> preferences = new HashMap<>();
    public SharedPreferences getSharedPreferences(String name, int mode) {
        if (!preferences.containsKey(name)) preferences.put(name, new SharedPreferences());
        return preferences.get(name);
    }
}
