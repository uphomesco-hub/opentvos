.class Lcom/sid/tvos/MainActivity$10;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/MainActivity;->zoom(FFJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/MainActivity;

.field final synthetic val$radius:[F


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;[F)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$10;->this$0:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/MainActivity$10;->val$radius:[F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$10;->val$radius:[F

    const/4 v0, 0x0

    aget v5, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
