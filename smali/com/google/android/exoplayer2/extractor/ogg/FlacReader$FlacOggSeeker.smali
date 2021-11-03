.class Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field private firstFrameOffset:J

.field private pendingSeekGranule:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)V
    .locals 2

    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 109
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 110
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method


# virtual methods
.method public createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 4

    .line 137
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->access$000(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;-><init>(Lcom/google/android/exoplayer2/util/FlacStreamMetadata;J)V

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

    .line 119
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v0, -0x1

    if-ltz p1, :cond_0

    .line 120
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    neg-long v2, v2

    .line 121
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method public setFirstFrameOffset(J)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    return-void
.end method

.method public startSeek(J)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->access$000(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->access$000(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    const/4 v1, 0x1

    .line 131
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    .line 132
    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method
