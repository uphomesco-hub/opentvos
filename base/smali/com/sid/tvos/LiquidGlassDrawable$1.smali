.class Lcom/sid/tvos/LiquidGlassDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/LiquidGlassDrawable;->setBackdrop(Landroid/graphics/Bitmap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/LiquidGlassDrawable;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/LiquidGlassDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable$1;->this$0:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable$1;->this$0:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-static {p1}, Lcom/sid/tvos/LiquidGlassDrawable;->b(Lcom/sid/tvos/LiquidGlassDrawable;)V

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable$1;->this$0:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-static {p1}, Lcom/sid/tvos/LiquidGlassDrawable;->c(Lcom/sid/tvos/LiquidGlassDrawable;)V

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable$1;->this$0:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
