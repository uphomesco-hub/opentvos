package com.sid.tvos;

import android.app.Activity;
import android.os.Bundle;

/** An internal relay keeps third-party PendingIntents in memory, out of Intent URIs. */
public final class HistoryOpenActivity extends Activity {
    @Override public void onCreate(Bundle saved) {
        super.onCreate(saved);
        PlaybackHistory.open(this, getIntent().getStringExtra("history_key"));
        finish();
    }
}
