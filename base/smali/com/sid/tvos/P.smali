.class public final synthetic Lcom/sid/tvos/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(FIIIIIILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p9, p0, Lcom/sid/tvos/P;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p8, p0, Lcom/sid/tvos/P;->b:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/sid/tvos/P;->c:I

    iput p1, p0, Lcom/sid/tvos/P;->d:F

    iput p3, p0, Lcom/sid/tvos/P;->e:I

    iput p4, p0, Lcom/sid/tvos/P;->f:I

    iput p5, p0, Lcom/sid/tvos/P;->g:I

    iput p6, p0, Lcom/sid/tvos/P;->h:I

    iput p7, p0, Lcom/sid/tvos/P;->i:I

    iput-object p10, p0, Lcom/sid/tvos/P;->j:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v6, p0, Lcom/sid/tvos/P;->i:I

    iget-object v9, p0, Lcom/sid/tvos/P;->j:Ljava/lang/Runnable;

    iget-object v8, p0, Lcom/sid/tvos/P;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v7, p0, Lcom/sid/tvos/P;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sid/tvos/P;->c:I

    iget v0, p0, Lcom/sid/tvos/P;->d:F

    iget v2, p0, Lcom/sid/tvos/P;->e:I

    iget v3, p0, Lcom/sid/tvos/P;->f:I

    iget v4, p0, Lcom/sid/tvos/P;->g:I

    iget v5, p0, Lcom/sid/tvos/P;->h:I

    invoke-static/range {v0 .. v9}, Lcom/sid/tvos/MainActivity$SettingsPanel;->s(FIIIIIILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/Runnable;)V

    return-void
.end method
