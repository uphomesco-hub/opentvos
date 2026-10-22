package com.sid.tvos;

import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;

/* JADX INFO: loaded from: classes.dex */
public class NotifListener extends NotificationListenerService {
    private static NotifListener instance;
    static Runnable onChange;

    private static void notifyChange() {
        Runnable runnable = onChange;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerConnected() {
        instance = this;
        notifyChange();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerDisconnected() {
        instance = null;
        notifyChange();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationPosted(StatusBarNotification statusBarNotification) {
        notifyChange();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRemoved(StatusBarNotification statusBarNotification) {
        notifyChange();
    }
}
