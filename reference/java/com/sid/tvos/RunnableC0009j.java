package com.sid.tvos;

import android.graphics.Bitmap;

/* JADX INFO: renamed from: com.sid.tvos.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0009j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Images.Callback f304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bitmap f305c;

    public /* synthetic */ RunnableC0009j(Images.Callback callback, Bitmap bitmap, int i2) {
        this.f303a = i2;
        this.f304b = callback;
        this.f305c = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f303a) {
            case 0:
                this.f304b.onImage(this.f305c);
                break;
            default:
                this.f304b.onImage(this.f305c);
                break;
        }
    }
}
