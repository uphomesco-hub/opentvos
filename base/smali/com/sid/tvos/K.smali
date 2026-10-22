.class public final synthetic Lcom/sid/tvos/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/sid/tvos/MainActivity$IntLabel;

.field public final synthetic d:[I

.field public final synthetic e:Lcom/sid/tvos/MainActivity$TrackColours;

.field public final synthetic f:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Landroid/widget/FrameLayout;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/TextView;Lcom/sid/tvos/MainActivity$IntLabel;[ILcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;Landroid/widget/FrameLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/K;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p2, p0, Lcom/sid/tvos/K;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sid/tvos/K;->c:Lcom/sid/tvos/MainActivity$IntLabel;

    iput-object p4, p0, Lcom/sid/tvos/K;->d:[I

    iput-object p5, p0, Lcom/sid/tvos/K;->e:Lcom/sid/tvos/MainActivity$TrackColours;

    iput-object p6, p0, Lcom/sid/tvos/K;->f:Landroid/graphics/drawable/GradientDrawable;

    iput-object p7, p0, Lcom/sid/tvos/K;->g:Landroid/view/View;

    iput-object p8, p0, Lcom/sid/tvos/K;->h:Landroid/widget/FrameLayout;

    iput p9, p0, Lcom/sid/tvos/K;->i:I

    iput p10, p0, Lcom/sid/tvos/K;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v8, p0, Lcom/sid/tvos/K;->i:I

    iget v9, p0, Lcom/sid/tvos/K;->j:I

    iget-object v0, p0, Lcom/sid/tvos/K;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v1, p0, Lcom/sid/tvos/K;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sid/tvos/K;->c:Lcom/sid/tvos/MainActivity$IntLabel;

    iget-object v3, p0, Lcom/sid/tvos/K;->d:[I

    iget-object v4, p0, Lcom/sid/tvos/K;->e:Lcom/sid/tvos/MainActivity$TrackColours;

    iget-object v5, p0, Lcom/sid/tvos/K;->f:Landroid/graphics/drawable/GradientDrawable;

    iget-object v6, p0, Lcom/sid/tvos/K;->g:Landroid/view/View;

    iget-object v7, p0, Lcom/sid/tvos/K;->h:Landroid/widget/FrameLayout;

    invoke-static/range {v0 .. v9}, Lcom/sid/tvos/MainActivity$SettingsPanel;->x(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/TextView;Lcom/sid/tvos/MainActivity$IntLabel;[ILcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;Landroid/widget/FrameLayout;II)V

    return-void
.end method
