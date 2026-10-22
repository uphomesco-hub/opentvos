package com.sid.tvos;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f241a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f245e;

    public /* synthetic */ Y(Context context, AppAdapter.Entry entry, int i2, Stage.Callback callback) {
        this.f243c = context;
        this.f244d = entry;
        this.f242b = i2;
        this.f245e = callback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f241a) {
            case 0:
                MainActivity.SettingsPanel.lambda$choices$14((int[]) this.f243c, this.f242b, (MainActivity.IntChoice) this.f244d, (MainActivity.SettingsPanel) this.f245e);
                break;
            default:
                Stage.lambda$renderAsync$1((Context) this.f243c, (AppAdapter.Entry) this.f244d, this.f242b, (Stage.Callback) this.f245e);
                break;
        }
    }

    public /* synthetic */ Y(int[] iArr, int i2, MainActivity.IntChoice intChoice, MainActivity.SettingsPanel settingsPanel) {
        this.f243c = iArr;
        this.f242b = i2;
        this.f244d = intChoice;
        this.f245e = settingsPanel;
    }
}
