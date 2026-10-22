.class public final synthetic Lcom/sid/tvos/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/MainActivity$PageBuilder;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:I

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:Lcom/sid/tvos/MainActivity$IntChoice;

.field public final synthetic e:Lcom/sid/tvos/MainActivity$IntChoice;


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/sid/tvos/U;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput p1, p0, Lcom/sid/tvos/U;->b:I

    iput-object p2, p0, Lcom/sid/tvos/U;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sid/tvos/U;->d:Lcom/sid/tvos/MainActivity$IntChoice;

    iput-object p4, p0, Lcom/sid/tvos/U;->e:Lcom/sid/tvos/MainActivity$IntChoice;

    return-void
.end method


# virtual methods
.method public final build(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 6

    .line 1
    iget-object v3, p0, Lcom/sid/tvos/U;->d:Lcom/sid/tvos/MainActivity$IntChoice;

    iget-object v4, p0, Lcom/sid/tvos/U;->e:Lcom/sid/tvos/MainActivity$IntChoice;

    iget-object v0, p0, Lcom/sid/tvos/U;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget v1, p0, Lcom/sid/tvos/U;->b:I

    iget-object v2, p0, Lcom/sid/tvos/U;->c:[Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->c(Lcom/sid/tvos/MainActivity$SettingsPanel;I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method
