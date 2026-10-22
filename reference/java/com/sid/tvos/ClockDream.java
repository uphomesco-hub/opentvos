package com.sid.tvos;

import android.os.Handler;
import android.os.Looper;
import android.service.dreams.DreamService;

/* JADX INFO: loaded from: classes.dex */
public class ClockDream extends DreamService {
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Runnable nudge = new AnonymousClass1();
    private StandByView view;

    /* JADX INFO: renamed from: com.sid.tvos.ClockDream$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(int i2, int i3, boolean z2, String str) {
            ClockDream.this.view.invalidate();
        }

        @Override // java.lang.Runnable
        public void run() {
            ClockDream.this.view.nudge();
            Weather.load(ClockDream.this, new C0005f(this, 1));
            ClockDream.this.handler.postDelayed(this, 60000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAttachedToWindow$0(int i2, int i3, boolean z2, String str) {
        this.view.invalidate();
    }

    @Override // android.service.dreams.DreamService, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setInteractive(false);
        setFullscreen(true);
        setScreenBright(false);
        this.view = new StandByView(this);
        Weather.load(this, new C0005f(this, 0));
        setContentView(this.view);
    }

    @Override // android.service.dreams.DreamService, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.handler.removeCallbacks(this.nudge);
        super.onDetachedFromWindow();
    }

    @Override // android.service.dreams.DreamService
    public void onDreamingStarted() {
        super.onDreamingStarted();
        this.view.setAlpha(0.0f);
        this.view.animate().alpha(1.0f).setDuration(1200L).start();
        this.handler.postDelayed(this.nudge, 60000L);
    }

    @Override // android.service.dreams.DreamService
    public void onDreamingStopped() {
        this.handler.removeCallbacks(this.nudge);
        super.onDreamingStopped();
    }
}
