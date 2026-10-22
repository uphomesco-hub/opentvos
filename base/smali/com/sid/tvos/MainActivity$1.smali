.class Lcom/sid/tvos/MainActivity$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final synthetic a:I


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/MainActivity;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$1;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$1;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$1;->this$0:Lcom/sid/tvos/MainActivity;

    new-instance v1, Lcom/sid/tvos/S;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/sid/tvos/S;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$1;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$1;->this$0:Lcom/sid/tvos/MainActivity;

    new-instance v1, Lcom/sid/tvos/S;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/sid/tvos/S;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
