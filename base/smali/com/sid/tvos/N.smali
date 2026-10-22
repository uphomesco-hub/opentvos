.class public final synthetic Lcom/sid/tvos/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/N;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p2, p0, Lcom/sid/tvos/N;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/sid/tvos/N;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/sid/tvos/N;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/sid/tvos/N;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/sid/tvos/N;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->r(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
