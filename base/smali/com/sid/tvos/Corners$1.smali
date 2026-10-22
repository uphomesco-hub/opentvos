.class Lcom/sid/tvos/Corners$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/Corners;->clip(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$radius:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    iput p1, p0, Lcom/sid/tvos/Corners$1;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget v0, p0, Lcom/sid/tvos/Corners$1;->val$radius:F

    invoke-static {p2, p1, v0}, Lcom/sid/tvos/Corners;->set(Landroid/graphics/Outline;Landroid/view/View;F)V

    return-void
.end method
