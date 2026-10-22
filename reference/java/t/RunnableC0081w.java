package t;

import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0081w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f920c;

    public /* synthetic */ RunnableC0081w(MainActivity mainActivity, int i2, int i3) {
        this.f918a = i3;
        this.f919b = mainActivity;
        this.f920c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f918a) {
            case 0:
                this.f919b.lambda$scrollCwTo$45(this.f920c);
                break;
            case 1:
                this.f919b.lambda$chooseRemapAction$172(this.f920c);
                break;
            default:
                this.f919b.lambda$chooseRemapAction$171(this.f920c);
                break;
        }
    }
}
