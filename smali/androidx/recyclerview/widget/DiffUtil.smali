.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 105
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p0

    return-object p0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 15
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v0, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v3, v0, v1

    sub-int/2addr v0, v1

    .line 134
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x2

    .line 138
    new-array v13, v1, [I

    .line 139
    new-array v1, v1, [I

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 145
    iget v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v8, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v9, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object v5, p0

    move-object v10, v13

    move-object v11, v1

    move v12, v0

    invoke-static/range {v5 .. v12}, Landroidx/recyclerview/widget/DiffUtil;->diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 148
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-lez v6, :cond_0

    .line 149
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 153
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 156
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    goto :goto_1

    .line 157
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 156
    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 158
    :goto_1
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 159
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 160
    iget-boolean v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v7, :cond_2

    .line 161
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 162
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    .line 164
    :cond_2
    iget-boolean v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v7, :cond_3

    .line 165
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 166
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    .line 168
    :cond_3
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 169
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 172
    :goto_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-boolean v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v6, :cond_5

    .line 178
    iget-boolean v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v6, :cond_4

    .line 179
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 180
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v5

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_3

    .line 182
    :cond_4
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 183
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_3

    .line 186
    :cond_5
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 187
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v5

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 189
    :goto_3
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 191
    :cond_6
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 196
    :cond_7
    sget-object v0, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-object v2, v0

    move-object v3, p0

    move-object v5, v13

    move-object v6, v1

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v0
.end method

.method private static diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    sub-int v5, p2, p1

    sub-int v6, p4, p3

    const/4 v7, 0x1

    if-lt v5, v7, :cond_f

    if-ge v6, v7, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v8, v5, v6

    add-int v9, v5, v6

    add-int/2addr v9, v7

    .line 212
    div-int/lit8 v9, v9, 0x2

    sub-int v10, p7, v9

    sub-int/2addr v10, v7

    add-int v11, p7, v9

    add-int/2addr v11, v7

    const/4 v12, 0x0

    .line 213
    invoke-static {v3, v10, v11, v12}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v10, v8

    add-int/2addr v11, v8

    .line 214
    invoke-static {v4, v10, v11, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 215
    rem-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    :goto_1
    if-gt v11, v9, :cond_e

    neg-int v13, v11

    move v14, v13

    :goto_2
    if-gt v14, v11, :cond_7

    if-eq v14, v13, :cond_3

    if-eq v14, v11, :cond_2

    add-int v15, p7, v14

    add-int/lit8 v16, v15, -0x1

    .line 222
    aget v12, v3, v16

    add-int/2addr v15, v7

    aget v7, v3, v15

    if-ge v12, v7, :cond_2

    goto :goto_3

    :cond_2
    add-int v7, p7, v14

    const/16 v17, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 226
    aget v7, v3, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x1

    goto :goto_4

    :cond_3
    :goto_3
    const/16 v17, 0x1

    add-int v7, p7, v14

    add-int/lit8 v7, v7, 0x1

    .line 223
    aget v7, v3, v7

    const/4 v12, 0x0

    :goto_4
    sub-int v15, v7, v14

    move/from16 v18, v9

    move v9, v15

    :goto_5
    if-ge v7, v5, :cond_4

    if-ge v9, v6, :cond_4

    move/from16 v19, v5

    add-int v5, p1, v7

    move/from16 v20, v6

    add-int v6, p3, v9

    .line 233
    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v19

    move/from16 v6, v20

    goto :goto_5

    :cond_4
    move/from16 v19, v5

    move/from16 v20, v6

    :cond_5
    add-int v5, p7, v14

    .line 237
    aput v7, v3, v5

    if-eqz v10, :cond_6

    sub-int v6, v8, v11

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-lt v14, v6, :cond_6

    add-int v6, v8, v11

    sub-int/2addr v6, v7

    if-gt v14, v6, :cond_6

    .line 239
    aget v6, v3, v5

    aget v7, v4, v5

    if-lt v6, v7, :cond_6

    .line 240
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 241
    aget v1, v4, v5

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 242
    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v1, v14

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 243
    aget v1, v3, v5

    aget v2, v4, v5

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 244
    iput-boolean v12, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    const/4 v5, 0x0

    .line 245
    iput-boolean v5, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v0

    :cond_6
    const/4 v5, 0x0

    add-int/lit8 v14, v14, 0x2

    move/from16 v9, v18

    move/from16 v5, v19

    move/from16 v6, v20

    const/4 v7, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_7
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v18, v9

    const/4 v5, 0x0

    move v6, v13

    :goto_6
    if-gt v6, v11, :cond_d

    add-int v7, v6, v8

    add-int v9, v11, v8

    if-eq v7, v9, :cond_a

    add-int v9, v13, v8

    if-eq v7, v9, :cond_8

    add-int v9, p7, v7

    add-int/lit8 v12, v9, -0x1

    .line 255
    aget v12, v4, v12

    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v9, v4, v9

    if-ge v12, v9, :cond_9

    goto :goto_7

    :cond_8
    const/16 v17, 0x1

    :cond_9
    add-int v9, p7, v7

    add-int/lit8 v9, v9, 0x1

    .line 260
    aget v9, v4, v9

    add-int/lit8 v9, v9, -0x1

    const/4 v12, 0x1

    goto :goto_8

    :cond_a
    const/16 v17, 0x1

    :goto_7
    add-int v9, p7, v7

    add-int/lit8 v9, v9, -0x1

    .line 257
    aget v9, v4, v9

    const/4 v12, 0x0

    :goto_8
    sub-int v14, v9, v7

    :goto_9
    if-lez v9, :cond_b

    if-lez v14, :cond_b

    add-int v15, p1, v9

    add-int/lit8 v5, v15, -0x1

    add-int v15, p3, v14

    add-int/lit8 v1, v15, -0x1

    .line 268
    invoke-virtual {v0, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x0

    const/16 v17, 0x1

    goto :goto_9

    :cond_b
    add-int v1, p7, v7

    .line 272
    aput v9, v4, v1

    if-nez v10, :cond_c

    if-lt v7, v13, :cond_c

    if-gt v7, v11, :cond_c

    .line 274
    aget v5, v3, v1

    aget v9, v4, v1

    if-lt v5, v9, :cond_c

    .line 275
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 276
    aget v2, v4, v1

    iput v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 277
    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v2, v7

    iput v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 278
    aget v2, v3, v1

    aget v1, v4, v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 280
    iput-boolean v12, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    const/4 v1, 0x1

    .line 281
    iput-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v0

    :cond_c
    const/4 v1, 0x1

    add-int/lit8 v6, v6, 0x2

    const/4 v5, 0x0

    goto :goto_6

    :cond_d
    const/4 v1, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v18

    move/from16 v5, v19

    move/from16 v6, v20

    const/4 v7, 0x1

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 287
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_a
    const/4 v0, 0x0

    return-object v0
.end method
