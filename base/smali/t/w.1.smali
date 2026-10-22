.class public final synthetic Lt/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Lt/w;->a:I

    iput-object p1, p0, Lt/w;->b:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/w;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt/w;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/w;->b:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lt/w;->c:I

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->Z(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/w;->b:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lt/w;->c:I

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->H2(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/w;->b:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lt/w;->c:I

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->f(Lcom/sid/tvos/MainActivity;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
