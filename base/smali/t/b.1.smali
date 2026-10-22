.class public final synthetic Lt/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:[Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    iput p4, p0, Lt/b;->a:I

    iput-object p1, p0, Lt/b;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/b;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lt/b;->d:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lt/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/b;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lt/b;->d:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lt/b;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->x3(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/b;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lt/b;->d:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lt/b;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->d0(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
