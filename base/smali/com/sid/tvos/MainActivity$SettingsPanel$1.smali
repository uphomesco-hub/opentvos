.class Lcom/sid/tvos/MainActivity$SettingsPanel$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/MainActivity$SettingsPanel;->build()V
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

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel$1;->this$1:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel$1;->this$1:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v0, v0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v0, v0, v1

    invoke-static {p2, p1, v0}, Lcom/sid/tvos/Corners;->set(Landroid/graphics/Outline;Landroid/view/View;F)V

    return-void
.end method
