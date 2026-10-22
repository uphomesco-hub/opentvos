package com.sid.tvos;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public class StandByActivity extends Activity {
    private StandByView view;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(int i2, int i3, boolean z2, String str) {
        this.view.invalidate();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        StandByView standByView = new StandByView(this);
        this.view = standByView;
        setContentView(standByView);
        Weather.load(this, new C0005f(this, 3));
        getWindow().getDecorView().setSystemUiVisibility(4102);
        this.view.setAlpha(0.0f);
        this.view.animate().alpha(1.0f).setDuration(600L).start();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        finish();
        overridePendingTransition(0, android.R.anim.fade_out);
        return true;
    }
}
