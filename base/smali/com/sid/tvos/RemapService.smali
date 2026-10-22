.class public Lcom/sid/tvos/RemapService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field static volatile connected:Z

.field private static instance:Lcom/sid/tvos/RemapService;


# instance fields
.field private frontPkg:Ljava/lang/String;

.field private final homeIfStillStandIn:Ljava/lang/Runnable;

.field private lastClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sid/tvos/RemapService;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sid/tvos/RemapService;->frontPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/sid/tvos/RemapService;->lastClass:Ljava/lang/String;

    new-instance v0, Lt/s;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lt/s;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/sid/tvos/RemapService;->homeIfStillStandIn:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/RemapService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/RemapService;->lambda$new$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sid/tvos/Remaps$CaptureListener;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/RemapService;->lambda$onKeyEvent$0(Lcom/sid/tvos/Remaps$CaptureListener;I)V

    return-void
.end method

.method private goHome()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/sid/tvos/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x30200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static isStandIn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".RecoveryActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.tungsten.setupwraith"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ".FallbackHome"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/RemapService;->frontPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/sid/tvos/RemapService;->lastClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sid/tvos/RemapService;->isStandIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/RemapService;->goHome()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onKeyEvent$0(Lcom/sid/tvos/Remaps$CaptureListener;I)V
    .locals 0

    check-cast p0, Lcom/sid/tvos/g;

    invoke-virtual {p0, p1}, Lcom/sid/tvos/g;->a(I)V

    return-void
.end method

.method private run(Ljava/lang/String;)V
    .locals 11

    :try_start_0
    const-string v0, "app:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "launcher:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sid/tvos/LauncherActions;->run(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "recents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "playpause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_c

    if-eq p1, v6, :cond_b

    const-string v0, "audio"

    if-eq p1, v5, :cond_a

    if-eq p1, v7, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v4, :cond_5

    goto :goto_3

    :cond_5
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    invoke-static {p0}, Lcom/sid/tvos/Recents;->showIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/16 v0, 0x65

    invoke-virtual {p1, v7, v0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v3, 0x1

    :cond_9
    invoke-virtual {p1, v7, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    new-instance v10, Landroid/view/KeyEvent;

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-wide v1, v8

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p1, v10}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v10, Landroid/view/KeyEvent;

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v0, v10

    move-wide v1, v8

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p1, v10}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v6}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v5}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f0184be -> :sswitch_5
        0x2e04e7 -> :sswitch_4
        0x30f4df -> :sswitch_3
        0x335219 -> :sswitch_2
        0x40828578 -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch
.end method

.method public static systemHomeIsUs(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    :goto_0
    return v0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/RemapService;->frontPkg:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/RemapService;->lastClass:Ljava/lang/String;

    sget-object p1, Lcom/sid/tvos/RemapService;->MAIN:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sid/tvos/RemapService;->homeIfStillStandIn:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sid/tvos/RemapService;->frontPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/sid/tvos/RemapService;->lastClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sid/tvos/RemapService;->isStandIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/RemapService;->homeIfStillStandIn:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sid/tvos/RemapService;->connected:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sid/tvos/RemapService;->instance:Lcom/sid/tvos/RemapService;

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-boolean v1, Lcom/sid/tvos/Remaps;->capturing:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sid/tvos/Remaps;->onCaptured:Lcom/sid/tvos/Remaps$CaptureListener;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/sid/tvos/Remaps;->reserved(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sid/tvos/RemapService;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/sid/tvos/h0;

    invoke-direct {v2, v1, v0}, Lcom/sid/tvos/h0;-><init>(Lcom/sid/tvos/Remaps$CaptureListener;I)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v2

    :cond_3
    invoke-static {v0}, Lcom/sid/tvos/Remaps;->reserved(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sid/tvos/Remaps;->get(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_5

    const-string p1, "tvos"

    const-string v0, "Home caught"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sid/tvos/RemapService;->goHome()V

    :cond_5
    return v3

    :cond_6
    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0, v1}, Lcom/sid/tvos/RemapService;->run(Ljava/lang/String;)V

    :cond_8
    return v3
.end method

.method public onServiceConnected()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sid/tvos/RemapService;->connected:Z

    sput-object p0, Lcom/sid/tvos/RemapService;->instance:Lcom/sid/tvos/RemapService;

    return-void
.end method
