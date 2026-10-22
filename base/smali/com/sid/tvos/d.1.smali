.class public final synthetic Lcom/sid/tvos/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/AppAdapter$Holder;

.field public final synthetic b:Lcom/sid/tvos/AppAdapter$TileListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/AppAdapter$Holder;Lcom/sid/tvos/AppAdapter$TileListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/d;->a:Lcom/sid/tvos/AppAdapter$Holder;

    iput-object p2, p0, Lcom/sid/tvos/d;->b:Lcom/sid/tvos/AppAdapter$TileListener;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/d;->a:Lcom/sid/tvos/AppAdapter$Holder;

    iget-object v1, p0, Lcom/sid/tvos/d;->b:Lcom/sid/tvos/AppAdapter$TileListener;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/sid/tvos/AppAdapter$Holder;->a(Lcom/sid/tvos/AppAdapter$Holder;Lcom/sid/tvos/AppAdapter$TileListener;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
