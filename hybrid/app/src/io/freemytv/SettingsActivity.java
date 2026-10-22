package io.freemytv;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.InputType;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/** Remote-first glass control centre. Settings belong to the existing home, not a second launcher. */
public class SettingsActivity extends Activity {
    private FrameLayout root, panel;
    private LinearLayout rows;
    private ScrollView scroll;
    private TextView title;
    private final List<Page> stack = new ArrayList<>();
    private boolean dark, closing;
    private DreamView preview;
    private int rowCount;

    private static final class Page {
        final String title;
        final Runnable build;
        int focus, scroll;
        Page(String title, Runnable build) { this.title = title; this.build = build; }
    }
    private SharedPreferences local() { return getSharedPreferences("hybrid_ui", MODE_PRIVATE); }
    private int dp(float value) { return Math.round(value * getResources().getDisplayMetrics().density); }
    private int ink() { return dark ? 0xfff5f5f7 : 0xff24242b; }
    private int muted() { return dark ? 0xffb4b7c2 : 0xff626571; }

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        Watchdog.install(this);
        Ui.init(this);
        dark = isNight();
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
        getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);
        root = new FrameLayout(this);
        root.setBackgroundColor(0x26000000);
        root.setOnClickListener(v -> close());
        panel = new FrameLayout(this);
        panel.setClickable(true);
        panel.setElevation(dp(20));
        FrameLayout.LayoutParams pp = new FrameLayout.LayoutParams(Math.min(dp(440), (int)(getResources().getDisplayMetrics().widthPixels * .47f)), -1, Gravity.RIGHT);
        pp.setMargins(dp(22), dp(22), dp(22), dp(22));
        root.addView(panel, pp);
        LinearLayout column = new LinearLayout(this);
        column.setOrientation(LinearLayout.VERTICAL);
        title = text("Settings", 23, true);
        title.setGravity(Gravity.CENTER);
        title.setPadding(dp(20), dp(25), dp(20), dp(19));
        column.addView(title, new LinearLayout.LayoutParams(-1, -2));
        scroll = new ScrollView(this);
        scroll.setFillViewport(false);
        scroll.setVerticalScrollBarEnabled(false);
        scroll.setOverScrollMode(View.OVER_SCROLL_NEVER);
        scroll.setClipToPadding(false);
        scroll.setPadding(dp(14), 0, dp(14), dp(18));
        rows = new LinearLayout(this);
        rows.setOrientation(LinearLayout.VERTICAL);
        scroll.addView(rows, new ScrollView.LayoutParams(-1, -2));
        column.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));
        panel.addView(column);
        setContentView(root);
        paintPanel();
        if (getIntent().getBooleanExtra("control_center", false)) push("Control Centre", this::controlCentre);
        else push("Settings", this::settings);
        panel.setTranslationX(dp(70)); panel.setAlpha(0);
        panel.animate().translationX(0).alpha(1).setDuration(220).start();
        if (getIntent().getBooleanExtra("screensaver", false)) root.post(this::showPreview);
    }

    @Override protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (preview != null) closePreview();
        stack.clear();
        if (intent.getBooleanExtra("control_center", false)) push("Control Centre", this::controlCentre);
        else push("Settings", this::settings);
        if (intent.getBooleanExtra("screensaver", false)) root.post(this::showPreview);
    }

    private boolean isNight() {
        if ("dark".equals(Prefs.theme())) return true;
        if ("light".equals(Prefs.theme())) return false;
        HomeData.Weather wx = HomeData.get(this).weather;
        long now = System.currentTimeMillis();
        int hour = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);
        return wx.sunrise > 0 && wx.sunset > wx.sunrise ? now < wx.sunrise || now >= wx.sunset : hour < 7 || hour >= 19;
    }
    private void paintPanel() {
        dark = isNight();
        boolean frosted = "frosted".equals(local().getString("glass", "liquid"));
        GradientDrawable glass = new GradientDrawable(GradientDrawable.Orientation.TL_BR,
                dark ? (frosted ? new int[] {0xfa363946, 0xfa282b36} : new int[] {0xe84a4e5d, 0xee20232e})
                        : (frosted ? new int[] {0xfbf1f3fa, 0xfbe0e4ed} : new int[] {0xf2fafaff, 0xe8d7dbe6}));
        glass.setCornerRadius(dp(30));
        glass.setStroke(dp(1), dark ? 0x40ffffff : 0xb3ffffff);
        panel.setBackground(glass);
        title.setTextColor(ink());
    }
    private TextView text(String value, int size, boolean bold) {
        TextView t = new TextView(this);
        t.setText(value); t.setTextSize(size); t.setTextColor(ink());
        t.setTypeface(Typeface.create("sans-serif", bold ? Typeface.BOLD : Typeface.NORMAL));
        t.setIncludeFontPadding(false);
        return t;
    }
    private GradientDrawable shape(int color, int stroke, int radius) {
        GradientDrawable d = new GradientDrawable(); d.setColor(color); d.setCornerRadius(dp(radius));
        if (stroke != 0) d.setStroke(dp(1), stroke);
        return d;
    }
    private void savePosition() {
        if (stack.isEmpty()) return;
        Page p = stack.get(stack.size() - 1);
        View focus = rows.findFocus();
        while (focus != null && focus.getParent() != rows) focus = focus.getParent() instanceof View ? (View)focus.getParent() : null;
        if (focus != null) p.focus = rows.indexOfChild(focus);
        p.scroll = scroll.getScrollY();
    }
    private void push(String label, Runnable build) {
        savePosition(); stack.add(new Page(label, build)); render();
    }
    private void render() {
        paintPanel(); rows.removeAllViews(); rowCount = 0;
        Page p = stack.get(stack.size() - 1); title.setText(p.title); p.build.run();
        rows.setAlpha(.5f); rows.animate().alpha(1).setDuration(130).start();
        scroll.post(() -> {
            int wanted = Math.min(p.focus, rows.getChildCount() - 1);
            View first = null;
            for (int n = 0; n < rows.getChildCount(); n++) {
                View child = rows.getChildAt(n);
                if (child.isFocusable()) { if (first == null) first = child; if (n == wanted) first = child; }
                if (n == wanted && child.isFocusable()) break;
            }
            if (first != null) first.requestFocus();
            scroll.scrollTo(0, p.scroll);
        });
    }
    private void refresh() { savePosition(); render(); }
    private void note(String value) {
        TextView t = text(value, 12, false); t.setTextColor(muted());
        t.setPadding(dp(13), dp(8), dp(13), dp(13)); t.setLineSpacing(dp(3), 1);
        rows.addView(t, new LinearLayout.LayoutParams(-1, -2));
    }
    private void section(String label) {
        TextView t = text(label.toUpperCase(java.util.Locale.ROOT), 11, true); t.setTextColor(muted());
        t.setPadding(dp(13), dp(18), dp(13), dp(9)); rows.addView(t);
    }
    private void row(String symbol, String label, String value, Runnable action) {
        LinearLayout line = new LinearLayout(this); line.setGravity(Gravity.CENTER_VERTICAL);
        line.setPadding(dp(14), dp(13), dp(14), dp(13)); line.setMinimumHeight(dp(54));
        line.setFocusable(true); line.setClickable(true);
        line.setContentDescription(label + (value.isEmpty() ? "" : ", " + value));
        if (!symbol.isEmpty()) {
            TextView icon = text(symbol, 22, false); icon.setGravity(Gravity.CENTER);
            line.addView(icon, new LinearLayout.LayoutParams(dp(32), dp(28)));
        }
        TextView name = text(label, 16, true); name.setPadding(dp(8), 0, dp(10), 0);
        name.setSingleLine(true); name.setEllipsize(TextUtils.TruncateAt.END);
        line.addView(name, new LinearLayout.LayoutParams(0, -2, 1));
        TextView tail = text(value.isEmpty() ? "›" : value, 13, false);
        tail.setMaxLines(2); tail.setGravity(Gravity.RIGHT); tail.setTextColor(muted());
        line.addView(tail, new LinearLayout.LayoutParams(-2, -2));
        line.setBackground(shape(dark ? 0x16ffffff : 0x28ffffff, 0, 16));
        line.setOnFocusChangeListener((v, focused) -> {
            line.setBackground(shape(focused ? 0xfff7f7fb : dark ? 0x16ffffff : 0x28ffffff,
                    focused ? 0xffffffff : 0, 16));
            name.setTextColor(focused ? 0xff20212a : ink()); tail.setTextColor(focused ? 0xff555965 : muted());
            if (line.getChildCount() > 2) ((TextView)line.getChildAt(0)).setTextColor(focused ? 0xff20212a : ink());
            line.animate().scaleX(focused ? 1.015f : 1).scaleY(focused ? 1.015f : 1).setDuration(110).start();
        });
        line.setOnClickListener(v -> action.run());
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2); lp.setMargins(dp(2), dp(3), dp(2), dp(3));
        rows.addView(line, lp); rowCount++;
    }
    private String mode() { return "auto".equals(Prefs.theme()) ? "Automatic" : "dark".equals(Prefs.theme()) ? "Dark" : "Light"; }
    private void choose(String label, String[] options, String[] values, String selected, java.util.function.Consumer<String> apply) {
        push(label, () -> {
            for (int i = 0; i < options.length; i++) {
                final String v = values[i]; row("", options[i], v.equals(selected) ? "✓" : "", () -> { apply.accept(v); back(); });
            }
        });
    }
    private void appearance() {
        section("Appearance");
        row("◐", "Theme", mode(), () -> choose("Theme", new String[]{"Automatic", "Light", "Dark"},
                new String[]{"auto", "light", "dark"}, Prefs.theme(), Prefs::setTheme));
        note("Automatic follows your location’s sunrise and sunset. Manual Light or Dark stays selected until you choose Automatic again.");
        row("◇", "Glass style", "frosted".equals(local().getString("glass", "liquid")) ? "Frosted" : "Liquid", () -> choose("Glass Style",
                new String[]{"Liquid", "Frosted"}, new String[]{"liquid", "frosted"}, local().getString("glass", "liquid"),
                v -> { local().edit().putString("glass", v).apply(); Prefs.version++; }));
        row("♪", "Navigation sounds", Prefs.sounds() ? "On" : "Off", () -> { Prefs.setSounds(!Prefs.sounds()); refresh(); });
        row("▣", "StandBy appearance", "", () -> push("StandBy", this::standby));
    }
    private void controlCentre() {
        row("●", local().getString("profile_name", "Yash"), "Profile", () -> push("Profile", this::profile));
        section("Quick controls");
        row("◐", "Dark Mode", (dark ? "On" : "Off") + ("auto".equals(Prefs.theme()) ? " · Auto" : ""),
                () -> { Prefs.setTheme(dark ? "light" : "dark"); refresh(); });
        row("☼", "Automatic appearance", "auto".equals(Prefs.theme()) ? "On" : "Off", () -> { Prefs.setTheme("auto"); refresh(); });
        row("◷", "StandBy", "Start", () -> startActivity(new Intent(this, StandByActivity.class)));
        row("⌘", "Wi-Fi", "", () -> system(Settings.ACTION_WIFI_SETTINGS));
        row("ᛒ", "Bluetooth", "", () -> system(Settings.ACTION_BLUETOOTH_SETTINGS));
        row("▣", "Inputs", "", () -> system("android.settings.TV_INPUT_SETTINGS"));
        row("⚙", "Settings", "", () -> push("Settings", this::settings));
    }
    private void settings() {
        row("●", "Profile", local().getString("profile_name", "Yash"), () -> push("Profile", this::profile));
        row("◐", "Appearance", mode(), () -> push("Appearance", this::appearance));
        row("▣", "StandBy", "", () -> push("StandBy", this::standby));
        section("Home screen");
        row("▦", "Favourites", HomeApps.shelfPackages(this).size() + " apps", () -> push("Favourites", this::favourites));
        row("↻", "Continue Watching", "", () -> push("Continue Watching", this::history));
        row("☼", "Location & Weather", Prefs.city(), () -> push("Location & Weather", this::weather));
        row("▷", "Screensaver", "", () -> push("Screensaver", this::screensaver));
        section("Device");
        row("⌘", "Network", "", () -> system(Settings.ACTION_WIFI_SETTINGS));
        row("ᛒ", "Remotes & Bluetooth", "", () -> push("Remotes & Bluetooth", this::remotes));
        row("▧", "Display & Sound", "", () -> push("Display & Sound", this::display));
        row("▦", "Apps", "", () -> system(Settings.ACTION_MANAGE_APPLICATIONS_SETTINGS));
        row("⌂", "Default Home", "", () -> push("Default Home", this::home));
        row("⚙", "TV Settings", "", this::tvSettings);
    }
    private void profile() {
        row("●", "Display name", local().getString("profile_name", "Yash"), () -> edit("Display name", local().getString("profile_name", "Yash"), v -> {
            if (v.isEmpty()) return false; local().edit().putString("profile_name", v).apply(); refresh(); return true;
        }));
        note("This name appears in Control Centre. Your streaming profiles and accounts remain managed inside each app.");
    }
    private void favourites() {
        List<String> selected = new ArrayList<>(HomeApps.shelfPackages(this));
        note("Select an app to add or remove it. Added apps appear at the end of your home row. Maximum " + HomeApps.MAX_SHELF + " apps.");
        row("↕", "Reorder favourites", "", () -> push("Reorder Favourites", this::reorder));
        for (String[] app : HomeApps.shelfCandidates(this)) {
            int position = selected.indexOf(app[0]);
            row("", app[1], position < 0 ? "+" : "✓  " + (position + 1), () -> {
                List<String> next = new ArrayList<>(HomeApps.shelfPackages(this));
                if (next.contains(app[0])) next.remove(app[0]);
                else if (next.size() < HomeApps.MAX_SHELF) next.add(app[0]);
                else { Toast.makeText(this, "Remove an app first", Toast.LENGTH_SHORT).show(); return; }
                Prefs.setShelf(next); refresh();
            });
        }
    }
    private String appName(String pkg) {
        try { return String.valueOf(getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(pkg, 0))); }
        catch (Exception e) { return pkg; }
    }
    private void reorder() {
        note("Select an app to move it one place towards the start of the row.");
        List<String> order = HomeApps.shelfPackages(this);
        for (int i = 0; i < order.size(); i++) {
            final int index = i;
            row("", appName(order.get(i)), Integer.toString(i + 1), () -> {
                if (index == 0) return;
                List<String> next = new ArrayList<>(HomeApps.shelfPackages(this));
                java.util.Collections.swap(next, index, index - 1); Prefs.setShelf(next); refresh();
            });
        }
    }
    private void history() {
        String listeners = Settings.Secure.getString(getContentResolver(), "enabled_notification_listeners");
        boolean enabled = listeners != null && listeners.contains(getPackageName() + "/");
        row("↻", "Media access", enabled ? "Enabled" : "Open settings", () -> system("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"));
        note("Continue Watching uses titles and progress shared by your streaming apps. Some apps share only the latest title, or no history. Open a title in the app, then return Home to update it.");
        row("▦", "Streaming apps", "", () -> system(Settings.ACTION_MANAGE_APPLICATIONS_SETTINGS));
    }
    private void weather() {
        row("☼", "Weather on Home", Prefs.weather() ? "On" : "Off", () -> { Prefs.setWeather(!Prefs.weather()); refresh(); });
        row("⌖", "Location", Prefs.city(), this::editLocation);
        row("°", "Temperature", Prefs.temperature(), () -> choose("Temperature", new String[]{"Automatic", "Celsius", "Fahrenheit"}, new String[]{"auto", "C", "F"}, Prefs.temperature(), Prefs::setTemperature));
        note("Temperature and sunrise/sunset use this location. AQI uses an estimate on the Indian scale from available air-quality data. No account or API key is needed.");
        row("↻", "Refresh weather & AQI", "", () -> { HomeData.get(this).settingsChanged(); HomeData.get(this).refreshIfStale(); Toast.makeText(this, "Refreshing weather and AQI", Toast.LENGTH_SHORT).show(); });
    }
    private interface Save { boolean save(String value); }
    private void edit(String label, String initial, Save save) {
        EditText input = new EditText(this); input.setText(initial); input.setSingleLine(true); input.setSelectAllOnFocus(true);
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_WORDS);
        AlertDialog dialog = new AlertDialog.Builder(this).setTitle(label).setView(input).setNegativeButton("Cancel", null).setPositiveButton("Save", null).create();
        dialog.setOnShowListener(d -> dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            if (save.save(input.getText().toString().trim())) dialog.dismiss(); else input.setError("Enter a value");
        })); dialog.show();
    }
    private void editLocation() {
        LinearLayout form = new LinearLayout(this); form.setOrientation(LinearLayout.VERTICAL); form.setPadding(dp(24), dp(8), dp(24), dp(8));
        String[] labels = {"City", "Latitude (−90 to 90)", "Longitude (−180 to 180)"};
        String[] values = {Prefs.city(), Prefs.latitude(), Prefs.longitude()}; EditText[] inputs = new EditText[3];
        for (int i = 0; i < 3; i++) { inputs[i] = new EditText(this); inputs[i].setHint(labels[i]); inputs[i].setText(values[i]); inputs[i].setSingleLine(true); inputs[i].setInputType(i == 0 ? InputType.TYPE_CLASS_TEXT : InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL | InputType.TYPE_NUMBER_FLAG_SIGNED); form.addView(inputs[i]); }
        AlertDialog dialog = new AlertDialog.Builder(this).setTitle("Location").setView(form).setNegativeButton("Cancel", null).setPositiveButton("Save", null).create();
        dialog.setOnShowListener(d -> dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            try {
                String city = inputs[0].getText().toString().trim(); double lat = Double.parseDouble(inputs[1].getText().toString()), lon = Double.parseDouble(inputs[2].getText().toString());
                if (city.isEmpty() || !Double.isFinite(lat) || !Double.isFinite(lon) || lat < -90 || lat > 90 || lon < -180 || lon > 180) throw new IllegalArgumentException();
                Prefs.setCity(city, Double.toString(lat), Double.toString(lon)); HomeData.get(this).settingsChanged(); HomeData.get(this).refreshIfStale(); dialog.dismiss(); refresh();
            } catch (Exception e) { inputs[0].setError("Enter a city and valid coordinates"); }
        })); dialog.show();
    }
    private void standby() {
        row("◷", "Start StandBy", "", () -> startActivity(new Intent(this, StandByActivity.class)));
        row("▣", "Layout", local().getString("standby_layout", "split"), () -> choose("StandBy Layout",
                new String[]{"Clock & Weather", "Large Digital Clock", "Analogue Clock", "Calendar"},
                new String[]{"split", "digital", "analog", "calendar"}, local().getString("standby_layout", "split"), v -> local().edit().putString("standby_layout", v).apply()));
        note("StandBy is a clock display you can start here. Back returns to settings. Your photo screensaver and its system activation remain unchanged.");
    }
    private void screensaver() {
        row("▷", "Preview screensaver", "", this::showPreview);
        row("⚙", "System screensaver options", "", () -> system(Settings.ACTION_DREAM_SETTINGS));
        note("Your existing cinematic photo screensaver is retained. StandBy is available separately from Control Centre.");
    }
    private void remotes() {
        row("ᛒ", "Pair a remote or accessory", "", () -> system(Settings.ACTION_BLUETOOTH_SETTINGS));
        if (!RemoteKeys.supported()) { note("App shortcut buttons on this Fire TV remote are handled by Fire OS. Pairing and system remote options are available in TV Settings."); row("⚙", "System remote options", "", this::tvSettings); return; }
        section("App shortcut buttons");
        for (int key : Prefs.KEYS) row("▣", remoteLabel(key), appNameSafe(Prefs.keyApp(key)), () -> {
            push(remoteLabel(key), () -> {
                row("", "System default", Prefs.keyApp(key).isEmpty() ? "✓" : "", () -> { Prefs.setKeyApp(key, ""); back(); });
                for (String[] app : HomeApps.shelfCandidates(this)) row("", app[1], app[0].equals(Prefs.keyApp(key)) ? "✓" : "", () -> { Prefs.setKeyApp(key, app[0]); back(); });
            });
        });
        row("⚙", "Accessibility access", "", () -> system(Settings.ACTION_ACCESSIBILITY_SETTINGS));
        note("Custom shortcut mappings require the existing remote-key service to be enabled in system accessibility settings.");
    }
    private String appNameSafe(String pkg) { return pkg.isEmpty() ? "System default" : appName(pkg); }
    private String remoteLabel(int key) {
        if (key == Prefs.KEY_NETFLIX || key == Prefs.KEY_STEM_NETFLIX || key == Prefs.KEY_SONY_NETFLIX) return "Netflix button";
        if (key == Prefs.KEY_YOUTUBE || key == Prefs.KEY_SONY_YOUTUBE) return "YouTube button";
        if (key == Prefs.KEY_PRIME || key == Prefs.KEY_SONY_PRIME) return "Prime Video button";
        if (key == Prefs.KEY_SONY_DISNEY) return "Disney button";
        if (key == Prefs.KEY_SONY_CRUNCHYROLL) return "Crunchyroll button";
        if (key == Prefs.KEY_SONY_CORE) return "Sony Pictures Core button";
        return key == Prefs.KEY_KTC_TABII ? "Tabii button" : "Channel button";
    }
    private void display() {
        row("▧", "Display", "", () -> system(Settings.ACTION_DISPLAY_SETTINGS));
        row("♪", "Sound", "", () -> system(Settings.ACTION_SOUND_SETTINGS));
        row("▣", "HDMI inputs", "", () -> system("android.settings.TV_INPUT_SETTINGS"));
        note("Picture, audio output and HDMI controls are managed by your TV.");
    }
    private void home() {
        note("This settings panel belongs to your current Home. Fire OS may briefly show its own Home before the existing helper redirects to this one.");
        row("⌂", "System Home chooser", "", () -> system(Settings.ACTION_HOME_SETTINGS));
        row("⚙", "System accessibility settings", "", () -> system(Settings.ACTION_ACCESSIBILITY_SETTINGS));
        note("Opening these pages does not switch launchers or change your Home helper automatically.");
    }
    private void tvSettings() {
        try { startActivity(FireTv.settingsIntent()); } catch (Exception e) { Toast.makeText(this, "TV settings are unavailable", Toast.LENGTH_SHORT).show(); }
    }
    private void system(String action) {
        try { startActivity(new Intent(action)); } catch (Exception e) { tvSettings(); }
    }
    private void showPreview() {
        preview = new DreamView(this); root.setVisibility(View.GONE); setContentView(preview); preview.start();
    }
    private void closePreview() {
        if (preview == null) return; preview.stop(); preview = null; setContentView(root); root.setVisibility(View.VISIBLE); refresh();
    }
    @Override protected void onPause() { if (preview != null) closePreview(); super.onPause(); }
    @Override protected void onResume() { super.onResume(); if (rows != null && preview == null && !stack.isEmpty()) refresh(); }
    private void back() { if (stack.size() > 1) { stack.remove(stack.size() - 1); render(); } else close(); }
    private void close() { if (closing) return; closing = true; panel.animate().translationX(dp(55)).alpha(0).setDuration(150).withEndAction(this::finish).start(); }
    @Override public void onBackPressed() { if (preview != null) closePreview(); else back(); }
    @Override public boolean dispatchKeyEvent(KeyEvent event) {
        int key = event.getKeyCode();
        if (preview != null && (key == KeyEvent.KEYCODE_BACK || key == KeyEvent.KEYCODE_DPAD_UP || key == KeyEvent.KEYCODE_DPAD_DOWN || key == KeyEvent.KEYCODE_DPAD_LEFT || key == KeyEvent.KEYCODE_DPAD_RIGHT || key == KeyEvent.KEYCODE_DPAD_CENTER || key == KeyEvent.KEYCODE_ENTER)) { if (event.getAction() == KeyEvent.ACTION_UP) closePreview(); return true; }
        if (key == KeyEvent.KEYCODE_MENU || key == KeyEvent.KEYCODE_DPAD_LEFT) { if (event.getAction() == KeyEvent.ACTION_UP) back(); return true; }
        return super.dispatchKeyEvent(event);
    }
}
