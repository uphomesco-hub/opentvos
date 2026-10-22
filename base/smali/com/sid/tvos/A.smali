.class public final synthetic Lcom/sid/tvos/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sid/tvos/A;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/A;->b:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iput-object p2, p0, Lcom/sid/tvos/A;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/sid/tvos/A;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;ZLcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sid/tvos/A;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/A;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/sid/tvos/A;->c:Z

    iput-object p3, p0, Lcom/sid/tvos/A;->b:Lcom/sid/tvos/MainActivity$SettingsPanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sid/tvos/A;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/A;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sid/tvos/A;->c:Z

    iget-object v2, p0, Lcom/sid/tvos/A;->b:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->n(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/sid/tvos/A;->c:Z

    iget-object v1, p0, Lcom/sid/tvos/A;->b:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v2, p0, Lcom/sid/tvos/A;->d:Ljava/lang/Object;

    check-cast v2, Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->f3(Lcom/sid/tvos/MainActivity;ZLcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
