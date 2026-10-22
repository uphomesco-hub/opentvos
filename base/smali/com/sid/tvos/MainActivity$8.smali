.class Lcom/sid/tvos/MainActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/MainActivity;->moveFavourite(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/MainActivity;

.field final synthetic val$dir:I

.field final synthetic val$offsetBefore:I


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$8;->this$0:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lcom/sid/tvos/MainActivity$8;->val$offsetBefore:I

    iput p3, p0, Lcom/sid/tvos/MainActivity$8;->val$dir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$8;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->c4(Lcom/sid/tvos/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$8;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->R3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/AppAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$8;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->e4(Lcom/sid/tvos/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sid/tvos/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$8;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->c4(Lcom/sid/tvos/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$8;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v2}, Lcom/sid/tvos/MainActivity;->R3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/AppAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sid/tvos/AppAdapter;->favouriteIndexAt(I)I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/sid/tvos/MainActivity$8;->val$offsetBefore:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$8;->this$0:Lcom/sid/tvos/MainActivity;

    iget v3, p0, Lcom/sid/tvos/MainActivity$8;->val$dir:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    invoke-static {v2, v0, v3}, Lcom/sid/tvos/MainActivity;->A4(Lcom/sid/tvos/MainActivity;IF)V

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$8;->this$0:Lcom/sid/tvos/MainActivity;

    iget v3, p0, Lcom/sid/tvos/MainActivity$8;->val$dir:I

    sub-int v4, v0, v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    invoke-static {v2, v4, v3}, Lcom/sid/tvos/MainActivity;->A4(Lcom/sid/tvos/MainActivity;IF)V

    :cond_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity$8;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1, v0}, Lcom/sid/tvos/MainActivity;->t4(Lcom/sid/tvos/MainActivity;I)V

    return-void
.end method
