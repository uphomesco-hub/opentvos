.class public final synthetic Lt/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt/L;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lt/L;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/sid/tvos/MainActivity;->r1()V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/sid/tvos/MainActivity;->q1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
