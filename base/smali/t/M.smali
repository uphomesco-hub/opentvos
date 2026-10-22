.class public final synthetic Lt/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/M;->a:Lcom/sid/tvos/MainActivity;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lt/M;->a:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->O(Lcom/sid/tvos/MainActivity;)Z

    move-result v0

    return v0
.end method
