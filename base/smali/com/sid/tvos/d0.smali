.class public final synthetic Lcom/sid/tvos/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:Lcom/sid/tvos/Images$Callback;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/c0;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/d0;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p2, p0, Lcom/sid/tvos/d0;->b:Lcom/sid/tvos/Images$Callback;

    iput-object p3, p0, Lcom/sid/tvos/d0;->c:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/sid/tvos/d0;->d:I

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/d0;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v1, p0, Lcom/sid/tvos/d0;->b:Lcom/sid/tvos/Images$Callback;

    iget-object v2, p0, Lcom/sid/tvos/d0;->c:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sid/tvos/d0;->d:I

    check-cast v1, Lcom/sid/tvos/c0;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->u(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/c0;Landroid/graphics/Bitmap;II)V

    return-void
.end method
