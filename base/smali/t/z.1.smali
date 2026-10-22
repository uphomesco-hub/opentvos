.class public final synthetic Lt/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lt/z;->a:I

    iput-object p1, p0, Lt/z;->b:Lcom/sid/tvos/MainActivity;

    iput-boolean p2, p0, Lt/z;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt/z;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/z;->b:Lcom/sid/tvos/MainActivity;

    iget-boolean v1, p0, Lt/z;->c:Z

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->I3(Lcom/sid/tvos/MainActivity;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/z;->b:Lcom/sid/tvos/MainActivity;

    iget-boolean v1, p0, Lt/z;->c:Z

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->n(Lcom/sid/tvos/MainActivity;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/z;->b:Lcom/sid/tvos/MainActivity;

    iget-boolean v1, p0, Lt/z;->c:Z

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->S0(Lcom/sid/tvos/MainActivity;Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lt/z;->b:Lcom/sid/tvos/MainActivity;

    iget-boolean v1, p0, Lt/z;->c:Z

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->J0(Lcom/sid/tvos/MainActivity;Z)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lt/z;->b:Lcom/sid/tvos/MainActivity;

    iget-boolean v1, p0, Lt/z;->c:Z

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->w1(Lcom/sid/tvos/MainActivity;Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lt/z;->b:Lcom/sid/tvos/MainActivity;

    iget-boolean v1, p0, Lt/z;->c:Z

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->b0(Lcom/sid/tvos/MainActivity;Z)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lt/z;->b:Lcom/sid/tvos/MainActivity;

    iget-boolean v1, p0, Lt/z;->c:Z

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->b3(Lcom/sid/tvos/MainActivity;Z)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lt/z;->b:Lcom/sid/tvos/MainActivity;

    iget-boolean v1, p0, Lt/z;->c:Z

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->L0(Lcom/sid/tvos/MainActivity;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
