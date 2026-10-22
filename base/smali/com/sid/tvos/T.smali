.class public final synthetic Lcom/sid/tvos/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:[Ljava/lang/String;

.field public final synthetic e:Lcom/sid/tvos/MainActivity$IntChoice;

.field public final synthetic f:Lcom/sid/tvos/MainActivity$IntChoice;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/T;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p2, p0, Lcom/sid/tvos/T;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sid/tvos/T;->c:I

    iput-object p4, p0, Lcom/sid/tvos/T;->d:[Ljava/lang/String;

    iput-object p5, p0, Lcom/sid/tvos/T;->e:Lcom/sid/tvos/MainActivity$IntChoice;

    iput-object p6, p0, Lcom/sid/tvos/T;->f:Lcom/sid/tvos/MainActivity$IntChoice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v4, p0, Lcom/sid/tvos/T;->e:Lcom/sid/tvos/MainActivity$IntChoice;

    iget-object v5, p0, Lcom/sid/tvos/T;->f:Lcom/sid/tvos/MainActivity$IntChoice;

    iget-object v0, p0, Lcom/sid/tvos/T;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v1, p0, Lcom/sid/tvos/T;->b:Ljava/lang/String;

    iget v2, p0, Lcom/sid/tvos/T;->c:I

    iget-object v3, p0, Lcom/sid/tvos/T;->d:[Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->a(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    return-void
.end method
