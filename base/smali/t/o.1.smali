.class public final synthetic Lt/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lt/o;->a:I

    iput-object p1, p0, Lt/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lt/o;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lt/o;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->n3(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/o;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->H1(Lcom/sid/tvos/MainActivity;Landroid/content/Intent;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/o;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->Q2(Lcom/sid/tvos/MainActivity;Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
