.class public final synthetic Lt/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lt/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/t;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lt/t;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lt/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lt/t;->b:Z

    iput-object p2, p0, Lt/t;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lt/t;->b:Z

    iget-object v1, p0, Lt/t;->c:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->v2(ZLandroid/bluetooth/BluetoothAdapter;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/t;->c:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lt/t;->b:Z

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->s0(Landroid/net/wifi/WifiManager;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
