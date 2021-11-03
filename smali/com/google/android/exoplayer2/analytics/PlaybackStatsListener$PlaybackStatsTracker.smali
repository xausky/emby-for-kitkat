.class final Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
.super Ljava/lang/Object;
.source "PlaybackStatsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackStatsTracker"
.end annotation


# instance fields
.field private audioFormatBitrateTimeProduct:J

.field private final audioFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Lcom/google/android/exoplayer2/Format;",
            ">;>;"
        }
    .end annotation
.end field

.field private audioFormatTimeMs:J

.field private audioUnderruns:J

.field private bandwidthBytes:J

.field private bandwidthTimeMs:J

.field private currentAudioFormat:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentPlaybackSpeed:F

.field private currentPlaybackState:I

.field private currentPlaybackStateStartTimeMs:J

.field private currentVideoFormat:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private droppedFrames:J

.field private fatalErrorCount:I

.field private final fatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private firstReportedTimeMs:J

.field private hasBeenReady:Z

.field private hasEnded:Z

.field private hasFatalError:Z

.field private initialAudioFormatBitrate:J

.field private initialVideoFormatBitrate:J

.field private initialVideoFormatHeight:I

.field private final isAd:Z

.field private isFinished:Z

.field private isForeground:Z

.field private isInterruptedByAd:Z

.field private isJoinTimeInvalid:Z

.field private isSeeking:Z

.field private isSuppressed:Z

.field private final keepHistory:Z

.field private lastAudioFormatStartTimeMs:J

.field private lastRebufferStartTimeMs:J

.field private lastVideoFormatStartTimeMs:J

.field private maxRebufferTimeMs:J

.field private final mediaTimeHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field private nonFatalErrorCount:I

.field private final nonFatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private pauseBufferCount:I

.field private pauseCount:I

.field private playWhenReady:Z

.field private final playbackStateDurationsMs:[J

.field private final playbackStateHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private playerPlaybackState:I

.field private rebufferCount:I

.field private seekCount:I

.field private startedLoading:Z

.field private videoFormatBitrateTimeMs:J

.field private videoFormatBitrateTimeProduct:J

.field private videoFormatHeightTimeMs:J

.field private videoFormatHeightTimeProduct:J

.field private final videoFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Lcom/google/android/exoplayer2/Format;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 3

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    const/16 v0, 0x10

    .line 496
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    if-eqz p1, :cond_0

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorHistory:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 502
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorHistory:Ljava/util/List;

    const/4 p1, 0x0

    .line 503
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    .line 504
    iget-wide v0, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    const/4 v0, 0x1

    .line 505
    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playerPlaybackState:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 506
    iput-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    .line 507
    iput-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    .line 508
    iget-object v1, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_6

    iget-object p2, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    :cond_6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isAd:Z

    const-wide/16 p1, -0x1

    .line 509
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    .line 510
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    const/4 p1, -0x1

    .line 511
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 512
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    return-void
.end method

.method private guessMediaTimeBasedOnElapsedRealtime(J)[J
    .locals 7

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    .line 956
    aget-wide v3, v0, v1

    .line 957
    aget-wide v5, v0, v2

    sub-long v3, p1, v3

    long-to-float v0, v3

    .line 958
    iget v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    mul-float v0, v0, v3

    float-to-long v3, v0

    add-long/2addr v5, v3

    const/4 v0, 0x2

    .line 961
    new-array v0, v0, [J

    aput-wide p1, v0, v1

    aput-wide v5, v0, v2

    return-object v0
.end method

.method private static isInvalidJoinTransition(II)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xe

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isPausedState(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

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

.method private static isReadyState(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

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

.method private static isRebufferingState(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

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

.method private maybeRecordAudioFormatTime(J)V
    .locals 6

    .line 1016
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1019
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastAudioFormatStartTimeMs:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 1020
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatTimeMs:J

    .line 1021
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatBitrateTimeProduct:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v4, v4

    mul-long v0, v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatBitrateTimeProduct:J

    .line 1023
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastAudioFormatStartTimeMs:J

    return-void
.end method

.method private maybeRecordVideoFormatTime(J)V
    .locals 8

    .line 1000
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 1002
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastVideoFormatStartTimeMs:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 1003
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1004
    iget-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeMs:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeMs:J

    .line 1005
    iget-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeProduct:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->height:I

    int-to-long v6, v2

    mul-long v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeProduct:J

    .line 1007
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v2, v3, :cond_1

    .line 1008
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeMs:J

    .line 1009
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeProduct:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v4, v4

    mul-long v0, v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeProduct:J

    .line 1012
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastVideoFormatStartTimeMs:J

    return-void
.end method

.method private maybeUpdateAudioFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 4
    .param p2    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 984
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 987
    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    if-eqz p2, :cond_1

    .line 988
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 991
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    .line 993
    :cond_1
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 994
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz p2, :cond_2

    .line 995
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private maybeUpdateMaxRebufferTimeMs(J)V
    .locals 4

    .line 925
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastRebufferStartTimeMs:J

    sub-long/2addr p1, v0

    .line 927
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 928
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    :cond_1
    return-void
.end method

.method private maybeUpdateMediaTimeHistory(JJ)V
    .locals 9

    .line 934
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-nez v0, :cond_0

    return-void

    .line 937
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-eq v0, v1, :cond_2

    cmp-long v0, p3, v4

    if-nez v0, :cond_1

    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 942
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v7, v0, v6

    cmp-long v0, v7, p3

    if-eqz v0, :cond_2

    .line 944
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    new-array v1, v3, [J

    aput-wide p1, v1, v2

    aput-wide v7, v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    cmp-long v1, p3, v4

    if-nez v1, :cond_3

    .line 950
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->guessMediaTimeBasedOnElapsedRealtime(J)[J

    move-result-object p1

    goto :goto_0

    :cond_3
    new-array v1, v3, [J

    aput-wide p1, v1, v2

    aput-wide p3, v1, v6

    move-object p1, v1

    .line 948
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 9

    .line 827
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->resolveNewPlaybackState()I

    move-result v0

    .line 828
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-ne v0, v1, :cond_0

    return-void

    .line 831
    :cond_0
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 833
    iget-wide v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    sub-long/2addr v4, v6

    .line 834
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    iget v6, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    aget-wide v7, v1, v6

    add-long/2addr v7, v4

    aput-wide v7, v1, v6

    .line 835
    iget-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 836
    iget-wide v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    .line 838
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isJoinTimeInvalid:Z

    iget v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInvalidJoinTransition(II)Z

    move-result v4

    or-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isJoinTimeInvalid:Z

    .line 839
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isReadyState(I)Z

    move-result v4

    or-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    .line 840
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasEnded:Z

    const/16 v4, 0xb

    if-ne v0, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasEnded:Z

    .line 841
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isPausedState(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isPausedState(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 842
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseCount:I

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 845
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->seekCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->seekCount:I

    .line 847
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 848
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->rebufferCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->rebufferCount:I

    .line 849
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastRebufferStartTimeMs:J

    .line 851
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    if-ne v0, v2, :cond_7

    .line 854
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseBufferCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseBufferCount:I

    .line 857
    :cond_7
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    if-eqz p2, :cond_8

    iget-wide v6, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    :cond_8
    invoke-direct {p0, v1, v2, v6, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMediaTimeHistory(JJ)V

    .line 860
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMaxRebufferTimeMs(J)V

    .line 861
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 862
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 864
    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    .line 865
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    .line 866
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz p2, :cond_9

    .line 867
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private maybeUpdateVideoFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 965
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 968
    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    if-eqz p2, :cond_2

    .line 970
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v0, v1, :cond_1

    .line 971
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->height:I

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    .line 973
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v0, v1, :cond_2

    .line 974
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    .line 977
    :cond_2
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    .line 978
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz p2, :cond_3

    .line 979
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private resolveNewPlaybackState()I
    .locals 6

    .line 872
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isFinished:Z

    const/16 v1, 0xb

    if-eqz v0, :cond_1

    .line 874
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    :goto_0
    return v1

    .line 877
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    const/4 v2, 0x5

    if-eqz v0, :cond_2

    return v2

    .line 880
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasFatalError:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    return v0

    .line 882
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    if-nez v0, :cond_4

    .line 884
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->startedLoading:Z

    return v0

    .line 887
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    const/16 v3, 0xe

    if-eqz v0, :cond_5

    return v3

    .line 889
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playerPlaybackState:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    return v1

    .line 891
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playerPlaybackState:I

    const/4 v1, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_d

    .line 892
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eq v0, v5, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-ne v0, v3, :cond_7

    goto :goto_3

    .line 898
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/16 v1, 0x8

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-ne v0, v1, :cond_8

    goto :goto_2

    .line 902
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playWhenReady:Z

    if-nez v0, :cond_9

    const/4 v0, 0x7

    return v0

    .line 905
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSuppressed:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    goto :goto_1

    :cond_a
    const/4 v0, 0x6

    :goto_1
    return v0

    :cond_b
    :goto_2
    return v1

    :cond_c
    :goto_3
    return v5

    .line 908
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playerPlaybackState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 909
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playWhenReady:Z

    if-nez v0, :cond_e

    return v4

    .line 912
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSuppressed:Z

    if-eqz v0, :cond_f

    const/16 v2, 0x9

    :cond_f
    return v2

    .line 915
    :cond_10
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playerPlaybackState:I

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eqz v0, :cond_11

    const/16 v0, 0xc

    return v0

    .line 921
    :cond_11
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    return v0
.end method


# virtual methods
.method public build(Z)Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .locals 90

    move-object/from16 v0, p0

    .line 756
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    .line 757
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    const-wide/16 v4, 0x0

    if-nez p1, :cond_1

    .line 759
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 760
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    const/16 v7, 0x10

    .line 761
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 762
    iget-wide v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    sub-long v7, v2, v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 763
    iget v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    aget-wide v10, v6, v9

    add-long/2addr v10, v7

    aput-wide v10, v6, v9

    .line 764
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMaxRebufferTimeMs(J)V

    .line 765
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 766
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 767
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 768
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 769
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->guessMediaTimeBasedOnElapsedRealtime(J)[J

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v10, v6

    move-object v12, v7

    goto :goto_0

    :cond_1
    move-object v10, v2

    move-object v12, v3

    .line 772
    :goto_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isJoinTimeInvalid:Z

    const/4 v6, 0x1

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    move-wide/from16 v19, v7

    goto :goto_4

    :cond_4
    const/4 v7, 0x2

    .line 773
    aget-wide v7, v10, v7

    goto :goto_3

    .line 777
    :goto_4
    aget-wide v7, v10, v6

    cmp-long v4, v7, v4

    if-lez v4, :cond_5

    const/16 v18, 0x1

    goto :goto_5

    :cond_5
    const/16 v18, 0x0

    :goto_5
    if-eqz p1, :cond_6

    .line 779
    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    :goto_6
    move-object/from16 v29, v4

    goto :goto_7

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    :goto_7
    if-eqz p1, :cond_7

    .line 781
    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    :goto_8
    move-object/from16 v30, v4

    goto :goto_9

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_8

    .line 783
    :goto_9
    new-instance v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    if-eqz p1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    :goto_a
    move-object v11, v1

    goto :goto_b

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_a

    :goto_b
    iget-wide v13, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    xor-int/lit8 v16, v1, 0x1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasEnded:Z

    xor-int/lit8 v21, v2, 0x1

    iget v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseCount:I

    iget v5, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseBufferCount:I

    iget v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->seekCount:I

    iget v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->rebufferCount:I

    move/from16 v64, v7

    iget-wide v6, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isAd:Z

    move-object/from16 v65, v10

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeMs:J

    move-wide/from16 v66, v9

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeProduct:J

    move-wide/from16 v68, v9

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeMs:J

    move-wide/from16 v70, v9

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeProduct:J

    move-wide/from16 v72, v9

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatTimeMs:J

    move-wide/from16 v74, v9

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatBitrateTimeProduct:J

    move/from16 v76, v8

    iget v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    move-wide/from16 v77, v9

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    const/16 v43, 0x0

    goto :goto_c

    :cond_9
    const/16 v43, 0x1

    :goto_c
    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    const-wide/16 v22, -0x1

    cmp-long v8, v8, v22

    if-nez v8, :cond_a

    const/16 v44, 0x0

    goto :goto_d

    :cond_a
    const/16 v44, 0x1

    :goto_d
    iget v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    move-wide/from16 v79, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    cmp-long v8, v8, v22

    if-nez v8, :cond_b

    const/16 v48, 0x0

    goto :goto_e

    :cond_b
    const/16 v48, 0x1

    :goto_e
    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    move-wide/from16 v82, v8

    move/from16 v81, v10

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthTimeMs:J

    move-wide/from16 v84, v9

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthBytes:J

    move-wide/from16 v86, v9

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->droppedFrames:J

    move-wide/from16 v88, v9

    iget-wide v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioUnderruns:J

    iget v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    if-lez v8, :cond_c

    const/16 v59, 0x1

    goto :goto_f

    :cond_c
    const/16 v59, 0x0

    :goto_f
    iget v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    move/from16 v60, v8

    iget v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorCount:I

    move/from16 v61, v8

    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorHistory:Ljava/util/List;

    move-object/from16 v62, v8

    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorHistory:Ljava/util/List;

    move-object/from16 v63, v8

    move/from16 v25, v76

    move-wide/from16 v46, v79

    move-wide/from16 v49, v82

    move-object v8, v4

    move-wide/from16 v57, v9

    move-wide/from16 v31, v66

    move-wide/from16 v33, v68

    move-wide/from16 v35, v70

    move-wide/from16 v37, v72

    move-wide/from16 v39, v74

    move-wide/from16 v41, v77

    move-wide/from16 v51, v84

    move-wide/from16 v53, v86

    move-wide/from16 v55, v88

    const/4 v9, 0x1

    move/from16 v45, v81

    move-object/from16 v10, v65

    move/from16 v17, v1

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v64

    move-wide/from16 v26, v6

    move/from16 v28, v3

    invoke-direct/range {v8 .. v63}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;-><init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V

    return-object v4
.end method

.method public onAudioUnderrun()V
    .locals 4

    .line 714
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioUnderruns:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioUnderruns:J

    return-void
.end method

.method public onBandwidthData(JJ)V
    .locals 2

    .line 733
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthTimeMs:J

    .line 734
    iget-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthBytes:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthBytes:J

    return-void
.end method

.method public onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2

    .line 676
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackType:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 680
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateAudioFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_1

    .line 678
    :cond_1
    :goto_0
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateVideoFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDroppedVideoFrames(I)V
    .locals 4

    .line 723
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->droppedFrames:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->droppedFrames:J

    return-void
.end method

.method public onFatalError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 2

    .line 590
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    .line 591
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorHistory:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasFatalError:Z

    const/4 p2, 0x0

    .line 595
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    .line 596
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    .line 597
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isFinished:Z

    const/4 v0, 0x0

    .line 638
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onForeground(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    .line 617
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onInterruptedByAd(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 2

    const/4 v0, 0x1

    .line 626
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    const/4 v1, 0x0

    .line 627
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    .line 628
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onIsSuppressedChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZZ)V
    .locals 0

    .line 550
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSuppressed:Z

    .line 551
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->startedLoading:Z

    .line 607
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onNonFatalError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 1

    .line 744
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorCount:I

    .line 745
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorHistory:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onPlaybackSpeedChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .locals 4

    .line 706
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMediaTimeHistory(JJ)V

    .line 707
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 708
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 709
    iput p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    return-void
.end method

.method public onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZIZ)V
    .locals 1

    .line 529
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playWhenReady:Z

    .line 530
    iput p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playerPlaybackState:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 532
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasFatalError:Z

    :cond_0
    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 535
    :cond_1
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    .line 537
    :cond_2
    invoke-direct {p0, p1, p4}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    const/4 v0, 0x1

    .line 561
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const/4 v0, 0x0

    .line 580
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    const/4 v0, 0x1

    .line 581
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    .line 571
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdatePlaybackState(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 8

    .line 650
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, p2, v2

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 651
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 652
    invoke-interface {v5, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    if-ne v5, v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    if-nez v3, :cond_3

    .line 661
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateVideoFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    :cond_3
    if-nez v4, :cond_4

    .line 664
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateAudioFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    :cond_4
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/Format;->copyWithVideoSize(II)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 694
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateVideoFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    :cond_0
    return-void
.end method
