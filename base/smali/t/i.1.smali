.class public final synthetic Lt/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Lt/i;->a:I

    iput-object p1, p0, Lt/i;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/i;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/i;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/i;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->X2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/i;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/i;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->e3(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/i;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/i;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->z2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lt/i;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/i;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->d2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lt/i;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/i;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->V(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lt/i;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/i;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->a1(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lt/i;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/i;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->f2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
