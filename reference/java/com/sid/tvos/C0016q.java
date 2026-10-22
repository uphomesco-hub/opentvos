package com.sid.tvos;

import android.graphics.Bitmap;

/* JADX INFO: renamed from: com.sid.tvos.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0016q implements Images.Callback, MainActivity.IntChoice {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f330c;

    public /* synthetic */ C0016q(int i2, MainActivity mainActivity, String str) {
        this.f328a = i2;
        this.f329b = mainActivity;
        this.f330c = str;
    }

    @Override // com.sid.tvos.Images.Callback
    public void onImage(Bitmap bitmap) {
        this.f329b.lambda$new$55(this.f330c, bitmap);
    }

    @Override // com.sid.tvos.MainActivity.IntChoice
    public void pick(int i2) {
        switch (this.f328a) {
            case 1:
                this.f329b.lambda$layoutChoice$119(this.f330c, i2);
                break;
            default:
                this.f329b.lambda$cwBgChoice$134(this.f330c, i2);
                break;
        }
    }
}
