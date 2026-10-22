.class public final synthetic Lt/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/a0;->a:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/a0;->b:F

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt/a0;->a:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lt/a0;->b:F

    invoke-static {v0, v1, p1, p2}, Lcom/sid/tvos/MainActivity;->p0(Lcom/sid/tvos/MainActivity;FLandroid/view/View;Z)V

    return-void
.end method
