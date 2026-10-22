.class public final synthetic Lt/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:[F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Rect;FF[FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/k;->a:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/k;->b:Landroid/graphics/Rect;

    iput p3, p0, Lt/k;->c:F

    iput p4, p0, Lt/k;->d:F

    iput-object p5, p0, Lt/k;->e:[F

    iput p6, p0, Lt/k;->f:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    iget-object v4, p0, Lt/k;->e:[F

    iget v5, p0, Lt/k;->f:F

    iget-object v0, p0, Lt/k;->a:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/k;->b:Landroid/graphics/Rect;

    iget v2, p0, Lt/k;->c:F

    iget v3, p0, Lt/k;->d:F

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->t3(Lcom/sid/tvos/MainActivity;Landroid/graphics/Rect;FF[FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
