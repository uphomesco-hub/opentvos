.class public final synthetic Lt/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt/h;->a:I

    iput-object p1, p0, Lt/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lt/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->q2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->u1(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->c3(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lt/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->y3(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lt/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->j2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lt/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->m2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lt/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->s2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lt/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->I2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V

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
