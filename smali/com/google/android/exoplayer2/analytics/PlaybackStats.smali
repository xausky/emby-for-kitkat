.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStats;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

.field public static final PLAYBACK_STATE_ABANDONED:I = 0xf

.field public static final PLAYBACK_STATE_BUFFERING:I = 0x6

.field static final PLAYBACK_STATE_COUNT:I = 0x10

.field public static final PLAYBACK_STATE_ENDED:I = 0xb

.field public static final PLAYBACK_STATE_FAILED:I = 0xd

.field public static final PLAYBACK_STATE_INTERRUPTED_BY_AD:I = 0xe

.field public static final PLAYBACK_STATE_JOINING_BACKGROUND:I = 0x1

.field public static final PLAYBACK_STATE_JOINING_FOREGROUND:I = 0x2

.field public static final PLAYBACK_STATE_NOT_STARTED:I = 0x0

.field public static final PLAYBACK_STATE_PAUSED:I = 0x4

.field public static final PLAYBACK_STATE_PAUSED_BUFFERING:I = 0x7

.field public static final PLAYBACK_STATE_PLAYING:I = 0x3

.field public static final PLAYBACK_STATE_SEEKING:I = 0x5

.field public static final PLAYBACK_STATE_SEEK_BUFFERING:I = 0x8

.field public static final PLAYBACK_STATE_STOPPED:I = 0xc

.field public static final PLAYBACK_STATE_SUPPRESSED:I = 0x9

.field public static final PLAYBACK_STATE_SUPPRESSED_BUFFERING:I = 0xa


# instance fields
.field public final abandonedBeforeReadyCount:I

.field public final adPlaybackCount:I

.field public final audioFormatHistory:Ljava/util/List;
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

.field public final backgroundJoiningCount:I

.field public final endedCount:I

.field public final fatalErrorCount:I

.field public final fatalErrorHistory:Ljava/util/List;
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

.field public final fatalErrorPlaybackCount:I

.field public final firstReportedTimeMs:J

.field public final foregroundPlaybackCount:I

.field public final initialAudioFormatBitrateCount:I

.field public final initialVideoFormatBitrateCount:I

.field public final initialVideoFormatHeightCount:I

.field public final maxRebufferTimeMs:J

.field public final mediaTimeHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field public final nonFatalErrorCount:I

.field public final nonFatalErrorHistory:Ljava/util/List;
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

.field public final playbackCount:I

.field private final playbackStateDurationsMs:[J

.field public final playbackStateHistory:Ljava/util/List;
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

.field public final totalAudioFormatBitrateTimeProduct:J

.field public final totalAudioFormatTimeMs:J

.field public final totalAudioUnderruns:J

.field public final totalBandwidthBytes:J

.field public final totalBandwidthTimeMs:J

.field public final totalDroppedFrames:J

.field public final totalInitialAudioFormatBitrate:J

.field public final totalInitialVideoFormatBitrate:J

.field public final totalInitialVideoFormatHeight:I

.field public final totalPauseBufferCount:I

.field public final totalPauseCount:I

.field public final totalRebufferCount:I

.field public final totalSeekCount:I

.field public final totalValidJoinTimeMs:J

.field public final totalVideoFormatBitrateTimeMs:J

.field public final totalVideoFormatBitrateTimeProduct:J

.field public final totalVideoFormatHeightTimeMs:J

.field public final totalVideoFormatHeightTimeProduct:J

.field public final validJoinTimeCount:I

.field public final videoFormatHistory:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    new-array v0, v0, [Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->EMPTY:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    return-void
.end method

.method constructor <init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[J",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List<",
            "[J>;JIIIIJIIIIIJI",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Lcom/google/android/exoplayer2/Format;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Lcom/google/android/exoplayer2/Format;",
            ">;>;JJJJJJIIIJIJJJJJIII",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Ljava/lang/Exception;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Ljava/lang/Exception;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 457
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    move-object v1, p2

    .line 458
    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    .line 459
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateHistory:Ljava/util/List;

    .line 460
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    move-wide v1, p5

    .line 461
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    move v1, p7

    .line 462
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    move v1, p8

    .line 463
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    move v1, p9

    .line 464
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->endedCount:I

    move v1, p10

    .line 465
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->backgroundJoiningCount:I

    move-wide v1, p11

    .line 466
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    move/from16 v1, p13

    .line 467
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    move/from16 v1, p14

    .line 468
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseCount:I

    move/from16 v1, p15

    .line 469
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseBufferCount:I

    move/from16 v1, p16

    .line 470
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    move/from16 v1, p17

    .line 471
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    move-wide/from16 v1, p18

    .line 472
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    move/from16 v1, p20

    .line 473
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->adPlaybackCount:I

    .line 474
    invoke-static/range {p21 .. p21}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->videoFormatHistory:Ljava/util/List;

    .line 475
    invoke-static/range {p22 .. p22}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->audioFormatHistory:Ljava/util/List;

    move-wide/from16 v1, p23

    .line 476
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    move-wide/from16 v1, p25

    .line 477
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    move-wide/from16 v1, p27

    .line 478
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    move-wide/from16 v1, p29

    .line 479
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    move-wide/from16 v1, p31

    .line 480
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    move-wide/from16 v1, p33

    .line 481
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    move/from16 v1, p35

    .line 482
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    move/from16 v1, p36

    .line 483
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    move/from16 v1, p37

    .line 484
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    move-wide/from16 v1, p38

    .line 485
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    move/from16 v1, p40

    .line 486
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    move-wide/from16 v1, p41

    .line 487
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    move-wide/from16 v1, p43

    .line 488
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    move-wide/from16 v1, p45

    .line 489
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthBytes:J

    move-wide/from16 v1, p47

    .line 490
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalDroppedFrames:J

    move-wide/from16 v1, p49

    .line 491
    iput-wide v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioUnderruns:J

    move/from16 v1, p51

    .line 492
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    move/from16 v1, p52

    .line 493
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorCount:I

    move/from16 v1, p53

    .line 494
    iput v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    .line 495
    invoke-static/range {p54 .. p54}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorHistory:Ljava/util/List;

    .line 496
    invoke-static/range {p55 .. p55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorHistory:Ljava/util/List;

    return-void
.end method

.method public static varargs merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .locals 63

    move-object/from16 v0, p0

    const/16 v1, 0x10

    .line 117
    new-array v4, v1, [J

    .line 150
    array-length v2, v0

    const-wide/16 v9, 0x0

    move-wide/from16 v28, v9

    move-wide/from16 v30, v28

    move-wide/from16 v32, v30

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    move-wide/from16 v38, v36

    move-wide/from16 v47, v38

    move-wide/from16 v49, v47

    move-wide/from16 v51, v49

    move-wide/from16 v53, v51

    const/4 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, -0x1

    const/16 v44, 0x0

    const-wide/16 v45, -0x1

    const/16 v55, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    :goto_0
    if-ge v9, v2, :cond_d

    aget-object v11, v0, v9

    .line 151
    iget v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    add-int/2addr v10, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_0

    .line 153
    aget-wide v23, v4, v7

    iget-object v8, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v56, v8, v7

    add-long v23, v23, v56

    aput-wide v23, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v23, v12, v7

    if-nez v23, :cond_1

    .line 156
    iget-wide v12, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    move/from16 v62, v2

    goto :goto_2

    :cond_1
    move/from16 v62, v2

    .line 157
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_2

    .line 158
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 160
    :cond_2
    :goto_2
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    add-int/2addr v14, v1

    .line 161
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    add-int/2addr v15, v1

    .line 162
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->endedCount:I

    add-int v16, v16, v1

    .line 163
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->backgroundJoiningCount:I

    add-int v17, v17, v1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v18, v1

    if-nez v7, :cond_3

    .line 165
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    move-wide/from16 v18, v7

    goto :goto_3

    .line 166
    :cond_3
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    cmp-long v7, v7, v1

    if-eqz v7, :cond_4

    .line 167
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    add-long v18, v18, v1

    .line 169
    :cond_4
    :goto_3
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    add-int v20, v20, v1

    .line 170
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseCount:I

    add-int v21, v21, v1

    .line 171
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseBufferCount:I

    add-int v22, v22, v1

    .line 172
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    add-int v25, v25, v1

    .line 173
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    add-int v26, v26, v1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v5, v1

    if-nez v7, :cond_5

    .line 175
    iget-wide v5, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    goto :goto_4

    .line 176
    :cond_5
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    cmp-long v7, v7, v1

    if-eqz v7, :cond_6

    .line 177
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 179
    :cond_6
    :goto_4
    iget v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->adPlaybackCount:I

    add-int v27, v27, v7

    .line 180
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    add-long v28, v28, v7

    .line 181
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    add-long v30, v30, v7

    .line 182
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    add-long v32, v32, v7

    .line 183
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    add-long v34, v34, v7

    .line 184
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    add-long v36, v36, v7

    .line 185
    iget-wide v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    add-long v38, v38, v7

    .line 186
    iget v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    add-int v40, v40, v7

    .line 187
    iget v7, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    add-int v41, v41, v7

    const/4 v7, -0x1

    if-ne v3, v7, :cond_8

    .line 189
    iget v3, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    :cond_7
    :goto_5
    const-wide/16 v23, -0x1

    goto :goto_6

    .line 190
    :cond_8
    iget v8, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    if-eq v8, v7, :cond_7

    .line 191
    iget v8, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    add-int/2addr v3, v8

    goto :goto_5

    :goto_6
    cmp-long v8, v42, v23

    if-nez v8, :cond_9

    .line 194
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    move-wide/from16 v42, v1

    goto :goto_7

    .line 195
    :cond_9
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    cmp-long v1, v1, v23

    if-eqz v1, :cond_a

    .line 196
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    add-long v42, v42, v1

    .line 198
    :cond_a
    :goto_7
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    add-int v44, v44, v1

    cmp-long v1, v45, v23

    if-nez v1, :cond_b

    .line 200
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    move-wide/from16 v45, v1

    goto :goto_8

    .line 201
    :cond_b
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    cmp-long v1, v1, v23

    if-eqz v1, :cond_c

    .line 202
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    add-long v45, v45, v1

    .line 204
    :cond_c
    :goto_8
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    add-long v47, v47, v1

    .line 205
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthBytes:J

    add-long v49, v49, v1

    .line 206
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalDroppedFrames:J

    add-long v51, v51, v1

    .line 207
    iget-wide v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioUnderruns:J

    add-long v53, v53, v1

    .line 208
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    add-int v55, v55, v1

    .line 209
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorCount:I

    add-int v60, v60, v1

    .line 210
    iget v1, v11, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    add-int v61, v61, v1

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v62

    const/16 v1, 0x10

    goto/16 :goto_0

    .line 212
    :cond_d
    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-object v2, v0

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-wide/from16 v58, v5

    move-object v5, v1

    .line 216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v24

    .line 251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v56

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v57

    move v1, v3

    move v3, v10

    move-wide v7, v12

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move/from16 v12, v17

    move-wide/from16 v13, v18

    move/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v18, v25

    move/from16 v19, v26

    move-wide/from16 v20, v58

    move/from16 v22, v27

    move-wide/from16 v25, v28

    move-wide/from16 v27, v30

    move-wide/from16 v29, v32

    move-wide/from16 v31, v34

    move-wide/from16 v33, v36

    move-wide/from16 v35, v38

    move/from16 v37, v40

    move/from16 v38, v41

    move/from16 v39, v1

    move-wide/from16 v40, v42

    move/from16 v42, v44

    move-wide/from16 v43, v45

    move-wide/from16 v45, v47

    move-wide/from16 v47, v49

    move-wide/from16 v49, v51

    move-wide/from16 v51, v53

    move/from16 v53, v55

    move/from16 v54, v60

    move/from16 v55, v61

    invoke-direct/range {v2 .. v57}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;-><init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getAbandonedBeforeReadyRatio()F
    .locals 3

    .line 730
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 732
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getAudioUnderrunRate()F
    .locals 5

    .line 925
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 926
    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioUnderruns:J

    long-to-float v3, v3

    mul-float v3, v3, v2

    long-to-float v0, v0

    div-float v0, v3, v0

    :goto_0
    return v0
.end method

.method public getDroppedFramesRate()F
    .locals 5

    .line 916
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 917
    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalDroppedFrames:J

    long-to-float v3, v3

    mul-float v3, v3, v2

    long-to-float v0, v0

    div-float v0, v3, v0

    :goto_0
    return v0
.end method

.method public getEndedRatio()F
    .locals 2

    .line 742
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->endedCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getFatalErrorRate()F
    .locals 4

    .line 944
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 945
    iget v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorCount:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    long-to-float v0, v0

    div-float v0, v3, v0

    :goto_0
    return v0
.end method

.method public getFatalErrorRatio()F
    .locals 2

    .line 934
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getJoinTimeRatio()F
    .locals 4

    .line 797
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalJoinTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float v0, v2, v0

    :goto_0
    return v0
.end method

.method public getMeanAudioFormatBitrate()I
    .locals 4

    .line 896
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMeanBandwidth()I
    .locals 4

    .line 906
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthBytes:J

    const-wide/16 v2, 0x1f40

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMeanElapsedTimeMs()J
    .locals 4

    .line 722
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalElapsedTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanInitialAudioFormatBitrate()I
    .locals 4

    .line 863
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMeanInitialVideoFormatBitrate()I
    .locals 4

    .line 853
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMeanInitialVideoFormatHeight()I
    .locals 2

    .line 843
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    div-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getMeanJoinTimeMs()J
    .locals 4

    .line 568
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanNonFatalErrorCount()F
    .locals 2

    .line 961
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getMeanPauseBufferCount()F
    .locals 2

    .line 758
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseBufferCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getMeanPauseCount()F
    .locals 2

    .line 750
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getMeanPausedTimeMs()J
    .locals 4

    .line 606
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPausedTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanPlayAndWaitTimeMs()J
    .locals 4

    .line 703
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanPlayTimeMs()J
    .locals 4

    .line 590
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanRebufferCount()F
    .locals 2

    .line 777
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getMeanRebufferTimeMs()J
    .locals 4

    .line 625
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalRebufferTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanSeekCount()F
    .locals 2

    .line 769
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getMeanSeekTimeMs()J
    .locals 4

    .line 656
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanSingleRebufferTimeMs()J
    .locals 4

    .line 635
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 637
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/4 v2, 0x7

    .line 638
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanSingleSeekTimeMs()J
    .locals 4

    .line 666
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanTimeBetweenFatalErrors()F
    .locals 2

    .line 953
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getFatalErrorRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public getMeanTimeBetweenNonFatalErrors()F
    .locals 2

    .line 978
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getNonFatalErrorRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public getMeanTimeBetweenRebuffers()F
    .locals 2

    .line 835
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getRebufferRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public getMeanVideoFormatBitrate()I
    .locals 4

    .line 885
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMeanVideoFormatHeight()I
    .locals 4

    .line 874
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMeanWaitTimeMs()J
    .locals 4

    .line 688
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMediaTimeMsAtRealtimeMs(J)J
    .locals 11

    .line 536
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 540
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 541
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-gtz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 545
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    aget-wide v0, p1, v2

    return-wide v0

    .line 547
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 548
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    aget-wide v0, p1, v2

    return-wide v0

    .line 550
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v5, v3, v0

    .line 551
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v7, v3, v2

    .line 552
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v9, v3, v0

    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v1, v0, v2

    sub-long/2addr v9, v5

    const-wide/16 v3, 0x0

    cmp-long v0, v9, v3

    if-nez v0, :cond_4

    return-wide v7

    :cond_4
    const/4 v0, 0x0

    sub-long/2addr p1, v5

    long-to-float p1, p1

    long-to-float p2, v9

    div-float/2addr p1, p2

    sub-long/2addr v1, v7

    long-to-float p2, v1

    mul-float p2, p2, p1

    float-to-long p1, p2

    add-long/2addr v7, p1

    return-wide v7
.end method

.method public getNonFatalErrorRate()F
    .locals 4

    .line 969
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 970
    iget v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    long-to-float v0, v0

    div-float v0, v3, v0

    :goto_0
    return v0
.end method

.method public getPlaybackStateAtTime(J)I
    .locals 5

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 519
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public getPlaybackStateDurationMs(I)J
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getRebufferRate()F
    .locals 4

    .line 826
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 827
    iget v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    long-to-float v0, v0

    div-float v0, v3, v0

    :goto_0
    return v0
.end method

.method public getRebufferTimeRatio()F
    .locals 4

    .line 807
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalRebufferTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float v0, v2, v0

    :goto_0
    return v0
.end method

.method public getSeekTimeRatio()F
    .locals 4

    .line 817
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float v0, v2, v0

    :goto_0
    return v0
.end method

.method public getTotalElapsedTimeMs()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 712
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v4, v3, v2

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getTotalJoinTimeMs()J
    .locals 2

    const/4 v0, 0x2

    .line 577
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalPausedTimeMs()J
    .locals 4

    const/4 v0, 0x4

    .line 597
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/4 v2, 0x7

    .line 598
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPlayAndWaitTimeMs()J
    .locals 4

    .line 695
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPlayTimeMs()J
    .locals 2

    const/4 v0, 0x3

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRebufferTimeMs()J
    .locals 2

    const/4 v0, 0x6

    .line 616
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSeekTimeMs()J
    .locals 4

    const/4 v0, 0x5

    .line 647
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/16 v2, 0x8

    .line 648
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalWaitTimeMs()J
    .locals 4

    const/4 v0, 0x2

    .line 675
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/4 v2, 0x6

    .line 676
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x5

    .line 677
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/16 v2, 0x8

    .line 678
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getWaitTimeRatio()F
    .locals 4

    .line 787
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float v0, v2, v0

    :goto_0
    return v0
.end method
