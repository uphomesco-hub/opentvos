.class public final synthetic Lt/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Landroid/widget/ImageView;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>([Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    iput p3, p0, Lt/H;->a:I

    iput-object p1, p0, Lt/H;->b:[Landroid/widget/ImageView;

    iput-object p2, p0, Lt/H;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt/H;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/H;->b:[Landroid/widget/ImageView;

    iget-object v1, p0, Lt/H;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->K0([Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/H;->b:[Landroid/widget/ImageView;

    iget-object v1, p0, Lt/H;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->k0([Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
