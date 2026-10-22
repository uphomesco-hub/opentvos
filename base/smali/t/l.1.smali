.class public final synthetic Lt/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt/l;->a:I

    iput-object p1, p0, Lt/l;->b:Lcom/sid/tvos/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget v0, p0, Lt/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/l;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->D1(Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/l;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->k3(Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/l;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->Q(Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lt/l;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->R1(Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lt/l;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->l2(Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lt/l;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->N0(Lcom/sid/tvos/MainActivity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
