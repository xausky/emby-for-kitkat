.class public final Lcom/google/android/exoplayer2/decoder/DecoderCounters;
.super Ljava/lang/Object;
.source "DecoderCounters.java"


# instance fields
.field public decoderInitCount:I

.field public decoderReleaseCount:I

.field public droppedBufferCount:I

.field public droppedToKeyframeCount:I

.field public inputBufferCount:I

.field public maxConsecutiveDroppedBufferCount:I

.field public renderedOutputBufferCount:I

.field public skippedInputBufferCount:I

.field public skippedOutputBufferCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized ensureUpdated()V
    .locals 0

    monitor-enter p0

    .line 85
    monitor-exit p0

    return-void
.end method

.method public merge(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    .line 94
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 95
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 97
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 100
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    iget p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    return-void
.end method
