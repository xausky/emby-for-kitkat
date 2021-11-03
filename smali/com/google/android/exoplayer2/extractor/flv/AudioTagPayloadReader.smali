.class final Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_FORMAT_ALAW:I = 0x7

.field private static final AUDIO_FORMAT_MP3:I = 0x2

.field private static final AUDIO_FORMAT_ULAW:I = 0x8

.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private audioFormat:I

.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    return-void
.end method


# virtual methods
.method protected parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 59
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 60
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 61
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x3

    .line 64
    sget-object v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    aget v8, v0, p1

    const/4 v2, 0x0

    const-string v3, "audio/mpeg"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 65
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 68
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_3

    .line 69
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    goto :goto_3

    .line 89
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio format not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_3
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    if-ne p1, v0, :cond_4

    const-string p1, "audio/g711-alaw"

    :goto_1
    move-object v3, p1

    goto :goto_2

    :cond_4
    const-string p1, "audio/g711-mlaw"

    goto :goto_1

    :goto_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/16 v8, 0x1f40

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 73
    invoke-static/range {v2 .. v13}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 87
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 91
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    goto :goto_4

    .line 94
    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_4
    return v1
.end method

.method protected parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 101
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    .line 103
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 104
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v6, p2

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return v3

    .line 107
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 108
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v5, :cond_1

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v2, v2, [B

    .line 111
    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 112
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v1

    const/4 v5, 0x0

    const-string v6, "audio/mp4a-latm"

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 114
    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 115
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 116
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 114
    invoke-static/range {v5 .. v15}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 117
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 118
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    return v4

    .line 120
    :cond_1
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    return v4

    .line 121
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    .line 122
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 123
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v8, p2

    invoke-interface/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return v3
.end method

.method public seek()V
    .locals 0

    return-void
.end method
