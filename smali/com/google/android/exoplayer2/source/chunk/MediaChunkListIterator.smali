.class public final Lcom/google/android/exoplayer2/source/chunk/MediaChunkListIterator;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;
.source "MediaChunkListIterator.java"


# instance fields
.field private final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseOrder:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;Z)V"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkListIterator;->chunks:Ljava/util/List;

    .line 36
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkListIterator;->reverseOrder:Z

    return-void
.end method

.method private getCurrentChunk()Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->getCurrentIndex()J

    move-result-wide v0

    long-to-int v0, v0

    .line 56
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkListIterator;->reverseOrder:Z

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkListIterator;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkListIterator;->chunks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    return-object v0
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkListIterator;->getCurrentChunk()Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    return-wide v0
.end method

.method public getChunkStartTimeUs()J
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkListIterator;->getCurrentChunk()Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    return-wide v0
.end method

.method public getDataSpec()Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkListIterator;->getCurrentChunk()Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-object v0
.end method
