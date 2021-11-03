.class public Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"


# static fields
.field private static final DUMMY_POSITION_HOLDER:Lcom/google/android/exoplayer2/extractor/PositionHolder;


# instance fields
.field private final chunkCount:I

.field private final extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleOffsetUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/PositionHolder;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->DUMMY_POSITION_HOLDER:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V
    .locals 3

    move-object v0, p0

    .line 79
    invoke-direct/range {p0 .. p15}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p16

    .line 90
    iput v1, v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    move-wide/from16 v1, p17

    .line 91
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    move-object/from16 v1, p19

    .line 92
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public getNextChunkIndex()J
    .locals 4

    .line 97
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->chunkIndex:J

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getTrackOutputProvider(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
    .locals 0

    return-object p1
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 115
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->getOutput()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v0

    .line 118
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 119
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->getTrackOutputProvider(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    move-result-object v4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    move-wide v0, v5

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v0, v7

    :goto_0
    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_1

    :goto_1
    move-wide v7, v5

    goto :goto_2

    :cond_1
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v5, v7

    goto :goto_1

    :goto_2
    move-wide v5, v0

    .line 119
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->init(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;JJ)V

    .line 126
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 127
    new-instance v7, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 129
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_3

    .line 134
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v3, :cond_3

    .line 135
    sget-object v2, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->DUMMY_POSITION_HOLDER:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v0, v7, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    if-eq v2, v0, :cond_4

    const/4 v1, 0x1

    .line 137
    :cond_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->nextLoadPosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 144
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return-void

    :catchall_0
    move-exception v0

    .line 139
    :try_start_3
    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    .line 140
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 143
    throw v0
.end method
