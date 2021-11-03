.class public final Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$FlacSeekMap;,
        Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x1


# instance fields
.field private binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final id3MetadataDisabled:Z

.field private final outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

.field private streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

.field private streamMetadataDecoded:Z

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacExtractor$hclvvK8AqHrca9y8kXj1zx0IKB4;->INSTANCE:Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacExtractor$hclvvK8AqHrca9y8kXj1zx0IKB4;

    sput-object v0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3MetadataDisabled:Z

    return-void
.end method

.method private decodeStreamMetadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "streamMetadata",
            "outputFrameHolder"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "decoderJni",
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadataDecoded:Z

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    .line 196
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->decodeStreamMetadata()Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 203
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadataDecoded:Z

    .line 204
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    if-nez v2, :cond_1

    .line 205
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    .line 206
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getMaxDecodedFrameSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 207
    new-instance v2, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    .line 212
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    move-object v2, v0

    .line 209
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputSeekMap(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;JLcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    .line 216
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    .line 217
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0, p1, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFormat(Lcom/google/android/exoplayer2/util/FlacStreamMetadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    .line 198
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->reset(J)V

    .line 199
    invoke-interface {p1, v2, v3, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    .line 200
    throw v0
.end method

.method private handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;Lcom/google/android/exoplayer2/extractor/TrackOutput;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "binarySearchSeeker"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    .line 230
    iget-object p2, p4, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    .line 231
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    iget-wide v0, p4, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;->timeUs:J

    invoke-static {p3, p2, v0, v1, p5}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;IJLcom/google/android/exoplayer2/extractor/TrackOutput;)V

    :cond_0
    return p1
.end method

.method private initDecoderJni(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "decoderJni",
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    .line 181
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->setData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return-object v0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static outputFormat(Lcom/google/android/exoplayer2/util/FlacStreamMetadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 15
    .param p1    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    const-string v1, "audio/raw"

    .line 273
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getBitRate()I

    move-result v3

    .line 274
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getMaxDecodedFrameSize()I

    move-result v4

    iget v5, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    iget v6, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    iget v0, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    .line 277
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v7

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v14, p1

    .line 269
    invoke-static/range {v0 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    move-object/from16 v1, p2

    .line 285
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private static outputSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;IJLcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 8

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 291
    invoke-interface {p4, p0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p4

    move-wide v2, p2

    move v5, p1

    .line 292
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method private static outputSeekMap(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/util/FlacStreamMetadata;JLcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-wide/16 v0, 0x0

    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 252
    new-instance p2, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$FlacSeekMap;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v2

    invoke-direct {p2, v2, v3, p0}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$FlacSeekMap;-><init>(JLcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;)V

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getDecodePosition()J

    move-result-wide v4

    .line 255
    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    move-object v2, v0

    move-object v3, p1

    move-wide v6, p2

    move-object v8, p0

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/util/FlacStreamMetadata;JJLcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)V

    .line 258
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object p2

    move-object v1, v0

    goto :goto_1

    .line 260
    :cond_2
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getDurationUs()J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 262
    :goto_1
    invoke-interface {p4, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-object v1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 105
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 106
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 107
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 109
    :try_start_0
    new-instance p1, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 124
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3MetadataDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 125
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->initDecoderJni(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    move-result-object v0

    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decodeStreamMetadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 132
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;->isSeeking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;Lcom/google/android/exoplayer2/extractor/TrackOutput;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->clearData()V

    return p1

    .line 136
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getDecodePosition()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->decodeSampleWithBacktrackPosition(Ljava/nio/ByteBuffer;J)V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p2, -0x1

    if-nez p1, :cond_2

    .line 151
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->clearData()V

    return p2

    .line 148
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getLastFrameTimestamp()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v1, p1, v2, v3, v4}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;IJLcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 149
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->isEndOfData()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 151
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->clearData()V

    return p2

    :catch_0
    move-exception p1

    .line 141
    :try_start_5
    new-instance p2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read frame at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 151
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->clearData()V

    .line 152
    throw p1
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    .line 171
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->release()V

    .line 173
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadataDecoded:Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->reset(J)V

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_2
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3MetadataDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 118
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->checkAndPeekStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
