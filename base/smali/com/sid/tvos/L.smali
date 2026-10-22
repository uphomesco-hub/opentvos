.class public final synthetic Lcom/sid/tvos/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$TrackColours;

.field public final synthetic b:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic c:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/L;->a:Lcom/sid/tvos/MainActivity$TrackColours;

    iput-object p2, p0, Lcom/sid/tvos/L;->b:Landroid/graphics/drawable/GradientDrawable;

    iput-object p3, p0, Lcom/sid/tvos/L;->c:Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lcom/sid/tvos/L;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/sid/tvos/L;->c:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sid/tvos/L;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sid/tvos/L;->a:Lcom/sid/tvos/MainActivity$TrackColours;

    iget-object v1, p0, Lcom/sid/tvos/L;->b:Landroid/graphics/drawable/GradientDrawable;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->b(Lcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;Landroid/view/View;Z)V

    return-void
.end method
