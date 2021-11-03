.class public final Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
.super Ljava/lang/Object;
.source "MaskingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareErrorListener;
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private listener:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareErrorListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private notifiedPrepareError:Z

.field private preparePositionOverrideUs:J

.field private preparePositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 71
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 73
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method private getPreparePositionWithOverride(J)J
    .locals 4

    .line 232
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 4

    .line 111
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide v0

    .line 112
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 113
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreparePositionUs()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    return-wide v0
.end method

.method public synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriod$-CC;->$default$getStreamKeys(Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareErrorListener;

    if-eqz v1, :cond_2

    .line 147
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 148
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareErrorListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareErrorListener;->onPrepareError(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    throw v0
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public overridePreparePositionUs(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 130
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public releasePeriod()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 12

    move-object v0, p0

    .line 166
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 167
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    .line 168
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    move-wide v10, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p5

    .line 170
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    .line 171
    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public setPrepareErrorListener(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareErrorListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareErrorListener;

    return-void
.end method
