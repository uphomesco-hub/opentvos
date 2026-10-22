package com.sid.tvos;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.sid.tvos.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0006g implements CwBackground.Opener, Images.Callback, MainActivity.IntChoice, Remaps.CaptureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f283c;

    public /* synthetic */ C0006g(Object obj, Object obj2, int i2) {
        this.f281a = i2;
        this.f282b = obj;
        this.f283c = obj2;
    }

    public void a(int i2) {
        ((MainActivity) this.f282b).lambda$captureRemapKey$167((PopupWindow[]) this.f283c, i2);
    }

    @Override // com.sid.tvos.Images.Callback
    public void onImage(Bitmap bitmap) {
        MainActivity.lambda$makeCwCard$48((ImageView) this.f282b, (View) this.f283c, bitmap);
    }

    @Override // com.sid.tvos.CwBackground.Opener
    public InputStream open() {
        return CwBackground.lambda$setPicture$0((Context) this.f282b, (Uri) this.f283c);
    }

    @Override // com.sid.tvos.MainActivity.IntChoice
    public void pick(int i2) {
        switch (this.f281a) {
            case 2:
                ((MainActivity) this.f282b).lambda$buildAppearancePage$103((ArrayList) ((List) this.f283c), i2);
                break;
            default:
                ((MainActivity) this.f282b).lambda$buildCwArtRows$148((String[]) this.f283c, i2);
                break;
        }
    }
}
