.class public Lcom/sid/tvos/NotifListener;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field private static instance:Lcom/sid/tvos/NotifListener;

.field static onChange:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method private static notifyChange()V
    .locals 1

    sget-object v0, Lcom/sid/tvos/NotifListener;->onChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 0

    sput-object p0, Lcom/sid/tvos/NotifListener;->instance:Lcom/sid/tvos/NotifListener;

    invoke-static {}, Lcom/sid/tvos/NotifListener;->notifyChange()V

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sid/tvos/NotifListener;->instance:Lcom/sid/tvos/NotifListener;

    invoke-static {}, Lcom/sid/tvos/NotifListener;->notifyChange()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-static {}, Lcom/sid/tvos/NotifListener;->notifyChange()V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-static {}, Lcom/sid/tvos/NotifListener;->notifyChange()V

    return-void
.end method
