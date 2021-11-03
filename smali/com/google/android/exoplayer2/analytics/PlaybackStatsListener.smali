.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;
.super Ljava/lang/Object;
.source "PlaybackStatsListener.java"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
.implements Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;,
        Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;
    }
.end annotation


# instance fields
.field private activeAdPlayback:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private activeContentPlayback:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final callback:Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

.field private isSuppressed:Z

.field private final keepHistory:Z

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackSpeed:F

.field private playbackState:I

.field private final playbackStatsTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

.field private final sessionStartEventTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->callback:Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;

    .line 96
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->keepHistory:Z

    .line 97
    new-instance p1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 99
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    .line 100
    sget-object p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->EMPTY:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playWhenReady:Z

    const/4 p1, 0x1

    .line 102
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackState:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 103
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackSpeed:F

    .line 104
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 105
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->setListener(Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;)V

    return-void
.end method


# virtual methods
.method public finishAllSessions()V
    .locals 14

    .line 151
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 152
    new-instance v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object v5, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    .line 161
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCombinedPlaybackStats()Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    .line 118
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 120
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    add-int/lit8 v5, v1, 0x1

    .line 121
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v5

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackStats()Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeAdPlayback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeAdPlayback:Ljava/lang/String;

    .line 136
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeContentPlayback:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeContentPlayback:Ljava/lang/String;

    .line 138
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public onAdPlaybackStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 191
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 192
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 195
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 196
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v2

    .line 197
    new-instance v14, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-object v7, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v8, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    new-instance v9, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v12, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v12, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-direct {v9, v4, v10, v11, v12}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 206
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v10

    iget-wide v12, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    iget-wide v1, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    move-object v4, v14

    move-object v3, v14

    move-wide v14, v1

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    .line 209
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    move-object/from16 v2, p2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    .line 210
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onInterruptedByAd(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionId(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSessionId(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    .line 387
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 388
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 389
    iget-object p4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p4, p1, p3}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 390
    iget-object p4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onAudioUnderrun()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 2

    .line 376
    iget-object p5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p5, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 377
    iget-object p5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1, p6}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    int-to-long v0, p2

    invoke-virtual {p6, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onBandwidthData(JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v2, p1, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 424
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v2, p1, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onNonFatalError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 1

    .line 397
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 398
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1, p4}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {p4, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onDroppedVideoFrames(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 412
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 413
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 414
    iget-object p5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p5, p1, p3}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 415
    iget-object p5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {p3, p1, p4}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onNonFatalError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 1

    .line 340
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 341
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1, p3}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onMediaPeriodCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaPeriodCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onMediaPeriodReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaPeriodReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 319
    iget p2, p2, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackSpeed:F

    .line 320
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 321
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    .line 322
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackSpeed:F

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onPlaybackSpeedChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 254
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->isSuppressed:Z

    .line 255
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 256
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v1

    .line 258
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 259
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->isSuppressed:Z

    .line 260
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onIsSuppressedChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZZ)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 310
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v2, p1, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onFatalError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 4

    .line 240
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playWhenReady:Z

    .line 241
    iput p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackState:I

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v2, p1, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v2

    .line 245
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 246
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    .line 247
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 278
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 279
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic onReadingStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onReadingStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V
    .locals 0
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v2, p1, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v2, p1, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSessionActive(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onForeground(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 182
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeAdPlayback:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeContentPlayback:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onSessionCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 4

    .line 170
    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->keepHistory:Z

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;-><init>(ZLcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 171
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playWhenReady:Z

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackState:I

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZIZ)V

    .line 173
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->isSuppressed:Z

    invoke-virtual {v0, p1, v1, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onIsSuppressedChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZZ)V

    .line 174
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackSpeed:F

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onPlaybackSpeedChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    .line 175
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeAdPlayback:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeAdPlayback:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeContentPlayback:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->activeContentPlayback:Ljava/lang/String;

    .line 220
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    .line 221
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    const/4 p3, 0x4

    .line 224
    invoke-virtual {v0, p1, v2, p3, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZIZ)V

    .line 227
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 228
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object p1

    const/4 p3, 0x2

    .line 229
    new-array p3, p3, [Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    aput-object v0, p3, v1

    aput-object p1, p3, v2

    invoke-static {p3}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    .line 230
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->callback:Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;

    if-eqz p3, :cond_3

    .line 231
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->callback:Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;

    invoke-interface {p3, p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;->onPlaybackStatsReady(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/PlaybackStats;)V

    :cond_3
    return-void
.end method

.method public synthetic onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 2

    .line 266
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->handleTimelineUpdate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 267
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 268
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 2

    .line 329
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 330
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 1

    .line 365
    iget-object p4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {p4, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 366
    iget-object p4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0, p1, p5}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {p5, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method
