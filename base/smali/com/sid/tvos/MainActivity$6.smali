.class Lcom/sid/tvos/MainActivity$6;
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
    iput-object p1, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

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
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->a4(Lcom/sid/tvos/MainActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_b

    .line 8
    .line 9
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->Z3(Lcom/sid/tvos/MainActivity;)Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->Z3(Lcom/sid/tvos/MainActivity;)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->b4(Lcom/sid/tvos/MainActivity;)F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    int-to-float p3, p3

    .line 38
    sub-float/2addr p2, p3

    .line 39
    invoke-static {p1, p2}, Lcom/sid/tvos/MainActivity;->k4(Lcom/sid/tvos/MainActivity;F)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->i4(Lcom/sid/tvos/MainActivity;)Lp/f;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-boolean p1, p1, Lp/f;->e:Z

    .line 49
    .line 50
    if-eqz p1, :cond_a

    .line 51
    .line 52
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->i4(Lcom/sid/tvos/MainActivity;)Lp/f;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

    .line 59
    .line 60
    invoke-static {p2}, Lcom/sid/tvos/MainActivity;->b4(Lcom/sid/tvos/MainActivity;)F

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iget-boolean p3, p1, Lp/f;->e:Z

    .line 65
    .line 66
    if-eqz p3, :cond_1

    .line 67
    .line 68
    iput p2, p1, Lp/f;->k:F

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_1
    iget-object p3, p1, Lp/f;->j:Lp/g;

    .line 73
    .line 74
    if-nez p3, :cond_2

    .line 75
    .line 76
    new-instance p3, Lp/g;

    .line 77
    .line 78
    invoke-direct {p3, p2}, Lp/g;-><init>(F)V

    .line 79
    .line 80
    .line 81
    iput-object p3, p1, Lp/f;->j:Lp/g;

    .line 82
    .line 83
    :cond_2
    iget-object p3, p1, Lp/f;->j:Lp/g;

    .line 84
    .line 85
    float-to-double v0, p2

    .line 86
    iput-wide v0, p3, Lp/g;->i:D

    .line 87
    .line 88
    double-to-float p2, v0

    .line 89
    float-to-double v0, p2

    .line 90
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 91
    .line 92
    .line 93
    float-to-double v2, p2

    .line 94
    cmpl-double v4, v0, v2

    .line 95
    .line 96
    if-gtz v4, :cond_9

    .line 97
    .line 98
    const v2, -0x800001

    .line 99
    .line 100
    .line 101
    float-to-double v3, v2

    .line 102
    cmpg-double v5, v0, v3

    .line 103
    .line 104
    if-ltz v5, :cond_8

    .line 105
    .line 106
    iget v0, p1, Lp/f;->g:F

    .line 107
    .line 108
    const/high16 v1, 0x3f400000    # 0.75f

    .line 109
    .line 110
    mul-float v0, v0, v1

    .line 111
    .line 112
    float-to-double v0, v0

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    iput-wide v0, p3, Lp/g;->d:D

    .line 118
    .line 119
    const-wide v3, 0x404f400000000000L    # 62.5

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    mul-double v0, v0, v3

    .line 125
    .line 126
    iput-wide v0, p3, Lp/g;->e:D

    .line 127
    .line 128
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-ne p3, v0, :cond_7

    .line 137
    .line 138
    iget-boolean p3, p1, Lp/f;->e:Z

    .line 139
    .line 140
    if-nez p3, :cond_b

    .line 141
    .line 142
    if-nez p3, :cond_b

    .line 143
    .line 144
    const/4 p3, 0x1

    .line 145
    iput-boolean p3, p1, Lp/f;->e:Z

    .line 146
    .line 147
    iget-object p3, p1, Lp/f;->d:Ly/a;

    .line 148
    .line 149
    iget-object v0, p1, Lp/f;->c:Ljava/lang/Object;

    .line 150
    .line 151
    invoke-virtual {p3, v0}, Ly/a;->r(Ljava/lang/Object;)F

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    iput p3, p1, Lp/f;->b:F

    .line 156
    .line 157
    cmpl-float p2, p3, p2

    .line 158
    .line 159
    if-gtz p2, :cond_6

    .line 160
    .line 161
    cmpg-float p2, p3, v2

    .line 162
    .line 163
    if-ltz p2, :cond_6

    .line 164
    .line 165
    sget-object p2, Lp/c;->f:Ljava/lang/ThreadLocal;

    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    if-nez p3, :cond_3

    .line 172
    .line 173
    new-instance p3, Lp/c;

    .line 174
    .line 175
    invoke-direct {p3}, Lp/c;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    check-cast p2, Lp/c;

    .line 186
    .line 187
    iget-object p3, p2, Lp/c;->b:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_5

    .line 194
    .line 195
    iget-object v0, p2, Lp/c;->d:Lp/b;

    .line 196
    .line 197
    if-nez v0, :cond_4

    .line 198
    .line 199
    new-instance v0, Lp/b;

    .line 200
    .line 201
    iget-object v1, p2, Lp/c;->c:Ll/e;

    .line 202
    .line 203
    invoke-direct {v0, v1}, Lp/b;-><init>(Ll/e;)V

    .line 204
    .line 205
    .line 206
    iput-object v0, p2, Lp/c;->d:Lp/b;

    .line 207
    .line 208
    :cond_4
    iget-object p2, p2, Lp/c;->d:Lp/b;

    .line 209
    .line 210
    iget-object v0, p2, Lp/b;->c:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Lp/a;

    .line 213
    .line 214
    iget-object p2, p2, Lp/b;->b:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast p2, Landroid/view/Choreographer;

    .line 217
    .line 218
    invoke-virtual {p2, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 219
    .line 220
    .line 221
    :cond_5
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    if-nez p2, :cond_b

    .line 226
    .line 227
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 232
    .line 233
    const-string p2, "Starting value need to be in between min value and max value"

    .line 234
    .line 235
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p1

    .line 239
    :cond_7
    new-instance p1, Landroid/util/AndroidRuntimeException;

    .line 240
    .line 241
    const-string p2, "Animations may only be started on the main thread"

    .line 242
    .line 243
    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p1

    .line 247
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 248
    .line 249
    const-string p2, "Final position of the spring cannot be less than the min value."

    .line 250
    .line 251
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 256
    .line 257
    const-string p2, "Final position of the spring cannot be greater than the max value."

    .line 258
    .line 259
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw p1

    .line 263
    :cond_a
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

    .line 264
    .line 265
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->Y3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    iget-object p2, p0, Lcom/sid/tvos/MainActivity$6;->this$0:Lcom/sid/tvos/MainActivity;

    .line 270
    .line 271
    invoke-static {p2}, Lcom/sid/tvos/MainActivity;->b4(Lcom/sid/tvos/MainActivity;)F

    .line 272
    .line 273
    .line 274
    move-result p2

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 276
    .line 277
    .line 278
    :cond_b
    :goto_0
    return-void
.end method
