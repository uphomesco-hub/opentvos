.class public Lcom/sid/tvos/ClockDream;
.super Landroid/service/dreams/DreamService;
.source "SourceFile"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final nudge:Ljava/lang/Runnable;

.field private view:Lcom/sid/tvos/StandByView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sid/tvos/ClockDream;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/sid/tvos/ClockDream$1;

    invoke-direct {v0, p0}, Lcom/sid/tvos/ClockDream$1;-><init>(Lcom/sid/tvos/ClockDream;)V

    iput-object v0, p0, Lcom/sid/tvos/ClockDream;->nudge:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/ClockDream;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/ClockDream;->lambda$onAttachedToWindow$0(IIZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sid/tvos/ClockDream;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/ClockDream;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sid/tvos/ClockDream;)Lcom/sid/tvos/StandByView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/ClockDream;->view:Lcom/sid/tvos/StandByView;

    return-object p0
.end method

.method private synthetic lambda$onAttachedToWindow$0(IIZLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sid/tvos/ClockDream;->view:Lcom/sid/tvos/StandByView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setInteractive(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setFullscreen(Z)V

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setScreenBright(Z)V

    new-instance v0, Lcom/sid/tvos/StandByView;

    invoke-direct {v0, p0}, Lcom/sid/tvos/StandByView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sid/tvos/ClockDream;->view:Lcom/sid/tvos/StandByView;

    new-instance v0, Lcom/sid/tvos/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sid/tvos/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/sid/tvos/Weather;->load(Landroid/content/Context;Lcom/sid/tvos/Weather$Callback;)V

    iget-object v0, p0, Lcom/sid/tvos/ClockDream;->view:Lcom/sid/tvos/StandByView;

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/ClockDream;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/ClockDream;->nudge:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    return-void
.end method

.method public onDreamingStarted()V
    .locals 4

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    iget-object v0, p0, Lcom/sid/tvos/ClockDream;->view:Lcom/sid/tvos/StandByView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sid/tvos/ClockDream;->view:Lcom/sid/tvos/StandByView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sid/tvos/ClockDream;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/ClockDream;->nudge:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/ClockDream;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/ClockDream;->nudge:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    return-void
.end method
