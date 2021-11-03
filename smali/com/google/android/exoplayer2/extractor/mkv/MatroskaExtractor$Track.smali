.class final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxBlockAdditionId:I

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public projectionPosePitch:F

.field public projectionPoseRoll:F

.field public projectionPoseYaw:F

.field public projectionType:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1875
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1876
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1877
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1878
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v1, 0x0

    .line 1879
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 1880
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    const/4 v2, 0x0

    .line 1881
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 1882
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1883
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/4 v2, 0x0

    .line 1884
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1885
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1887
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 1888
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 1890
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 1892
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    const/16 v1, 0x3e8

    .line 1894
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    const/16 v1, 0xc8

    .line 1895
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1896
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 1897
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 1898
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 1899
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 1900
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 1901
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 1902
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 1903
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 1904
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 1905
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    const/4 v1, 0x1

    .line 1908
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 1909
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    .line 1910
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    const-wide/16 v2, 0x0

    .line 1911
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 1912
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 1917
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    const-string v0, "eng"

    .line 1918
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    .line 1847
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1847
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private getHdrStaticInfo()[B
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2190
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x19

    .line 2199
    new-array v0, v0, [B

    .line 2200
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 2201
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2202
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2203
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2204
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2205
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2206
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2207
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2208
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2209
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2210
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2211
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2212
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2213
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 2228
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 2229
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x58564944

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2231
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/divx"

    invoke-direct {p0, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const-wide/32 v4, 0x33363248

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 2233
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/3gpp"

    invoke-direct {p0, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const-wide/32 v4, 0x31435657

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 2237
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 2238
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 2239
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-ge v0, v1, :cond_3

    .line 2240
    aget-byte v1, p0, v0

    if-nez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_2

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 2245
    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 2246
    new-instance v0, Landroid/util/Pair;

    const-string v1, "video/wvc1"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2249
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Failed to find FourCC VC1 initialization data"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const-string p0, "MatroskaExtractor"

    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 2255
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/x-unknown"

    invoke-direct {p0, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 2252
    :catch_0
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Error parsing FourCC private data"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 2318
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x18

    .line 2322
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2323
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 2324
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v4, v6

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v3

    .line 2329
    :catch_0
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Error parsing MS/ACM codec private"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2268
    :try_start_0
    aget-byte v1, p0, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2273
    :goto_0
    aget-byte v5, p0, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 2277
    aget-byte v3, p0, v3

    add-int/2addr v4, v3

    const/4 v3, 0x0

    .line 2280
    :goto_1
    aget-byte v7, p0, v5

    if-ne v7, v6, :cond_1

    add-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v5, 0x1

    .line 2284
    aget-byte v5, p0, v5

    add-int/2addr v3, v5

    .line 2286
    aget-byte v5, p0, v6

    if-ne v5, v1, :cond_4

    .line 2289
    new-array v1, v4, [B

    .line 2290
    invoke-static {p0, v6, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v4

    .line 2292
    aget-byte v4, p0, v6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    add-int/2addr v6, v3

    .line 2296
    aget-byte v3, p0, v6

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 2299
    array-length v3, p0

    sub-int/2addr v3, v6

    new-array v3, v3, [B

    .line 2300
    array-length v4, p0

    sub-int/2addr v4, v6

    invoke-static {p0, v6, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2301
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2302
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2303
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2297
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Error parsing vorbis codec private"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2293
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Error parsing vorbis codec private"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2287
    :cond_4
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Error parsing vorbis codec private"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2269
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Error parsing vorbis codec private"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2306
    :catch_0
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Error parsing vorbis codec private"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public initializeOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1930
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "V_AV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d

    goto :goto_1

    :sswitch_16
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_17
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_18
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_19
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_1a
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto :goto_1

    :sswitch_1b
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto :goto_1

    :sswitch_1c
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1d
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/16 v2, 0x1000

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2065
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Unrecognized codec identifier."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v1, "application/dvbsubs"

    .line 2061
    new-array v2, v3, [B

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    aget-byte v3, v3, v7

    aput-byte v3, v2, v7

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    aget-byte v3, v3, v5

    aput-byte v3, v2, v5

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    aget-byte v3, v3, v6

    aput-byte v3, v2, v6

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    aget-byte v3, v3, v8

    aput-byte v3, v2, v8

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_1
    const-string v1, "application/pgs"

    goto/16 :goto_5

    :pswitch_2
    const-string v1, "application/vobsub"

    .line 2053
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_3
    const-string v1, "text/x-ssa"

    goto/16 :goto_5

    :pswitch_4
    const-string v1, "application/x-subrip"

    goto/16 :goto_5

    :pswitch_5
    const-string v1, "audio/raw"

    .line 2037
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "audio/x-unknown"

    const-string v2, "MatroskaExtractor"

    .line 2041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Setting mimeType to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    move-object v12, v1

    move/from16 v18, v2

    move-object v2, v10

    const/4 v15, -0x1

    goto/16 :goto_8

    :pswitch_6
    const-string v1, "audio/raw"

    .line 2022
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2023
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "audio/x-unknown"

    const-string v2, "MatroskaExtractor"

    .line 2027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Setting mimeType to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    const-string v1, "audio/x-unknown"

    const-string v2, "MatroskaExtractor"

    .line 2032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_7
    const-string v1, "audio/flac"

    .line 2018
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :pswitch_8
    const-string v1, "audio/vnd.dts.hd"

    goto/16 :goto_5

    .line 2011
    :pswitch_9
    sget-boolean v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ForceDtsHd:Z

    if-eqz v1, :cond_3

    const-string v1, "audio/vnd.dts.hd"

    goto/16 :goto_5

    :cond_3
    const-string v1, "audio/vnd.dts"

    goto/16 :goto_5

    :pswitch_a
    const-string v1, "audio/true-hd"

    .line 2007
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;-><init>()V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    goto/16 :goto_5

    :pswitch_b
    const-string v1, "audio/eac3"

    goto/16 :goto_5

    :pswitch_c
    const-string v1, "audio/ac3"

    goto/16 :goto_5

    :pswitch_d
    const-string v1, "audio/mpeg"

    goto :goto_2

    :pswitch_e
    const-string v1, "audio/mpeg-L2"

    :goto_2
    move-object v12, v1

    move-object v2, v10

    const/16 v15, 0x1000

    goto/16 :goto_7

    :pswitch_f
    const-string v1, "audio/mp4a-latm"

    .line 1989
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_3
    move-object v12, v1

    goto/16 :goto_6

    :pswitch_10
    const-string v1, "audio/opus"

    const/16 v2, 0x1680

    .line 1980
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1981
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1983
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 1982
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1985
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v4, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 1984
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v1

    move-object v2, v3

    const/16 v15, 0x1680

    goto/16 :goto_7

    :pswitch_11
    const-string v1, "audio/vorbis"

    const/16 v2, 0x2000

    .line 1975
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v3

    move-object v12, v1

    move-object v2, v3

    const/16 v15, 0x2000

    goto/16 :goto_7

    :pswitch_12
    const-string v1, "video/x-unknown"

    goto :goto_5

    .line 1963
    :pswitch_13
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 1964
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1965
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    move-object v12, v2

    const/4 v15, -0x1

    const/16 v18, -0x1

    move-object v2, v1

    goto :goto_8

    :pswitch_14
    const-string v1, "video/hevc"

    .line 1958
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v2

    .line 1959
    iget-object v3, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1960
    iget v2, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    goto :goto_4

    :pswitch_15
    const-string v1, "video/avc"

    .line 1952
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v2

    .line 1953
    iget-object v3, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1954
    iget v2, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    :goto_4
    move-object v12, v1

    move-object v2, v3

    goto :goto_6

    :pswitch_16
    const-string v1, "video/mp4v-es"

    .line 1947
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v2, :cond_4

    move-object v2, v10

    goto/16 :goto_3

    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1948
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_17
    const-string v1, "video/mpeg2"

    goto :goto_5

    :pswitch_18
    const-string v1, "video/av01"

    goto :goto_5

    :pswitch_19
    const-string v1, "video/x-vnd.on2.vp9"

    goto :goto_5

    :pswitch_1a
    const-string v1, "video/x-vnd.on2.vp8"

    :goto_5
    move-object v12, v1

    move-object v2, v10

    :goto_6
    const/4 v15, -0x1

    :goto_7
    const/16 v18, -0x1

    .line 2071
    :goto_8
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    or-int/2addr v1, v7

    .line 2072
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_9

    :cond_5
    const/4 v3, 0x0

    :goto_9
    or-int/2addr v1, v3

    .line 2075
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2077
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, -0x1

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move/from16 v21, v1

    move-object/from16 v22, v7

    invoke-static/range {v11 .. v22}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    const/4 v8, 0x1

    goto/16 :goto_11

    .line 2080
    :cond_6
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2082
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v1, :cond_9

    .line 2083
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-ne v1, v9, :cond_7

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    goto :goto_a

    :cond_7
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    :goto_a
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2084
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v1, v9, :cond_8

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    goto :goto_b

    :cond_8
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    :goto_b
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    :cond_9
    const/high16 v1, -0x40800000    # -1.0f

    .line 2087
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v3, v9, :cond_a

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v3, v9, :cond_a

    .line 2088
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    mul-int v1, v1, v3

    int-to-float v1, v1

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    mul-int v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    move/from16 v21, v1

    goto :goto_c

    :cond_a
    const/high16 v21, -0x40800000    # -1.0f

    .line 2091
    :goto_c
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v1, :cond_b

    .line 2092
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v1

    .line 2093
    new-instance v10, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v10, v3, v4, v5, v1}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    :cond_b
    move-object/from16 v24, v10

    const-string v1, "htc_video_rotA-000"

    .line 2097
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eqz v1, :cond_c

    const/4 v9, 0x0

    goto :goto_d

    :cond_c
    const-string v1, "htc_video_rotA-090"

    .line 2099
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v9, 0x5a

    goto :goto_d

    :cond_d
    const-string v1, "htc_video_rotA-180"

    .line 2101
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v9, 0xb4

    goto :goto_d

    :cond_e
    const-string v1, "htc_video_rotA-270"

    .line 2103
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v9, 0x10e

    .line 2106
    :cond_f
    :goto_d
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v1, :cond_14

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    const/4 v8, 0x0

    .line 2107
    invoke-static {v1, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_14

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2108
    invoke-static {v1, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_14

    .line 2110
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v1, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_10

    const/16 v20, 0x0

    goto :goto_f

    .line 2112
    :cond_10
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-static {v1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_11

    const/16 v20, 0x5a

    goto :goto_f

    .line 2114
    :cond_11
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v5, -0x3ccc0000    # -180.0f

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v5, 0x43340000    # 180.0f

    .line 2115
    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_e

    .line 2117
    :cond_12
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_14

    const/16 v20, 0x10e

    goto :goto_f

    :cond_13
    :goto_e
    const/16 v20, 0xb4

    goto :goto_f

    :cond_14
    move/from16 v20, v9

    .line 2123
    :goto_f
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, -0x1

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    const/high16 v18, -0x40800000    # -1.0f

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move/from16 v16, v1

    move/from16 v17, v3

    move-object/from16 v19, v2

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v25, v7

    .line 2122
    invoke-static/range {v11 .. v25}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    const/4 v8, 0x2

    goto/16 :goto_11

    :cond_15
    const-string v3, "application/x-subrip"

    .line 2138
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2140
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v2, v12, v1, v3, v4}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto/16 :goto_11

    :cond_16
    const-string v3, "text/x-ssa"

    .line 2142
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2145
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$300()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2146
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2147
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, -0x1

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    const/16 v17, -0x1

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const-wide v19, 0x7fffffffffffffffL

    move v15, v1

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v2

    invoke-static/range {v11 .. v21}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_11

    :cond_17
    const-string v3, "application/vobsub"

    .line 2150
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "application/pgs"

    .line 2151
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "application/dvbsubs"

    .line 2152
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_10

    .line 2165
    :cond_18
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Unexpected MIME type."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2156
    :cond_19
    :goto_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, -0x1

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 2155
    invoke-static/range {v11 .. v18}, Lcom/google/android/exoplayer2/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 2168
    :goto_11
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 2169
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1d
        -0x7ce7f3b0 -> :sswitch_1c
        -0x76567dc0 -> :sswitch_1b
        -0x6a615338 -> :sswitch_1a
        -0x672350af -> :sswitch_19
        -0x585f4fce -> :sswitch_18
        -0x585f4fcd -> :sswitch_17
        -0x51dc40b2 -> :sswitch_16
        -0x37a9c464 -> :sswitch_15
        -0x2016c535 -> :sswitch_14
        -0x2016c4e5 -> :sswitch_13
        -0x19552dbd -> :sswitch_12
        -0x1538b2ba -> :sswitch_11
        0x3c02325 -> :sswitch_10
        0x3c02353 -> :sswitch_f
        0x3c030c5 -> :sswitch_e
        0x4e81333 -> :sswitch_d
        0x4e86155 -> :sswitch_c
        0x4e86156 -> :sswitch_b
        0x5e8da3e -> :sswitch_a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public outputPendingSampleMetadata()V
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 2181
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 2182
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->reset()V

    :cond_0
    return-void
.end method
