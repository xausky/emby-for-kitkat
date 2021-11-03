.class final Lcom/google/common/hash/SipHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "SipHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/SipHashFunction$SipHasher;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final c:I

.field private final d:I

.field private final k0:J

.field private final k1:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 6

    .line 52
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "The number of SipRound iterations (c=%s) during Compression must be positive."

    .line 53
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "The number of SipRound iterations (d=%s) during Finalization must be positive."

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput p1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 58
    iput p2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 59
    iput-wide p3, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 60
    iput-wide p5, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    instance-of v0, p1, Lcom/google/common/hash/SipHashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 80
    check-cast p1, Lcom/google/common/hash/SipHashFunction;

    .line 81
    iget v0, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v2, p1, Lcom/google/common/hash/SipHashFunction;->c:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget v2, p1, Lcom/google/common/hash/SipHashFunction;->d:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v4, p1, Lcom/google/common/hash/SipHashFunction;->k0:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    iget-wide v4, p1, Lcom/google/common/hash/SipHashFunction;->k1:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    xor-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 8

    .line 68
    new-instance v7, Lcom/google/common/hash/SipHashFunction$SipHasher;

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget-wide v3, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v5, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/SipHashFunction$SipHasher;-><init>(IIJJ)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 74
    iget v0, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x51

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Hashing.sipHash"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
