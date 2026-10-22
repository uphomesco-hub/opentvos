.class Lcom/sid/tvos/StandByView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/StandByView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/StandByView;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/StandByView;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/StandByView$1;->this$0:Lcom/sid/tvos/StandByView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sid/tvos/StandByView$1;->this$0:Lcom/sid/tvos/StandByView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sid/tvos/StandByView$1;->this$0:Lcom/sid/tvos/StandByView;

    invoke-static {v2}, Lcom/sid/tvos/StandByView;->a(Lcom/sid/tvos/StandByView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x3e8

    :goto_0
    rem-long/2addr v0, v3

    sub-long/2addr v3, v0

    goto :goto_1

    :cond_0
    const-wide/32 v3, 0xea60

    goto :goto_0

    :goto_1
    const-wide/16 v0, 0x5

    add-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
