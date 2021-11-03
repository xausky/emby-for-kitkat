.class public final Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;
.super Ljava/lang/Object;
.source "Ac4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final FRAME_HEADER_SIZE:I = 0x7

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final READ_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

.field private final sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ts/-$$Lambda$Ac4Extractor$zjW7KSyjAevbDDyNCjGHEbZskt8;->INSTANCE:Lcom/google/android/exoplayer2/extractor/ts/-$$Lambda$Ac4Extractor$zjW7KSyjAevbDDyNCjGHEbZskt8;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 119
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 120
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 137
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    const/16 v1, 0x4000

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 143
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 144
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 146
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->startedPacket:Z

    if-nez p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    const-wide/16 v1, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->packetStarted(JI)V

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->startedPacket:Z

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->startedPacket:Z

    .line 126
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->seek()V

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 76
    :goto_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 77
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 78
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    const v5, 0x494433

    if-eq v4, v5, :cond_4

    .line 86
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 87
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 92
    :goto_2
    iget-object v5, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x7

    invoke-interface {p1, v5, v2, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 93
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 94
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    const v6, 0xac40

    if-eq v5, v6, :cond_1

    const v6, 0xac41

    if-eq v5, v6, :cond_1

    .line 97
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 101
    :cond_0
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    return v6

    .line 106
    :cond_2
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeSize([BI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, -0x7

    .line 110
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    .line 81
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 84
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0
.end method
