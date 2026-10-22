.class public final synthetic Lcom/sid/tvos/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:[I

.field public final synthetic c:I

.field public final synthetic d:[Ljava/lang/Runnable;

.field public final synthetic e:Lcom/sid/tvos/MainActivity$IntChoice;

.field public final synthetic f:Lcom/sid/tvos/MainActivity$SettingsPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;[II[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/W;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p2, p0, Lcom/sid/tvos/W;->b:[I

    iput p3, p0, Lcom/sid/tvos/W;->c:I

    iput-object p4, p0, Lcom/sid/tvos/W;->d:[Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/sid/tvos/W;->e:Lcom/sid/tvos/MainActivity$IntChoice;

    iput-object p6, p0, Lcom/sid/tvos/W;->f:Lcom/sid/tvos/MainActivity$SettingsPanel;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 8

    .line 1
    iget-object v4, p0, Lcom/sid/tvos/W;->e:Lcom/sid/tvos/MainActivity$IntChoice;

    iget-object v5, p0, Lcom/sid/tvos/W;->f:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v0, p0, Lcom/sid/tvos/W;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v1, p0, Lcom/sid/tvos/W;->b:[I

    iget v2, p0, Lcom/sid/tvos/W;->c:I

    iget-object v3, p0, Lcom/sid/tvos/W;->d:[Ljava/lang/Runnable;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/sid/tvos/MainActivity$SettingsPanel;->h(Lcom/sid/tvos/MainActivity$SettingsPanel;[II[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Z)V

    return-void
.end method
