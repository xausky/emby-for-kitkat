.class final Lcom/google/android/exoplayer2/PlaybackInfo;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# static fields
.field private static final DUMMY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field public volatile bufferedPositionUs:J

.field public final contentPositionUs:J

.field public final isLoading:Z

.field public final loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final playbackState:I

.field public volatile positionUs:J

.field public final startPositionUs:J

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;

.field public volatile totalBufferedDurationUs:J

.field public final trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackInfo;->DUMMY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V
    .locals 3
    .param p8    # Lcom/google/android/exoplayer2/ExoPlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 139
    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object v1, p2

    .line 140
    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-wide v1, p3

    .line 141
    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    move-wide v1, p5

    .line 142
    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    move v1, p7

    .line 143
    iput v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    move-object v1, p8

    .line 144
    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    move v1, p9

    .line 145
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    move-object v1, p10

    .line 146
    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object v1, p11

    .line 147
    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v1, p12

    .line 148
    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-wide/from16 v1, p13

    .line 149
    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v1, p15

    .line 150
    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v1, p17

    .line 151
    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    return-void
.end method

.method public static createDummy(JLcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 20

    move-wide/from16 v3, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    .line 93
    new-instance v19, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v0, v19

    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    sget-object v2, Lcom/google/android/exoplayer2/PlaybackInfo;->DUMMY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    sget-object v10, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    sget-object v12, Lcom/google/android/exoplayer2/PlaybackInfo;->DUMMY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v19
.end method


# virtual methods
.method public copyWithIsLoading(Z)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 23
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 293
    new-instance v20, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 23
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 343
    new-instance v20, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 21
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    .line 197
    new-instance v20, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v6, p4

    goto :goto_0

    :cond_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v3

    :goto_0
    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v1, v20

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v16, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 23
    .param p1    # Lcom/google/android/exoplayer2/ExoPlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 269
    new-instance v20, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 23
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 245
    new-instance v20, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 23
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 221
    new-instance v20, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public copyWithTrackInfo(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 23
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 319
    new-instance v20, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v20
.end method

.method public getDummyFirstMediaPeriodId(ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackInfo;->DUMMY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object p1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3, v0, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p3

    iget p3, p3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne p1, p3, :cond_1

    .line 175
    iget-object p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 178
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    return-object p1
.end method
