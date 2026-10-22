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
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
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
    private int rowCount, renderGeneration;

    private static final class Page {
        final String title;
        final Runnable build;
        int focus, scroll;
        int focusId=View.NO_ID;
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
        getWindow().setWindowAnimations(0);overridePendingTransition(0,0);
        getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);
        root = new FrameLayout(this);
        root.setBackgroundColor(0x26000000);
        root.setOnClickListener(v -> close());root.setFocusable(false);root.setClipChildren(false);
        panel = new FrameLayout(this);
        panel.setClickable(true);panel.setFocusable(false);panel.setClipToOutline(true);
        panel.setElevation(dp(20));
        FrameLayout.LayoutParams pp = new FrameLayout.LayoutParams(Math.min(dp(340), (int)(getResources().getDisplayMetrics().widthPixels * .37f)), -1, Gravity.RIGHT);
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
        if(!restorePages(state)){
            push("Settings", this::settings);
            if ("profile".equals(getIntent().getStringExtra("page"))) push("Profile", this::profile);
        }
        panel.setTranslationX(dp(70)); panel.setAlpha(0);
        panel.animate().translationX(0).alpha(1).setDuration(220).start();
        if (getIntent().getBooleanExtra("screensaver", false)) root.post(this::showPreview);
    }

    @Override protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (preview != null) closePreview();
        stack.clear();
        push("Settings", this::settings);
        if ("profile".equals(intent.getStringExtra("page"))) push("Profile", this::profile);
        if (intent.getBooleanExtra("screensaver", false)) root.post(this::showPreview);
    }

    @Override protected void onSaveInstanceState(Bundle out){
        savePosition();ArrayList<Bundle> pages=new ArrayList<>();
        for(Page p:stack){Bundle b=new Bundle();b.putString("title",p.title);b.putInt("focus",p.focus);b.putInt("focus-id",p.focusId);b.putInt("scroll",p.scroll);pages.add(b);}
        out.putParcelableArrayList("settings-pages",pages);super.onSaveInstanceState(out);
    }
    private Runnable pageBuilder(String title){
        switch(title){
            case "Settings":return this::settings;case "Profile":return this::profile;case "Appearance":return this::appearance;
            case "StandBy":return this::standby;case "Favourites":return this::favourites;case "Reorder Favourites":return this::reorder;
            case "Continue Watching":return this::history;case "Location & Weather":return this::weather;case "Screensaver":return this::screensaver;
            case "Remotes & Bluetooth":return this::remotes;case "Display & Sound":return this::display;case "Default Home":return this::home;
            default:return null;
        }
    }
    private boolean restorePages(Bundle state){
        if(state==null)return false;ArrayList<Bundle> pages=state.getParcelableArrayList("settings-pages");
        if(pages==null||pages.isEmpty())return false;
        for(Bundle b:pages){String title=b.getString("title","");Runnable build=pageBuilder(title);if(build==null)break;
            Page p=new Page(title,build);p.focus=b.getInt("focus");p.focusId=b.getInt("focus-id",View.NO_ID);p.scroll=b.getInt("scroll");stack.add(p);
        }
        if(stack.isEmpty())return false;render();return true;
    }
    private boolean isNight() { return HomeData.get(this).isNight(System.currentTimeMillis()); }
    private void paintPanel() {
        dark = isNight();
        ControlBackdrop.apply(this,root,dark);
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
        t.setTypeface(bold ? Ui.semibold : Ui.regular);
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
        if(focus!=null && focus.getId()!=View.NO_ID)p.focusId=focus.getId();
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
        final int generation=++renderGeneration;
        scroll.post(() -> {
            if(generation!=renderGeneration || isFinishing())return;
            View wanted=rows.findViewById(p.focusId);
            if(wanted==null || !wanted.isFocusable()) {
                int index=Math.min(p.focus,rows.getChildCount()-1);
                View row=index>=0?rows.getChildAt(index):null;
                ArrayList<View> choices=new ArrayList<>();
                if(row!=null)row.addFocusables(choices,View.FOCUS_FORWARD);
                if(choices.isEmpty())rows.addFocusables(choices,View.FOCUS_FORWARD);
                wanted=choices.isEmpty()?null:choices.get(0);
            }
            scroll.scrollTo(0,p.scroll);
            if(wanted!=null)wanted.requestFocus();
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
        line.setId(10000+rowCount);line.setFocusable(true); line.setClickable(true);
        line.setContentDescription(label + (value.isEmpty() ? "" : ", " + value));
        if (!symbol.isEmpty()) {
            TextView icon = text(symbol, 22, false); icon.setGravity(Gravity.CENTER);
            line.addView(icon, new LinearLayout.LayoutParams(dp(32), dp(28)));
        }
        TextView name = text(label, 16, true); name.setPadding(dp(8), 0, dp(10), 0);
        name.setSingleLine(true); name.setEllipsize(TextUtils.TruncateAt.END);
        line.addView(name, new LinearLayout.LayoutParams(0, -2, 1));
        TextView tail = text(value.isEmpty() ? "›" : value, 13, false);
        tail.setSingleLine(true);tail.setEllipsize(TextUtils.TruncateAt.END);tail.setMaxWidth(dp(130)); tail.setGravity(Gravity.RIGHT); tail.setTextColor(muted());
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
    private void settings() {
        row("●", "Profile", Profile.name(this), () -> push("Profile", this::profile));
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
        section("Avatars");
        // tvOS avatar strip: 64dp circles, selected ring and a focused lift.
        HorizontalScrollView strip=new HorizontalScrollView(this);strip.setHorizontalScrollBarEnabled(false);
        strip.setClipChildren(false);strip.setClipToPadding(false);strip.setPadding(dp(8),dp(8),dp(8),dp(8));
        strip.setFocusable(false);strip.setDescendantFocusability(ViewGroup.FOCUS_AFTER_DESCENDANTS);
        LinearLayout avatars=new LinearLayout(this);avatars.setClipChildren(false);avatars.setClipToPadding(false);
        String selected=Profile.choice(this);
        for(int i=0;i<Profile.EMOJI.length;i++) {
            final int index=i;boolean chosen=selected.equals("emoji:"+i);
            FrameLayout hit=new FrameLayout(this);hit.setId(20000+i);hit.setFocusable(true);hit.setClickable(true);
            hit.setContentDescription("Avatar "+(i+1)+(chosen?", selected":""));
            ImageView image=new ImageView(this);image.setImageBitmap(Profile.emojiAvatar(i,dp(64)));
            hit.addView(image,new FrameLayout.LayoutParams(dp(64),dp(64),Gravity.CENTER));
            GradientDrawable ring=new GradientDrawable();ring.setShape(GradientDrawable.OVAL);ring.setColor(Color.TRANSPARENT);
            ring.setStroke(dp(3),chosen?0xffffffff:0x00ffffff);hit.setForeground(ring);
            hit.setOnFocusChangeListener((v,focused)->{
                ring.setStroke(dp(3),focused||chosen?0xffffffff:0x00ffffff);
                v.animate().scaleX(focused?1.08f:1).scaleY(focused?1.08f:1).setDuration(150).start();
                if(focused)strip.post(()->hit.requestRectangleOnScreen(new android.graphics.Rect(0,0,hit.getWidth(),hit.getHeight()),false));
            });
            hit.setOnClickListener(v->{Profile.setEmoji(this,index);refresh();});
            hit.setOnKeyListener((v,key,event)->key==KeyEvent.KEYCODE_DPAD_LEFT&&index==0 || key==KeyEvent.KEYCODE_DPAD_RIGHT&&index==Profile.EMOJI.length-1);
            avatars.addView(hit,new LinearLayout.LayoutParams(dp(78),dp(78)));
        }
        strip.addView(avatars);rows.addView(strip,new LinearLayout.LayoutParams(-1,dp(94)));
        section("Your photo");
        row("▣","Choose photo","photo".equals(selected)?"Selected":"",this::chooseProfilePhoto);
        section("Profile");
        row("●","Edit name",Profile.name(this),()->edit("Display name",Profile.name(this),v->{
            if(v.isEmpty()||v.length()>40)return false;Profile.setName(this,v);refresh();return true;
        }));
        note("This profile customises your home screen. Streaming profiles stay inside each app.");
    }
    private void chooseProfilePhoto() {
        Intent choose=new Intent(Intent.ACTION_OPEN_DOCUMENT).setType("image/*").addCategory(Intent.CATEGORY_OPENABLE);
        try {startActivityForResult(choose,42);}
        catch(Exception unavailable){
            try{startActivityForResult(new Intent(Intent.ACTION_GET_CONTENT).setType("image/*"),42);}
            catch(Exception ignored){Toast.makeText(this,"No photo picker is available on this TV. Choose an avatar above.",Toast.LENGTH_LONG).show();}
        }
    }
    @Override protected void onActivityResult(int request,int result,Intent data){
        super.onActivityResult(request,result,data);
        if(request==42&&result==RESULT_OK&&data!=null&&data.getData()!=null){
            new Thread(()->{boolean saved=Profile.setPhoto(this,data.getData());runOnUiThread(()->{
                if(isFinishing()||isDestroyed())return;
                if(saved)refresh();else Toast.makeText(this,"This photo could not be opened",Toast.LENGTH_SHORT).show();
            });},"profile-photo").start();
        }
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
    private String standbyLabel() {
        String v=local().getString("standby_layout","clock_calendar");
        return "clock_calendar".equals(v)?"Clock & Calendar":"split".equals(v)?"Clock & Weather":"digital".equals(v)?"Digital":"analog".equals(v)?"Analogue":"Calendar";
    }
    private void standby() {
        row("◷", "Start StandBy", "", () -> startActivity(new Intent(this, StandByActivity.class)));
        row("▣", "Layout", standbyLabel(), () -> choose("StandBy Layout",
                new String[]{"Clock & Calendar", "Clock & Weather", "Large Digital Clock", "Analogue Clock", "Calendar"},
                new String[]{"clock_calendar", "split", "digital", "analog", "calendar"}, local().getString("standby_layout", "clock_calendar"), v -> local().edit().putString("standby_layout", v).apply()));
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
        FireTv.openSettings(this,action);
    }
    private void showPreview() {
        preview = new DreamView(this); root.setVisibility(View.GONE); setContentView(preview); preview.start();
    }
    private void closePreview() {
        if (preview == null) return; preview.stop(); preview = null; setContentView(root); root.setVisibility(View.VISIBLE); refresh();
    }
    @Override protected void onPause() { savePosition();if (preview != null) closePreview(); super.onPause(); }
    @Override protected void onResume() { super.onResume(); if (rows != null && preview == null && !stack.isEmpty()) refresh(); }
    private void back() { if (stack.size() > 1) { stack.remove(stack.size() - 1); render(); } else close(); }
    private void close() { if (closing) return; closing = true; panel.animate().translationX(dp(55)).alpha(0).setDuration(150).withEndAction(this::finish).start(); }
    @Override public void onBackPressed() { if (preview != null) closePreview(); else back(); }
    @Override public boolean dispatchKeyEvent(KeyEvent event) {
        int key = event.getKeyCode();
        if (preview != null && (key == KeyEvent.KEYCODE_BACK || key == KeyEvent.KEYCODE_DPAD_UP || key == KeyEvent.KEYCODE_DPAD_DOWN || key == KeyEvent.KEYCODE_DPAD_LEFT || key == KeyEvent.KEYCODE_DPAD_RIGHT || key == KeyEvent.KEYCODE_DPAD_CENTER || key == KeyEvent.KEYCODE_ENTER)) { if (event.getAction() == KeyEvent.ACTION_UP) closePreview(); return true; }
        View focused=getCurrentFocus();boolean inAvatars=focused!=null&&focused.getId()>=20000&&focused.getId()<20010;
        if (key == KeyEvent.KEYCODE_MENU || key == KeyEvent.KEYCODE_DPAD_LEFT&&!inAvatars) { if (event.getAction() == KeyEvent.ACTION_UP) back(); return true; }
        return super.dispatchKeyEvent(event);
    }
}
