.class public final synthetic Lt/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Landroid/widget/PopupWindow;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p4, p0, Lt/B;->a:I

    iput-object p1, p0, Lt/B;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/B;->c:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lt/B;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lt/B;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/B;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lt/B;->d:Ljava/lang/Runnable;

    iget-object v2, p0, Lt/B;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1, p1}, Lcom/sid/tvos/MainActivity;->J1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/B;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lt/B;->d:Ljava/lang/Runnable;

    iget-object v2, p0, Lt/B;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1, p1}, Lcom/sid/tvos/MainActivity;->n1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/B;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lt/B;->d:Ljava/lang/Runnable;

    iget-object v2, p0, Lt/B;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1, p1}, Lcom/sid/tvos/MainActivity;->i1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
