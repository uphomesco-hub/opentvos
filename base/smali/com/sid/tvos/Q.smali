.class public final synthetic Lcom/sid/tvos/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/Q;->a:Landroid/graphics/drawable/GradientDrawable;

    iput p2, p0, Lcom/sid/tvos/Q;->b:I

    iput-boolean p3, p0, Lcom/sid/tvos/Q;->c:Z

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sid/tvos/Q;->b:I

    iget-boolean v1, p0, Lcom/sid/tvos/Q;->c:Z

    iget-object v2, p0, Lcom/sid/tvos/Q;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v2, v0, v1, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->e(Landroid/graphics/drawable/GradientDrawable;IZLandroid/view/View;Z)V

    return-void
.end method
