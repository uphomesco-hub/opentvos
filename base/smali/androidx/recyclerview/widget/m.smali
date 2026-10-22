.class public abstract Landroidx/recyclerview/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Landroidx/recyclerview/widget/j;

.field public d:Z

.field public e:Z

.field public f:Landroid/view/View;

.field public final g:Landroidx/recyclerview/widget/l;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/m;->a:I

    .line 6
    .line 7
    new-instance v1, Landroidx/recyclerview/widget/l;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput v0, v1, Landroidx/recyclerview/widget/l;->d:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, v1, Landroidx/recyclerview/widget/l;->f:Z

    .line 16
    .line 17
    iput v0, v1, Landroidx/recyclerview/widget/l;->g:I

    .line 18
    .line 19
    iput v0, v1, Landroidx/recyclerview/widget/l;->a:I

    .line 20
    .line 21
    iput v0, v1, Landroidx/recyclerview/widget/l;->b:I

    .line 22
    .line 23
    const/high16 v0, -0x80000000

    .line 24
    .line 25
    iput v0, v1, Landroidx/recyclerview/widget/l;->c:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, v1, Landroidx/recyclerview/widget/l;->e:Landroid/view/animation/Interpolator;

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/recyclerview/widget/m;->g:Landroidx/recyclerview/widget/l;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/m;->c:Landroidx/recyclerview/widget/j;

    .line 2
    .line 3
    instance-of v1, v0, Lr/X;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lr/X;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lr/X;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-class v0, Lr/X;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "RecyclerView"

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public final b(II)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/m;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    iget v2, v0, Landroidx/recyclerview/widget/m;->a:I

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-eq v2, v3, :cond_0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m;->c()V

    .line 12
    .line 13
    .line 14
    :cond_1
    iget-boolean v2, v0, Landroidx/recyclerview/widget/m;->d:Z

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/recyclerview/widget/m;->f:Landroid/view/View;

    .line 21
    .line 22
    if-nez v2, :cond_3

    .line 23
    .line 24
    iget-object v2, v0, Landroidx/recyclerview/widget/m;->c:Landroidx/recyclerview/widget/j;

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    iget v2, v0, Landroidx/recyclerview/widget/m;->a:I

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/m;->a(I)Landroid/graphics/PointF;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget v6, v2, Landroid/graphics/PointF;->x:F

    .line 37
    .line 38
    cmpl-float v7, v6, v5

    .line 39
    .line 40
    if-nez v7, :cond_2

    .line 41
    .line 42
    iget v7, v2, Landroid/graphics/PointF;->y:F

    .line 43
    .line 44
    cmpl-float v7, v7, v5

    .line 45
    .line 46
    if-eqz v7, :cond_3

    .line 47
    .line 48
    :cond_2
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    float-to-int v6, v6

    .line 53
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    float-to-int v2, v2

    .line 60
    invoke-virtual {v1, v6, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    const/4 v2, 0x0

    .line 64
    iput-boolean v2, v0, Landroidx/recyclerview/widget/m;->d:Z

    .line 65
    .line 66
    iget-object v6, v0, Landroidx/recyclerview/widget/m;->f:Landroid/view/View;

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    iget-object v8, v0, Landroidx/recyclerview/widget/m;->g:Landroidx/recyclerview/widget/l;

    .line 70
    .line 71
    if-eqz v6, :cond_10

    .line 72
    .line 73
    iget-object v9, v0, Landroidx/recyclerview/widget/m;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    iget v9, v0, Landroidx/recyclerview/widget/m;->a:I

    .line 80
    .line 81
    if-ne v6, v9, :cond_f

    .line 82
    .line 83
    iget-object v4, v0, Landroidx/recyclerview/widget/m;->f:Landroid/view/View;

    .line 84
    .line 85
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Lr/Y;

    .line 86
    .line 87
    move-object v6, v0

    .line 88
    check-cast v6, Lr/y;

    .line 89
    .line 90
    iget-object v9, v6, Lr/y;->k:Landroid/graphics/PointF;

    .line 91
    .line 92
    if-eqz v9, :cond_6

    .line 93
    .line 94
    iget v9, v9, Landroid/graphics/PointF;->x:F

    .line 95
    .line 96
    cmpl-float v9, v9, v5

    .line 97
    .line 98
    if-nez v9, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    if-lez v9, :cond_5

    .line 102
    .line 103
    const/4 v9, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    const/4 v9, -0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    :goto_0
    const/4 v9, 0x0

    .line 108
    :goto_1
    iget-object v10, v6, Landroidx/recyclerview/widget/m;->c:Landroidx/recyclerview/widget/j;

    .line 109
    .line 110
    if-eqz v10, :cond_8

    .line 111
    .line 112
    invoke-virtual {v10}, Landroidx/recyclerview/widget/j;->canScrollHorizontally()Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-nez v11, :cond_7

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    check-cast v11, Lr/N;

    .line 124
    .line 125
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/j;->getDecoratedLeft(Landroid/view/View;)I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 130
    .line 131
    sub-int/2addr v12, v13

    .line 132
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/j;->getDecoratedRight(Landroid/view/View;)I

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 137
    .line 138
    add-int/2addr v13, v11

    .line 139
    invoke-virtual {v10}, Landroidx/recyclerview/widget/j;->getPaddingLeft()I

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    invoke-virtual {v10}, Landroidx/recyclerview/widget/j;->getWidth()I

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    invoke-virtual {v10}, Landroidx/recyclerview/widget/j;->getPaddingRight()I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    sub-int/2addr v14, v10

    .line 152
    invoke-static {v12, v13, v11, v14, v9}, Lr/y;->d(IIIII)I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    goto :goto_3

    .line 157
    :cond_8
    :goto_2
    const/4 v9, 0x0

    .line 158
    :goto_3
    iget-object v10, v6, Lr/y;->k:Landroid/graphics/PointF;

    .line 159
    .line 160
    if-eqz v10, :cond_a

    .line 161
    .line 162
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 163
    .line 164
    cmpl-float v10, v10, v5

    .line 165
    .line 166
    if-nez v10, :cond_9

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    if-lez v10, :cond_b

    .line 170
    .line 171
    const/4 v3, 0x1

    .line 172
    goto :goto_5

    .line 173
    :cond_a
    :goto_4
    const/4 v3, 0x0

    .line 174
    :cond_b
    :goto_5
    iget-object v10, v6, Landroidx/recyclerview/widget/m;->c:Landroidx/recyclerview/widget/j;

    .line 175
    .line 176
    if-eqz v10, :cond_d

    .line 177
    .line 178
    invoke-virtual {v10}, Landroidx/recyclerview/widget/j;->canScrollVertically()Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-nez v11, :cond_c

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    check-cast v11, Lr/N;

    .line 190
    .line 191
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/j;->getDecoratedTop(Landroid/view/View;)I

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 196
    .line 197
    sub-int/2addr v12, v13

    .line 198
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/j;->getDecoratedBottom(Landroid/view/View;)I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 203
    .line 204
    add-int/2addr v4, v11

    .line 205
    invoke-virtual {v10}, Landroidx/recyclerview/widget/j;->getPaddingTop()I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-virtual {v10}, Landroidx/recyclerview/widget/j;->getHeight()I

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    invoke-virtual {v10}, Landroidx/recyclerview/widget/j;->getPaddingBottom()I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    sub-int/2addr v13, v10

    .line 218
    invoke-static {v12, v4, v11, v13, v3}, Lr/y;->d(IIIII)I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    goto :goto_7

    .line 223
    :cond_d
    :goto_6
    const/4 v3, 0x0

    .line 224
    :goto_7
    mul-int v4, v9, v9

    .line 225
    .line 226
    mul-int v10, v3, v3

    .line 227
    .line 228
    add-int/2addr v10, v4

    .line 229
    int-to-double v10, v10

    .line 230
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v10

    .line 234
    double-to-int v4, v10

    .line 235
    invoke-virtual {v6, v4}, Lr/y;->e(I)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    int-to-double v10, v4

    .line 240
    const-wide v12, 0x3fd57a786c22680aL    # 0.3356

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    div-double/2addr v10, v12

    .line 246
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 247
    .line 248
    .line 249
    move-result-wide v10

    .line 250
    double-to-int v4, v10

    .line 251
    if-lez v4, :cond_e

    .line 252
    .line 253
    neg-int v9, v9

    .line 254
    neg-int v3, v3

    .line 255
    iget-object v6, v6, Lr/y;->j:Landroid/view/animation/DecelerateInterpolator;

    .line 256
    .line 257
    iput v9, v8, Landroidx/recyclerview/widget/l;->a:I

    .line 258
    .line 259
    iput v3, v8, Landroidx/recyclerview/widget/l;->b:I

    .line 260
    .line 261
    iput v4, v8, Landroidx/recyclerview/widget/l;->c:I

    .line 262
    .line 263
    iput-object v6, v8, Landroidx/recyclerview/widget/l;->e:Landroid/view/animation/Interpolator;

    .line 264
    .line 265
    iput-boolean v7, v8, Landroidx/recyclerview/widget/l;->f:Z

    .line 266
    .line 267
    :cond_e
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m;->c()V

    .line 271
    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_f
    const-string v3, "RecyclerView"

    .line 275
    .line 276
    const-string v6, "Passed over target position while smooth scrolling."

    .line 277
    .line 278
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    iput-object v4, v0, Landroidx/recyclerview/widget/m;->f:Landroid/view/View;

    .line 282
    .line 283
    :cond_10
    :goto_8
    iget-boolean v3, v0, Landroidx/recyclerview/widget/m;->e:Z

    .line 284
    .line 285
    if-eqz v3, :cond_18

    .line 286
    .line 287
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Lr/Y;

    .line 288
    .line 289
    move-object v3, v0

    .line 290
    check-cast v3, Lr/y;

    .line 291
    .line 292
    iget-object v4, v3, Landroidx/recyclerview/widget/m;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 293
    .line 294
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/j;

    .line 295
    .line 296
    invoke-virtual {v4}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-nez v4, :cond_11

    .line 301
    .line 302
    invoke-virtual {v3}, Landroidx/recyclerview/widget/m;->c()V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_a

    .line 306
    .line 307
    :cond_11
    iget v4, v3, Lr/y;->o:I

    .line 308
    .line 309
    sub-int v6, v4, p1

    .line 310
    .line 311
    mul-int v4, v4, v6

    .line 312
    .line 313
    if-gtz v4, :cond_12

    .line 314
    .line 315
    const/4 v6, 0x0

    .line 316
    :cond_12
    iput v6, v3, Lr/y;->o:I

    .line 317
    .line 318
    iget v4, v3, Lr/y;->p:I

    .line 319
    .line 320
    sub-int v9, v4, p2

    .line 321
    .line 322
    mul-int v4, v4, v9

    .line 323
    .line 324
    if-gtz v4, :cond_13

    .line 325
    .line 326
    const/4 v9, 0x0

    .line 327
    :cond_13
    iput v9, v3, Lr/y;->p:I

    .line 328
    .line 329
    if-nez v6, :cond_16

    .line 330
    .line 331
    if-nez v9, :cond_16

    .line 332
    .line 333
    iget v4, v3, Landroidx/recyclerview/widget/m;->a:I

    .line 334
    .line 335
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/m;->a(I)Landroid/graphics/PointF;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    if-eqz v4, :cond_15

    .line 340
    .line 341
    iget v6, v4, Landroid/graphics/PointF;->x:F

    .line 342
    .line 343
    cmpl-float v9, v6, v5

    .line 344
    .line 345
    if-nez v9, :cond_14

    .line 346
    .line 347
    iget v9, v4, Landroid/graphics/PointF;->y:F

    .line 348
    .line 349
    cmpl-float v5, v9, v5

    .line 350
    .line 351
    if-nez v5, :cond_14

    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_14
    mul-float v6, v6, v6

    .line 355
    .line 356
    iget v5, v4, Landroid/graphics/PointF;->y:F

    .line 357
    .line 358
    mul-float v5, v5, v5

    .line 359
    .line 360
    add-float/2addr v5, v6

    .line 361
    float-to-double v5, v5

    .line 362
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 363
    .line 364
    .line 365
    move-result-wide v5

    .line 366
    double-to-float v5, v5

    .line 367
    iget v6, v4, Landroid/graphics/PointF;->x:F

    .line 368
    .line 369
    div-float/2addr v6, v5

    .line 370
    iput v6, v4, Landroid/graphics/PointF;->x:F

    .line 371
    .line 372
    iget v9, v4, Landroid/graphics/PointF;->y:F

    .line 373
    .line 374
    div-float/2addr v9, v5

    .line 375
    iput v9, v4, Landroid/graphics/PointF;->y:F

    .line 376
    .line 377
    iput-object v4, v3, Lr/y;->k:Landroid/graphics/PointF;

    .line 378
    .line 379
    const v4, 0x461c4000    # 10000.0f

    .line 380
    .line 381
    .line 382
    mul-float v6, v6, v4

    .line 383
    .line 384
    float-to-int v5, v6

    .line 385
    iput v5, v3, Lr/y;->o:I

    .line 386
    .line 387
    mul-float v9, v9, v4

    .line 388
    .line 389
    float-to-int v4, v9

    .line 390
    iput v4, v3, Lr/y;->p:I

    .line 391
    .line 392
    const/16 v4, 0x2710

    .line 393
    .line 394
    invoke-virtual {v3, v4}, Lr/y;->e(I)I

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    iget v5, v3, Lr/y;->o:I

    .line 399
    .line 400
    int-to-float v5, v5

    .line 401
    const v6, 0x3f99999a    # 1.2f

    .line 402
    .line 403
    .line 404
    mul-float v5, v5, v6

    .line 405
    .line 406
    float-to-int v5, v5

    .line 407
    iget v9, v3, Lr/y;->p:I

    .line 408
    .line 409
    int-to-float v9, v9

    .line 410
    mul-float v9, v9, v6

    .line 411
    .line 412
    float-to-int v9, v9

    .line 413
    int-to-float v4, v4

    .line 414
    mul-float v4, v4, v6

    .line 415
    .line 416
    float-to-int v4, v4

    .line 417
    iget-object v3, v3, Lr/y;->i:Landroid/view/animation/LinearInterpolator;

    .line 418
    .line 419
    iput v5, v8, Landroidx/recyclerview/widget/l;->a:I

    .line 420
    .line 421
    iput v9, v8, Landroidx/recyclerview/widget/l;->b:I

    .line 422
    .line 423
    iput v4, v8, Landroidx/recyclerview/widget/l;->c:I

    .line 424
    .line 425
    iput-object v3, v8, Landroidx/recyclerview/widget/l;->e:Landroid/view/animation/Interpolator;

    .line 426
    .line 427
    iput-boolean v7, v8, Landroidx/recyclerview/widget/l;->f:Z

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :cond_15
    :goto_9
    iget v4, v3, Landroidx/recyclerview/widget/m;->a:I

    .line 431
    .line 432
    iput v4, v8, Landroidx/recyclerview/widget/l;->d:I

    .line 433
    .line 434
    invoke-virtual {v3}, Landroidx/recyclerview/widget/m;->c()V

    .line 435
    .line 436
    .line 437
    :cond_16
    :goto_a
    iget v3, v8, Landroidx/recyclerview/widget/l;->d:I

    .line 438
    .line 439
    if-ltz v3, :cond_17

    .line 440
    .line 441
    const/4 v2, 0x1

    .line 442
    :cond_17
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 443
    .line 444
    .line 445
    if-eqz v2, :cond_18

    .line 446
    .line 447
    iget-boolean v2, v0, Landroidx/recyclerview/widget/m;->e:Z

    .line 448
    .line 449
    if-eqz v2, :cond_18

    .line 450
    .line 451
    iput-boolean v7, v0, Landroidx/recyclerview/widget/m;->d:Z

    .line 452
    .line 453
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/n;

    .line 454
    .line 455
    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->b()V

    .line 456
    .line 457
    .line 458
    :cond_18
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/m;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/m;->e:Z

    .line 8
    .line 9
    move-object v1, p0

    .line 10
    check-cast v1, Lr/y;

    .line 11
    .line 12
    iput v0, v1, Lr/y;->p:I

    .line 13
    .line 14
    iput v0, v1, Lr/y;->o:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, v1, Lr/y;->k:Landroid/graphics/PointF;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/m;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Lr/Y;

    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    iput v3, v1, Lr/Y;->a:I

    .line 25
    .line 26
    iput-object v2, p0, Landroidx/recyclerview/widget/m;->f:Landroid/view/View;

    .line 27
    .line 28
    iput v3, p0, Landroidx/recyclerview/widget/m;->a:I

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/recyclerview/widget/m;->d:Z

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/m;->c:Landroidx/recyclerview/widget/j;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/j;->onSmoothScrollerStopped(Landroidx/recyclerview/widget/m;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Landroidx/recyclerview/widget/m;->c:Landroidx/recyclerview/widget/j;

    .line 38
    .line 39
    iput-object v2, p0, Landroidx/recyclerview/widget/m;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    return-void
.end method
