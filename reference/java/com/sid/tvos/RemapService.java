package com.sid.tvos;

import android.accessibilityservice.AccessibilityService;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;
import t.RunnableC0077s;

/* JADX INFO: loaded from: classes.dex */
public class RemapService extends AccessibilityService {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    static volatile boolean connected;
    private static RemapService instance;
    private String frontPkg = "";
    private String lastClass = "";
    private final Runnable homeIfStillStandIn = new RunnableC0077s(this, 3);

    private void goHome() {
        try {
            startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setClass(this, MainActivity.class).addFlags(807403520));
        } catch (Exception unused) {
        }
    }

    private static boolean isStandIn(String str, String str2) {
        return (str2.endsWith(".RecoveryActivity") && "com.google.android.tungsten.setupwraith".equals(str)) || str2.endsWith(".FallbackHome");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        if (isStandIn(this.frontPkg, this.lastClass)) {
            goHome();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onKeyEvent$0(Remaps.CaptureListener captureListener, int i2) {
        ((C0006g) captureListener).a(i2);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x008a  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void run(String str) {
        byte b2;
        Intent intentShowIntent;
        try {
            if (str.startsWith("app:")) {
                Intent leanbackLaunchIntentForPackage = getPackageManager().getLeanbackLaunchIntentForPackage(str.substring(4));
                if (leanbackLaunchIntentForPackage == null) {
                    leanbackLaunchIntentForPackage = getPackageManager().getLaunchIntentForPackage(str.substring(4));
                }
                if (leanbackLaunchIntentForPackage != null) {
                    startActivity(leanbackLaunchIntentForPackage.addFlags(268435456));
                    return;
                }
                return;
            }
            if (str.startsWith("launcher:")) {
                LauncherActions.run(this, str.substring(9));
                return;
            }
            switch (str.hashCode()) {
                case -1862370494:
                    if (!str.equals("playpause")) {
                        b2 = -1;
                    } else {
                        b2 = 2;
                    }
                    break;
                case 3015911:
                    if (!str.equals("back")) {
                        b2 = -1;
                    } else {
                        b2 = 1;
                    }
                    break;
                case 3208415:
                    if (!str.equals("home")) {
                        b2 = -1;
                    } else {
                        b2 = 0;
                    }
                    break;
                case 3363353:
                    if (!str.equals("mute")) {
                        b2 = -1;
                    } else {
                        b2 = 3;
                    }
                    break;
                case 1082295672:
                    if (!str.equals("recents")) {
                        b2 = -1;
                    } else {
                        b2 = 4;
                    }
                    break;
                case 1434631203:
                    if (!str.equals("settings")) {
                        b2 = -1;
                    } else {
                        b2 = 5;
                    }
                    break;
                default:
                    b2 = -1;
                    break;
            }
            if (b2 == 0) {
                performGlobalAction(2);
                return;
            }
            if (b2 == 1) {
                performGlobalAction(1);
                return;
            }
            if (b2 == 2) {
                AudioManager audioManager = (AudioManager) getSystemService("audio");
                long jUptimeMillis = SystemClock.uptimeMillis();
                audioManager.dispatchMediaKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 0, 85, 0));
                audioManager.dispatchMediaKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 1, 85, 0));
                return;
            }
            if (b2 == 3) {
                AudioManager audioManager2 = (AudioManager) getSystemService("audio");
                if (Build.VERSION.SDK_INT >= 23) {
                    audioManager2.adjustStreamVolume(3, 101, 1);
                    return;
                } else {
                    audioManager2.setStreamMute(3, audioManager2.getStreamVolume(3) > 0);
                    return;
                }
            }
            if (b2 == 4) {
                intentShowIntent = Recents.showIntent(this);
            } else if (b2 != 5) {
                return;
            } else {
                intentShowIntent = new Intent("android.settings.SETTINGS").addFlags(268435456);
            }
            startActivity(intentShowIntent);
        } catch (Exception unused) {
        }
    }

    public static boolean systemHomeIsUs(Context context) {
        try {
            ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 65536);
            return (resolveInfoResolveActivity == null || resolveInfoResolveActivity.activityInfo == null || !context.getPackageName().equals(resolveInfoResolveActivity.activityInfo.packageName)) ? false : true;
        } catch (Exception unused) {
            return true;
        }
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent == null || accessibilityEvent.getEventType() != 32) {
            return;
        }
        CharSequence className = accessibilityEvent.getClassName();
        CharSequence packageName = accessibilityEvent.getPackageName();
        if (className == null || packageName == null) {
            return;
        }
        this.frontPkg = packageName.toString();
        this.lastClass = className.toString();
        Handler handler = MAIN;
        handler.removeCallbacks(this.homeIfStillStandIn);
        if (isStandIn(this.frontPkg, this.lastClass)) {
            handler.postDelayed(this.homeIfStillStandIn, 1200L);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        connected = false;
        instance = null;
        super.onDestroy();
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onInterrupt() {
    }

    @Override // android.accessibilityservice.AccessibilityService
    public boolean onKeyEvent(KeyEvent keyEvent) {
        final int keyCode = keyEvent.getKeyCode();
        if (Remaps.capturing) {
            final Remaps.CaptureListener captureListener = Remaps.onCaptured;
            if (captureListener == null || Remaps.reserved(keyCode)) {
                return false;
            }
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                MAIN.post(new Runnable() { // from class: com.sid.tvos.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemapService.lambda$onKeyEvent$0(captureListener, keyCode);
                    }
                });
            }
            return true;
        }
        if (Remaps.reserved(keyCode)) {
            return false;
        }
        String str = Remaps.get(this, keyEvent.getKeyCode());
        if (str == null && keyCode == 3) {
            if (keyEvent.getAction() == 1) {
                Log.i("tvos", "Home caught");
                goHome();
            }
            return true;
        }
        if (str == null) {
            return false;
        }
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
            run(str);
        }
        return true;
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onServiceConnected() {
        connected = true;
        instance = this;
    }
}
