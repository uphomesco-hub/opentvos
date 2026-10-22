package com.sid.tvos;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f252c;

    public /* synthetic */ a0(Object obj, Object obj2, int i2) {
        this.f250a = i2;
        this.f251b = obj;
        this.f252c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f250a) {
            case 0:
                ((MainActivity.SettingsPanel) this.f251b).lambda$closeThen$6((View) this.f252c);
                break;
            case 1:
                ((MainActivity.SettingsPanel) this.f251b).lambda$switchRow$11((Runnable) this.f252c);
                break;
            case 2:
                Stage.lambda$renderAsync$0((Stage.Callback) this.f251b, (Bitmap) this.f252c);
                break;
            case 3:
                WatchNext.lambda$load$1((Context) this.f251b, (WatchNext.Callback) this.f252c);
                break;
            case 4:
                WatchNext.lambda$load$0((WatchNext.Callback) this.f251b, (Map) this.f252c);
                break;
            default:
                Weather.lambda$setManual$2((Weather.PlaceCallback) this.f251b, (String) this.f252c);
                break;
        }
    }
}
