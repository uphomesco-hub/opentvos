package com.sid.tvos;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G implements Stage.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f155e;

    public /* synthetic */ G(MainActivity mainActivity, int i2, boolean z2, boolean z3, int i3) {
        this.f151a = mainActivity;
        this.f152b = i2;
        this.f153c = z2;
        this.f154d = z3;
        this.f155e = i3;
    }

    public final void a(Bitmap bitmap) {
        this.f151a.lambda$showShelf$35(this.f152b, this.f153c, this.f154d, this.f155e, bitmap);
    }
}
