.class Lcom/sid/tvos/MainActivity$4;
.super Lr/Q;
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
.method public constructor <init>(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sid/tvos/MainActivity$4;->this$0:Lcom/sid/tvos/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$4;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->U3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;

    move-result-object p1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity$4;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p2}, Lcom/sid/tvos/MainActivity;->U3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
