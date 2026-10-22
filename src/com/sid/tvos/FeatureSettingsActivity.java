package com.sid.tvos;

import android.app.Activity;
import android.content.Intent;
import android.content.ComponentName;
import android.os.Bundle;
import android.provider.Settings;
import android.graphics.Color;
import android.widget.*;

/** Viewer setup needs an OS permission, never a catalogue account or API key. */
public final class FeatureSettingsActivity extends Activity {
    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        int padding = (int)(32 * getResources().getDisplayMetrics().density);
        content.setPadding(padding,padding,padding,padding);
        content.setBackgroundColor(Color.rgb(17,20,28));
        TextView title = new TextView(this);
        title.setText("Yash TV features"); title.setTextSize(28); title.setTextColor(Color.WHITE);
        content.addView(title);
        TextView text = new TextView(this);
        text.setText("Continue Watching uses titles shared by your TV apps and history observed on this TV. "
            + "Discover shows public catalogue suggestions when history is empty. No signup or API key is needed.\n\n"
            + "Enable notification access to read Netflix Continue Watching entries and playback sessions. "
            + "It cannot import your complete Netflix profile history.\n\n"
            + "Automatic light/dark mode and location are in Appearance and Weather settings. "
            + "Delhi is the initial location. AQI (IN est.) uses Indian breakpoints on modelled concentrations, not a live official station reading.\n\n"
            + "Data: TVmaze (CC BY-SA), Open-Meteo and CAMS. Streaming availability can vary by country.\n\n"
            + PlaybackHistory.status());
        text.setTextColor(Color.LTGRAY); text.setTextSize(17); text.setPadding(0,20,0,20);
        content.addView(text);
        Button enable = new Button(this); enable.setText("Enable viewing-history access");
        enable.setOnClickListener(v -> {
            Intent intent = new Intent(Settings.ACTION_NOTIFICATION_LISTENER_SETTINGS);
            intent.putExtra(":settings:fragment_args_key", new ComponentName(this, NotifListener.class).flattenToString());
            try { startActivity(intent); }
            catch (RuntimeException e) { Toast.makeText(this,"This TV hides notification access settings. Setup from your computer is needed once.",Toast.LENGTH_LONG).show(); }
        });
        content.addView(enable);
        Button done = new Button(this); done.setText("Back"); done.setOnClickListener(v -> finish()); content.addView(done);
        ScrollView scroll = new ScrollView(this); scroll.addView(content); setContentView(scroll); enable.requestFocus();
    }
}
