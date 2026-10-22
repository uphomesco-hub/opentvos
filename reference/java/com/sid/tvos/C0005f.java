package com.sid.tvos;

import java.io.File;
import java.io.InputStream;

/* JADX INFO: renamed from: com.sid.tvos.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0005f implements Weather.Callback, CwBackground.Opener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f278b;

    public /* synthetic */ C0005f(Object obj, int i2) {
        this.f277a = i2;
        this.f278b = obj;
    }

    @Override // com.sid.tvos.Weather.Callback
    public void onWeather(int i2, int i3, boolean z2, String str) {
        switch (this.f277a) {
            case 0:
                ((ClockDream) this.f278b).lambda$onAttachedToWindow$0(i2, i3, z2, str);
                break;
            case 1:
                ((ClockDream.AnonymousClass1) this.f278b).lambda$run$0(i2, i3, z2, str);
                break;
            default:
                ((StandByActivity) this.f278b).lambda$onCreate$0(i2, i3, z2, str);
                break;
        }
    }

    @Override // com.sid.tvos.CwBackground.Opener
    public InputStream open() {
        return CwBackground.lambda$setPicture$1((File) this.f278b);
    }
}
