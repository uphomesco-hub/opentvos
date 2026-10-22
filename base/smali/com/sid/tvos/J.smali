.class public final synthetic Lcom/sid/tvos/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:Landroid/widget/HorizontalScrollView;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/HorizontalScrollView;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/J;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p2, p0, Lcom/sid/tvos/J;->b:Landroid/widget/HorizontalScrollView;

    iput p3, p0, Lcom/sid/tvos/J;->c:I

    iput-object p4, p0, Lcom/sid/tvos/J;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    iget v2, p0, Lcom/sid/tvos/J;->c:I

    iget-object v3, p0, Lcom/sid/tvos/J;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/sid/tvos/J;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v1, p0, Lcom/sid/tvos/J;->b:Landroid/widget/HorizontalScrollView;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->q(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/HorizontalScrollView;ILjava/util/List;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
