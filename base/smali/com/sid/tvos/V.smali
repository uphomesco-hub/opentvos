.class public final synthetic Lcom/sid/tvos/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic b:[Z

.field public final synthetic c:[Ljava/lang/Runnable;

.field public final synthetic d:Lcom/sid/tvos/MainActivity$IntChoice;

.field public final synthetic e:[I

.field public final synthetic f:I

.field public final synthetic g:Lcom/sid/tvos/MainActivity$IntChoice;

.field public final synthetic h:Lcom/sid/tvos/MainActivity$SettingsPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;[Z[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/V;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p2, p0, Lcom/sid/tvos/V;->b:[Z

    iput-object p3, p0, Lcom/sid/tvos/V;->c:[Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/sid/tvos/V;->d:Lcom/sid/tvos/MainActivity$IntChoice;

    iput-object p5, p0, Lcom/sid/tvos/V;->e:[I

    iput p6, p0, Lcom/sid/tvos/V;->f:I

    iput-object p7, p0, Lcom/sid/tvos/V;->g:Lcom/sid/tvos/MainActivity$IntChoice;

    iput-object p8, p0, Lcom/sid/tvos/V;->h:Lcom/sid/tvos/MainActivity$SettingsPanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v6, p0, Lcom/sid/tvos/V;->g:Lcom/sid/tvos/MainActivity$IntChoice;

    iget-object v7, p0, Lcom/sid/tvos/V;->h:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v0, p0, Lcom/sid/tvos/V;->a:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v1, p0, Lcom/sid/tvos/V;->b:[Z

    iget-object v2, p0, Lcom/sid/tvos/V;->c:[Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sid/tvos/V;->d:Lcom/sid/tvos/MainActivity$IntChoice;

    iget-object v4, p0, Lcom/sid/tvos/V;->e:[I

    iget v5, p0, Lcom/sid/tvos/V;->f:I

    invoke-static/range {v0 .. v7}, Lcom/sid/tvos/MainActivity$SettingsPanel;->t(Lcom/sid/tvos/MainActivity$SettingsPanel;[Z[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method
