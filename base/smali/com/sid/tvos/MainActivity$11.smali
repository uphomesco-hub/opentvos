.class Lcom/sid/tvos/MainActivity$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sid/tvos/MainActivity;->zoom(FFJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/MainActivity;

.field final synthetic val$end:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$11;->this$0:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/MainActivity$11;->val$end:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$11;->val$end:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
