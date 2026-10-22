.class public final synthetic Lcom/sid/tvos/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sid/tvos/b;->a:I

    iput-object p1, p0, Lcom/sid/tvos/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sid/tvos/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/WatchNext$Item;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/MainActivity;->g0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/WatchNext$Item;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/AppAdapter;

    iget-object v1, p0, Lcom/sid/tvos/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/AppAdapter;->c(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sid/tvos/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/AppAdapter;

    iget-object v1, p0, Lcom/sid/tvos/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/AppAdapter;->a(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
