.class public final Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lp/b;


# direct methods
.method public constructor <init>(Lp/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp/a;->a:Lp/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lp/a;->a:Lp/b;

    .line 4
    .line 5
    iget-object v1, v1, Lp/b;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ll/e;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-object v1, v1, Ll/e;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lp/c;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const/4 v7, 0x0

    .line 28
    :goto_0
    iget-object v8, v1, Lp/c;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    if-ge v7, v9, :cond_7

    .line 35
    .line 36
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    check-cast v8, Lp/f;

    .line 41
    .line 42
    if-nez v8, :cond_1

    .line 43
    .line 44
    :cond_0
    :goto_1
    move/from16 p2, v7

    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_1
    iget-object v9, v1, Lp/c;->a:Lb/j;

    .line 49
    .line 50
    invoke-virtual {v9, v8}, Lb/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    check-cast v11, Ljava/lang/Long;

    .line 55
    .line 56
    if-nez v11, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v11

    .line 63
    cmp-long v13, v11, v4

    .line 64
    .line 65
    if-gez v13, :cond_0

    .line 66
    .line 67
    invoke-virtual {v9, v8}, Lb/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :goto_2
    iget-wide v11, v8, Lp/f;->f:J

    .line 71
    .line 72
    const-wide/16 v13, 0x0

    .line 73
    .line 74
    cmp-long v9, v11, v13

    .line 75
    .line 76
    if-nez v9, :cond_3

    .line 77
    .line 78
    iput-wide v2, v8, Lp/f;->f:J

    .line 79
    .line 80
    iget v9, v8, Lp/f;->b:F

    .line 81
    .line 82
    invoke-virtual {v8, v9}, Lp/f;->c(F)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    sub-long v16, v2, v11

    .line 87
    .line 88
    iput-wide v2, v8, Lp/f;->f:J

    .line 89
    .line 90
    iget v9, v8, Lp/f;->k:F

    .line 91
    .line 92
    const v14, 0x7f7fffff    # Float.MAX_VALUE

    .line 93
    .line 94
    .line 95
    cmpl-float v9, v9, v14

    .line 96
    .line 97
    if-eqz v9, :cond_4

    .line 98
    .line 99
    iget-object v9, v8, Lp/f;->j:Lp/g;

    .line 100
    .line 101
    iget-wide v11, v9, Lp/g;->i:D

    .line 102
    .line 103
    iget v11, v8, Lp/f;->b:F

    .line 104
    .line 105
    float-to-double v11, v11

    .line 106
    iget v13, v8, Lp/f;->a:F

    .line 107
    .line 108
    move/from16 p2, v7

    .line 109
    .line 110
    float-to-double v6, v13

    .line 111
    const-wide/16 v18, 0x2

    .line 112
    .line 113
    div-long v25, v16, v18

    .line 114
    .line 115
    move-object/from16 v18, v9

    .line 116
    .line 117
    move-wide/from16 v19, v11

    .line 118
    .line 119
    move-wide/from16 v21, v6

    .line 120
    .line 121
    move-wide/from16 v23, v25

    .line 122
    .line 123
    invoke-virtual/range {v18 .. v24}, Lp/g;->a(DDJ)Lp/e;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    iget-object v7, v8, Lp/f;->j:Lp/g;

    .line 128
    .line 129
    iget v9, v8, Lp/f;->k:F

    .line 130
    .line 131
    float-to-double v11, v9

    .line 132
    iput-wide v11, v7, Lp/g;->i:D

    .line 133
    .line 134
    iput v14, v8, Lp/f;->k:F

    .line 135
    .line 136
    iget v9, v6, Lp/e;->a:F

    .line 137
    .line 138
    float-to-double v11, v9

    .line 139
    iget v6, v6, Lp/e;->b:F

    .line 140
    .line 141
    float-to-double v14, v6

    .line 142
    move-object/from16 v20, v7

    .line 143
    .line 144
    move-wide/from16 v21, v11

    .line 145
    .line 146
    move-wide/from16 v23, v14

    .line 147
    .line 148
    invoke-virtual/range {v20 .. v26}, Lp/g;->a(DDJ)Lp/e;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    iget v7, v6, Lp/e;->a:F

    .line 153
    .line 154
    iput v7, v8, Lp/f;->b:F

    .line 155
    .line 156
    iget v6, v6, Lp/e;->b:F

    .line 157
    .line 158
    iput v6, v8, Lp/f;->a:F

    .line 159
    .line 160
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    move/from16 p2, v7

    .line 165
    .line 166
    iget-object v11, v8, Lp/f;->j:Lp/g;

    .line 167
    .line 168
    iget v6, v8, Lp/f;->b:F

    .line 169
    .line 170
    float-to-double v12, v6

    .line 171
    iget v6, v8, Lp/f;->a:F

    .line 172
    .line 173
    float-to-double v14, v6

    .line 174
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {v11 .. v17}, Lp/g;->a(DDJ)Lp/e;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    iget v9, v7, Lp/e;->a:F

    .line 182
    .line 183
    iput v9, v8, Lp/f;->b:F

    .line 184
    .line 185
    iget v7, v7, Lp/e;->b:F

    .line 186
    .line 187
    iput v7, v8, Lp/f;->a:F

    .line 188
    .line 189
    :goto_3
    iget v7, v8, Lp/f;->b:F

    .line 190
    .line 191
    const v9, -0x800001

    .line 192
    .line 193
    .line 194
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    iput v7, v8, Lp/f;->b:F

    .line 199
    .line 200
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    iput v7, v8, Lp/f;->b:F

    .line 205
    .line 206
    iget v11, v8, Lp/f;->a:F

    .line 207
    .line 208
    iget-object v12, v8, Lp/f;->j:Lp/g;

    .line 209
    .line 210
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    float-to-double v13, v11

    .line 218
    iget-wide v10, v12, Lp/g;->e:D

    .line 219
    .line 220
    cmpg-double v16, v13, v10

    .line 221
    .line 222
    if-gez v16, :cond_5

    .line 223
    .line 224
    iget-wide v10, v12, Lp/g;->i:D

    .line 225
    .line 226
    double-to-float v10, v10

    .line 227
    sub-float/2addr v7, v10

    .line 228
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    float-to-double v10, v7

    .line 233
    iget-wide v12, v12, Lp/g;->d:D

    .line 234
    .line 235
    cmpg-double v7, v10, v12

    .line 236
    .line 237
    if-gez v7, :cond_5

    .line 238
    .line 239
    iget-object v7, v8, Lp/f;->j:Lp/g;

    .line 240
    .line 241
    iget-wide v10, v7, Lp/g;->i:D

    .line 242
    .line 243
    double-to-float v7, v10

    .line 244
    iput v7, v8, Lp/f;->b:F

    .line 245
    .line 246
    const/4 v7, 0x0

    .line 247
    iput v7, v8, Lp/f;->a:F

    .line 248
    .line 249
    const/4 v10, 0x1

    .line 250
    goto :goto_4

    .line 251
    :cond_5
    const/4 v10, 0x0

    .line 252
    :goto_4
    iget v7, v8, Lp/f;->b:F

    .line 253
    .line 254
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    iput v6, v8, Lp/f;->b:F

    .line 259
    .line 260
    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    iput v6, v8, Lp/f;->b:F

    .line 265
    .line 266
    invoke-virtual {v8, v6}, Lp/f;->c(F)V

    .line 267
    .line 268
    .line 269
    if-eqz v10, :cond_6

    .line 270
    .line 271
    invoke-virtual {v8}, Lp/f;->b()V

    .line 272
    .line 273
    .line 274
    :cond_6
    :goto_5
    add-int/lit8 v7, p2, 0x1

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_7
    iget-boolean v2, v1, Lp/c;->e:Z

    .line 279
    .line 280
    if-eqz v2, :cond_a

    .line 281
    .line 282
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    const/4 v3, 0x1

    .line 287
    sub-int/2addr v2, v3

    .line 288
    :goto_6
    if-ltz v2, :cond_9

    .line 289
    .line 290
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    if-nez v3, :cond_8

    .line 295
    .line 296
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_9
    const/4 v2, 0x0

    .line 303
    iput-boolean v2, v1, Lp/c;->e:Z

    .line 304
    .line 305
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-lez v2, :cond_c

    .line 310
    .line 311
    iget-object v2, v1, Lp/c;->d:Lp/b;

    .line 312
    .line 313
    if-nez v2, :cond_b

    .line 314
    .line 315
    new-instance v2, Lp/b;

    .line 316
    .line 317
    iget-object v3, v1, Lp/c;->c:Ll/e;

    .line 318
    .line 319
    invoke-direct {v2, v3}, Lp/b;-><init>(Ll/e;)V

    .line 320
    .line 321
    .line 322
    iput-object v2, v1, Lp/c;->d:Lp/b;

    .line 323
    .line 324
    :cond_b
    iget-object v1, v1, Lp/c;->d:Lp/b;

    .line 325
    .line 326
    iget-object v2, v1, Lp/b;->c:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v2, Lp/a;

    .line 329
    .line 330
    iget-object v1, v1, Lp/b;->b:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v1, Landroid/view/Choreographer;

    .line 333
    .line 334
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 335
    .line 336
    .line 337
    :cond_c
    return-void
.end method
