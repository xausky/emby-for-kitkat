.class public final Lcom/google/android/exoplayer2/extractor/FlacFrameReader;
.super Ljava/lang/Object;
.source "FlacFrameReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndReadBlockSizeSamples(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;I)Z
    .locals 0

    .line 279
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->readFrameBlockSizeSamplesFromKey(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_0

    .line 280
    iget p1, p1, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static checkAndReadCrc(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z
    .locals 4

    .line 328
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 329
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 330
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    .line 331
    invoke-static {p0, p1, v1, v3}, Lcom/google/android/exoplayer2/util/Util;->crc8([BIII)I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static checkAndReadFirstSampleNumber(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;ZLcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 2

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtf8EncodedLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget p0, p1, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxBlockSizeSamples:I

    int-to-long p0, p0

    mul-long v0, v0, p0

    :goto_0
    iput-wide v0, p3, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkAndReadFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    move/from16 v7, p2

    int-to-long v7, v7

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    return v8

    :cond_0
    const-wide/16 v9, 0x1

    and-long/2addr v5, v9

    cmp-long v5, v5, v9

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/16 v7, 0xc

    shr-long v11, v3, v7

    const-wide/16 v13, 0xf

    and-long/2addr v11, v13

    long-to-int v7, v11

    const/16 v11, 0x8

    shr-long v11, v3, v11

    and-long/2addr v11, v13

    long-to-int v11, v11

    const/4 v12, 0x4

    shr-long v15, v3, v12

    and-long v12, v15, v13

    long-to-int v12, v12

    shr-long v13, v3, v6

    const-wide/16 v15, 0x7

    and-long/2addr v13, v15

    long-to-int v13, v13

    and-long/2addr v3, v9

    cmp-long v3, v3, v9

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 69
    :goto_1
    invoke-static {v12, v1}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkChannelAssignment(ILcom/google/android/exoplayer2/util/FlacStreamMetadata;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    invoke-static {v13, v1}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkBitsPerSample(ILcom/google/android/exoplayer2/util/FlacStreamMetadata;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    move-object/from16 v3, p3

    .line 72
    invoke-static {v0, v1, v5, v3}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFirstSampleNumber(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;ZLcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    invoke-static {v0, v1, v7}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadBlockSizeSamples(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    invoke-static {v0, v1, v11}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadSampleRate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadCrc(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    return v6
.end method

.method private static checkAndReadSampleRate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;I)Z
    .locals 4

    .line 297
    iget v0, p1, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    const/4 v1, 0x1

    if-nez p2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xb

    const/4 v3, 0x0

    if-gt p2, v2, :cond_2

    .line 301
    iget p0, p1, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRateLookupKey:I

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    const/16 p1, 0xc

    if-ne p2, p1, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    const/16 p1, 0xe

    if-gt p2, p1, :cond_7

    .line 305
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    if-ne p2, p1, :cond_5

    mul-int/lit8 p0, p0, 0xa

    :cond_5
    if-ne p0, v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_7
    return v3
.end method

.method private static checkBitsPerSample(ILcom/google/android/exoplayer2/util/FlacStreamMetadata;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 229
    :cond_0
    iget p1, p1, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static checkChannelAssignment(ILcom/google/android/exoplayer2/util/FlacStreamMetadata;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-gt p0, v2, :cond_1

    .line 209
    iget p1, p1, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    sub-int/2addr p1, v1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/16 v2, 0xa

    if-gt p0, v2, :cond_3

    .line 211
    iget p0, p1, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public static checkFrameHeaderFromPeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    const/4 v2, 0x2

    .line 100
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 101
    invoke-interface {p0, v3, v4, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 102
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    if-eq v5, p2, :cond_0

    .line 104
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 105
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    return v4

    .line 109
    :cond_0
    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 110
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v3, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v3, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v4, 0xe

    .line 114
    invoke-static {p0, v3, v2, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->peekToLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)I

    move-result v2

    .line 115
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 117
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 118
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 120
    invoke-static {v5, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result p0

    return p0
.end method

.method public static getFirstSampleNumber(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 141
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 v0, 0x1

    .line 142
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 143
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 144
    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 145
    aget-byte v1, v1, v2

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    .line 146
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    .line 149
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 150
    iget-object v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 151
    invoke-static {p0, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->peekToLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)I

    move-result v1

    .line 152
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 153
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 155
    new-instance p0, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    .line 156
    invoke-static {v3, p1, v0, p0}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFirstSampleNumber(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;ZLcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    iget-wide p0, p0, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p0

    .line 158
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p0
.end method

.method public static readFrameBlockSizeSamplesFromKey(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x100

    add-int/lit8 p1, p1, -0x8

    shl-int/2addr p0, p1

    return p0

    .line 184
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 182
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_3
    const/16 p0, 0x240

    add-int/lit8 p1, p1, -0x2

    shl-int/2addr p0, p1

    return p0

    :pswitch_4
    const/16 p0, 0xc0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
