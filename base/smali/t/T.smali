.class public final synthetic Lt/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt/T;->a:I

    iput-object p1, p0, Lt/T;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lt/T;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/T;->b:Landroid/view/KeyEvent$Callback;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/sid/tvos/MainActivity;->o(Lcom/sid/tvos/MainActivity;Landroid/view/View;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/T;->b:Landroid/view/KeyEvent$Callback;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcom/sid/tvos/MainActivity;->O0(Landroid/widget/ImageView;Landroid/view/View;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
