.class Lcom/sid/tvos/MainActivity$14;
.super Lr/Q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/MainActivity;->focusTile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/MainActivity;

.field final synthetic val$pos:I


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sid/tvos/MainActivity$14;->this$0:Lcom/sid/tvos/MainActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/sid/tvos/MainActivity$14;->val$pos:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Lr/Q;)V

    iget p2, p0, Lcom/sid/tvos/MainActivity$14;->val$pos:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/o;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p2, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    sget p2, Lcom/sid/tvos/R$id;->card:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method
