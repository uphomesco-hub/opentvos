.class public Lk/y;
.super Lk/A;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/A;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf/b;->g()Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lk/y;->a:Landroid/view/WindowInsets$Builder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b()Lk/I;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/A;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lk/y;->a:Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    invoke-static {v0}, Lf/b;->h(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lk/I;->a(Landroid/view/WindowInsets;Landroid/view/View;)Lk/I;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, v0, Lk/I;->a:Lk/H;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lk/H;->j([Lf/c;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public c(Lf/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/y;->a:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lf/c;->b()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lf/b;->v(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(Lf/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/y;->a:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lf/c;->b()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lf/b;->q(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
