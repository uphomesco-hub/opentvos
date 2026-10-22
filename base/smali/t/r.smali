.class public final synthetic Lt/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:[F

.field public final synthetic c:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic d:Landroid/widget/TextClock;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/r;->a:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/r;->b:[F

    iput-object p3, p0, Lt/r;->c:Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lt/r;->d:Landroid/widget/TextClock;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lt/r;->c:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lt/r;->d:Landroid/widget/TextClock;

    iget-object v2, p0, Lt/r;->a:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lt/r;->b:[F

    invoke-static {v2, v3, v0, v1, p1}, Lcom/sid/tvos/MainActivity;->y1(Lcom/sid/tvos/MainActivity;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;Landroid/animation/ValueAnimator;)V

    return-void
.end method
