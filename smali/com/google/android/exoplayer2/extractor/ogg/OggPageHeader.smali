.class final Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# static fields
.field public static final EMPTY_PAGE_HEADER_SIZE:I = 0x1b

.field public static final MAX_PAGE_PAYLOAD:I = 0xfe01

.field public static final MAX_PAGE_SIZE:I = 0xff1b

.field public static final MAX_SEGMENT_COUNT:I = 0xff

.field private static final TYPE_OGGS:I = 0x4f676753


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public streamSerialNumber:J

.field public type:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    .line 59
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 91
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1b

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v3, 0x1b

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    return v2

    .line 104
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "expected OggS capture pattern at begin of page"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    .line 109
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    return v2

    .line 113
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    .line 118
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 119
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 120
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 121
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 122
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 123
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    .line 126
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 127
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    invoke-interface {p1, p2, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 128
    :goto_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v2, p1, :cond_7

    .line 129
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    aput p2, p1, v2

    .line 130
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    return v2

    .line 97
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    const-wide/16 v1, 0x0

    .line 67
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 68
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 69
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 70
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    return-void
.end method
