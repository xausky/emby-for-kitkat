.class public final Lcom/google/android/exoplayer2/audio/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC40_SYNCWORD:I = 0xac40

.field public static final AC41_SYNCWORD:I = 0xac41

.field private static final CHANNEL_COUNT_2:I = 0x2

.field public static final HEADER_SIZE_FOR_PARSER:I = 0x10

.field private static final SAMPLE_COUNT:[I

.field public static final SAMPLE_HEADER_SIZE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    .line 75
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    const/4 v0, 0x7

    .line 226
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 227
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    .line 228
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    .line 229
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, -0x1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 230
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 231
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 232
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 233
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, p1, v0

    return-void
.end method

.method public static parseAc4AnnexEFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    shr-int/lit8 p0, p0, 0x5

    if-ne p0, v0, :cond_0

    const p0, 0xbb80

    const v6, 0xbb80

    goto :goto_0

    :cond_0
    const p0, 0xac44

    const v6, 0xac44

    :goto_0
    const-string v1, "audio/ac4"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v8, p3

    move-object v10, p2

    .line 107
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x10

    .line 216
    new-array v0, v0, [B

    .line 217
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 218
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    new-instance p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    return p0
.end method

.method public static parseAc4SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
    .locals 10

    const/16 v0, 0x10

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 132
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x4

    const v3, 0xffff

    if-ne v0, v3, :cond_0

    const/16 v0, 0x18

    .line 135
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    add-int/2addr v0, v3

    const v3, 0xac41

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    move v7, v0

    const/4 v0, 0x2

    .line 142
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 144
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/audio/Ac4Util;->readVariableBits(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    move v4, v1

    const/16 v1, 0xa

    .line 146
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 147
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 149
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    const v5, 0xac44

    const v6, 0xbb80

    if-eqz v0, :cond_4

    const v0, 0xbb80

    goto :goto_1

    :cond_4
    const v0, 0xac44

    .line 153
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    const/4 v2, 0x0

    if-ne v0, v5, :cond_5

    const/16 v5, 0xd

    if-ne p0, v5, :cond_5

    .line 156
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    aget p0, v1, p0

    move v8, p0

    goto :goto_3

    :cond_5
    if-ne v0, v6, :cond_a

    .line 157
    sget-object v5, Lcom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    array-length v5, v5

    if-ge p0, v5, :cond_a

    .line 158
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    aget v2, v2, p0

    .line 159
    rem-int/lit8 v1, v1, 0x5

    const/16 v5, 0xb

    const/16 v6, 0x8

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eq p0, v3, :cond_6

    if-eq p0, v6, :cond_6

    if-ne p0, v5, :cond_9

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_1
    if-eq p0, v6, :cond_7

    if-ne p0, v5, :cond_9

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_2
    if-eq p0, v3, :cond_8

    if-ne p0, v6, :cond_9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    :cond_9
    :goto_2
    move v8, v2

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    .line 180
    :goto_3
    new-instance p0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    const/4 v5, 0x2

    const/4 v9, 0x0

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;-><init>(IIIIILcom/google/android/exoplayer2/audio/Ac4Util$1;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4SyncframeSize([BI)I
    .locals 4

    .line 191
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 195
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    .line 198
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    const p0, 0xac41

    if-ne p1, p0, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method private static readVariableBits(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)I
    .locals 2

    const/4 v0, 0x0

    .line 239
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, p1

    goto :goto_0
.end method
