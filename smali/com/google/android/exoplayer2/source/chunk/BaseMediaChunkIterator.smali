.class public abstract Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;
.super Ljava/lang/Object;
.source "BaseMediaChunkIterator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;


# instance fields
.field private currentIndex:J

.field private final fromIndex:J

.field private final toIndex:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->fromIndex:J

    .line 40
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->toIndex:J

    .line 41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->reset()V

    return-void
.end method


# virtual methods
.method protected final checkInBounds()V
    .locals 4

    .line 66
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->currentIndex:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->fromIndex:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->currentIndex:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->toIndex:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected final getCurrentIndex()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->currentIndex:J

    return-wide v0
.end method

.method public isEnded()Z
    .locals 4

    .line 46
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->currentIndex:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->toIndex:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Z
    .locals 4

    .line 51
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->currentIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->currentIndex:J

    .line 52
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->isEnded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 4

    .line 57
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->fromIndex:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->currentIndex:J

    return-void
.end method
