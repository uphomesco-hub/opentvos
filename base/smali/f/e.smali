.class public abstract Lf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly/a;

.field public static final b:Lb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lf/j;

    .line 8
    .line 9
    invoke-direct {v0}, Ly/a;-><init>()V

    .line 10
    .line 11
    .line 12
    :goto_0
    sput-object v0, Lf/e;->a:Ly/a;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/16 v1, 0x1c

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lf/i;

    .line 20
    .line 21
    invoke-direct {v0}, Lf/h;-><init>()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v1, 0x1a

    .line 26
    .line 27
    if-lt v0, v1, :cond_2

    .line 28
    .line 29
    new-instance v0, Lf/h;

    .line 30
    .line 31
    invoke-direct {v0}, Lf/h;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/16 v1, 0x18

    .line 36
    .line 37
    if-lt v0, v1, :cond_4

    .line 38
    .line 39
    sget-object v0, Lf/g;->c:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    const-string v1, "TypefaceCompatApi24Impl"

    .line 44
    .line 45
    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_3
    if-eqz v0, :cond_4

    .line 51
    .line 52
    new-instance v0, Lf/g;

    .line 53
    .line 54
    invoke-direct {v0}, Ly/a;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    new-instance v0, Lf/f;

    .line 59
    .line 60
    invoke-direct {v0}, Ly/a;-><init>()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    new-instance v0, Lb/e;

    .line 65
    .line 66
    invoke-direct {v0}, Lb/e;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lf/e;->b:Lb/e;

    .line 70
    .line 71
    return-void
.end method

.method public static a(Landroid/content/Context;Le/d;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 11

    .line 1
    sget-object v0, Lf/e;->a:Ly/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    instance-of v3, p1, Le/g;

    .line 6
    .line 7
    if-eqz v3, :cond_f

    .line 8
    .line 9
    check-cast p1, Le/g;

    .line 10
    .line 11
    iget-object v3, p1, Le/g;->b:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 28
    .line 29
    invoke-static {v5, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    move-object v4, v3

    .line 42
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 43
    .line 44
    return-object v4

    .line 45
    :cond_2
    new-instance v3, Landroid/os/Handler;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Lf/d;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Le/g;->a:Li/d;

    .line 60
    .line 61
    sget-object v5, Li/f;->a:Lb/e;

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v6, p1, Li/d;->e:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v6, "-0"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    sget-object v6, Li/f;->a:Lb/e;

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Lb/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Landroid/graphics/Typeface;

    .line 89
    .line 90
    if-eqz v6, :cond_3

    .line 91
    .line 92
    new-instance p0, Li/a;

    .line 93
    .line 94
    invoke-direct {p0, v4, v6}, Li/a;-><init>(Lf/d;Landroid/graphics/Typeface;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :cond_3
    sget-object v6, Li/f;->a:Lb/e;

    .line 103
    .line 104
    invoke-virtual {v6, v5}, Lb/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    check-cast v7, Landroid/graphics/Typeface;

    .line 109
    .line 110
    if-eqz v7, :cond_4

    .line 111
    .line 112
    new-instance p0, Li/e;

    .line 113
    .line 114
    invoke-direct {p0, v7}, Li/e;-><init>(Landroid/graphics/Typeface;)V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    :try_start_0
    invoke-static {p0, p1}, Li/c;->a(Landroid/content/Context;Li/d;)Li/e;

    .line 119
    .line 120
    .line 121
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v7, -0x3

    .line 123
    iget-object v8, p1, Li/e;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v8, [Li/g;

    .line 126
    .line 127
    iget p1, p1, Li/e;->a:I

    .line 128
    .line 129
    if-eqz p1, :cond_6

    .line 130
    .line 131
    if-eq p1, v1, :cond_5

    .line 132
    .line 133
    :goto_1
    const/4 v1, -0x3

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    const/4 v1, -0x2

    .line 136
    goto :goto_3

    .line 137
    :cond_6
    if-eqz v8, :cond_b

    .line 138
    .line 139
    array-length p1, v8

    .line 140
    if-nez p1, :cond_7

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    array-length p1, v8

    .line 144
    const/4 v9, 0x0

    .line 145
    :goto_2
    if-ge v9, p1, :cond_a

    .line 146
    .line 147
    aget-object v10, v8, v9

    .line 148
    .line 149
    iget v10, v10, Li/g;->e:I

    .line 150
    .line 151
    if-eqz v10, :cond_9

    .line 152
    .line 153
    if-gez v10, :cond_8

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_8
    move v1, v10

    .line 157
    goto :goto_3

    .line 158
    :cond_9
    add-int/2addr v9, v1

    .line 159
    goto :goto_2

    .line 160
    :cond_a
    const/4 v1, 0x0

    .line 161
    :cond_b
    :goto_3
    if-eqz v1, :cond_c

    .line 162
    .line 163
    new-instance p0, Li/e;

    .line 164
    .line 165
    invoke-direct {p0, v1, v2}, Li/e;-><init>(II)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_c
    invoke-virtual {v0, p0, v8}, Ly/a;->l(Landroid/content/Context;[Li/g;)Landroid/graphics/Typeface;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    if-eqz p0, :cond_d

    .line 174
    .line 175
    invoke-virtual {v6, v5, p0}, Lb/e;->b(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Li/e;

    .line 179
    .line 180
    invoke-direct {p1, p0}, Li/e;-><init>(Landroid/graphics/Typeface;)V

    .line 181
    .line 182
    .line 183
    move-object p0, p1

    .line 184
    goto :goto_4

    .line 185
    :cond_d
    new-instance p0, Li/e;

    .line 186
    .line 187
    invoke-direct {p0, v7, v2}, Li/e;-><init>(II)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :catch_0
    new-instance p0, Li/e;

    .line 192
    .line 193
    const/4 p1, -0x1

    .line 194
    invoke-direct {p0, p1, v2}, Li/e;-><init>(II)V

    .line 195
    .line 196
    .line 197
    :goto_4
    iget-object p1, p0, Li/e;->b:Ljava/lang/Object;

    .line 198
    .line 199
    iget p0, p0, Li/e;->a:I

    .line 200
    .line 201
    if-nez p0, :cond_e

    .line 202
    .line 203
    new-instance p0, Li/a;

    .line 204
    .line 205
    move-object v0, p1

    .line 206
    check-cast v0, Landroid/graphics/Typeface;

    .line 207
    .line 208
    invoke-direct {p0, v4, v0}, Li/a;-><init>(Lf/d;Landroid/graphics/Typeface;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_e
    new-instance v0, Li/a;

    .line 216
    .line 217
    invoke-direct {v0, v4, p0}, Li/a;-><init>(Lf/d;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    .line 222
    .line 223
    :goto_5
    move-object v6, p1

    .line 224
    check-cast v6, Landroid/graphics/Typeface;

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_f
    check-cast p1, Le/e;

    .line 228
    .line 229
    invoke-virtual {v0, p0, p1, p2}, Ly/a;->k(Landroid/content/Context;Le/e;Landroid/content/res/Resources;)Landroid/graphics/Typeface;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    :goto_6
    if-eqz v6, :cond_10

    .line 234
    .line 235
    sget-object p0, Lf/e;->b:Lb/e;

    .line 236
    .line 237
    invoke-static {p2, p3}, Lf/e;->b(Landroid/content/res/Resources;I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p0, p1, v6}, Lb/e;->b(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 242
    .line 243
    .line 244
    :cond_10
    return-object v6
.end method

.method public static b(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "-"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "-0"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
