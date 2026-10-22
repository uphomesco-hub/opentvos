.class Lcom/sid/tvos/MainActivity$5;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/MainActivity;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$5;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public calculateExtraLayoutSpace(Lr/Y;[I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$5;->this$0:Lcom/sid/tvos/MainActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->c4(Lcom/sid/tvos/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    aput p1, p2, v0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    aput p1, p2, v0

    .line 16
    .line 17
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
