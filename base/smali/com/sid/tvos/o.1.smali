.class public final synthetic Lcom/sid/tvos/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Lcom/sid/tvos/AppAdapter$Entry;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/sid/tvos/o;->a:I

    iput-object p1, p0, Lcom/sid/tvos/o;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/o;->c:Lcom/sid/tvos/AppAdapter$Entry;

    iput-object p3, p0, Lcom/sid/tvos/o;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sid/tvos/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/o;->c:Lcom/sid/tvos/AppAdapter$Entry;

    iget-object v1, p0, Lcom/sid/tvos/o;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/sid/tvos/o;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->M2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/o;->c:Lcom/sid/tvos/AppAdapter$Entry;

    iget-object v1, p0, Lcom/sid/tvos/o;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/sid/tvos/o;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->Z0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
