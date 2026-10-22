.class public final synthetic Lt/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lt/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt/p;->b:Lcom/sid/tvos/MainActivity;

    iput-object p3, p0, Lt/p;->d:Ljava/lang/String;

    iput-object p1, p0, Lt/p;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput p4, p0, Lt/p;->a:I

    iput-object p1, p0, Lt/p;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/p;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lt/p;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lt/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/p;->d:Ljava/lang/String;

    iget-object v1, p0, Lt/p;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lt/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v1, v2, v0}, Lcom/sid/tvos/MainActivity;->h(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/p;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lt/p;->d:Ljava/lang/String;

    iget-object v2, p0, Lt/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, v2, v1}, Lcom/sid/tvos/MainActivity;->C0(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/p;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lt/p;->d:Ljava/lang/String;

    iget-object v2, p0, Lt/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, v2, v1}, Lcom/sid/tvos/MainActivity;->b(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
