.class public final synthetic Lcom/sid/tvos/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/MainActivity$NameCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Lcom/sid/tvos/AppAdapter$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sid/tvos/s;->a:I

    iput-object p1, p0, Lcom/sid/tvos/s;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/s;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/s;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/s;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/MainActivity;->t2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/s;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/s;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/MainActivity;->N(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
