.class public final synthetic Lt/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/graphics/Rect;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/Q;->a:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/Q;->b:Landroid/view/View;

    iput-object p3, p0, Lt/Q;->c:Landroid/graphics/Rect;

    iput p4, p0, Lt/Q;->d:F

    iput p5, p0, Lt/Q;->e:F

    iput p6, p0, Lt/Q;->f:F

    iput p7, p0, Lt/Q;->g:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    iget v5, p0, Lt/Q;->f:F

    iget v6, p0, Lt/Q;->g:F

    iget-object v0, p0, Lt/Q;->a:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/Q;->b:Landroid/view/View;

    iget-object v2, p0, Lt/Q;->c:Landroid/graphics/Rect;

    iget v3, p0, Lt/Q;->d:F

    iget v4, p0, Lt/Q;->e:F

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/sid/tvos/MainActivity;->M3(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/graphics/Rect;FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
