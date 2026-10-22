.class public final synthetic Lcom/sid/tvos/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/LiquidGlassDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/LiquidGlassDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/k;->a:Lcom/sid/tvos/LiquidGlassDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/k;->a:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-static {v0, p1}, Lcom/sid/tvos/LiquidGlassDrawable;->a(Lcom/sid/tvos/LiquidGlassDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
