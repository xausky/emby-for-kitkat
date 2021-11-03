.class public final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;,
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field private static final BRAND_QUICKTIME:I = 0x71742020

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private isQuickTime:Z

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleTrackIndex:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    .line 138
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 139
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 140
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 141
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 142
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 143
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    return-void
.end method

.method private static calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .locals 15

    .line 681
    array-length v0, p0

    new-array v0, v0, [[J

    .line 682
    array-length v1, p0

    new-array v1, v1, [I

    .line 683
    array-length v2, p0

    new-array v2, v2, [J

    .line 684
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 685
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 686
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 687
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    move-wide v6, v5

    const/4 v5, 0x0

    .line 691
    :goto_1
    array-length v8, p0

    if-ge v5, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    move-wide v11, v8

    const/4 v8, 0x0

    .line 694
    :goto_2
    array-length v9, p0

    if-ge v8, v9, :cond_2

    .line 695
    aget-boolean v9, v3, v8

    if-nez v9, :cond_1

    aget-wide v13, v2, v8

    cmp-long v9, v13, v11

    if-gtz v9, :cond_1

    .line 697
    aget-wide v9, v2, v8

    move-wide v11, v9

    move v10, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 700
    :cond_2
    aget v8, v1, v10

    .line 701
    aget-object v9, v0, v10

    aput-wide v6, v9, v8

    .line 702
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v6, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 703
    aput v8, v1, v10

    .line 704
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    .line 705
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    .line 708
    :cond_3
    aput-boolean v9, v3, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 268
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private static getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I
    .locals 2

    .line 746
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 749
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v2, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x1

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    .line 605
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v1, v1

    if-ge v2, v1, :cond_7

    .line 606
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v1, v1, v2

    .line 607
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 608
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 611
    :cond_0
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v4, v1, v3

    .line 612
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    aget-object v1, v1, v2

    aget-wide v16, v1, v3

    sub-long v3, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v3, v18

    if-ltz v1, :cond_2

    const-wide/32 v18, 0x40000

    cmp-long v1, v3, v18

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v1, v13, :cond_5

    cmp-long v5, v3, v14

    if-gez v5, :cond_5

    :cond_4
    move v13, v1

    move v11, v2

    move-wide v14, v3

    move-wide/from16 v9, v16

    :cond_5
    cmp-long v3, v16, v6

    if-gez v3, :cond_6

    move v8, v1

    move v12, v2

    move-wide/from16 v6, v16

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v6, v1

    if-eqz v1, :cond_9

    if-eqz v8, :cond_9

    const-wide/32 v1, 0xa00000

    add-long/2addr v6, v1

    cmp-long v1, v9, v6

    if-gez v1, :cond_8

    goto :goto_4

    :cond_8
    move v11, v12

    :cond_9
    :goto_4
    return v11
.end method

.method private getTrackSampleTables(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 451
    :goto_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 452
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 453
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v4, 0x7472616b

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const v3, 0x6d766864

    .line 459
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    move-object v3, v2

    move v8, p3

    .line 457
    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x6d646961

    .line 468
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    const v4, 0x6d696e66

    .line 469
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    const v4, 0x7374626c

    .line 470
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 471
    invoke-static {v3, v2, p2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-result-object v2

    .line 472
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v3, :cond_2

    goto :goto_1

    .line 475
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    .line 52
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J
    .locals 0

    .line 726
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 730
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p0, p1

    .line 731
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 667
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x68646c72    # 4.3148E24f

    if-ne v0, v2, :cond_0

    .line 670
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    .line 672
    :cond_0
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :goto_0
    return-void
.end method

.method private processAtomEnded(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 364
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 366
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    .line 368
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 370
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 375
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq p1, v1, :cond_3

    .line 376
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_3
    return-void
.end method

.method private static processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3

    const/16 v0, 0x8

    .line 761
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 762
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x71742020

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    .line 766
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 767
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 768
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    new-instance v3, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    const v4, 0x75647461

    .line 391
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 393
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 395
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    goto :goto_0

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    const v6, 0x6d657461

    .line 399
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 401
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    .line 404
    :cond_2
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 406
    :goto_1
    invoke-direct {v0, v1, v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackSampleTables(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_2
    if-ge v12, v6, :cond_9

    .line 410
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 411
    iget-object v11, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-object/from16 v17, v8

    .line 412
    iget-wide v7, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    iget-wide v7, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    move-wide v9, v7

    move-object/from16 v7, v17

    goto :goto_3

    :cond_4
    move-object/from16 v7, v17

    iget-wide v9, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 414
    :goto_3
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 415
    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move/from16 v19, v6

    iget v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 416
    invoke-interface {v1, v12, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v8, v11, v7, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 420
    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v1, v1, 0x1e

    .line 421
    iget-object v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/Format;->copyWithMaxInputSize(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 422
    iget v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    move-wide/from16 v20, v14

    const/4 v14, 0x2

    if-ne v6, v14, :cond_5

    const-wide/16 v15, 0x0

    cmp-long v6, v9, v15

    if-lez v6, :cond_5

    iget v6, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v15, 0x1

    if-le v6, v15, :cond_6

    .line 425
    iget v6, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    int-to-float v6, v6

    long-to-float v7, v9

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v7, v9

    div-float/2addr v6, v7

    .line 426
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/Format;->copyWithFrameRate(F)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v15, 0x1

    .line 428
    :cond_6
    :goto_4
    iget v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 429
    invoke-static {v6, v1, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->getFormatWithMetadata(ILcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 431
    iget-object v6, v8, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 433
    iget v1, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v1, v14, :cond_7

    const/4 v1, -0x1

    if-ne v13, v1, :cond_8

    .line 434
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v13, v6

    goto :goto_5

    :cond_7
    const/4 v1, -0x1

    .line 436
    :cond_8
    :goto_5
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v18

    move/from16 v6, v19

    move-wide/from16 v14, v20

    const/4 v7, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_2

    .line 438
    :cond_9
    iput v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 439
    iput-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v1, 0x0

    .line 440
    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 441
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 443
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 444
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 272
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 277
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 283
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 287
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_0

    .line 289
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 292
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 297
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 301
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_b

    .line 305
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 307
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_5

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 310
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 311
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    .line 312
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_3

    .line 315
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_3

    .line 317
    :cond_7
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 320
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v2, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 321
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 322
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 323
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 327
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    :goto_3
    return v1

    .line 302
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 340
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 341
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 343
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 344
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v0, v0

    invoke-interface {p1, p2, v4, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 345
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_0

    .line 346
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 348
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    .line 353
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 355
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 p1, 0x1

    .line 359
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz p1, :cond_4

    .line 360
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 498
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 499
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 500
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 501
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v2, v3, :cond_0

    return v3

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v2, v2, v4

    .line 506
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 507
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 508
    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v7, v6, v5

    .line 509
    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v6, v6, v5

    sub-long v0, v7, v0

    .line 510
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v9, v9

    add-long/2addr v0, v9

    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    const/4 v11, 0x1

    if-ltz v9, :cond_9

    const-wide/32 v9, 0x40000

    cmp-long v9, v0, v9

    if-ltz v9, :cond_1

    goto/16 :goto_2

    .line 515
    :cond_1
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne p2, v11, :cond_2

    const-wide/16 v7, 0x8

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, -0x8

    :cond_2
    long-to-int p2, v0

    .line 521
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 522
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 525
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 526
    aput-byte v0, p2, v0

    .line 527
    aput-byte v0, p2, v11

    const/4 v1, 0x2

    .line 528
    aput-byte v0, p2, v1

    .line 529
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 530
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v8, 0x4

    rsub-int/lit8 v7, v7, 0x4

    .line 534
    :goto_0
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v9, v6, :cond_8

    .line 535
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v9, :cond_4

    .line 537
    invoke-interface {p1, p2, v7, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 538
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 539
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 540
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    if-ltz v9, :cond_3

    .line 544
    iput v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 546
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 547
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v4, v9, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 548
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v7

    goto :goto_0

    .line 542
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Invalid NAL length"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 552
    :cond_4
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v4, p1, v9, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v9

    .line 553
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v10, v9

    iput v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 554
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v10, v9

    iput v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 555
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v10, v9

    iput v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_0

    :cond_5
    const-string p2, "audio/ac4"

    .line 559
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 560
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez p2, :cond_6

    .line 561
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v6, p2}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 562
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x7

    invoke-interface {v4, p2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 563
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    :cond_6
    add-int/lit8 v6, v6, 0x7

    .line 567
    :cond_7
    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge p2, v6, :cond_8

    .line 568
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int p2, v6, p2

    invoke-interface {v4, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p2

    .line 569
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 570
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 571
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    :cond_8
    move v8, v6

    .line 574
    iget-object p1, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v6, p1, v5

    iget-object p1, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget p1, p1, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, v6

    move v7, p1

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 576
    iget p1, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/2addr p1, v11

    iput p1, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 577
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 578
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 579
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 580
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    return v0

    .line 512
    :cond_9
    :goto_2
    iput-wide v7, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v11
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-ne p0, v0, :cond_0

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

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

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

.method private updateSampleIndices(J)V
    .locals 7

    .line 639
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 640
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 641
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 644
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v5

    .line 646
    :cond_0
    iput v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 12

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 214
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    .line 223
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_3

    .line 224
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 225
    invoke-static {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 227
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 229
    :cond_1
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v7, v6

    .line 231
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v10, v7, v6

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 232
    iget v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 233
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result p1

    if-eq p1, v3, :cond_2

    if-eq p1, v6, :cond_2

    .line 235
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v0, p2, p1

    .line 236
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_2
    move-wide p1, v0

    move-wide v0, v4

    :goto_0
    move-wide v2, p1

    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v2, v0

    move-wide v0, v4

    :goto_1
    const/4 v6, 0x0

    .line 245
    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v7, v7

    if-ge v6, v7, :cond_6

    .line 246
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v6, v7, :cond_5

    .line 247
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 248
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v8

    cmp-long v10, v0, v4

    if-eqz v10, :cond_4

    .line 250
    invoke-static {v7, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v2

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 255
    :cond_6
    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v0, v4

    if-nez p1, :cond_7

    .line 257
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 259
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 260
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, v6, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p2
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 180
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 192
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 187
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 182
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    .line 160
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 161
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 162
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 163
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    if-eqz p1, :cond_1

    .line 167
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->updateSampleIndices(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 148
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
