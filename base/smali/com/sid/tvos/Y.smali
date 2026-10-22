.class public final synthetic Lcom/sid/tvos/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;ILcom/sid/tvos/Stage$Callback;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sid/tvos/Y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/Y;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sid/tvos/Y;->d:Ljava/lang/Object;

    iput p3, p0, Lcom/sid/tvos/Y;->b:I

    iput-object p4, p0, Lcom/sid/tvos/Y;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sid/tvos/Y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/Y;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/sid/tvos/Y;->b:I

    iput-object p3, p0, Lcom/sid/tvos/Y;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sid/tvos/Y;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sid/tvos/Y;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sid/tvos/Y;->b:I

    iget-object v1, p0, Lcom/sid/tvos/Y;->e:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/Stage$Callback;

    iget-object v2, p0, Lcom/sid/tvos/Y;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/sid/tvos/Y;->d:Ljava/lang/Object;

    check-cast v3, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/Stage;->b(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;ILcom/sid/tvos/Stage$Callback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/Y;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity$IntChoice;

    iget-object v1, p0, Lcom/sid/tvos/Y;->e:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v2, p0, Lcom/sid/tvos/Y;->c:Ljava/lang/Object;

    check-cast v2, [I

    iget v3, p0, Lcom/sid/tvos/Y;->b:I

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->o([IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
