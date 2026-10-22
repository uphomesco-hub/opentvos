.class public final synthetic Lt/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;IIZLandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/V;->a:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/V;->b:I

    iput p3, p0, Lt/V;->c:I

    iput-boolean p4, p0, Lt/V;->d:Z

    iput-object p5, p0, Lt/V;->e:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lt/V;->a:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lt/V;->b:I

    iget v2, p0, Lt/V;->c:I

    iget-boolean v3, p0, Lt/V;->d:Z

    iget-object v4, p0, Lt/V;->e:Landroid/graphics/Bitmap;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->I1(Lcom/sid/tvos/MainActivity;IIZLandroid/graphics/Bitmap;I)V

    return-void
.end method
