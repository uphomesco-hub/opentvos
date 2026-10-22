.class public final synthetic Lcom/sid/tvos/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:I

.field public final synthetic c:Lcom/sid/tvos/MainActivity$SettingsPanel;


# direct methods
.method public synthetic constructor <init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sid/tvos/u;->a:Lcom/sid/tvos/MainActivity;

    iput p1, p0, Lcom/sid/tvos/u;->b:I

    iput-object p2, p0, Lcom/sid/tvos/u;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sid/tvos/u;->b:I

    iget-object v1, p0, Lcom/sid/tvos/u;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v2, p0, Lcom/sid/tvos/u;->a:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/sid/tvos/MainActivity;->f1(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    return-void
.end method
