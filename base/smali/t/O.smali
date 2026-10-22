.class public final synthetic Lt/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/O;->a:Lcom/sid/tvos/MainActivity;

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt/O;->a:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/sid/tvos/MainActivity;->G3(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
