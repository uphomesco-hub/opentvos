.class public final synthetic Lt/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;I)V
    .locals 0

    .line 1
    iput p3, p0, Lt/C;->a:I

    iput-object p1, p0, Lt/C;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/C;->c:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt/C;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/C;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/C;->c:Landroid/widget/PopupWindow;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->c(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/C;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/C;->c:Landroid/widget/PopupWindow;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->v3(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/C;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/C;->c:Landroid/widget/PopupWindow;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->K3(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lt/C;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/C;->c:Landroid/widget/PopupWindow;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->x(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lt/C;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/C;->c:Landroid/widget/PopupWindow;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->M1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V

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
