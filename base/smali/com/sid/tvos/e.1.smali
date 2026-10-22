.class public final synthetic Lcom/sid/tvos/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/AppAdapter$Holder;

.field public final synthetic b:F

.field public final synthetic c:Lcom/sid/tvos/AppAdapter$TileListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/AppAdapter$Holder;FLcom/sid/tvos/AppAdapter$TileListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/e;->a:Lcom/sid/tvos/AppAdapter$Holder;

    iput p2, p0, Lcom/sid/tvos/e;->b:F

    iput-object p3, p0, Lcom/sid/tvos/e;->c:Lcom/sid/tvos/AppAdapter$TileListener;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sid/tvos/e;->b:F

    iget-object v1, p0, Lcom/sid/tvos/e;->c:Lcom/sid/tvos/AppAdapter$TileListener;

    iget-object v2, p0, Lcom/sid/tvos/e;->a:Lcom/sid/tvos/AppAdapter$Holder;

    invoke-static {v2, v0, v1, p1, p2}, Lcom/sid/tvos/AppAdapter$Holder;->b(Lcom/sid/tvos/AppAdapter$Holder;FLcom/sid/tvos/AppAdapter$TileListener;Landroid/view/View;Z)V

    return-void
.end method
