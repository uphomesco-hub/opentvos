.class public final synthetic Lt/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:I

.field public final synthetic d:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;ILandroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    iput p4, p0, Lt/F;->a:I

    iput-object p1, p0, Lt/F;->b:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/F;->c:I

    iput-object p3, p0, Lt/F;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 2
    iput p4, p0, Lt/F;->a:I

    iput-object p1, p0, Lt/F;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/F;->d:Landroid/graphics/Bitmap;

    iput p3, p0, Lt/F;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lt/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/F;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/F;->d:Landroid/graphics/Bitmap;

    iget v2, p0, Lt/F;->c:I

    invoke-static {v2, v1, v0}, Lcom/sid/tvos/MainActivity;->K1(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/F;->d:Landroid/graphics/Bitmap;

    iget v1, p0, Lt/F;->c:I

    iget-object v2, p0, Lt/F;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v1, v0, v2}, Lcom/sid/tvos/MainActivity;->J3(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/F;->d:Landroid/graphics/Bitmap;

    iget v1, p0, Lt/F;->c:I

    iget-object v2, p0, Lt/F;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v1, v0, v2}, Lcom/sid/tvos/MainActivity;->X0(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_2
    iget v0, p0, Lt/F;->c:I

    iget-object v1, p0, Lt/F;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lt/F;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/sid/tvos/MainActivity;->u3(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_3
    iget v0, p0, Lt/F;->c:I

    iget-object v1, p0, Lt/F;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lt/F;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/sid/tvos/MainActivity;->F1(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V

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
