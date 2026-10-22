.class public Lcom/sid/tvos/StandByActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private view:Lcom/sid/tvos/StandByView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/StandByActivity;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/StandByActivity;->lambda$onCreate$0(IIZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(IIZLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sid/tvos/StandByActivity;->view:Lcom/sid/tvos/StandByView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/sid/tvos/StandByView;

    invoke-direct {p1, p0}, Lcom/sid/tvos/StandByView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sid/tvos/StandByActivity;->view:Lcom/sid/tvos/StandByView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/sid/tvos/f;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/sid/tvos/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, p1}, Lcom/sid/tvos/Weather;->load(Landroid/content/Context;Lcom/sid/tvos/Weather$Callback;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1006

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lcom/sid/tvos/StandByActivity;->view:Lcom/sid/tvos/StandByView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sid/tvos/StandByActivity;->view:Lcom/sid/tvos/StandByView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    const p2, 0x10a0001

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1
.end method
