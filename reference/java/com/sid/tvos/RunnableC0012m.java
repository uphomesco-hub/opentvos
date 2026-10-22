package com.sid.tvos;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Handler;
import android.view.View;
import java.net.ServerSocket;

/* JADX INFO: renamed from: com.sid.tvos.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0012m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f317d;

    public /* synthetic */ RunnableC0012m(Object obj, Object obj2, Object obj3, int i2) {
        this.f314a = i2;
        this.f315b = obj;
        this.f316c = obj2;
        this.f317d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f314a) {
            case 0:
                MainActivity.lambda$makeCwCard$47((View) this.f315b, (View) this.f316c, (WatchNext.Item) this.f317d);
                break;
            case 1:
                ((MainActivity) this.f315b).lambda$buildWeatherRows$145((String) this.f316c, (MainActivity.SettingsPanel) this.f317d);
                break;
            case 2:
                ((MainActivity.SettingsPanel) this.f315b).lambda$nav$10((String) this.f316c, (MainActivity.PageBuilder) this.f317d);
                break;
            case 3:
                ((MainActivity.SettingsPanel) this.f315b).lambda$refreshGlass$0((Bitmap) this.f316c, (Runnable) this.f317d);
                break;
            case 4:
                PhoneUpload.lambda$start$0((ServerSocket) this.f315b, (Context) this.f316c, (PhoneUpload.Callback) this.f317d);
                break;
            default:
                Weather.lambda$load$1((SharedPreferences) this.f315b, (Handler) this.f316c, (Weather.Callback) this.f317d);
                break;
        }
    }
}
