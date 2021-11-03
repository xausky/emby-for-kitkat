.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# instance fields
.field private sampleQueueIndex:I

.field private final sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final trackGroupIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 36
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method private hasValidSampleQueueIndex()Z
    .locals 2

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bindSampleQueue()V
    .locals 2

    .line 41
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->bindSampleQueueToSampleStream(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method public isReady()Z
    .locals 2

    .line 56
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public maybeThrowError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    goto :goto_0

    .line 67
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError(I)V

    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 2

    .line 74
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    .line 75
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    const/4 p1, -0x4

    return p1

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    .line 79
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    :cond_1
    return v1
.end method

.method public skipData(J)I
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    .line 86
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->skipData(IJ)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unbindSampleQueue()V
    .locals 3

    .line 46
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->unbindSampleQueue(I)V

    .line 48
    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    :cond_0
    return-void
.end method
