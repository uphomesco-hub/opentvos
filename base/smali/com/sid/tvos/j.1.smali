.class public final synthetic Lcom/sid/tvos/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/Images$Callback;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sid/tvos/j;->a:I

    iput-object p1, p0, Lcom/sid/tvos/j;->b:Lcom/sid/tvos/Images$Callback;

    iput-object p2, p0, Lcom/sid/tvos/j;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/j;->b:Lcom/sid/tvos/Images$Callback;

    iget-object v1, p0, Lcom/sid/tvos/j;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sid/tvos/Images;->c(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/j;->b:Lcom/sid/tvos/Images$Callback;

    iget-object v1, p0, Lcom/sid/tvos/j;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sid/tvos/Images;->a(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
