.class public Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;,
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;,
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;,
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Flags;
    }
.end annotation


# static fields
.field private static final BLOCK_ADDITIONAL_ID_VP9_ITU_T_35:I = 0x4

.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_ACM:Ljava/lang/String; = "A_MS/ACM"

.field private static final CODEC_ID_ASS:Ljava/lang/String; = "S_TEXT/ASS"

.field private static final CODEC_ID_AV1:Ljava/lang/String; = "V_AV1"

.field private static final CODEC_ID_DTS:Ljava/lang/String; = "A_DTS"

.field private static final CODEC_ID_DTS_EXPRESS:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final CODEC_ID_DTS_LOSSLESS:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final CODEC_ID_DVBSUB:Ljava/lang/String; = "S_DVBSUB"

.field private static final CODEC_ID_E_AC3:Ljava/lang/String; = "A_EAC3"

.field private static final CODEC_ID_FLAC:Ljava/lang/String; = "A_FLAC"

.field private static final CODEC_ID_FOURCC:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP2:Ljava/lang/String; = "A_MPEG/L2"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG2:Ljava/lang/String; = "V_MPEG2"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_PCM_INT_LIT:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final CODEC_ID_PGS:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final CODEC_ID_SUBRIP:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final CODEC_ID_THEORA:Ljava/lang/String; = "V_THEORA"

.field private static final CODEC_ID_TRUEHD:Ljava/lang/String; = "A_TRUEHD"

.field private static final CODEC_ID_VOBSUB:Ljava/lang/String; = "S_VOBSUB"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_SEEK_FOR_CUES:I = 0x1

.field private static final FOURCC_COMPRESSION_DIVX:I = 0x58564944

.field private static final FOURCC_COMPRESSION_H263:I = 0x33363248

.field private static final FOURCC_COMPRESSION_VC1:I = 0x31435657

.field public static ForceDtsHd:Z = false

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_AUDIO_BIT_DEPTH:I = 0x6264

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_ADDITIONAL:I = 0xa5

.field private static final ID_BLOCK_ADDITIONS:I = 0x75a1

.field private static final ID_BLOCK_ADD_ID:I = 0xee

.field private static final ID_BLOCK_DURATION:I = 0x9b

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_BLOCK_MORE:I = 0xa6

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_COLOUR:I = 0x55b0

.field private static final ID_COLOUR_PRIMARIES:I = 0x55bb

.field private static final ID_COLOUR_RANGE:I = 0x55b9

.field private static final ID_COLOUR_TRANSFER:I = 0x55ba

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DISPLAY_HEIGHT:I = 0x54ba

.field private static final ID_DISPLAY_UNIT:I = 0x54b2

.field private static final ID_DISPLAY_WIDTH:I = 0x54b0

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_FLAG_DEFAULT:I = 0x88

.field private static final ID_FLAG_FORCED:I = 0x55aa

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_LANGUAGE:I = 0x22b59c

.field private static final ID_LUMNINANCE_MAX:I = 0x55d9

.field private static final ID_LUMNINANCE_MIN:I = 0x55da

.field private static final ID_MASTERING_METADATA:I = 0x55d0

.field private static final ID_MAX_BLOCK_ADDITION_ID:I = 0x55ee

.field private static final ID_MAX_CLL:I = 0x55bc

.field private static final ID_MAX_FALL:I = 0x55bd

.field private static final ID_NAME:I = 0x536e

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_PRIMARY_B_CHROMATICITY_X:I = 0x55d5

.field private static final ID_PRIMARY_B_CHROMATICITY_Y:I = 0x55d6

.field private static final ID_PRIMARY_G_CHROMATICITY_X:I = 0x55d3

.field private static final ID_PRIMARY_G_CHROMATICITY_Y:I = 0x55d4

.field private static final ID_PRIMARY_R_CHROMATICITY_X:I = 0x55d1

.field private static final ID_PRIMARY_R_CHROMATICITY_Y:I = 0x55d2

.field private static final ID_PROJECTION:I = 0x7670

.field private static final ID_PROJECTION_POSE_PITCH:I = 0x7674

.field private static final ID_PROJECTION_POSE_ROLL:I = 0x7675

.field private static final ID_PROJECTION_POSE_YAW:I = 0x7673

.field private static final ID_PROJECTION_PRIVATE:I = 0x7672

.field private static final ID_PROJECTION_TYPE:I = 0x7671

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_STEREO_MODE:I = 0x53b8

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final ID_WHITE_POINT_CHROMATICITY_X:I = 0x55d7

.field private static final ID_WHITE_POINT_CHROMATICITY_Y:I = 0x55d8

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final SSA_DIALOGUE_FORMAT:[B

.field private static final SSA_PREFIX:[B

.field private static final SSA_PREFIX_END_TIMECODE_OFFSET:I = 0x15

.field private static final SSA_TIMECODE_FORMAT:Ljava/lang/String; = "%01d:%02d:%02d:%02d"

.field private static final SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x2710L

.field private static final SUBRIP_PREFIX:[B

.field private static final SUBRIP_PREFIX_END_TIMECODE_OFFSET:I = 0x13

.field private static final SUBRIP_TIMECODE_FORMAT:Ljava/lang/String; = "%02d:%02d:%02d,%03d"

.field private static final SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MatroskaExtractor"

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final UNSET_ENTRY_ID:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000

.field private static final WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field private static final WAVE_FORMAT_PCM:I = 0x1

.field private static final WAVE_FORMAT_SIZE:I = 0x12

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private final blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private blockAdditionalId:I

.field private blockDurationUs:J

.field private blockFlags:I

.field private blockHasReferenceBlock:Z

.field private blockSampleCount:I

.field private blockSampleIndex:I

.field private blockSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

.field private cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private final encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private haveOutputSample:Z

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleInitializationVectorRead:Z

.field private samplePartitionCount:I

.field private samplePartitionCountRead:Z

.field private sampleSignalByte:B

.field private sampleSignalByteRead:Z

.field private final sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private final seekForCuesEnabled:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentSeekMap:Z

.field private final subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

.field private final vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 65
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/-$$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mkv/-$$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    const/16 v0, 0x20

    .line 249
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 271
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    .line 284
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    .line 318
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 392
    sput-boolean v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ForceDtsHd:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 403
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;I)V
    .locals 4

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 339
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 340
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 341
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 342
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 356
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 357
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 358
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 407
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    .line 408
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;->init(Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 409
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    .line 410
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    .line 411
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    .line 412
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 413
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 414
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 415
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 416
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 417
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 418
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 419
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 420
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 421
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 62
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/UUID;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private buildSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 12

    .line 1618
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 1619
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 1620
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    .line 1627
    new-array v2, v0, [I

    .line 1628
    new-array v3, v0, [J

    .line 1629
    new-array v4, v0, [J

    .line 1630
    new-array v5, v0, [J

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    .line 1632
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v8

    aput-wide v8, v5, v7

    .line 1633
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 1636
    aget-wide v8, v3, v7

    aget-wide v10, v3, v6

    sub-long/2addr v8, v10

    long-to-int v8, v8

    aput v8, v2, v6

    .line 1637
    aget-wide v8, v5, v7

    aget-wide v10, v5, v6

    sub-long/2addr v8, v10

    aput-wide v8, v4, v6

    move v6, v7

    goto :goto_1

    .line 1639
    :cond_2
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v8, v10

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v0, v8

    aput v0, v2, v7

    .line 1641
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v4, v7

    .line 1643
    aget-wide v6, v4, v7

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    const-string v0, "MatroskaExtractor"

    .line 1645
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 1647
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 1648
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 1649
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 1652
    :cond_3
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 1653
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 1654
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v0

    .line 1622
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 1623
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 1624
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method private commitSampleToOutput(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .locals 9

    .line 1249
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1250
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleMetadata(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "S_TEXT/UTF8"

    .line 1252
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/ASS"

    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1253
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-le v0, v1, :cond_2

    const-string v0, "MatroskaExtractor"

    const-string v2, "Skipping subtitle sample in laced block."

    .line 1254
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1255
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const-string v0, "MatroskaExtractor"

    const-string v2, "Skipping subtitle sample with no duration."

    .line 1256
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1258
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->setSubtitleEndTime(Ljava/lang/String;J[B)V

    .line 1261
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1262
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/2addr p5, v0

    :cond_4
    :goto_0
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_6

    .line 1267
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-le v0, v1, :cond_5

    const v0, -0x10000001

    and-int/2addr p4, v0

    goto :goto_1

    .line 1273
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    .line 1274
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v2, v3, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int/2addr p5, v0

    :cond_6
    :goto_1
    move v5, p4

    move v6, p5

    .line 1278
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v8, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    move-wide v3, p2

    move v7, p6

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1280
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1729
    new-array p0, p1, [I

    return-object p0

    .line 1730
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 1734
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private finishWriteSampleData()I
    .locals 1

    .line 1491
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1492
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return v0
.end method

.method private static formatSubtitleTimecode(JLjava/lang/String;J)[B
    .locals 9

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1566
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const-wide v3, 0xd693a400L

    .line 1568
    div-long v3, p0, v3

    long-to-int v0, v3

    mul-int/lit16 v3, v0, 0xe10

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    sub-long/2addr p0, v3

    const-wide/32 v3, 0x3938700

    .line 1570
    div-long v3, p0, v3

    long-to-int v3, v3

    mul-int/lit8 v4, v3, 0x3c

    int-to-long v7, v4

    mul-long v7, v7, v5

    sub-long/2addr p0, v7

    .line 1572
    div-long v7, p0, v5

    long-to-int v4, v7

    int-to-long v7, v4

    mul-long v7, v7, v5

    sub-long/2addr p0, v7

    .line 1574
    div-long/2addr p0, p3

    long-to-int p0, p0

    .line 1575
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 1577
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    const/4 p4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p4

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1576
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "V_VP8"

    .line 1691
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_VP9"

    .line 1692
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_AV1"

    .line 1693
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG2"

    .line 1694
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/SP"

    .line 1695
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 1696
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AP"

    .line 1697
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 1698
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 1699
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MS/VFW/FOURCC"

    .line 1700
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_THEORA"

    .line 1701
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_OPUS"

    .line 1702
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_VORBIS"

    .line 1703
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AAC"

    .line 1704
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L2"

    .line 1705
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L3"

    .line 1706
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AC3"

    .line 1707
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_EAC3"

    .line 1708
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_TRUEHD"

    .line 1709
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS"

    .line 1710
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/EXPRESS"

    .line 1711
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/LOSSLESS"

    .line 1712
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_FLAC"

    .line 1713
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MS/ACM"

    .line 1714
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_PCM/INT/LIT"

    .line 1715
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/UTF8"

    .line 1716
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/ASS"

    .line 1717
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_VOBSUB"

    .line 1718
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_HDMV/PGS"

    .line 1719
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_DVBSUB"

    .line 1720
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    .line 65
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeSeekForCues(Lcom/google/android/exoplayer2/extractor/PositionHolder;J)Z
    .locals 5

    .line 1667
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1668
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1669
    iget-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1670
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    return v1

    .line 1675
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v3, -0x1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_1

    .line 1676
    iget-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1677
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    return v1

    :cond_1
    return v2
.end method

.method private readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1294
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 1293
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1296
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1297
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method private resetWriteSampleData()V
    .locals 1

    const/4 v0, 0x0

    .line 1498
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1499
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1500
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1501
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1502
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 1503
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1504
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1505
    iput-byte v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1506
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1507
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1684
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1687
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide/16 v5, 0x3e8

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 1685
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static setSubtitleEndTime(Ljava/lang/String;J[B)V
    .locals 3

    .line 1541
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2c0618eb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x54c61e47

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 1555
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "%01d:%02d:%02d:%02d"

    const-wide/16 v0, 0x2710

    .line 1550
    invoke-static {p1, p2, p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x15

    goto :goto_2

    :pswitch_1
    const-string p0, "%02d:%02d:%02d,%03d"

    const-wide/16 v0, 0x3e8

    .line 1544
    invoke-static {p1, p2, p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x13

    .line 1557
    :goto_2
    array-length p2, p0

    invoke-static {p0, v2, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "S_TEXT/UTF8"

    .line 1312
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    sget-object p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V

    .line 1314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p1

    return p1

    :cond_0
    const-string v0, "S_TEXT/ASS"

    .line 1315
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    sget-object p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V

    .line 1317
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p1

    return p1

    .line 1320
    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1321
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_11

    .line 1322
    iget-boolean v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_e

    .line 1325
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1326
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    .line 1327
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1328
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1329
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    .line 1332
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1333
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_0

    .line 1330
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1335
    :cond_3
    :goto_0
    iget-byte v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_f

    .line 1337
    iget-byte v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1338
    :goto_2
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1339
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v7, :cond_7

    .line 1340
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1341
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1342
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1344
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 1345
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1346
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1347
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1349
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1350
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1351
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_7
    if-eqz v1, :cond_f

    .line 1354
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v1, :cond_8

    .line 1355
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1356
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1357
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1358
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1359
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1361
    :cond_8
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/lit8 v1, v1, 0x4

    .line 1362
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1363
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v6, v5, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1364
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1365
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v1, v2

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v2

    .line 1367
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1368
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 1369
    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1371
    :cond_a
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1372
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1380
    :goto_4
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v1, v8, :cond_c

    .line 1382
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 1383
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 1384
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1387
    :cond_b
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 1390
    :cond_c
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 1391
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    rem-int/2addr v7, v2

    if-ne v7, v4, :cond_d

    .line 1392
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 1394
    :cond_d
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1395
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1397
    :goto_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1398
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1399
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_7

    .line 1402
    :cond_e
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v1, :cond_f

    .line 1404
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    iget-object v7, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    array-length v7, v7

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1407
    :cond_f
    :goto_7
    iget v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez v1, :cond_10

    .line 1408
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v6, 0x10000000

    or-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1409
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 1412
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1413
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    shr-int/lit8 v6, p3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 1414
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 1415
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 1416
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x3

    and-int/lit16 v7, p3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 1417
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1418
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1421
    :cond_10
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1423
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/2addr p3, v1

    const-string v1, "V_MPEG4/ISO/AVC"

    .line 1425
    iget-object v6, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "V_MPEGH/ISO/HEVC"

    iget-object v6, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_a

    .line 1460
    :cond_12
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v1, :cond_14

    .line 1461
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1462
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->startSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 1464
    :cond_14
    :goto_9
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v1, p3, :cond_17

    .line 1465
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v1, p3, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeToOutput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/TrackOutput;I)I

    move-result v1

    .line 1466
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1467
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_9

    .line 1430
    :cond_15
    :goto_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1431
    aput-byte v5, v1, v5

    .line 1432
    aput-byte v5, v1, v4

    .line 1433
    aput-byte v5, v1, v2

    .line 1434
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1435
    iget v4, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1439
    :goto_b
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v6, p3, :cond_17

    .line 1440
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_16

    .line 1442
    invoke-direct {p0, p1, v1, v4, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeToTarget(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)V

    .line 1444
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1445
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1446
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1448
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1449
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1450
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_b

    .line 1453
    :cond_16
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeToOutput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/TrackOutput;I)I

    move-result v6

    .line 1454
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1455
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1456
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_b

    :cond_17
    const-string p1, "A_VORBIS"

    .line 1471
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1478
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1479
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, p1, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1480
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1483
    :cond_18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p1

    return p1
.end method

.method private writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1512
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1513
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1516
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    goto :goto_0

    .line 1518
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1520
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1521
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method private writeToOutput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/TrackOutput;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1601
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 1603
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1604
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p2, p3, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1606
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method private writeToTarget(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1587
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int/2addr p4, v0

    .line 1588
    invoke-interface {p1, p2, v1, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    if-lez v0, :cond_0

    .line 1590
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 19
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/16 v3, 0xa3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_7

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    .line 1070
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1071
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    invoke-interface {v8, v0, v9, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_e

    .line 1230
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1066
    :cond_1
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1067
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v8, v0, v9, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_e

    .line 1060
    :cond_2
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 1061
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int/2addr v4, v1

    invoke-interface {v8, v0, v4, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1062
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1063
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    goto/16 :goto_e

    .line 1079
    :cond_3
    new-array v0, v1, [B

    .line 1080
    invoke-interface {v8, v0, v9, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1081
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-direct {v2, v10, v0, v9, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    goto/16 :goto_e

    .line 1075
    :cond_4
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 1076
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    invoke-interface {v8, v0, v9, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_e

    .line 1223
    :cond_5
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    if-eq v0, v5, :cond_6

    return-void

    .line 1226
    :cond_6
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1227
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    .line 1226
    invoke-virtual {v7, v0, v2, v8, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->handleBlockAdditionalData(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;ILcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    goto/16 :goto_e

    .line 1091
    :cond_7
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v6, 0x8

    if-nez v2, :cond_8

    .line 1092
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v2, v8, v9, v10, v6}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v11

    long-to-int v2, v11

    iput v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1093
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->getLastLength()I

    move-result v2

    iput v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1094
    iput-wide v11, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 1095
    iput v10, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1096
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 1099
    :cond_8
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v11, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    if-nez v11, :cond_9

    .line 1103
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v0, v1, v0

    invoke-interface {v8, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1104
    iput v9, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void

    .line 1108
    :cond_9
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v2, v10, :cond_1b

    const/4 v2, 0x3

    .line 1110
    invoke-direct {v7, v8, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1111
    iget-object v12, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v12, v12, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v12, v12, v5

    and-int/lit8 v12, v12, 0x6

    shr-int/2addr v12, v10

    const/16 v13, 0xff

    if-nez v12, :cond_a

    .line 1113
    iput v10, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 1114
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v4, v10}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v4

    iput-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 1115
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v12, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v2

    aput v1, v4, v9

    goto/16 :goto_6

    .line 1118
    :cond_a
    invoke-direct {v7, v8, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1119
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v14, v14, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v14, v14, v2

    and-int/2addr v14, v13

    add-int/2addr v14, v10

    iput v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 1120
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v14

    iput-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-ne v12, v5, :cond_b

    .line 1122
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    div-int/2addr v1, v2

    .line 1124
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    invoke-static {v2, v9, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_b
    if-ne v12, v10, :cond_e

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 1128
    :goto_0
    iget v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    sub-int/2addr v14, v10

    if-ge v2, v14, :cond_d

    .line 1129
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v9, v14, v2

    :cond_c
    add-int/2addr v4, v10

    .line 1132
    invoke-direct {v7, v8, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1133
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v14, v14, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v4, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    .line 1134
    iget-object v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v16, v15, v2

    add-int v16, v16, v14

    aput v16, v15, v2

    if-eq v14, v13, :cond_c

    .line 1136
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v14, v14, v2

    add-int/2addr v12, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1138
    :cond_d
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    sub-int/2addr v14, v10

    iget v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v4

    sub-int/2addr v1, v12

    aput v1, v2, v14

    goto/16 :goto_6

    :cond_e
    if-ne v12, v2, :cond_1a

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 1143
    :goto_1
    iget v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    sub-int/2addr v14, v10

    if-ge v2, v14, :cond_15

    .line 1144
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v9, v14, v2

    add-int/lit8 v4, v4, 0x1

    .line 1145
    invoke-direct {v7, v8, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1146
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v14, v14, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v4, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_14

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v6, :cond_11

    rsub-int/lit8 v18, v14, 0x7

    shl-int v3, v10, v18

    .line 1152
    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v15

    and-int/2addr v5, v3

    if-eqz v5, :cond_10

    add-int/2addr v4, v14

    .line 1155
    invoke-direct {v7, v8, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1156
    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v5, v5, v15

    and-int/2addr v5, v13

    not-int v3, v3

    and-int/2addr v3, v5

    int-to-long v9, v3

    move/from16 v3, v16

    move-wide/from16 v16, v9

    :goto_3
    if-ge v3, v4, :cond_f

    shl-long v9, v16, v6

    .line 1159
    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v3, 0x1

    aget-byte v3, v5, v3

    and-int/2addr v3, v13

    int-to-long v6, v3

    or-long v16, v9, v6

    move v3, v15

    const/16 v6, 0x8

    move-object/from16 v7, p0

    goto :goto_3

    :cond_f
    if-lez v2, :cond_11

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v5, 0x1

    shl-long v9, v5, v14

    sub-long/2addr v9, v5

    sub-long v16, v16, v9

    goto :goto_4

    :cond_10
    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0xa3

    const/4 v5, 0x2

    const/16 v6, 0x8

    move-object/from16 v7, p0

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_2

    :cond_11
    :goto_4
    move v5, v4

    move-wide/from16 v3, v16

    const-wide/32 v6, -0x80000000

    cmp-long v6, v3, v6

    if-ltz v6, :cond_13

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v3, v6

    if-gtz v6, :cond_13

    long-to-int v3, v3

    move-object/from16 v7, p0

    .line 1172
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v2, :cond_12

    goto :goto_5

    :cond_12
    iget-object v6, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    add-int/lit8 v9, v2, -0x1

    aget v6, v6, v9

    add-int/2addr v3, v6

    :goto_5
    aput v3, v4, v2

    .line 1176
    iget-object v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v3, v3, v2

    add-int/2addr v12, v3

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    const/16 v3, 0xa3

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_13
    move-object/from16 v7, p0

    .line 1169
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_14
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_15
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iget v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v1, v5

    sub-int/2addr v1, v4

    sub-int/2addr v1, v12

    aput v1, v2, v3

    .line 1186
    :goto_6
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/2addr v2, v13

    or-int/2addr v1, v2

    .line 1187
    iget-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v4, v1

    invoke-direct {v7, v4, v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 1188
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_16

    const/4 v1, 0x1

    goto :goto_7

    :cond_16
    const/4 v1, 0x0

    .line 1189
    :goto_7
    iget v3, v11, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    if-eq v3, v2, :cond_18

    const/16 v3, 0xa3

    if-ne v0, v3, :cond_17

    iget-object v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v2

    const/16 v2, 0x80

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_17

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    goto :goto_9

    :cond_18
    :goto_8
    const/4 v2, 0x1

    :goto_9
    if-eqz v1, :cond_19

    const/high16 v9, -0x80000000

    goto :goto_a

    :cond_19
    const/4 v9, 0x0

    :goto_a
    or-int v1, v2, v9

    .line 1191
    iput v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v1, 0x2

    .line 1193
    iput v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v1, 0x0

    .line 1194
    iput v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_b

    .line 1182
    :cond_1a
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_b
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1d

    .line 1200
    :goto_c
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v1, :cond_1c

    .line 1201
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    aget v0, v0, v1

    invoke-direct {v7, v8, v11, v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I

    move-result v5

    .line 1202
    iget-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v3, v11, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 1204
    iget v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V

    .line 1205
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    .line 1207
    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    goto :goto_e

    .line 1214
    :cond_1d
    :goto_d
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v1, :cond_1e

    .line 1215
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    aget v2, v2, v3

    .line 1216
    invoke-direct {v7, v8, v11, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I

    move-result v2

    aput v2, v0, v1

    .line 1217
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_d

    :cond_1e
    :goto_e
    return-void
.end method

.method protected endMasterElement(I)V
    .locals 10
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0x4dbb

    const v2, 0x1c53bb6b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x6240

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_5

    const v0, 0x1549a966

    if-eq p1, v0, :cond_3

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    .line 677
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_12

    .line 678
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->buildSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 679
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto/16 :goto_2

    .line 731
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 734
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_2

    .line 732
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    const-wide/32 v0, 0xf4240

    .line 662
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 664
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_12

    .line 665
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto/16 :goto_2

    .line 719
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez p1, :cond_6

    goto/16 :goto_2

    .line 720
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 710
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz p1, :cond_12

    .line 711
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    if-eqz p1, :cond_8

    .line 714
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v2, v3, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lcom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    const-string v5, "video/webm"

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto/16 :goto_2

    .line 712
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 669
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v3, -0x1

    cmp-long p1, v0, v3

    if-eqz p1, :cond_a

    .line 672
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    if-ne p1, v2, :cond_12

    .line 673
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto/16 :goto_2

    .line 670
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 724
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 725
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V

    .line 726
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    const/4 p1, 0x0

    .line 728
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    goto :goto_2

    .line 685
    :cond_d
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    return-void

    :cond_e
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 691
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge p1, v2, :cond_f

    .line 692
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v2, v2, p1

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 694
    :cond_f
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move v2, v0

    const/4 v0, 0x0

    .line 695
    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v3, :cond_11

    .line 696
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v5, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int v5, v5, v0

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long v4, v3, v5

    .line 697
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    if-nez v0, :cond_10

    .line 698
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    if-nez v6, :cond_10

    or-int/lit8 v3, v3, 0x1

    :cond_10
    move v6, v3

    .line 703
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v7, v3, v0

    sub-int v9, v2, v7

    move-object v2, p0

    move-object v3, p1

    move v8, v9

    .line 705
    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V

    add-int/lit8 v0, v0, 0x1

    move v2, v9

    goto :goto_1

    .line 707
    :cond_11
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    :cond_12
    :goto_2
    return-void
.end method

.method protected floatElement(ID)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1015
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    goto :goto_0

    .line 1012
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    goto :goto_0

    .line 1009
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    goto :goto_0

    .line 1006
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    goto :goto_0

    .line 1003
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    goto :goto_0

    .line 1000
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    goto :goto_0

    .line 997
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    goto :goto_0

    .line 994
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    goto :goto_0

    .line 991
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    goto :goto_0

    .line 988
    :pswitch_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    goto :goto_0

    .line 985
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    goto :goto_0

    .line 982
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    goto :goto_0

    .line 979
    :pswitch_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 973
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    goto :goto_0

    .line 976
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getElementType(I)I
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x5

    return p1

    :sswitch_1
    const/4 p1, 0x4

    return p1

    :sswitch_2
    const/4 p1, 0x1

    return p1

    :sswitch_3
    const/4 p1, 0x3

    return p1

    :sswitch_4
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleBlockAdditionalData(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;ILcom/google/android/exoplayer2/extractor/ExtractorInput;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-string p2, "V_VP9"

    .line 1237
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1238
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1239
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1240
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    .line 1243
    :cond_0
    invoke-interface {p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :goto_0
    return-void
.end method

.method public final init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method protected integerElement(IJ)V
    .locals 7
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 767
    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    goto/16 :goto_0

    .line 797
    :sswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    goto/16 :goto_0

    :sswitch_2
    long-to-int p1, p2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 950
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v3, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_0

    .line 947
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_0

    .line 944
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_0

    .line 941
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_0

    .line 812
    :sswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    goto/16 :goto_0

    .line 806
    :sswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    goto/16 :goto_0

    .line 803
    :sswitch_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    goto/16 :goto_0

    .line 800
    :sswitch_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    goto/16 :goto_0

    .line 936
    :sswitch_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    goto/16 :goto_0

    .line 933
    :sswitch_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    goto/16 :goto_0

    .line 885
    :sswitch_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int p1, p2

    if-eq p1, v6, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 894
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_0

    .line 897
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_0

    .line 888
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_0

    :sswitch_a
    long-to-int p1, p2

    if-eq p1, v6, :cond_4

    const/16 p2, 0x10

    if-eq p1, p2, :cond_3

    const/16 p2, 0x12

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 914
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 p2, 0x7

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_0

    .line 911
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_0

    .line 908
    :cond_4
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v3, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_0

    :sswitch_b
    long-to-int p1, p2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    .line 926
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto/16 :goto_0

    .line 923
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto/16 :goto_0

    .line 791
    :sswitch_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    cmp-long p2, p2, v4

    if-nez p2, :cond_5

    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    goto/16 :goto_0

    .line 779
    :sswitch_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto/16 :goto_0

    .line 782
    :sswitch_e
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    goto/16 :goto_0

    .line 776
    :sswitch_f
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    goto/16 :goto_0

    :sswitch_10
    long-to-int p1, p2

    if-eq p1, v3, :cond_7

    const/16 p2, 0xf

    if-eq p1, p2, :cond_6

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    .line 872
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    .line 869
    :pswitch_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    .line 878
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v3, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    .line 875
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    .line 764
    :sswitch_11
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto/16 :goto_0

    :sswitch_12
    cmp-long p1, p2, v4

    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 826
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_13
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 820
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_14
    cmp-long p1, p2, v4

    if-nez p1, :cond_a

    goto/16 :goto_0

    .line 844
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_15
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 838
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_16
    cmp-long p1, p2, v4

    if-nez p1, :cond_c

    goto/16 :goto_0

    .line 752
    :cond_c
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_17
    cmp-long p1, p2, v4

    if-ltz p1, :cond_d

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_d

    goto/16 :goto_0

    .line 758
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_18
    const-wide/16 v0, 0x3

    cmp-long p1, p2, v0

    if-nez p1, :cond_e

    goto/16 :goto_0

    .line 832
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 815
    :sswitch_19
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    goto :goto_0

    .line 851
    :sswitch_1a
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez p1, :cond_10

    .line 855
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 856
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_0

    :sswitch_1b
    long-to-int p1, p2

    .line 957
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    goto :goto_0

    .line 860
    :sswitch_1c
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    goto :goto_0

    .line 785
    :sswitch_1d
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    goto :goto_0

    .line 773
    :sswitch_1e
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    goto :goto_0

    .line 848
    :sswitch_1f
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    goto :goto_0

    .line 770
    :sswitch_20
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    goto :goto_0

    .line 809
    :sswitch_21
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    goto :goto_0

    .line 863
    :sswitch_22
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    goto :goto_0

    .line 788
    :sswitch_23
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    cmp-long p2, p2, v4

    if-nez p2, :cond_f

    const/4 v2, 0x1

    :cond_f
    iput-boolean v2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    goto :goto_0

    .line 794
    :sswitch_24
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    :cond_10
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_24
        0x88 -> :sswitch_23
        0x9b -> :sswitch_22
        0x9f -> :sswitch_21
        0xb0 -> :sswitch_20
        0xb3 -> :sswitch_1f
        0xba -> :sswitch_1e
        0xd7 -> :sswitch_1d
        0xe7 -> :sswitch_1c
        0xee -> :sswitch_1b
        0xf1 -> :sswitch_1a
        0xfb -> :sswitch_19
        0x4254 -> :sswitch_18
        0x4285 -> :sswitch_17
        0x42f7 -> :sswitch_16
        0x47e1 -> :sswitch_15
        0x47e8 -> :sswitch_14
        0x5031 -> :sswitch_13
        0x5032 -> :sswitch_12
        0x53ac -> :sswitch_11
        0x53b8 -> :sswitch_10
        0x54b0 -> :sswitch_f
        0x54b2 -> :sswitch_e
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_c
        0x55b9 -> :sswitch_b
        0x55ba -> :sswitch_a
        0x55bb -> :sswitch_9
        0x55bc -> :sswitch_8
        0x55bd -> :sswitch_7
        0x55ee -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method protected isLevel1Element(I)Z
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 457
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    if-nez v3, :cond_1

    .line 458
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Lcom/google/android/exoplayer2/extractor/PositionHolder;J)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    if-nez v2, :cond_3

    .line 464
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 465
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->outputPendingSampleMetadata()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 437
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    const/4 p1, 0x0

    .line 438
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 439
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;->reset()V

    .line 440
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->reset()V

    .line 441
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    .line 442
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 443
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 426
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

.method protected startMasterElement(IJJ)V
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_c

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 618
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_c

    .line 620
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_1

    .line 622
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_1

    .line 626
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 627
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_1

    .line 611
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 612
    new-instance p1, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    goto :goto_1

    .line 599
    :cond_3
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 601
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 603
    :cond_5
    :goto_0
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 604
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    goto :goto_1

    .line 644
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    goto :goto_1

    .line 638
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 607
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 608
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto :goto_1

    .line 615
    :cond_9
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_1

    .line 641
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    goto :goto_1

    .line 632
    :cond_b
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    :cond_c
    :goto_1
    return-void
.end method

.method protected stringElement(ILjava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$202(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1037
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-object p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "webm"

    .line 1032
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 1033
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1040
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-object p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method
