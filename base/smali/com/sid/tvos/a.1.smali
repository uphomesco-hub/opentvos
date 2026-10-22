.class public final synthetic Lcom/sid/tvos/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/AppAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/AppAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/a;->a:Lcom/sid/tvos/AppAdapter;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/sid/tvos/AppAdapter$Entry;

    check-cast p2, Lcom/sid/tvos/AppAdapter$Entry;

    iget-object v0, p0, Lcom/sid/tvos/a;->a:Lcom/sid/tvos/AppAdapter;

    invoke-static {v0, p1, p2}, Lcom/sid/tvos/AppAdapter;->b(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;Lcom/sid/tvos/AppAdapter$Entry;)I

    move-result p1

    return p1
.end method
