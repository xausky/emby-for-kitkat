.class final Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# static fields
.field private static final DEFAULT_OFFSET:I = 0x7530

.field private static final MATCH_BYTE_RANGE:I = 0x186a0

.field private static final MATCH_RANGE:I = 0x11940

.field private static final STATE_IDLE:I = 0x4

.field private static final STATE_READ_LAST_PAGE:I = 0x1

.field private static final STATE_SEEK:I = 0x2

.field private static final STATE_SEEK_TO_END:I = 0x0

.field private static final STATE_SKIP:I = 0x3


# instance fields
.field private end:J

.field private endGranule:J

.field private final pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

.field private final payloadEndPosition:J

.field private final payloadStartPosition:J

.field private positionBeforeSeekToEnd:J

.field private start:J

.field private startGranule:J

.field private state:I

.field private final streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

.field private targetGranule:J

.field private totalGranules:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;JJJJZ)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    .line 77
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    .line 78
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_2

    .line 81
    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 p1, 0x4

    .line 82
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    :goto_2
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    return-wide v0
.end method

.method private getNextSeekPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 151
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    cmp-long v2, v2, v4

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 155
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 156
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    .line 160
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    return-wide v1

    .line 158
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 164
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 166
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v9, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long/2addr v7, v9

    .line 167
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v2, v9

    const-wide/16 v9, 0x0

    cmp-long v11, v9, v7

    if-gtz v11, :cond_3

    const-wide/32 v11, 0x11940

    cmp-long v11, v7, v11

    if-gez v11, :cond_3

    return-wide v3

    :cond_3
    cmp-long v3, v7, v9

    if-gez v3, :cond_4

    .line 173
    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    .line 174
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    goto :goto_0

    .line 176
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    int-to-long v9, v2

    add-long/2addr v4, v9

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 177
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 180
    :goto_0
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v4, v9

    const-wide/32 v9, 0x186a0

    cmp-long v4, v4, v9

    if-gez v4, :cond_5

    .line 181
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    .line 182
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    return-wide v1

    :cond_5
    int-to-long v4, v2

    const-wide/16 v9, 0x1

    if-gtz v3, :cond_6

    const-wide/16 v2, 0x2

    goto :goto_1

    :cond_6
    move-wide v2, v9

    :goto_1
    mul-long v4, v4, v2

    .line 187
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    sub-long/2addr v1, v4

    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v3, v5

    mul-long v7, v7, v3

    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    sub-long/2addr v3, v5

    div-long/2addr v7, v3

    add-long v11, v1, v7

    .line 190
    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    sub-long v15, v1, v9

    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x3

    add-long/2addr p2, v0

    .line 240
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const/16 v0, 0x800

    .line 241
    new-array v0, v0, [B

    .line 242
    array-length v1, v0

    .line 244
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    cmp-long v2, v2, p2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 246
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    sub-long v1, p2, v1

    long-to-int v1, v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    return v3

    .line 252
    :cond_0
    invoke-interface {p1, v0, v3, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    :goto_1
    add-int/lit8 v2, v1, -0x3

    if-ge v3, v2, :cond_2

    .line 254
    aget-byte v2, v0, v3

    const/16 v4, 0x4f

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, v0, v2

    const/16 v4, 0x67

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v3, 0x2

    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v3, 0x3

    aget-byte v2, v0, v2

    const/16 v4, 0x53

    if-ne v2, v4, :cond_1

    .line 259
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    :cond_2
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private skipToPageOfTargetGranule(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 206
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->createSeekMap()Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object v0

    return-object v0
.end method

.method public createSeekMap()Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .locals 4

    .line 125
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$1;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x4

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    return-wide v1

    .line 107
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->getNextSeekPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    return-wide v4

    :cond_0
    const/4 v0, 0x3

    .line 111
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 114
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToPageOfTargetGranule(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 115
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0

    .line 94
    :pswitch_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    const/4 v0, 0x1

    .line 95
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 97
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    const-wide/32 v4, 0xff1b

    sub-long/2addr v0, v4

    .line 98
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    return-wide v0

    .line 103
    :cond_1
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->readGranuleOfLastPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 104
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 105
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method readGranuleOfLastPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    return-wide v0
.end method

.method skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 223
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 225
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public startSeek(J)V
    .locals 10

    .line 130
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    const/4 p1, 0x2

    .line 131
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 132
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 133
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 p1, 0x0

    .line 134
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 135
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    return-void
.end method
