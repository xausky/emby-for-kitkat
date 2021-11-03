.class final Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;
.super Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;,
        Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;
    }
.end annotation


# instance fields
.field private final decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/FlacStreamMetadata;JJLcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)V
    .locals 17

    move-object/from16 v0, p1

    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$-Hvdf5I0pi2XYwfrxQUAc0g6jT4;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$-Hvdf5I0pi2XYwfrxQUAc0g6jT4;-><init>(Lcom/google/android/exoplayer2/util/FlacStreamMetadata;)V

    new-instance v2, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    const/4 v3, 0x0

    move-object/from16 v15, p6

    move-object/from16 v4, p7

    invoke-direct {v2, v15, v4, v3}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$1;)V

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->totalSamples:J

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getApproxBytesPerFrame()J

    move-result-wide v13

    iget v0, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minFrameSize:I

    const/4 v5, 0x6

    .line 77
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move/from16 v15, v16

    .line 68
    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    .line 79
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    return-void
.end method


# virtual methods
.method protected onSeekOperationFinished(ZJ)V
    .locals 0

    if-nez p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->reset(J)V

    :cond_0
    return-void
.end method
