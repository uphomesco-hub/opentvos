.class public final synthetic Lt/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:I

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lt/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/f;->b:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/f;->c:I

    iput-object p3, p0, Lt/f;->e:Ljava/lang/Object;

    iput-object p4, p0, Lt/f;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lt/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/f;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/f;->d:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lt/f;->e:Ljava/lang/Object;

    iput p4, p0, Lt/f;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lt/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/f;->e:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lt/f;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lt/f;->b:Lcom/sid/tvos/MainActivity;

    iget v3, p0, Lt/f;->c:I

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/MainActivity;->V2(Lcom/sid/tvos/MainActivity;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/f;->e:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget v1, p0, Lt/f;->c:I

    iget-object v2, p0, Lt/f;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lt/f;->d:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/MainActivity;->A0(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
