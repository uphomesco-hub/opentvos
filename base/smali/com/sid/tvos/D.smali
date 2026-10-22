.class public final synthetic Lcom/sid/tvos/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/MainActivity$IntChoice;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[F

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([FLt/I;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sid/tvos/D;->a:I

    iput-object p1, p0, Lcom/sid/tvos/D;->b:[F

    iput-object p2, p0, Lcom/sid/tvos/D;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final pick(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/D;->c:Ljava/lang/Runnable;

    check-cast v0, Lt/I;

    iget-object v1, p0, Lcom/sid/tvos/D;->b:[F

    invoke-static {v1, v0, p1}, Lcom/sid/tvos/MainActivity;->e2([FLt/I;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/D;->c:Ljava/lang/Runnable;

    check-cast v0, Lt/I;

    iget-object v1, p0, Lcom/sid/tvos/D;->b:[F

    invoke-static {v1, v0, p1}, Lcom/sid/tvos/MainActivity;->T([FLt/I;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sid/tvos/D;->c:Ljava/lang/Runnable;

    check-cast v0, Lt/I;

    iget-object v1, p0, Lcom/sid/tvos/D;->b:[F

    invoke-static {v1, v0, p1}, Lcom/sid/tvos/MainActivity;->F0([FLt/I;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
