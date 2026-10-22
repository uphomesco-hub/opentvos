.class public final synthetic Lt/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;I)V
    .locals 0

    .line 1
    iput p3, p0, Lt/v;->a:I

    iput-object p1, p0, Lt/v;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/v;->c:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lt/v;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/v;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/v;->c:Landroid/widget/PopupWindow;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/MainActivity;->v1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/v;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/v;->c:Landroid/widget/PopupWindow;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/MainActivity;->a2(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
