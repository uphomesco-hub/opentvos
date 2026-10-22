.class public final synthetic Lt/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt/e;->a:I

    iput-object p1, p0, Lt/e;->b:Lcom/sid/tvos/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget v0, p0, Lt/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/e;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->b2(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lt/e;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->t1(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lt/e;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->u2(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_2
    iget-object v0, p0, Lt/e;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->a0(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_3
    iget-object v0, p0, Lt/e;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->j0(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
