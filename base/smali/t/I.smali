.class public final synthetic Lt/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:I

.field public final synthetic d:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;ILjava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p4, p0, Lt/I;->a:I

    iput-object p1, p0, Lt/I;->b:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/I;->c:I

    iput-object p3, p0, Lt/I;->d:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lt/I;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lt/I;->c:I

    iget-object v1, p0, Lt/I;->d:Ljava/io/Serializable;

    check-cast v1, [F

    iget-object v2, p0, Lt/I;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->y0(Lcom/sid/tvos/MainActivity;I[F)V

    return-void

    :pswitch_0
    iget v0, p0, Lt/I;->c:I

    iget-object v1, p0, Lt/I;->d:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lt/I;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, v2, v1}, Lcom/sid/tvos/MainActivity;->Q3(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget v0, p0, Lt/I;->c:I

    iget-object v1, p0, Lt/I;->d:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lt/I;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, v2, v1}, Lcom/sid/tvos/MainActivity;->h0(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget v0, p0, Lt/I;->c:I

    iget-object v1, p0, Lt/I;->d:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lt/I;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, v2, v1}, Lcom/sid/tvos/MainActivity;->g3(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget v0, p0, Lt/I;->c:I

    iget-object v1, p0, Lt/I;->d:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lt/I;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, v2, v1}, Lcom/sid/tvos/MainActivity;->r0(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
