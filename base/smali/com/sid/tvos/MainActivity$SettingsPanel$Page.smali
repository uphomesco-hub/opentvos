.class final Lcom/sid/tvos/MainActivity$SettingsPanel$Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/MainActivity$SettingsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# instance fields
.field final builder:Lcom/sid/tvos/MainActivity$PageBuilder;

.field focus:I

.field onBack:Ljava/lang/Runnable;

.field scrollY:I

.field final synthetic this$1:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->this$1:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->focus:I

    iput-object p2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->builder:Lcom/sid/tvos/MainActivity$PageBuilder;

    return-void
.end method
