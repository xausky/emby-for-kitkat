.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lokio/ByteString;

.field final trie:[I


# direct methods
.method private constructor <init>([Lokio/ByteString;[I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 32
    iput-object p2, p0, Lokio/Options;->trie:[I

    return-void
.end method

.method private static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v12, p4

    move/from16 v4, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    if-ge v4, v13, :cond_11

    move v5, v4

    :goto_0
    if-ge v5, v13, :cond_1

    .line 125
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    if-lt v6, v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_1
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    add-int/lit8 v6, v13, -0x1

    .line 129
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    const/4 v7, -0x1

    .line 133
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v8

    if-ne v3, v8, :cond_2

    .line 134
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v4, v4, 0x1

    .line 136
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    :cond_2
    move v8, v4

    .line 139
    invoke-virtual {v5, v3}, Lokio/ByteString;->getByte(I)B

    move-result v4

    invoke-virtual {v6, v3}, Lokio/ByteString;->getByte(I)B

    move-result v9

    const-wide/16 v10, 0x2

    if-eq v4, v9, :cond_c

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x1

    :goto_1
    if-ge v4, v13, :cond_4

    add-int/lit8 v6, v4, -0x1

    .line 143
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6, v3}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 144
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokio/ByteString;

    invoke-virtual {v9, v3}, Lokio/ByteString;->getByte(I)B

    move-result v9

    if-eq v6, v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 150
    :cond_4
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v14, v4

    add-long v0, p0, v14

    add-long/2addr v0, v10

    mul-int/lit8 v4, v5, 0x2

    int-to-long v9, v4

    add-long/2addr v0, v9

    .line 152
    invoke-virtual {v2, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 153
    invoke-virtual {v2, v7}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v4, v8

    :goto_2
    if-ge v4, v13, :cond_7

    .line 156
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5, v3}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v4, v8, :cond_5

    add-int/lit8 v6, v4, -0x1

    .line 157
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6, v3}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v5, v6, :cond_6

    :cond_5
    and-int/lit16 v5, v5, 0xff

    .line 158
    invoke-virtual {v2, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 162
    :cond_7
    new-instance v14, Lokio/Buffer;

    invoke-direct {v14}, Lokio/Buffer;-><init>()V

    move v9, v8

    :goto_3
    if-ge v9, v13, :cond_b

    .line 165
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v3}, Lokio/ByteString;->getByte(I)B

    move-result v4

    add-int/lit8 v5, v9, 0x1

    move v6, v5

    :goto_4
    if-ge v6, v13, :cond_9

    .line 168
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    invoke-virtual {v7, v3}, Lokio/ByteString;->getByte(I)B

    move-result v7

    if-eq v4, v7, :cond_8

    move v15, v6

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    move v15, v13

    :goto_5
    if-ne v5, v15, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 175
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v4, v5, :cond_a

    move-object/from16 v11, p7

    .line 177
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move/from16 v16, v15

    move-object v15, v11

    goto :goto_6

    :cond_a
    move-object/from16 v11, p7

    .line 180
    invoke-static {v14}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v0

    const-wide/16 v6, -0x1

    mul-long v4, v4, v6

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v7, v3, 0x1

    move-wide v4, v0

    move-object v6, v14

    move-object/from16 v8, p4

    move v10, v15

    move/from16 v16, v15

    move-object v15, v11

    move-object/from16 v11, p7

    .line 181
    invoke-static/range {v4 .. v11}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    :goto_6
    move/from16 v9, v16

    goto :goto_3

    .line 194
    :cond_b
    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {v2, v14, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto/16 :goto_9

    :cond_c
    move-object v15, v14

    const/4 v4, 0x0

    .line 199
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v9

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v4, v3

    const/4 v14, 0x0

    :goto_7
    if-ge v4, v9, :cond_d

    .line 200
    invoke-virtual {v5, v4}, Lokio/ByteString;->getByte(I)B

    move-result v10

    invoke-virtual {v6, v4}, Lokio/ByteString;->getByte(I)B

    move-result v11

    if-ne v10, v11, :cond_d

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v10, 0x2

    goto :goto_7

    .line 208
    :cond_d
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v9, v4

    add-long v0, p0, v9

    const-wide/16 v9, 0x2

    add-long/2addr v0, v9

    int-to-long v9, v14

    add-long/2addr v0, v9

    const-wide/16 v9, 0x1

    add-long/2addr v0, v9

    neg-int v4, v14

    .line 210
    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 211
    invoke-virtual {v2, v7}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v4, v3

    :goto_8
    add-int v6, v3, v14

    if-ge v4, v6, :cond_e

    .line 214
    invoke-virtual {v5, v4}, Lokio/ByteString;->getByte(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v2, v6}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v3, v8, 0x1

    if-ne v3, v13, :cond_10

    .line 219
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-ne v6, v0, :cond_f

    .line 222
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto :goto_9

    .line 220
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_10
    new-instance v11, Lokio/Buffer;

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    .line 226
    invoke-static {v11}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v0

    const-wide/16 v9, -0x1

    mul-long v3, v3, v9

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-wide v3, v0

    move-object v5, v11

    move-object/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 227
    invoke-static/range {v3 .. v10}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 235
    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {v2, v11, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :goto_9
    return-void

    .line 123
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static intCount(Lokio/Buffer;)I
    .locals 4

    .line 249
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 10

    .line 36
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 38
    new-instance p0, Lokio/Options;

    new-array v0, v1, [Lokio/ByteString;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object p0

    .line 43
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, -0x1

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 50
    aget-object v2, p0, v0

    invoke-static {v6, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_2
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 60
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 61
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    add-int/lit8 v3, v0, 0x1

    move v4, v3

    .line 62
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 63
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    .line 64
    invoke-virtual {v5, v2}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_4

    .line 65
    :cond_3
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v7

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 68
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v5, v7, :cond_4

    .line 69
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 66
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    move v0, v3

    goto :goto_2

    .line 77
    :cond_7
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 78
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move-object v4, v0

    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 80
    invoke-static {v0}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    new-array v2, v2, [I

    .line 81
    :goto_5
    array-length v3, v2

    if-ge v1, v3, :cond_8

    .line 82
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 84
    :cond_8
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    new-instance v0, Lokio/Options;

    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lokio/ByteString;

    invoke-direct {v0, p0, v2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object v0

    .line 85
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 54
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the empty byte string is not a supported option"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lokio/ByteString;
    .locals 1

    .line 241
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 245
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method
