package com.sid.tvos;

import android.graphics.Bitmap;

/* JADX INFO: renamed from: com.sid.tvos.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0022w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f348a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WatchNext.Item f350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Bitmap f351d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f353f;

    public /* synthetic */ RunnableC0022w(MainActivity mainActivity, int i2, int i3, Bitmap bitmap, WatchNext.Item item) {
        this.f349b = mainActivity;
        this.f352e = i2;
        this.f353f = i3;
        this.f351d = bitmap;
        this.f350c = item;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f348a) {
            case 0:
                this.f349b.lambda$selectCw$59(this.f352e, this.f353f, this.f351d, this.f350c);
                break;
            default:
                this.f349b.lambda$selectCw$58(this.f350c, this.f351d, this.f352e, this.f353f);
                break;
        }
    }

    public /* synthetic */ RunnableC0022w(MainActivity mainActivity, WatchNext.Item item, Bitmap bitmap, int i2, int i3) {
        this.f349b = mainActivity;
        this.f350c = item;
        this.f351d = bitmap;
        this.f352e = i2;
        this.f353f = i3;
    }
}
