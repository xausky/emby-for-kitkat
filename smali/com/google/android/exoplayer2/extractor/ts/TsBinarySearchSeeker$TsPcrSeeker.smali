.class final Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TsPcrSeeker"
.end annotation


# instance fields
.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final pcrPid:I

.field private final pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    .line 71
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 72
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private searchForPcrValueInBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    const-wide/16 v6, -0x1

    move-wide v10, v6

    move-wide v12, v10

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 95
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v14

    const/16 v8, 0xbc

    if-lt v14, v8, :cond_5

    .line 96
    iget-object v8, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    invoke-static {v8, v9, v5}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v8

    add-int/lit16 v9, v8, 0xbc

    if-le v9, v5, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    invoke-static {v1, v8, v10}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

    move-result-wide v10

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v10, v14

    if-eqz v16, :cond_4

    .line 104
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v14, v10, v11}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v10

    cmp-long v14, v10, p2

    if-lez v14, :cond_2

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v14

    if-nez v1, :cond_1

    .line 108
    invoke-static {v10, v11, v3, v4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    add-long v1, v3, v12

    .line 111
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v1

    return-object v1

    :cond_2
    const-wide/32 v6, 0x186a0

    add-long/2addr v6, v10

    cmp-long v6, v6, p2

    if-lez v6, :cond_3

    int-to-long v1, v8

    add-long/2addr v1, v3

    .line 116
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v1

    return-object v1

    :cond_3
    int-to-long v6, v8

    move-wide v12, v6

    move-wide v6, v10

    .line 122
    :cond_4
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    int-to-long v10, v9

    goto :goto_0

    :cond_5
    :goto_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v1

    if-eqz v1, :cond_6

    add-long v1, v3, v10

    .line 128
    invoke-static {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v1

    return-object v1

    .line 131
    :cond_6
    sget-object v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v1
.end method


# virtual methods
.method public onSeekFinished()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    return-void
.end method

.method public searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    .line 79
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 82
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 84
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->searchForPcrValueInBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1
.end method
