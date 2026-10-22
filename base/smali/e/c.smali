.class public abstract Le/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le/c;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v3, v4, :cond_0

    .line 16
    .line 17
    if-eq v3, v5, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-ne v3, v4, :cond_27

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v6, "selector"

    .line 27
    .line 28
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_26

    .line 33
    .line 34
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/2addr v3, v5

    .line 39
    const/16 v6, 0x14

    .line 40
    .line 41
    new-array v7, v6, [[I

    .line 42
    .line 43
    new-array v6, v6, [I

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-eq v10, v5, :cond_25

    .line 52
    .line 53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    const/4 v12, 0x3

    .line 58
    if-ge v11, v3, :cond_1

    .line 59
    .line 60
    if-eq v10, v12, :cond_25

    .line 61
    .line 62
    :cond_1
    if-ne v10, v4, :cond_2

    .line 63
    .line 64
    if-gt v11, v3, :cond_2

    .line 65
    .line 66
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    const-string v11, "item"

    .line 71
    .line 72
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-nez v10, :cond_3

    .line 77
    .line 78
    :cond_2
    move-object/from16 v30, v2

    .line 79
    .line 80
    move/from16 v31, v3

    .line 81
    .line 82
    const/16 v16, 0x1

    .line 83
    .line 84
    goto/16 :goto_1c

    .line 85
    .line 86
    :cond_3
    sget-object v10, Lc/a;->a:[I

    .line 87
    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0, v2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {v1, v2, v10, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    :goto_2
    const/4 v11, -0x1

    .line 100
    invoke-virtual {v10, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    const v14, -0xff01

    .line 105
    .line 106
    .line 107
    if-eq v13, v11, :cond_7

    .line 108
    .line 109
    sget-object v11, Le/c;->a:Ljava/lang/ThreadLocal;

    .line 110
    .line 111
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v15

    .line 115
    check-cast v15, Landroid/util/TypedValue;

    .line 116
    .line 117
    if-nez v15, :cond_5

    .line 118
    .line 119
    new-instance v15, Landroid/util/TypedValue;

    .line 120
    .line 121
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v11, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    invoke-virtual {v0, v13, v15, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 128
    .line 129
    .line 130
    iget v11, v15, Landroid/util/TypedValue;->type:I

    .line 131
    .line 132
    const/16 v15, 0x1c

    .line 133
    .line 134
    if-lt v11, v15, :cond_6

    .line 135
    .line 136
    const/16 v15, 0x1f

    .line 137
    .line 138
    if-gt v11, v15, :cond_6

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-static {v0, v11, v1}, Le/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 150
    .line 151
    .line 152
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_4

    .line 154
    :catch_0
    :cond_7
    :goto_3
    invoke-virtual {v10, v8, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    :goto_4
    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    const/high16 v14, 0x3f800000    # 1.0f

    .line 163
    .line 164
    if-eqz v13, :cond_8

    .line 165
    .line 166
    invoke-virtual {v10, v5, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    goto :goto_5

    .line 171
    :cond_8
    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    if-eqz v13, :cond_9

    .line 176
    .line 177
    invoke-virtual {v10, v12, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    goto :goto_5

    .line 182
    :cond_9
    const/high16 v12, 0x3f800000    # 1.0f

    .line 183
    .line 184
    :goto_5
    invoke-static {}, Ly/a;->s()Z

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    const/4 v15, 0x4

    .line 189
    const/high16 v5, -0x40800000    # -1.0f

    .line 190
    .line 191
    if-eqz v13, :cond_a

    .line 192
    .line 193
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-eqz v13, :cond_a

    .line 198
    .line 199
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    goto :goto_6

    .line 204
    :cond_a
    invoke-virtual {v10, v15, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    :goto_6
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    .line 210
    .line 211
    invoke-interface {v2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    new-array v13, v10, [I

    .line 216
    .line 217
    const/4 v4, 0x0

    .line 218
    const/4 v15, 0x0

    .line 219
    :goto_7
    if-ge v15, v10, :cond_d

    .line 220
    .line 221
    invoke-interface {v2, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    const v8, 0x10101a5

    .line 226
    .line 227
    .line 228
    if-eq v14, v8, :cond_c

    .line 229
    .line 230
    const v8, 0x101031f

    .line 231
    .line 232
    .line 233
    if-eq v14, v8, :cond_c

    .line 234
    .line 235
    const/high16 v8, 0x7f030000

    .line 236
    .line 237
    if-eq v14, v8, :cond_c

    .line 238
    .line 239
    const v8, 0x7f030011

    .line 240
    .line 241
    .line 242
    if-eq v14, v8, :cond_c

    .line 243
    .line 244
    add-int/lit8 v8, v4, 0x1

    .line 245
    .line 246
    const/4 v0, 0x0

    .line 247
    invoke-interface {v2, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 248
    .line 249
    .line 250
    move-result v19

    .line 251
    if-eqz v19, :cond_b

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_b
    neg-int v14, v14

    .line 255
    :goto_8
    aput v14, v13, v4

    .line 256
    .line 257
    move v4, v8

    .line 258
    :cond_c
    add-int/lit8 v15, v15, 0x1

    .line 259
    .line 260
    move-object/from16 v0, p0

    .line 261
    .line 262
    const/4 v8, 0x0

    .line 263
    const/high16 v14, 0x3f800000    # 1.0f

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_d
    invoke-static {v13, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const/high16 v4, 0x42c80000    # 100.0f

    .line 271
    .line 272
    const/4 v8, 0x0

    .line 273
    cmpl-float v10, v5, v8

    .line 274
    .line 275
    if-ltz v10, :cond_e

    .line 276
    .line 277
    cmpg-float v10, v5, v4

    .line 278
    .line 279
    if-gtz v10, :cond_e

    .line 280
    .line 281
    const/4 v10, 0x1

    .line 282
    :goto_9
    const/high16 v13, 0x3f800000    # 1.0f

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_e
    const/4 v10, 0x0

    .line 286
    goto :goto_9

    .line 287
    :goto_a
    cmpl-float v14, v12, v13

    .line 288
    .line 289
    if-nez v14, :cond_f

    .line 290
    .line 291
    if-nez v10, :cond_f

    .line 292
    .line 293
    move-object v8, v0

    .line 294
    move-object/from16 v30, v2

    .line 295
    .line 296
    move/from16 v31, v3

    .line 297
    .line 298
    const/16 v16, 0x1

    .line 299
    .line 300
    goto/16 :goto_19

    .line 301
    .line 302
    :cond_f
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    .line 303
    .line 304
    .line 305
    move-result v13

    .line 306
    int-to-float v13, v13

    .line 307
    mul-float v13, v13, v12

    .line 308
    .line 309
    const/high16 v12, 0x3f000000    # 0.5f

    .line 310
    .line 311
    add-float/2addr v13, v12

    .line 312
    float-to-int v12, v13

    .line 313
    if-gez v12, :cond_10

    .line 314
    .line 315
    const/4 v13, 0x0

    .line 316
    goto :goto_b

    .line 317
    :cond_10
    const/16 v13, 0xff

    .line 318
    .line 319
    if-le v12, v13, :cond_11

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_11
    move v13, v12

    .line 323
    :goto_b
    if-eqz v10, :cond_20

    .line 324
    .line 325
    invoke-static {v11}, Le/a;->a(I)Le/a;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    sget-object v11, Le/l;->k:Le/l;

    .line 330
    .line 331
    iget v12, v10, Le/a;->b:F

    .line 332
    .line 333
    float-to-double v14, v12

    .line 334
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 335
    .line 336
    cmpg-double v21, v14, v19

    .line 337
    .line 338
    if-ltz v21, :cond_12

    .line 339
    .line 340
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 341
    .line 342
    .line 343
    move-result v14

    .line 344
    int-to-double v14, v14

    .line 345
    const-wide/16 v19, 0x0

    .line 346
    .line 347
    cmpg-double v21, v14, v19

    .line 348
    .line 349
    if-lez v21, :cond_12

    .line 350
    .line 351
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    int-to-double v14, v14

    .line 356
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 357
    .line 358
    cmpl-double v21, v14, v19

    .line 359
    .line 360
    if-ltz v21, :cond_13

    .line 361
    .line 362
    :cond_12
    move-object v8, v0

    .line 363
    move-object/from16 v30, v2

    .line 364
    .line 365
    move/from16 v31, v3

    .line 366
    .line 367
    const/16 v16, 0x1

    .line 368
    .line 369
    goto/16 :goto_17

    .line 370
    .line 371
    :cond_13
    iget v10, v10, Le/a;->a:F

    .line 372
    .line 373
    cmpg-float v14, v10, v8

    .line 374
    .line 375
    if-gez v14, :cond_14

    .line 376
    .line 377
    const/4 v10, 0x0

    .line 378
    goto :goto_c

    .line 379
    :cond_14
    const/high16 v14, 0x43b40000    # 360.0f

    .line 380
    .line 381
    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    :goto_c
    move v15, v12

    .line 386
    const/4 v14, 0x0

    .line 387
    const/16 v19, 0x1

    .line 388
    .line 389
    const/16 v20, 0x0

    .line 390
    .line 391
    :goto_d
    sub-float v22, v20, v12

    .line 392
    .line 393
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    .line 394
    .line 395
    .line 396
    move-result v22

    .line 397
    const v23, 0x3ecccccd    # 0.4f

    .line 398
    .line 399
    .line 400
    cmpl-float v22, v22, v23

    .line 401
    .line 402
    if-ltz v22, :cond_1e

    .line 403
    .line 404
    const/high16 v22, 0x447a0000    # 1000.0f

    .line 405
    .line 406
    const/high16 v23, 0x447a0000    # 1000.0f

    .line 407
    .line 408
    const/16 v24, 0x0

    .line 409
    .line 410
    const/high16 v25, 0x42c80000    # 100.0f

    .line 411
    .line 412
    const/16 v26, 0x0

    .line 413
    .line 414
    :goto_e
    sub-float v27, v24, v25

    .line 415
    .line 416
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    .line 417
    .line 418
    .line 419
    move-result v27

    .line 420
    const v28, 0x3c23d70a    # 0.01f

    .line 421
    .line 422
    .line 423
    const/high16 v29, 0x40000000    # 2.0f

    .line 424
    .line 425
    cmpl-float v27, v27, v28

    .line 426
    .line 427
    if-lez v27, :cond_1a

    .line 428
    .line 429
    sub-float v27, v25, v24

    .line 430
    .line 431
    div-float v27, v27, v29

    .line 432
    .line 433
    add-float v8, v27, v24

    .line 434
    .line 435
    invoke-static {v8, v15, v10}, Le/a;->b(FFF)Le/a;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    sget-object v1, Le/l;->k:Le/l;

    .line 440
    .line 441
    invoke-virtual {v4, v1}, Le/a;->c(Le/l;)I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    invoke-static {v4}, Le/b;->b(I)F

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 454
    .line 455
    .line 456
    move-result v30

    .line 457
    invoke-static/range {v30 .. v30}, Le/b;->b(I)F

    .line 458
    .line 459
    .line 460
    move-result v30

    .line 461
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 462
    .line 463
    .line 464
    move-result v31

    .line 465
    invoke-static/range {v31 .. v31}, Le/b;->b(I)F

    .line 466
    .line 467
    .line 468
    move-result v31

    .line 469
    sget-object v32, Le/b;->d:[[F

    .line 470
    .line 471
    const/16 v16, 0x1

    .line 472
    .line 473
    aget-object v32, v32, v16

    .line 474
    .line 475
    const/16 v18, 0x0

    .line 476
    .line 477
    aget v33, v32, v18

    .line 478
    .line 479
    mul-float v4, v4, v33

    .line 480
    .line 481
    aget v33, v32, v16

    .line 482
    .line 483
    mul-float v30, v30, v33

    .line 484
    .line 485
    add-float v30, v30, v4

    .line 486
    .line 487
    const/4 v4, 0x2

    .line 488
    aget v17, v32, v4

    .line 489
    .line 490
    mul-float v31, v31, v17

    .line 491
    .line 492
    add-float v31, v31, v30

    .line 493
    .line 494
    const/high16 v17, 0x42c80000    # 100.0f

    .line 495
    .line 496
    div-float v4, v31, v17

    .line 497
    .line 498
    const v30, 0x3c111aa7

    .line 499
    .line 500
    .line 501
    cmpg-float v30, v4, v30

    .line 502
    .line 503
    if-gtz v30, :cond_15

    .line 504
    .line 505
    const v30, 0x4461d2f7

    .line 506
    .line 507
    .line 508
    mul-float v4, v4, v30

    .line 509
    .line 510
    move-object/from16 v30, v2

    .line 511
    .line 512
    move/from16 v31, v3

    .line 513
    .line 514
    goto :goto_f

    .line 515
    :cond_15
    move-object/from16 v30, v2

    .line 516
    .line 517
    move/from16 v31, v3

    .line 518
    .line 519
    float-to-double v2, v4

    .line 520
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    .line 521
    .line 522
    .line 523
    move-result-wide v2

    .line 524
    double-to-float v2, v2

    .line 525
    const/high16 v3, 0x42e80000    # 116.0f

    .line 526
    .line 527
    mul-float v2, v2, v3

    .line 528
    .line 529
    const/high16 v3, 0x41800000    # 16.0f

    .line 530
    .line 531
    sub-float v4, v2, v3

    .line 532
    .line 533
    :goto_f
    sub-float v2, v5, v4

    .line 534
    .line 535
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    const v3, 0x3e4ccccd    # 0.2f

    .line 540
    .line 541
    .line 542
    cmpg-float v3, v2, v3

    .line 543
    .line 544
    if-gez v3, :cond_17

    .line 545
    .line 546
    invoke-static {v1}, Le/a;->a(I)Le/a;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    iget v3, v1, Le/a;->c:F

    .line 551
    .line 552
    move/from16 v32, v2

    .line 553
    .line 554
    iget v2, v1, Le/a;->b:F

    .line 555
    .line 556
    invoke-static {v3, v2, v10}, Le/a;->b(FFF)Le/a;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    iget v3, v1, Le/a;->d:F

    .line 561
    .line 562
    move/from16 v33, v8

    .line 563
    .line 564
    iget v8, v2, Le/a;->d:F

    .line 565
    .line 566
    sub-float/2addr v3, v8

    .line 567
    iget v8, v1, Le/a;->e:F

    .line 568
    .line 569
    move/from16 v34, v10

    .line 570
    .line 571
    iget v10, v2, Le/a;->e:F

    .line 572
    .line 573
    sub-float/2addr v8, v10

    .line 574
    iget v10, v1, Le/a;->f:F

    .line 575
    .line 576
    iget v2, v2, Le/a;->f:F

    .line 577
    .line 578
    sub-float/2addr v10, v2

    .line 579
    mul-float v3, v3, v3

    .line 580
    .line 581
    mul-float v8, v8, v8

    .line 582
    .line 583
    add-float/2addr v8, v3

    .line 584
    mul-float v10, v10, v10

    .line 585
    .line 586
    add-float/2addr v10, v8

    .line 587
    float-to-double v2, v10

    .line 588
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 589
    .line 590
    .line 591
    move-result-wide v2

    .line 592
    move-object v8, v0

    .line 593
    move-object v10, v1

    .line 594
    const-wide v0, 0x3fe428f5c28f5c29L    # 0.63

    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 600
    .line 601
    .line 602
    move-result-wide v0

    .line 603
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    mul-double v0, v0, v2

    .line 609
    .line 610
    double-to-float v0, v0

    .line 611
    const/high16 v1, 0x3f800000    # 1.0f

    .line 612
    .line 613
    cmpg-float v2, v0, v1

    .line 614
    .line 615
    if-gtz v2, :cond_16

    .line 616
    .line 617
    move/from16 v23, v0

    .line 618
    .line 619
    move-object/from16 v26, v10

    .line 620
    .line 621
    move/from16 v22, v32

    .line 622
    .line 623
    :cond_16
    :goto_10
    const/4 v0, 0x0

    .line 624
    goto :goto_11

    .line 625
    :cond_17
    move/from16 v33, v8

    .line 626
    .line 627
    move/from16 v34, v10

    .line 628
    .line 629
    const/high16 v1, 0x3f800000    # 1.0f

    .line 630
    .line 631
    move-object v8, v0

    .line 632
    goto :goto_10

    .line 633
    :goto_11
    cmpl-float v2, v22, v0

    .line 634
    .line 635
    if-nez v2, :cond_18

    .line 636
    .line 637
    cmpl-float v2, v23, v0

    .line 638
    .line 639
    if-nez v2, :cond_18

    .line 640
    .line 641
    :goto_12
    move-object/from16 v2, v26

    .line 642
    .line 643
    goto :goto_14

    .line 644
    :cond_18
    cmpg-float v2, v4, v5

    .line 645
    .line 646
    if-gez v2, :cond_19

    .line 647
    .line 648
    move/from16 v24, v33

    .line 649
    .line 650
    goto :goto_13

    .line 651
    :cond_19
    move/from16 v25, v33

    .line 652
    .line 653
    :goto_13
    move-object/from16 v1, p2

    .line 654
    .line 655
    move-object v0, v8

    .line 656
    move-object/from16 v2, v30

    .line 657
    .line 658
    move/from16 v3, v31

    .line 659
    .line 660
    move/from16 v10, v34

    .line 661
    .line 662
    const/high16 v4, 0x42c80000    # 100.0f

    .line 663
    .line 664
    const/4 v8, 0x0

    .line 665
    goto/16 :goto_e

    .line 666
    .line 667
    :cond_1a
    move-object v8, v0

    .line 668
    move-object/from16 v30, v2

    .line 669
    .line 670
    move/from16 v31, v3

    .line 671
    .line 672
    move/from16 v34, v10

    .line 673
    .line 674
    const/4 v0, 0x0

    .line 675
    const/high16 v1, 0x3f800000    # 1.0f

    .line 676
    .line 677
    const/16 v16, 0x1

    .line 678
    .line 679
    const/high16 v17, 0x42c80000    # 100.0f

    .line 680
    .line 681
    goto :goto_12

    .line 682
    :goto_14
    if-eqz v19, :cond_1c

    .line 683
    .line 684
    if-eqz v2, :cond_1b

    .line 685
    .line 686
    invoke-virtual {v2, v11}, Le/a;->c(Le/l;)I

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    :goto_15
    move v11, v0

    .line 691
    goto :goto_18

    .line 692
    :cond_1b
    sub-float v2, v12, v20

    .line 693
    .line 694
    div-float v2, v2, v29

    .line 695
    .line 696
    add-float v15, v2, v20

    .line 697
    .line 698
    move-object/from16 v1, p2

    .line 699
    .line 700
    move-object v0, v8

    .line 701
    move-object/from16 v2, v30

    .line 702
    .line 703
    move/from16 v3, v31

    .line 704
    .line 705
    move/from16 v10, v34

    .line 706
    .line 707
    const/high16 v4, 0x42c80000    # 100.0f

    .line 708
    .line 709
    const/4 v8, 0x0

    .line 710
    const/16 v19, 0x0

    .line 711
    .line 712
    goto/16 :goto_d

    .line 713
    .line 714
    :cond_1c
    if-nez v2, :cond_1d

    .line 715
    .line 716
    move v12, v15

    .line 717
    goto :goto_16

    .line 718
    :cond_1d
    move-object v14, v2

    .line 719
    move/from16 v20, v15

    .line 720
    .line 721
    :goto_16
    sub-float v2, v12, v20

    .line 722
    .line 723
    div-float v2, v2, v29

    .line 724
    .line 725
    add-float v15, v2, v20

    .line 726
    .line 727
    move-object/from16 v1, p2

    .line 728
    .line 729
    move-object v0, v8

    .line 730
    move-object/from16 v2, v30

    .line 731
    .line 732
    move/from16 v3, v31

    .line 733
    .line 734
    move/from16 v10, v34

    .line 735
    .line 736
    const/high16 v4, 0x42c80000    # 100.0f

    .line 737
    .line 738
    const/4 v8, 0x0

    .line 739
    goto/16 :goto_d

    .line 740
    .line 741
    :cond_1e
    move-object v8, v0

    .line 742
    move-object/from16 v30, v2

    .line 743
    .line 744
    move/from16 v31, v3

    .line 745
    .line 746
    const/16 v16, 0x1

    .line 747
    .line 748
    if-nez v14, :cond_1f

    .line 749
    .line 750
    :goto_17
    invoke-static {v5}, Le/b;->a(F)I

    .line 751
    .line 752
    .line 753
    move-result v0

    .line 754
    goto :goto_15

    .line 755
    :cond_1f
    invoke-virtual {v14, v11}, Le/a;->c(Le/l;)I

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    goto :goto_15

    .line 760
    :cond_20
    move-object v8, v0

    .line 761
    move-object/from16 v30, v2

    .line 762
    .line 763
    move/from16 v31, v3

    .line 764
    .line 765
    const/16 v16, 0x1

    .line 766
    .line 767
    :goto_18
    const v0, 0xffffff

    .line 768
    .line 769
    .line 770
    and-int/2addr v0, v11

    .line 771
    shl-int/lit8 v1, v13, 0x18

    .line 772
    .line 773
    or-int v11, v0, v1

    .line 774
    .line 775
    :goto_19
    add-int/lit8 v0, v9, 0x1

    .line 776
    .line 777
    array-length v1, v6

    .line 778
    const/16 v2, 0x8

    .line 779
    .line 780
    if-le v0, v1, :cond_22

    .line 781
    .line 782
    const/4 v1, 0x4

    .line 783
    if-gt v9, v1, :cond_21

    .line 784
    .line 785
    const/16 v1, 0x8

    .line 786
    .line 787
    goto :goto_1a

    .line 788
    :cond_21
    mul-int/lit8 v1, v9, 0x2

    .line 789
    .line 790
    :goto_1a
    new-array v1, v1, [I

    .line 791
    .line 792
    const/4 v3, 0x0

    .line 793
    invoke-static {v6, v3, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    .line 795
    .line 796
    move-object v6, v1

    .line 797
    :cond_22
    aput v11, v6, v9

    .line 798
    .line 799
    array-length v1, v7

    .line 800
    if-le v0, v1, :cond_24

    .line 801
    .line 802
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    const/4 v3, 0x4

    .line 811
    if-gt v9, v3, :cond_23

    .line 812
    .line 813
    goto :goto_1b

    .line 814
    :cond_23
    mul-int/lit8 v2, v9, 0x2

    .line 815
    .line 816
    :goto_1b
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    check-cast v1, [Ljava/lang/Object;

    .line 821
    .line 822
    const/4 v2, 0x0

    .line 823
    invoke-static {v7, v2, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    .line 825
    .line 826
    move-object v7, v1

    .line 827
    :cond_24
    aput-object v8, v7, v9

    .line 828
    .line 829
    check-cast v7, [[I

    .line 830
    .line 831
    move-object/from16 v1, p2

    .line 832
    .line 833
    move v9, v0

    .line 834
    move-object/from16 v2, v30

    .line 835
    .line 836
    move/from16 v3, v31

    .line 837
    .line 838
    const/4 v4, 0x2

    .line 839
    const/4 v5, 0x1

    .line 840
    const/4 v8, 0x0

    .line 841
    move-object/from16 v0, p0

    .line 842
    .line 843
    goto/16 :goto_1

    .line 844
    .line 845
    :goto_1c
    move-object/from16 v0, p0

    .line 846
    .line 847
    move-object/from16 v1, p2

    .line 848
    .line 849
    move-object/from16 v2, v30

    .line 850
    .line 851
    move/from16 v3, v31

    .line 852
    .line 853
    const/4 v4, 0x2

    .line 854
    const/4 v5, 0x1

    .line 855
    const/4 v8, 0x0

    .line 856
    goto/16 :goto_1

    .line 857
    .line 858
    :cond_25
    new-array v0, v9, [I

    .line 859
    .line 860
    new-array v1, v9, [[I

    .line 861
    .line 862
    const/4 v2, 0x0

    .line 863
    invoke-static {v6, v2, v0, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    .line 865
    .line 866
    invoke-static {v7, v2, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    .line 868
    .line 869
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 870
    .line 871
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 872
    .line 873
    .line 874
    return-object v2

    .line 875
    :cond_26
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 876
    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .line 881
    .line 882
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    const-string v2, ": invalid color state list tag "

    .line 890
    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    throw v0

    .line 905
    :cond_27
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 906
    .line 907
    const-string v1, "No start tag found"

    .line 908
    .line 909
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    throw v0
.end method
