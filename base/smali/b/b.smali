.class public final Lb/b;
.super Lb/j;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public h:Lb/a;


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/b;->h:Lb/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb/a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lb/a;-><init>(Lb/b;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lb/b;->h:Lb/a;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lb/b;->h:Lb/a;

    .line 13
    .line 14
    iget-object v1, v0, Lb/a;->a:Lb/g;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lb/g;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v0, v2}, Lb/g;-><init>(Lb/a;I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lb/a;->a:Lb/g;

    .line 25
    .line 26
    :cond_1
    iget-object v0, v0, Lb/a;->a:Lb/g;

    .line 27
    .line 28
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/b;->h:Lb/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb/a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lb/a;-><init>(Lb/b;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lb/b;->h:Lb/a;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lb/b;->h:Lb/a;

    .line 13
    .line 14
    iget-object v1, v0, Lb/a;->b:Lb/g;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lb/g;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, v0, v2}, Lb/g;-><init>(Lb/a;I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lb/a;->b:Lb/g;

    .line 25
    .line 26
    :cond_1
    iget-object v0, v0, Lb/a;->b:Lb/g;

    .line 27
    .line 28
    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 6

    .line 1
    iget v0, p0, Lb/j;->c:I

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    iget v0, p0, Lb/j;->c:I

    .line 9
    .line 10
    iget-object v2, p0, Lb/j;->a:[I

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v3, v1, :cond_1

    .line 14
    .line 15
    iget-object v3, p0, Lb/j;->b:[Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lb/j;->a(I)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lb/j;->c:I

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lb/j;->a:[I

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lb/j;->b:[Ljava/lang/Object;

    .line 31
    .line 32
    shl-int/lit8 v5, v0, 0x1

    .line 33
    .line 34
    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {v2, v3, v0}, Lb/j;->c([I[Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget v1, p0, Lb/j;->c:I

    .line 41
    .line 42
    if-ne v1, v0, :cond_3

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0, v1, v0}, Lb/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void

    .line 77
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b;->h:Lb/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb/a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lb/a;-><init>(Lb/b;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lb/b;->h:Lb/a;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lb/b;->h:Lb/a;

    .line 13
    .line 14
    iget-object v1, v0, Lb/a;->c:Lb/i;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lb/i;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lb/i;-><init>(Lb/a;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lb/a;->c:Lb/i;

    .line 24
    .line 25
    :cond_1
    iget-object v0, v0, Lb/a;->c:Lb/i;

    .line 26
    .line 27
    return-object v0
.end method
