.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 4

    .line 418
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 420
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 421
    invoke-interface {v3}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_0
    iput v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 444
    instance-of v0, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 445
    check-cast p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 446
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget v2, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v0, v0

    iget-object v2, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 461
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 462
    iget-object v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 463
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 6

    .line 428
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 430
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    .line 431
    invoke-interface {v4}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v4

    .line 432
    invoke-virtual {v4}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v0, v3, v5}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_0
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method
