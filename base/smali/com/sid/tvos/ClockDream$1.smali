.class Lcom/sid/tvos/ClockDream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/ClockDream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/ClockDream;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/ClockDream;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/ClockDream$1;->this$0:Lcom/sid/tvos/ClockDream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/ClockDream$1;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/ClockDream$1;->lambda$run$0(IIZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$run$0(IIZLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sid/tvos/ClockDream$1;->this$0:Lcom/sid/tvos/ClockDream;

    invoke-static {p1}, Lcom/sid/tvos/ClockDream;->c(Lcom/sid/tvos/ClockDream;)Lcom/sid/tvos/StandByView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/ClockDream$1;->this$0:Lcom/sid/tvos/ClockDream;

    invoke-static {v0}, Lcom/sid/tvos/ClockDream;->c(Lcom/sid/tvos/ClockDream;)Lcom/sid/tvos/StandByView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sid/tvos/StandByView;->nudge()V

    iget-object v0, p0, Lcom/sid/tvos/ClockDream$1;->this$0:Lcom/sid/tvos/ClockDream;

    new-instance v1, Lcom/sid/tvos/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sid/tvos/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/sid/tvos/Weather;->load(Landroid/content/Context;Lcom/sid/tvos/Weather$Callback;)V

    iget-object v0, p0, Lcom/sid/tvos/ClockDream$1;->this$0:Lcom/sid/tvos/ClockDream;

    invoke-static {v0}, Lcom/sid/tvos/ClockDream;->b(Lcom/sid/tvos/ClockDream;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
