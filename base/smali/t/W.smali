.class public final synthetic Lt/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:[Landroid/animation/ValueAnimator;

.field public final synthetic c:[F

.field public final synthetic d:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic e:Landroid/widget/TextClock;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;[Landroid/animation/ValueAnimator;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/W;->a:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/W;->b:[Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lt/W;->c:[F

    iput-object p4, p0, Lt/W;->d:Landroid/graphics/drawable/GradientDrawable;

    iput-object p5, p0, Lt/W;->e:Landroid/widget/TextClock;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .line 1
    iget-object v3, p0, Lt/W;->d:Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lt/W;->e:Landroid/widget/TextClock;

    iget-object v0, p0, Lt/W;->a:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/W;->b:[Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lt/W;->c:[F

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->I(Lcom/sid/tvos/MainActivity;[Landroid/animation/ValueAnimator;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;Landroid/view/View;Z)V

    return-void
.end method
