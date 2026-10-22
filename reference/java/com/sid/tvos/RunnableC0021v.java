package com.sid.tvos;

import android.net.Uri;

/* JADX INFO: renamed from: com.sid.tvos.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0021v implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Uri f346c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MainActivity.SettingsPanel f347d;

    public /* synthetic */ RunnableC0021v(MainActivity mainActivity, Uri uri, MainActivity.SettingsPanel settingsPanel, int i2) {
        this.f344a = i2;
        this.f345b = mainActivity;
        this.f346c = uri;
        this.f347d = settingsPanel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f344a) {
            case 0:
                this.f345b.lambda$buildProfilePage$138(this.f346c, this.f347d);
                break;
            default:
                this.f345b.lambda$buildProfilePage$137(this.f346c, this.f347d);
                break;
        }
    }
}
