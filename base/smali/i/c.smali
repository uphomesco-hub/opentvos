.class public abstract Li/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Li/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Li/c;->a:Li/b;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Li/d;)Li/e;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v0, Li/d;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_10

    .line 19
    .line 20
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v7, v0, Li/d;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_f

    .line 29
    .line 30
    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    const/16 v6, 0x40

    .line 33
    .line 34
    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 39
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    :goto_0
    array-length v7, v1

    .line 47
    if-ge v6, v7, :cond_0

    .line 48
    .line 49
    aget-object v7, v1, v6

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Li/c;->a:Li/b;

    .line 62
    .line 63
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    .line 65
    .line 66
    iget-object v6, v0, Li/d;->d:Ljava/util/List;

    .line 67
    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-static {v2, v4}, Le/b;->d(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    :goto_1
    const/4 v2, 0x0

    .line 76
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    const/4 v8, 0x0

    .line 81
    if-ge v2, v7, :cond_4

    .line 82
    .line 83
    new-instance v7, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Ljava/util/Collection;

    .line 90
    .line 91
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eq v9, v10, :cond_2

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_2
    const/4 v9, 0x0

    .line 109
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-ge v9, v10, :cond_5

    .line 114
    .line 115
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    check-cast v10, [B

    .line 120
    .line 121
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    check-cast v11, [B

    .line 126
    .line 127
    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-nez v10, :cond_3

    .line 132
    .line 133
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    move-object v5, v8

    .line 140
    :cond_5
    const/4 v1, 0x1

    .line 141
    if-nez v5, :cond_6

    .line 142
    .line 143
    new-instance v0, Li/e;

    .line 144
    .line 145
    invoke-direct {v0, v1, v8}, Li/e;-><init>(I[Li/g;)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_6
    iget-object v2, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v3, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    new-instance v5, Landroid/net/Uri$Builder;

    .line 157
    .line 158
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v6, "content"

    .line 162
    .line 163
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    new-instance v7, Landroid/net/Uri$Builder;

    .line 176
    .line 177
    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v6, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const-string v6, "file"

    .line 189
    .line 190
    invoke-virtual {v2, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    :try_start_0
    const-string v9, "_id"

    .line 199
    .line 200
    const-string v10, "file_id"

    .line 201
    .line 202
    const-string v11, "font_ttc_index"

    .line 203
    .line 204
    const-string v12, "font_variation_settings"

    .line 205
    .line 206
    const-string v13, "font_weight"

    .line 207
    .line 208
    const-string v14, "font_italic"

    .line 209
    .line 210
    const-string v15, "result_code"

    .line 211
    .line 212
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    const-string v12, "query = ?"

    .line 221
    .line 222
    iget-object v0, v0, Li/d;->c:Ljava/lang/String;

    .line 223
    .line 224
    filled-new-array {v0}, [Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    const/4 v14, 0x0

    .line 229
    const/4 v15, 0x0

    .line 230
    move-object v10, v5

    .line 231
    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    if-eqz v8, :cond_c

    .line 236
    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-lez v0, :cond_c

    .line 242
    .line 243
    const-string v0, "result_code"

    .line 244
    .line 245
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v6, "_id"

    .line 255
    .line 256
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    const-string v7, "file_id"

    .line 261
    .line 262
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    const-string v9, "font_ttc_index"

    .line 267
    .line 268
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    const-string v10, "font_weight"

    .line 273
    .line 274
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v10

    .line 278
    const-string v11, "font_italic"

    .line 279
    .line 280
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v11

    .line 284
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    if-eqz v12, :cond_c

    .line 289
    .line 290
    const/4 v12, -0x1

    .line 291
    if-eq v0, v12, :cond_7

    .line 292
    .line 293
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 294
    .line 295
    .line 296
    move-result v13

    .line 297
    move/from16 v19, v13

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :catchall_0
    move-exception v0

    .line 301
    goto :goto_c

    .line 302
    :cond_7
    const/16 v19, 0x0

    .line 303
    .line 304
    :goto_6
    if-eq v9, v12, :cond_8

    .line 305
    .line 306
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    move/from16 v16, v13

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_8
    const/16 v16, 0x0

    .line 314
    .line 315
    :goto_7
    if-ne v7, v12, :cond_9

    .line 316
    .line 317
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v13

    .line 321
    invoke-static {v5, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    :goto_8
    move-object v15, v13

    .line 326
    goto :goto_9

    .line 327
    :cond_9
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 328
    .line 329
    .line 330
    move-result-wide v13

    .line 331
    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 332
    .line 333
    .line 334
    move-result-object v13

    .line 335
    goto :goto_8

    .line 336
    :goto_9
    if-eq v10, v12, :cond_a

    .line 337
    .line 338
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    move/from16 v17, v13

    .line 343
    .line 344
    goto :goto_a

    .line 345
    :cond_a
    const/16 v13, 0x190

    .line 346
    .line 347
    const/16 v17, 0x190

    .line 348
    .line 349
    :goto_a
    if-eq v11, v12, :cond_b

    .line 350
    .line 351
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 352
    .line 353
    .line 354
    move-result v12

    .line 355
    if-ne v12, v1, :cond_b

    .line 356
    .line 357
    const/16 v18, 0x1

    .line 358
    .line 359
    goto :goto_b

    .line 360
    :cond_b
    const/16 v18, 0x0

    .line 361
    .line 362
    :goto_b
    new-instance v12, Li/g;

    .line 363
    .line 364
    move-object v14, v12

    .line 365
    invoke-direct/range {v14 .. v19}, Li/g;-><init>(Landroid/net/Uri;IIZI)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_c
    if-eqz v8, :cond_d

    .line 373
    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    .line 376
    .line 377
    :cond_d
    new-array v0, v4, [Li/g;

    .line 378
    .line 379
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    check-cast v0, [Li/g;

    .line 384
    .line 385
    new-instance v1, Li/e;

    .line 386
    .line 387
    invoke-direct {v1, v4, v0}, Li/e;-><init>(I[Li/g;)V

    .line 388
    .line 389
    .line 390
    return-object v1

    .line 391
    :goto_c
    if-eqz v8, :cond_e

    .line 392
    .line 393
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 394
    .line 395
    .line 396
    :cond_e
    throw v0

    .line 397
    :cond_f
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 398
    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    const-string v2, "Found content provider "

    .line 402
    .line 403
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v2, ", but package was not "

    .line 410
    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    throw v0

    .line 425
    :cond_10
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 426
    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    const-string v2, "No package found for authority: "

    .line 430
    .line 431
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v0
.end method
