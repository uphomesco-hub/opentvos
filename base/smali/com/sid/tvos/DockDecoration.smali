.class public Lcom/sid/tvos/DockDecoration;
.super Lr/J;
.source "SourceFile"


# instance fields
.field private final band:Landroid/graphics/Paint;

.field private final density:F

.field private final dockSize:I

.field private liquid:Z

.field private final rect:Landroid/graphics/RectF;

.field private final rim:Landroid/graphics/Paint;

.field private final shape:Landroid/graphics/Path;

.field private final shapeBox:Landroid/graphics/RectF;

.field private shapeW:F

.field private final sheen:Landroid/graphics/Paint;

.field private sheenHeight:F

.field private sheenTop:F


# direct methods
.method public constructor <init>(IF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/sid/tvos/DockDecoration;->band:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/sid/tvos/DockDecoration;->sheen:Landroid/graphics/Paint;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/sid/tvos/DockDecoration;->rim:Landroid/graphics/Paint;

    .line 25
    .line 26
    new-instance v2, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/sid/tvos/DockDecoration;->rect:Landroid/graphics/RectF;

    .line 32
    .line 33
    new-instance v2, Landroid/graphics/Path;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/sid/tvos/DockDecoration;->shape:Landroid/graphics/Path;

    .line 39
    .line 40
    new-instance v2, Landroid/graphics/RectF;

    .line 41
    .line 42
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/sid/tvos/DockDecoration;->shapeBox:Landroid/graphics/RectF;

    .line 46
    .line 47
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 48
    .line 49
    iput v2, p0, Lcom/sid/tvos/DockDecoration;->sheenTop:F

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/sid/tvos/DockDecoration;->liquid:Z

    .line 52
    .line 53
    iput p1, p0, Lcom/sid/tvos/DockDecoration;->dockSize:I

    .line 54
    .line 55
    iput p2, p0, Lcom/sid/tvos/DockDecoration;->density:F

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/sid/tvos/DockDecoration;->setLiquid(Z)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    .line 64
    .line 65
    const/high16 p1, 0x3fc00000    # 1.5f

    .line 66
    .line 67
    mul-float p2, p2, p1

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lr/Y;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    iget p3, p0, Lcom/sid/tvos/DockDecoration;->dockSize:I

    .line 8
    .line 9
    if-ge p2, p3, :cond_0

    .line 10
    .line 11
    iget p2, p0, Lcom/sid/tvos/DockDecoration;->density:F

    .line 12
    .line 13
    const/high16 p3, 0x40c00000    # 6.0f

    .line 14
    .line 15
    mul-float p3, p3, p2

    .line 16
    .line 17
    float-to-int p3, p3

    .line 18
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    const/high16 p3, 0x41a00000    # 20.0f

    .line 21
    .line 22
    mul-float p2, p2, p3

    .line 23
    .line 24
    float-to-int p2, p2

    .line 25
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lr/Y;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    if-ge v6, v8, :cond_4

    .line 17
    .line 18
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    if-ltz v9, :cond_3

    .line 27
    .line 28
    iget v10, v0, Lcom/sid/tvos/DockDecoration;->dockSize:I

    .line 29
    .line 30
    if-lt v9, v10, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    sget v9, Lcom/sid/tvos/R$id;->card:I

    .line 34
    .line 35
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    if-nez v9, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    add-int/2addr v11, v10

    .line 51
    int-to-float v10, v11

    .line 52
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    add-int/2addr v12, v11

    .line 61
    int-to-float v11, v12

    .line 62
    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    add-float/2addr v8, v11

    .line 67
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    int-to-float v11, v11

    .line 72
    add-float/2addr v11, v10

    .line 73
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    int-to-float v9, v9

    .line 78
    add-float/2addr v9, v8

    .line 79
    if-nez v7, :cond_2

    .line 80
    .line 81
    iget-object v7, v0, Lcom/sid/tvos/DockDecoration;->rect:Landroid/graphics/RectF;

    .line 82
    .line 83
    invoke-virtual {v7, v10, v8, v11, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    .line 85
    .line 86
    const/4 v7, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object v12, v0, Lcom/sid/tvos/DockDecoration;->rect:Landroid/graphics/RectF;

    .line 89
    .line 90
    invoke-virtual {v12, v10, v8, v11, v9}, Landroid/graphics/RectF;->union(FFFF)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    add-int/2addr v6, v3

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    if-nez v7, :cond_5

    .line 96
    .line 97
    return-void

    .line 98
    :cond_5
    const/high16 v6, 0x41100000    # 9.0f

    .line 99
    .line 100
    iget v7, v0, Lcom/sid/tvos/DockDecoration;->density:F

    .line 101
    .line 102
    mul-float v7, v7, v6

    .line 103
    .line 104
    iget-object v6, v0, Lcom/sid/tvos/DockDecoration;->rect:Landroid/graphics/RectF;

    .line 105
    .line 106
    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 107
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    int-to-float v2, v2

    .line 113
    iget-object v8, v0, Lcom/sid/tvos/DockDecoration;->rect:Landroid/graphics/RectF;

    .line 114
    .line 115
    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 116
    .line 117
    sub-float/2addr v2, v8

    .line 118
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    const/4 v6, 0x0

    .line 127
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    iget-object v7, v0, Lcom/sid/tvos/DockDecoration;->rect:Landroid/graphics/RectF;

    .line 132
    .line 133
    neg-float v2, v2

    .line 134
    const/high16 v8, -0x3ec00000    # -12.0f

    .line 135
    .line 136
    iget v9, v0, Lcom/sid/tvos/DockDecoration;->density:F

    .line 137
    .line 138
    mul-float v9, v9, v8

    .line 139
    .line 140
    invoke-virtual {v7, v2, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 141
    .line 142
    .line 143
    iget-object v2, v0, Lcom/sid/tvos/DockDecoration;->rect:Landroid/graphics/RectF;

    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    iget-object v7, v0, Lcom/sid/tvos/DockDecoration;->rect:Landroid/graphics/RectF;

    .line 150
    .line 151
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    iget v8, v0, Lcom/sid/tvos/DockDecoration;->shapeW:F

    .line 156
    .line 157
    cmpl-float v8, v2, v8

    .line 158
    .line 159
    if-nez v8, :cond_6

    .line 160
    .line 161
    iget v8, v0, Lcom/sid/tvos/DockDecoration;->sheenHeight:F

    .line 162
    .line 163
    cmpl-float v8, v7, v8

    .line 164
    .line 165
    if-nez v8, :cond_6

    .line 166
    .line 167
    iget v8, v0, Lcom/sid/tvos/DockDecoration;->sheenTop:F

    .line 168
    .line 169
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_9

    .line 174
    .line 175
    :cond_6
    iput v2, v0, Lcom/sid/tvos/DockDecoration;->shapeW:F

    .line 176
    .line 177
    iput v7, v0, Lcom/sid/tvos/DockDecoration;->sheenHeight:F

    .line 178
    .line 179
    iput v6, v0, Lcom/sid/tvos/DockDecoration;->sheenTop:F

    .line 180
    .line 181
    iget-object v8, v0, Lcom/sid/tvos/DockDecoration;->shapeBox:Landroid/graphics/RectF;

    .line 182
    .line 183
    invoke-virtual {v8, v6, v6, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 184
    .line 185
    .line 186
    iget-object v2, v0, Lcom/sid/tvos/DockDecoration;->shape:Landroid/graphics/Path;

    .line 187
    .line 188
    iget-object v6, v0, Lcom/sid/tvos/DockDecoration;->shapeBox:Landroid/graphics/RectF;

    .line 189
    .line 190
    const/high16 v8, 0x41d00000    # 26.0f

    .line 191
    .line 192
    iget v9, v0, Lcom/sid/tvos/DockDecoration;->density:F

    .line 193
    .line 194
    mul-float v9, v9, v8

    .line 195
    .line 196
    invoke-static {v2, v6, v9}, Lcom/sid/tvos/Corners;->squircle(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    .line 197
    .line 198
    .line 199
    iget-object v2, v0, Lcom/sid/tvos/DockDecoration;->sheen:Landroid/graphics/Paint;

    .line 200
    .line 201
    new-instance v6, Landroid/graphics/LinearGradient;

    .line 202
    .line 203
    iget-boolean v8, v0, Lcom/sid/tvos/DockDecoration;->liquid:Z

    .line 204
    .line 205
    const v16, 0x1affffff

    .line 206
    .line 207
    .line 208
    const/16 v17, 0x3

    .line 209
    .line 210
    const/16 v18, 0x2

    .line 211
    .line 212
    if-eqz v8, :cond_7

    .line 213
    .line 214
    new-array v8, v4, [I

    .line 215
    .line 216
    const v9, 0x2effffff

    .line 217
    .line 218
    .line 219
    aput v9, v8, v5

    .line 220
    .line 221
    const v9, 0x5ffffff

    .line 222
    .line 223
    .line 224
    aput v9, v8, v3

    .line 225
    .line 226
    const v9, 0xffffff

    .line 227
    .line 228
    .line 229
    aput v9, v8, v18

    .line 230
    .line 231
    const v9, 0x14ffffff

    .line 232
    .line 233
    .line 234
    aput v9, v8, v17

    .line 235
    .line 236
    :goto_2
    move-object v13, v8

    .line 237
    goto :goto_3

    .line 238
    :cond_7
    new-array v8, v4, [I

    .line 239
    .line 240
    const v9, 0x40ffffff    # 7.9999995f

    .line 241
    .line 242
    .line 243
    aput v9, v8, v5

    .line 244
    .line 245
    aput v16, v8, v3

    .line 246
    .line 247
    const v9, 0xdffffff

    .line 248
    .line 249
    .line 250
    aput v9, v8, v18

    .line 251
    .line 252
    aput v16, v8, v17

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :goto_3
    new-array v14, v4, [F

    .line 256
    .line 257
    fill-array-data v14, :array_0

    .line 258
    .line 259
    .line 260
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 261
    .line 262
    const/4 v9, 0x0

    .line 263
    const/4 v10, 0x0

    .line 264
    const/4 v11, 0x0

    .line 265
    move-object v8, v6

    .line 266
    move v12, v7

    .line 267
    move-object/from16 v15, v19

    .line 268
    .line 269
    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 273
    .line 274
    .line 275
    iget-object v2, v0, Lcom/sid/tvos/DockDecoration;->rim:Landroid/graphics/Paint;

    .line 276
    .line 277
    new-instance v6, Landroid/graphics/LinearGradient;

    .line 278
    .line 279
    iget-boolean v8, v0, Lcom/sid/tvos/DockDecoration;->liquid:Z

    .line 280
    .line 281
    const v9, -0x7f000001

    .line 282
    .line 283
    .line 284
    if-eqz v8, :cond_8

    .line 285
    .line 286
    new-array v8, v4, [I

    .line 287
    .line 288
    const v10, -0x4c000001

    .line 289
    .line 290
    .line 291
    aput v10, v8, v5

    .line 292
    .line 293
    aput v16, v8, v3

    .line 294
    .line 295
    aput v16, v8, v18

    .line 296
    .line 297
    aput v9, v8, v17

    .line 298
    .line 299
    :goto_4
    move-object v13, v8

    .line 300
    goto :goto_5

    .line 301
    :cond_8
    new-array v8, v4, [I

    .line 302
    .line 303
    aput v9, v8, v5

    .line 304
    .line 305
    const v5, 0x33ffffff

    .line 306
    .line 307
    .line 308
    aput v5, v8, v3

    .line 309
    .line 310
    aput v5, v8, v18

    .line 311
    .line 312
    const v3, 0x59ffffff

    .line 313
    .line 314
    .line 315
    aput v3, v8, v17

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :goto_5
    new-array v14, v4, [F

    .line 319
    .line 320
    fill-array-data v14, :array_1

    .line 321
    .line 322
    .line 323
    const/4 v9, 0x0

    .line 324
    const/4 v10, 0x0

    .line 325
    const/4 v11, 0x0

    .line 326
    move-object v8, v6

    .line 327
    move v12, v7

    .line 328
    move-object/from16 v15, v19

    .line 329
    .line 330
    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 334
    .line 335
    .line 336
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    iget-object v3, v0, Lcom/sid/tvos/DockDecoration;->rect:Landroid/graphics/RectF;

    .line 341
    .line 342
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 343
    .line 344
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 345
    .line 346
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 347
    .line 348
    .line 349
    iget-object v3, v0, Lcom/sid/tvos/DockDecoration;->shape:Landroid/graphics/Path;

    .line 350
    .line 351
    iget-object v4, v0, Lcom/sid/tvos/DockDecoration;->band:Landroid/graphics/Paint;

    .line 352
    .line 353
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 354
    .line 355
    .line 356
    iget-object v3, v0, Lcom/sid/tvos/DockDecoration;->shape:Landroid/graphics/Path;

    .line 357
    .line 358
    iget-object v4, v0, Lcom/sid/tvos/DockDecoration;->sheen:Landroid/graphics/Paint;

    .line 359
    .line 360
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 361
    .line 362
    .line 363
    iget-object v3, v0, Lcom/sid/tvos/DockDecoration;->shape:Landroid/graphics/Path;

    .line 364
    .line 365
    iget-object v4, v0, Lcom/sid/tvos/DockDecoration;->rim:Landroid/graphics/Paint;

    .line 366
    .line 367
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    nop

    .line 375
    :array_0
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_1
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setLiquid(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sid/tvos/DockDecoration;->liquid:Z

    iget-object v0, p0, Lcom/sid/tvos/DockDecoration;->band:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    const p1, 0x26101012

    goto :goto_0

    :cond_0
    const p1, 0x47ffffff

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/sid/tvos/DockDecoration;->sheenTop:F

    return-void
.end method
