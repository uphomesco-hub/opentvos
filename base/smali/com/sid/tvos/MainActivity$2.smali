.class Lcom/sid/tvos/MainActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/MainActivity;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$2;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$2;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->B4(Lcom/sid/tvos/MainActivity;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$2;->this$0:Lcom/sid/tvos/MainActivity;

    new-instance v1, Lcom/sid/tvos/p;

    const/16 v2, 0x13

    invoke-direct {v1, v0, v2}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-static {v0, v1}, Lcom/sid/tvos/Weather;->load(Landroid/content/Context;Lcom/sid/tvos/Weather$Callback;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$2;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/DarkSchedule;->apply(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$2;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->m4(Lcom/sid/tvos/MainActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity$2;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
