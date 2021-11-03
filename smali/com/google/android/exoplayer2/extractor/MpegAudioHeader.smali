.class public final Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLES_PER_FRAME_L1:I = 0x180

.field private static final SAMPLES_PER_FRAME_L2:I = 0x480

.field private static final SAMPLES_PER_FRAME_L3_V1:I = 0x480

.field private static final SAMPLES_PER_FRAME_L3_V2:I = 0x240

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "audio/mpeg-L1"

    const-string v1, "audio/mpeg-L2"

    const-string v2, "audio/mpeg"

    .line 35
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    const/16 v0, 0xe

    .line 38
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    .line 42
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    .line 46
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    .line 50
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    .line 54
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_1
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_2
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_3
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_4
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_5
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSampleCount(I)I
    .locals 6

    .line 134
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v2

    if-nez v3, :cond_2

    return v1

    :cond_2
    ushr-int/lit8 v4, p0, 0xc

    const/16 v5, 0xf

    and-int/2addr v4, v5

    ushr-int/lit8 p0, p0, 0xa

    and-int/2addr p0, v2

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_4

    if-ne p0, v2, :cond_3

    goto :goto_0

    .line 155
    :cond_3
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->getFrameSizeInSamples(II)I

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static getFrameSize(I)I
    .locals 7

    .line 69
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_2

    return v1

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_4

    return v1

    .line 94
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v1, v1, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 97
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 100
    div-int/lit8 v1, v1, 0x4

    :cond_6
    :goto_0
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v2, :cond_8

    if-ne v0, v2, :cond_7

    .line 107
    sget-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_1
    mul-int/lit8 v0, v0, 0xc

    .line 108
    div-int/2addr v0, v1

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_8
    if-ne v0, v2, :cond_a

    if-ne v4, v6, :cond_9

    .line 112
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    :cond_9
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    .line 115
    :cond_a
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_2
    const/16 v6, 0x90

    if-ne v0, v2, :cond_b

    mul-int/lit16 v5, v5, 0x90

    .line 121
    div-int/2addr v5, v1

    add-int/2addr v5, p0

    return v5

    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v6, 0x48

    :cond_c
    mul-int v6, v6, v5

    .line 124
    div-int/2addr v6, v1

    add-int/2addr v6, p0

    return v6

    :cond_d
    :goto_3
    return v1
.end method

.method private static getFrameSizeInSamples(II)I
    .locals 1

    const/16 v0, 0x480

    packed-switch p1, :pswitch_data_0

    .line 241
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0x180

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x240

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isMagicPresent(I)Z
    .locals 1

    const/high16 v0, -0x200000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static populateHeader(ILcom/google/android/exoplayer2/extractor/MpegAudioHeader;)Z
    .locals 11

    .line 167
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/lit8 v4, v0, 0x3

    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v2

    if-nez v3, :cond_2

    return v1

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto/16 :goto_8

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_4

    return v1

    .line 192
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v1, v1, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    .line 195
    div-int/lit8 v1, v1, 0x2

    :cond_5
    :goto_0
    move v7, v1

    goto :goto_1

    :cond_6
    if-nez v4, :cond_5

    .line 198
    div-int/lit8 v1, v1, 0x4

    goto :goto_0

    :goto_1
    ushr-int/lit8 v1, p0, 0x9

    and-int/2addr v1, v0

    .line 204
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->getFrameSizeInSamples(II)I

    move-result v10

    if-ne v3, v2, :cond_8

    if-ne v4, v2, :cond_7

    .line 207
    sget-object v8, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    goto :goto_2

    :cond_7
    sget-object v8, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    :goto_2
    mul-int/lit8 v8, v5, 0xc

    .line 208
    div-int/2addr v8, v7

    add-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0x4

    :goto_3
    move v9, v5

    goto :goto_6

    :cond_8
    if-ne v4, v2, :cond_a

    if-ne v3, v6, :cond_9

    .line 213
    sget-object v8, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    goto :goto_4

    :cond_9
    sget-object v8, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    :goto_4
    mul-int/lit16 v8, v5, 0x90

    .line 214
    div-int/2addr v8, v7

    add-int/2addr v8, v1

    goto :goto_3

    .line 217
    :cond_a
    sget-object v8, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    if-ne v3, v0, :cond_b

    const/16 v8, 0x48

    goto :goto_5

    :cond_b
    const/16 v8, 0x90

    :goto_5
    mul-int v8, v8, v5

    .line 218
    div-int/2addr v8, v7

    add-int/2addr v8, v1

    goto :goto_3

    .line 222
    :goto_6
    sget-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v3, v3, 0x3

    aget-object v5, v1, v3

    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_c

    const/4 p0, 0x1

    goto :goto_7

    :cond_c
    const/4 p0, 0x2

    :goto_7
    move-object v3, p1

    move v6, v8

    move v8, p0

    .line 224
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    return v0

    :cond_d
    :goto_8
    return v1
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->version:I

    .line 268
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    .line 269
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    .line 270
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 271
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->channels:I

    .line 272
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    .line 273
    iput p7, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    return-void
.end method
