.class public final Lcom/google/android/exoplayer2/util/FlacStreamMetadata;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;
    }
.end annotation


# static fields
.field public static final NOT_IN_LOOKUP_TABLE:I = -0x1

.field private static final SEPARATOR:Ljava/lang/String; = "="

.field private static final TAG:Ljava/lang/String; = "FlacStreamMetadata"


# instance fields
.field public final bitsPerSample:I

.field public final bitsPerSampleLookupKey:I

.field public final channels:I

.field public final maxBlockSizeSamples:I

.field public final maxFrameSize:I

.field private final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final minBlockSizeSamples:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final sampleRateLookupKey:I

.field public final seekTable:Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final totalSamples:J


# direct methods
.method private constructor <init>(IIIIIIIJLcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0
    .param p10    # Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 163
    iput p2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 164
    iput p3, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minFrameSize:I

    .line 165
    iput p4, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxFrameSize:I

    .line 166
    iput p5, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    .line 167
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRateLookupKey:I

    .line 168
    iput p6, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    .line 169
    iput p7, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    .line 170
    invoke-static {p7}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    .line 171
    iput-wide p8, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->totalSamples:J

    .line 172
    iput-object p10, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;

    .line 173
    iput-object p11, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public constructor <init>(IIIIIIIJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-static/range {p10 .. p11}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->buildMetadata(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v11

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    .line 138
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 111
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 112
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 113
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxBlockSizeSamples:I

    const/16 p1, 0x18

    .line 114
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minFrameSize:I

    .line 115
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxFrameSize:I

    const/16 p1, 0x14

    .line 116
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    .line 117
    iget p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRateLookupKey:I

    const/4 p1, 0x3

    .line 118
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    const/4 p1, 0x5

    .line 119
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    .line 120
    iget p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    const/16 p1, 0x24

    .line 121
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->totalSamples:J

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;

    .line 123
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method private static buildMetadata(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)",
            "Lcom/google/android/exoplayer2/metadata/Metadata;"
        }
    .end annotation

    .line 365
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 369
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 370
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 371
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "="

    .line 372
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 373
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const-string v5, "FlacStreamMetadata"

    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse Vorbis comment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_1
    new-instance v4, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;

    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-direct {v4, v6, v5}, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static getBitsPerSampleLookupKey(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static getSampleRateLookupKey(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public copyWithPictureFrames(Ljava/util/List;)Lcom/google/android/exoplayer2/util/FlacStreamMetadata;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)",
            "Lcom/google/android/exoplayer2/util/FlacStreamMetadata;"
        }
    .end annotation

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->buildMetadata(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    .line 301
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v11

    .line 303
    new-instance p1, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    iget v7, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->totalSamples:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object p1
.end method

.method public copyWithSeekTable(Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;)Lcom/google/android/exoplayer2/util/FlacStreamMetadata;
    .locals 13
    .param p1    # Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 265
    new-instance v12, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    iget v7, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v12
.end method

.method public copyWithVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/util/FlacStreamMetadata;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/util/FlacStreamMetadata;"
        }
    .end annotation

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->buildMetadata(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v11

    .line 284
    new-instance p1, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    iget v7, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->totalSamples:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object p1
.end method

.method public getApproxBytesPerFrame()J
    .locals 4

    .line 208
    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_0

    .line 209
    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxFrameSize:I

    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minFrameSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_1

    .line 213
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minBlockSizeSamples:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->minBlockSizeSamples:I

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1000

    .line 217
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x40

    add-long/2addr v0, v2

    :goto_1
    return-wide v0
.end method

.method public getBitRate()I
    .locals 2

    .line 183
    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    mul-int v0, v0, v1

    return v0
.end method

.method public getDurationUs()J
    .locals 4

    .line 191
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->totalSamples:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getFormat([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 17
    .param p2    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/16 v2, -0x80

    .line 235
    aput-byte v2, p1, v1

    .line 236
    iget v1, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxFrameSize:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxFrameSize:I

    move v5, v1

    move-object/from16 v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    move-object/from16 v1, p2

    const/4 v5, -0x1

    .line 237
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v15

    const/4 v1, 0x0

    const-string v2, "audio/flac"

    const/4 v4, 0x0

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getBitRate()I

    move-result v6

    iget v7, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    iget v8, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 250
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v3, v4

    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    move-object/from16 v14, v16

    .line 239
    invoke-static/range {v1 .. v15}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1
.end method

.method public getMaxDecodedFrameSize()I
    .locals 2

    .line 178
    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    div-int/lit8 v1, v1, 0x8

    mul-int v0, v0, v1

    return v0
.end method

.method public getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getSampleNumber(J)J
    .locals 8

    .line 201
    iget v0, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    .line 202
    iget-wide p1, p0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v0, 0x1

    sub-long v6, p1, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    return-wide p1
.end method
