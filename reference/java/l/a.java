package l;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f495c;

    public a(int i2, d dVar, int i3) {
        this.f493a = i2;
        this.f494b = dVar;
        this.f495c = i3;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f493a);
        this.f494b.f498a.performAction(this.f495c, bundle);
    }
}
