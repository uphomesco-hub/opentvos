.class Lcom/sid/tvos/MainActivity$SettingsPanel$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/MainActivity$SettingsPanel;->avatarView(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sid/tvos/MainActivity$SettingsPanel;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel$2;->this$1:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
