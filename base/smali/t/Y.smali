.class public final synthetic Lt/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/Y;->a:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/Y;->b:Landroid/graphics/drawable/GradientDrawable;

    iput-object p3, p0, Lt/Y;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lt/Y;->b:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lt/Y;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lt/Y;->a:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1, p1, p2}, Lcom/sid/tvos/MainActivity;->C(Lcom/sid/tvos/MainActivity;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/ImageView;Landroid/view/View;Z)V

    return-void
.end method
