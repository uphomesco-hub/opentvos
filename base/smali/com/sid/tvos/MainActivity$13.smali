.class Lcom/sid/tvos/MainActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/MainActivity;->slideDock(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/MainActivity;

.field final synthetic val$dir:I

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$13;->this$0:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lcom/sid/tvos/MainActivity$13;->val$position:I

    iput p3, p0, Lcom/sid/tvos/MainActivity$13;->val$dir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$13;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->c4(Lcom/sid/tvos/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$13;->this$0:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lcom/sid/tvos/MainActivity$13;->val$position:I

    iget v2, p0, Lcom/sid/tvos/MainActivity$13;->val$dir:I

    invoke-static {v0, v1, v2}, Lcom/sid/tvos/MainActivity;->z4(Lcom/sid/tvos/MainActivity;II)V

    return-void
.end method
