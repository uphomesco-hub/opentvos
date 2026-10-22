.class public final synthetic Lcom/sid/tvos/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/AppAdapter;

.field public final synthetic b:Lcom/sid/tvos/AppAdapter$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/c;->a:Lcom/sid/tvos/AppAdapter;

    iput-object p2, p0, Lcom/sid/tvos/c;->b:Lcom/sid/tvos/AppAdapter$Entry;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/c;->a:Lcom/sid/tvos/AppAdapter;

    iget-object v1, p0, Lcom/sid/tvos/c;->b:Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/AppAdapter;->d(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
