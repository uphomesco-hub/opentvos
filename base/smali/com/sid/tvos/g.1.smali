.class public final synthetic Lcom/sid/tvos/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/CwBackground$Opener;
.implements Lcom/sid/tvos/Images$Callback;
.implements Lcom/sid/tvos/MainActivity$IntChoice;
.implements Lcom/sid/tvos/Remaps$CaptureListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sid/tvos/g;->a:I

    iput-object p1, p0, Lcom/sid/tvos/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sid/tvos/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/g;->c:Ljava/lang/Object;

    check-cast v1, [Landroid/widget/PopupWindow;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/MainActivity;->x2(Lcom/sid/tvos/MainActivity;[Landroid/widget/PopupWindow;I)V

    return-void
.end method

.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sid/tvos/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/MainActivity;->J2(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public open()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/sid/tvos/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sid/tvos/CwBackground;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public pick(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/g;->c:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/MainActivity;->T2(Lcom/sid/tvos/MainActivity;[Ljava/lang/String;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/g;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sid/tvos/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/MainActivity;

    invoke-static {v1, v0, p1}, Lcom/sid/tvos/MainActivity;->t(Lcom/sid/tvos/MainActivity;Ljava/util/ArrayList;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
