.class public final synthetic Lcom/sid/tvos/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Lcom/sid/tvos/WatchNext$Item;

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sid/tvos/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/w;->b:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lcom/sid/tvos/w;->e:I

    iput p3, p0, Lcom/sid/tvos/w;->f:I

    iput-object p4, p0, Lcom/sid/tvos/w;->d:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/sid/tvos/w;->c:Lcom/sid/tvos/WatchNext$Item;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/WatchNext$Item;Landroid/graphics/Bitmap;II)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/sid/tvos/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/w;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/w;->c:Lcom/sid/tvos/WatchNext$Item;

    iput-object p3, p0, Lcom/sid/tvos/w;->d:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/sid/tvos/w;->e:I

    iput p5, p0, Lcom/sid/tvos/w;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/sid/tvos/w;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sid/tvos/w;->e:I

    iget v1, p0, Lcom/sid/tvos/w;->f:I

    iget-object v2, p0, Lcom/sid/tvos/w;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lcom/sid/tvos/w;->c:Lcom/sid/tvos/WatchNext$Item;

    iget-object v4, p0, Lcom/sid/tvos/w;->d:Landroid/graphics/Bitmap;

    invoke-static {v2, v0, v1, v4, v3}, Lcom/sid/tvos/MainActivity;->K2(Lcom/sid/tvos/MainActivity;IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/w;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sid/tvos/w;->c:Lcom/sid/tvos/WatchNext$Item;

    iget-object v2, p0, Lcom/sid/tvos/w;->b:Lcom/sid/tvos/MainActivity;

    iget v3, p0, Lcom/sid/tvos/w;->e:I

    iget v4, p0, Lcom/sid/tvos/w;->f:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/MainActivity;->e1(Lcom/sid/tvos/MainActivity;IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
