.class public final synthetic Lcom/sid/tvos/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:I

.field public final synthetic d:[I

.field public final synthetic e:Lcom/sid/tvos/MainActivity$IntChoice;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/LinearLayout;I[ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/K;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/M;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p2, p0, Lcom/sid/tvos/M;->b:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/sid/tvos/M;->c:I

    iput-object p4, p0, Lcom/sid/tvos/M;->d:[I

    iput-object p5, p0, Lcom/sid/tvos/M;->e:Lcom/sid/tvos/MainActivity$IntChoice;

    iput-object p6, p0, Lcom/sid/tvos/M;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    iget-object v3, p0, Lcom/sid/tvos/M;->d:[I

    iget-object v0, p0, Lcom/sid/tvos/M;->f:Ljava/lang/Runnable;

    move-object v5, v0

    check-cast v5, Lcom/sid/tvos/K;

    iget-object v0, p0, Lcom/sid/tvos/M;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v1, p0, Lcom/sid/tvos/M;->b:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sid/tvos/M;->c:I

    iget-object v4, p0, Lcom/sid/tvos/M;->e:Lcom/sid/tvos/MainActivity$IntChoice;

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/sid/tvos/MainActivity$SettingsPanel;->d(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/LinearLayout;I[ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/K;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
