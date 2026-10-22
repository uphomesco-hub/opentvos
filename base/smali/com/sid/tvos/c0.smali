.class public final synthetic Lcom/sid/tvos/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/Images$Callback;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;IFIIIIILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/c0;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput p2, p0, Lcom/sid/tvos/c0;->b:I

    iput p3, p0, Lcom/sid/tvos/c0;->c:F

    iput p4, p0, Lcom/sid/tvos/c0;->d:I

    iput p5, p0, Lcom/sid/tvos/c0;->e:I

    iput p6, p0, Lcom/sid/tvos/c0;->f:I

    iput p7, p0, Lcom/sid/tvos/c0;->g:I

    iput p8, p0, Lcom/sid/tvos/c0;->h:I

    iput-object p9, p0, Lcom/sid/tvos/c0;->i:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onImage(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 1
    iget v6, p0, Lcom/sid/tvos/c0;->h:I

    iget-object v9, p0, Lcom/sid/tvos/c0;->i:Ljava/lang/Runnable;

    iget-object v8, p0, Lcom/sid/tvos/c0;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget v1, p0, Lcom/sid/tvos/c0;->b:I

    iget v0, p0, Lcom/sid/tvos/c0;->c:F

    iget v2, p0, Lcom/sid/tvos/c0;->d:I

    iget v3, p0, Lcom/sid/tvos/c0;->e:I

    iget v4, p0, Lcom/sid/tvos/c0;->f:I

    iget v5, p0, Lcom/sid/tvos/c0;->g:I

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/sid/tvos/MainActivity$SettingsPanel;->z(FIIIIIILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/Runnable;)V

    return-void
.end method
