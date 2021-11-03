.class final Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;
.super Ljava/lang/Object;
.source "PsDurationReader.java"


# static fields
.field private static final TIMESTAMP_SEARCH_BYTES:I = 0x4e20


# instance fields
.field private durationUs:J

.field private firstScrValue:J

.field private isDurationRead:Z

.field private isFirstScrValueRead:Z

.field private isLastScrValueRead:Z

.field private lastScrValue:J

.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 58
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 59
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private static checkMarkerBits([B)Z
    .locals 3

    const/4 v0, 0x0

    .line 221
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc4

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 226
    aget-byte v1, p0, v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    return v0

    .line 231
    :cond_1
    aget-byte v1, p0, v2

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x5

    .line 235
    aget-byte v1, p0, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x8

    .line 240
    aget-byte p0, p0, v1

    const/4 v1, 0x3

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isDurationRead:Z

    .line 135
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x0

    return p1
.end method

.method private peekIntAtPosition([BI)I
    .locals 2

    .line 213
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private readFirstScrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 143
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const/4 v3, 0x0

    int-to-long v4, v3

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 144
    iput-wide v4, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v2

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 149
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 150
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, p2, v3, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 152
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readFirstScrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 153
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    return v3
.end method

.method private readFirstScrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 7

    .line 158
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 159
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v2, :cond_1

    .line 163
    iget-object v2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v2

    const/16 v5, 0x1ba

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x4

    .line 165
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 166
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    return-wide v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method private readLastScrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 177
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    .line 178
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr v0, v3

    .line 180
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    cmp-long v3, v3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 181
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v4

    .line 185
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 186
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 187
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 189
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readLastScrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 190
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    return v0
.end method

.method private readLastScrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 6

    .line 195
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 196
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, v0, :cond_1

    .line 200
    iget-object v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v4, v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v4

    const/16 v5, 0x1ba

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v1, 0x4

    .line 202
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 203
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    return-wide v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 6

    .line 118
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    return-wide v2

    .line 123
    :cond_0
    new-array v1, v4, [B

    const/4 v4, 0x0

    .line 124
    array-length v5, v1

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 126
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->checkMarkerBits([B)Z

    move-result p0

    if-nez p0, :cond_1

    return-wide v2

    .line 129
    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPackHeader([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readScrValueFromPackHeader([B)J
    .locals 13

    const/4 v0, 0x0

    .line 251
    aget-byte v1, p0, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x38

    and-long/2addr v1, v3

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    const/16 v4, 0x1e

    shl-long/2addr v1, v4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    const/16 v0, 0x1c

    shl-long/2addr v4, v0

    or-long v0, v1, v4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v4, v2

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v2, 0x14

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x2

    aget-byte v4, p0, v2

    int-to-long v4, v4

    const-wide/16 v10, 0xf8

    and-long/2addr v4, v10

    shr-long/2addr v4, v3

    const/16 v12, 0xf

    shl-long/2addr v4, v12

    or-long/2addr v0, v4

    aget-byte v2, p0, v2

    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v2, 0xd

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    aget-byte v2, p0, v3

    int-to-long v4, v2

    and-long/2addr v4, v8

    const/4 v2, 0x5

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x4

    aget-byte p0, p0, v2

    int-to-long v4, p0

    and-long/2addr v4, v10

    shr-long v2, v4, v3

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getScrTimestampAdjuster()Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    return-object v0
.end method

.method public isDurationReadFinished()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isDurationRead:Z

    return v0
.end method

.method public readDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readLastScrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 92
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 95
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    if-nez v0, :cond_2

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readFirstScrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 98
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 102
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    .line 103
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 104
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1
.end method
