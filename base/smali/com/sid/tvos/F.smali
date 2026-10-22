.class public final synthetic Lcom/sid/tvos/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/Weather$PlaceCallback;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/sid/tvos/MainActivity$SettingsPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sid/tvos/F;->a:Lcom/sid/tvos/MainActivity;

    iput-object p3, p0, Lcom/sid/tvos/F;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/sid/tvos/F;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/F;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sid/tvos/F;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v2, p0, Lcom/sid/tvos/F;->a:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1, p1}, Lcom/sid/tvos/MainActivity;->D3(Lcom/sid/tvos/MainActivity;Ljava/lang/String;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;)V

    return-void
.end method
