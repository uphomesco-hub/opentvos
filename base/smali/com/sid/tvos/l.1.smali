.class public final synthetic Lcom/sid/tvos/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Lcom/sid/tvos/AppAdapter$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sid/tvos/l;->a:I

    iput-object p1, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->D(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->U(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->Z2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->o3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->o2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->p(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->g(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->N2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->h3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/sid/tvos/l;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/l;->c:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->o0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
