.class public Ltv/emby/embyatv/playback/PlaybackController;
.super Ljava/lang/Object;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;
    }
.end annotation


# static fields
.field private static REPORT_INTERVAL:I = 0x2710


# instance fields
.field private burningSubs:Z

.field private cumSkipAmt:I

.field private currentSkipPos:J

.field private directStreamLiveTv:Z

.field private downmixAudio:Z

.field private exoErrorEncountered:Z

.field private ignoreAutoSwitch:Z

.field private isLiveTv:Z

.field private isRestart:Z

.field private lastProgramUpdateAttempt:J

.field private lastProgressPosition:J

.field private lastStillWatchingCheck:J

.field private liveErrorEncountered:Z

.field private liveRetries:I

.field private mApplication:Ltv/emby/embyatv/TvApp;

.field mCurrentIndex:I

.field private mCurrentMaxBitrate:I

.field private mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

.field private mCurrentPosition:J

.field private mCurrentProgramEndTime:J

.field private mCurrentProgramStartTime:J

.field private mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

.field private mCurrentTranscodeStartTime:J

.field private mDefaultAudioIndex:I

.field private mDefaultSubIndex:I

.field private mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field private mHandler:Landroid/os/Handler;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private mMainItemId:Ljava/lang/String;

.field private mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mNextItemThreshold:J

.field private mPauseTimerCallback:Ljava/lang/Runnable;

.field private mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

.field private mPlaybackStartTime:J

.field private mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

.field private mRepeatMode:Lmediabrowser/model/session/RepeatMode;

.field private mReportLoop:Ljava/lang/Runnable;

.field private mRequestedOptions:Ltv/emby/embyatv/api/VideoOptions;

.field private mSpinner:Landroid/view/View;

.field private mStartPosition:J

.field private mStartPositionOffset:J

.field mSubHelper:Ltv/emby/embyatv/playback/SubtitleHelper;

.field private mSubtitleStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTranscodingInfo:Lmediabrowser/model/session/TranscodingInfo;

.field mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

.field private nextItemReported:Z

.field private playbackRetries:I

.field private playbackStarted:Z

.field private programUpdateInProgress:Z

.field private progressReportInProgress:Z

.field private progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

.field private refreshRateSwitchingEnabled:Z

.field private skipRunnable:Ljava/lang/Runnable;

.field private spinnerOff:Ljava/lang/Boolean;

.field private stillWatchingActive:Z

.field private supportsDtsHd:Z

.field private switchedAudio:Z

.field private transcodeReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private updateProgress:Z

.field private useMpv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;",
            "Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    const-wide/16 v1, 0x0

    .line 63
    iput-wide v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    .line 64
    sget-object v3, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iput-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->spinnerOff:Ljava/lang/Boolean;

    .line 73
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->programUpdateInProgress:Z

    .line 74
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->stillWatchingActive:Z

    .line 75
    iput-wide v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->lastStillWatchingCheck:J

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->transcodeReasons:Ljava/util/List;

    const/4 v3, -0x1

    .line 80
    iput v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultSubIndex:I

    .line 81
    iput v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultAudioIndex:I

    const/4 v4, 0x0

    .line 82
    iput-object v4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mMainItemId:Ljava/lang/String;

    .line 85
    sget-object v4, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    iput-object v4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

    const-wide v4, 0x7fffffffffffffffL

    .line 91
    iput-wide v4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mNextItemThreshold:J

    .line 93
    iput-wide v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mStartPosition:J

    .line 94
    iput-wide v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mStartPositionOffset:J

    .line 99
    iput v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentMaxBitrate:I

    .line 104
    sget-object v3, Lmediabrowser/model/session/RepeatMode;->RepeatNone:Lmediabrowser/model/session/RepeatMode;

    iput-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRepeatMode:Lmediabrowser/model/session/RepeatMode;

    .line 109
    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    .line 111
    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->liveRetries:I

    const/4 v3, 0x1

    .line 118
    iput-boolean v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->updateProgress:Z

    .line 304
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->ignoreAutoSwitch:Z

    .line 875
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->burningSubs:Z

    .line 1025
    new-instance v4, Ltv/emby/embyatv/playback/PlaybackController$13;

    invoke-direct {v4, p0}, Ltv/emby/embyatv/playback/PlaybackController$13;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    iput-object v4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPauseTimerCallback:Ljava/lang/Runnable;

    .line 1153
    iput-wide v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    .line 1154
    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->cumSkipAmt:I

    .line 1155
    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$15;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$15;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->skipRunnable:Ljava/lang/Runnable;

    .line 1317
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressReportInProgress:Z

    .line 1318
    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$18;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$18;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 1497
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isRestart:Z

    .line 1498
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackStarted:Z

    .line 123
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    .line 124
    iput-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    .line 125
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 126
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 128
    new-instance p1, Ltv/emby/embyatv/playback/SubtitleHelper;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Ltv/emby/embyatv/playback/SubtitleHelper;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSubHelper:Ltv/emby/embyatv/playback/SubtitleHelper;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->lastStillWatchingCheck:J

    .line 131
    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->supportsDisplayModeSwitching()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pref_refresh_switching"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pref_resolution_switching"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->refreshRateSwitchingEnabled:Z

    .line 132
    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->getDisplayModes()V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/playback/PlaybackController;JIIIILjava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p7}, Ltv/emby/embyatv/playback/PlaybackController;->processPlayRequest(JIIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    return-object p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/playback/PlaybackController;)Ljava/lang/Boolean;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->spinnerOff:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1002(Ltv/emby/embyatv/playback/PlaybackController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 58
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->spinnerOff:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->switchToDirect()V

    return-void
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    return-object p0
.end method

.method static synthetic access$1202(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/api/StreamInfo;)Ltv/emby/embyatv/api/StreamInfo;
    .locals 0

    .line 58
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    return-object p1
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/playback/PlaybackController;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSubtitleStreams:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1302(Ltv/emby/embyatv/playback/PlaybackController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 58
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSubtitleStreams:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/playback/PlaybackController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->getExternalSubtitles(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1502(Ltv/emby/embyatv/playback/PlaybackController;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mStartPositionOffset:J

    return-wide p1
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    return-wide v0
.end method

.method static synthetic access$1602(Ltv/emby/embyatv/playback/PlaybackController;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    return-wide p1
.end method

.method static synthetic access$1702(Ltv/emby/embyatv/playback/PlaybackController;I)I
    .locals 0

    .line 58
    iput p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->cumSkipAmt:I

    return p1
.end method

.method static synthetic access$1800(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->startReportLoop()V

    return-void
.end method

.method static synthetic access$1900(Ltv/emby/embyatv/playback/PlaybackController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->updateProgress:Z

    return p0
.end method

.method static synthetic access$1902(Ltv/emby/embyatv/playback/PlaybackController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->updateProgress:Z

    return p1
.end method

.method static synthetic access$200(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Ltv/emby/embyatv/playback/PlaybackController;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->addCCStreamIfNeeded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Ltv/emby/embyatv/playback/PlaybackController;)I
    .locals 0

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getBestAudioTrack()I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentProgramEndTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Ltv/emby/embyatv/playback/PlaybackController;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentProgramEndTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentProgramStartTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Ltv/emby/embyatv/playback/PlaybackController;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentProgramStartTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getTimeShiftedProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2500(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->updateLiveStreamMediaInfo()V

    return-void
.end method

.method static synthetic access$2600(Ltv/emby/embyatv/playback/PlaybackController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->programUpdateInProgress:Z

    return p0
.end method

.method static synthetic access$2602(Ltv/emby/embyatv/playback/PlaybackController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->programUpdateInProgress:Z

    return p1
.end method

.method static synthetic access$2700(Ltv/emby/embyatv/playback/PlaybackController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressReportInProgress:Z

    return p0
.end method

.method static synthetic access$2702(Ltv/emby/embyatv/playback/PlaybackController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressReportInProgress:Z

    return p1
.end method

.method static synthetic access$2800(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    return-object p0
.end method

.method static synthetic access$2802(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;
    .locals 0

    .line 58
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    return-object p1
.end method

.method static synthetic access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    return p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    return-object p0
.end method

.method static synthetic access$3000(Ltv/emby/embyatv/playback/PlaybackController;)Lmediabrowser/apiinteraction/EmptyResponse;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

    return-object p0
.end method

.method static synthetic access$3100(Ltv/emby/embyatv/playback/PlaybackController;)Lmediabrowser/model/session/PlayMethod;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

    return-object p0
.end method

.method static synthetic access$3200(Ltv/emby/embyatv/playback/PlaybackController;)Lmediabrowser/model/session/TranscodingInfo;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mTranscodingInfo:Lmediabrowser/model/session/TranscodingInfo;

    return-object p0
.end method

.method static synthetic access$3202(Ltv/emby/embyatv/playback/PlaybackController;Lmediabrowser/model/session/TranscodingInfo;)Lmediabrowser/model/session/TranscodingInfo;
    .locals 0

    .line 58
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mTranscodingInfo:Lmediabrowser/model/session/TranscodingInfo;

    return-object p1
.end method

.method static synthetic access$3300(Ltv/emby/embyatv/playback/PlaybackController;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->updatePlaybackInfo(Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method static synthetic access$3400(Ltv/emby/embyatv/playback/PlaybackController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->nextItemReported:Z

    return p0
.end method

.method static synthetic access$3402(Ltv/emby/embyatv/playback/PlaybackController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->nextItemReported:Z

    return p1
.end method

.method static synthetic access$3500(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mNextItemThreshold:J

    return-wide v0
.end method

.method static synthetic access$3600(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getRealTimeProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3700()I
    .locals 1

    .line 58
    sget v0, Ltv/emby/embyatv/playback/PlaybackController;->REPORT_INTERVAL:I

    return v0
.end method

.method static synthetic access$3800(Ltv/emby/embyatv/playback/PlaybackController;)I
    .locals 0

    .line 58
    iget p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->liveRetries:I

    return p0
.end method

.method static synthetic access$3808(Ltv/emby/embyatv/playback/PlaybackController;)I
    .locals 2

    .line 58
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->liveRetries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->liveRetries:I

    return v0
.end method

.method static synthetic access$3902(Ltv/emby/embyatv/playback/PlaybackController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->liveErrorEncountered:Z

    return p1
.end method

.method static synthetic access$400(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$4000(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->stopReportLoop()V

    return-void
.end method

.method static synthetic access$4100(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->setSessionState(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V

    return-void
.end method

.method static synthetic access$4200(Ltv/emby/embyatv/playback/PlaybackController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackStarted:Z

    return p0
.end method

.method static synthetic access$4202(Ltv/emby/embyatv/playback/PlaybackController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackStarted:Z

    return p1
.end method

.method static synthetic access$4300(Ltv/emby/embyatv/playback/PlaybackController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->stillWatchingActive:Z

    return p0
.end method

.method static synthetic access$4400(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->lastStillWatchingCheck:J

    return-wide v0
.end method

.method static synthetic access$4502(Ltv/emby/embyatv/playback/PlaybackController;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentTranscodeStartTime:J

    return-wide p1
.end method

.method static synthetic access$4600(Ltv/emby/embyatv/playback/PlaybackController;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->setLastZoomMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Ltv/emby/embyatv/playback/PlaybackController;)I
    .locals 0

    .line 58
    iget p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultSubIndex:I

    return p0
.end method

.method static synthetic access$4702(Ltv/emby/embyatv/playback/PlaybackController;I)I
    .locals 0

    .line 58
    iput p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultSubIndex:I

    return p1
.end method

.method static synthetic access$4800(Ltv/emby/embyatv/playback/PlaybackController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->burningSubs:Z

    return p0
.end method

.method static synthetic access$4900(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mStartPosition:J

    return-wide v0
.end method

.method static synthetic access$4902(Ltv/emby/embyatv/playback/PlaybackController;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mStartPosition:J

    return-wide p1
.end method

.method static synthetic access$500(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/VideoOptions;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    return-object p0
.end method

.method static synthetic access$5000(Ltv/emby/embyatv/playback/PlaybackController;J)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/PlaybackController;->delayedSeek(J)V

    return-void
.end method

.method static synthetic access$502(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/api/VideoOptions;)Ltv/emby/embyatv/api/VideoOptions;
    .locals 0

    .line 58
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    return-object p1
.end method

.method static synthetic access$5100(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->lastProgramUpdateAttempt:J

    return-wide v0
.end method

.method static synthetic access$5202(Ltv/emby/embyatv/playback/PlaybackController;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$5300(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->itemComplete()V

    return-void
.end method

.method static synthetic access$600(Ltv/emby/embyatv/playback/PlaybackController;Lmediabrowser/model/dto/BaseItemDto;JLtv/emby/embyatv/api/StreamInfo;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/playback/PlaybackController;->startItem(Lmediabrowser/model/dto/BaseItemDto;JLtv/emby/embyatv/api/StreamInfo;)V

    return-void
.end method

.method static synthetic access$700(Ltv/emby/embyatv/playback/PlaybackController;Ljava/lang/Exception;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->handlePlaybackInfoError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$800(Ltv/emby/embyatv/playback/PlaybackController;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackStartTime:J

    return-wide v0
.end method

.method static synthetic access$802(Ltv/emby/embyatv/playback/PlaybackController;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackStartTime:J

    return-wide p1
.end method

.method static synthetic access$900(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSpinner:Landroid/view/View;

    return-object p0
.end method

.method private addCCStreamIfNeeded()Z
    .locals 6

    .line 1469
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isNativeMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_live_cc"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "InProgress"

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ts"

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mpegts"

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCCTrackInfo()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1473
    new-instance v2, Lmediabrowser/model/entities/MediaStream;

    invoke-direct {v2}, Lmediabrowser/model/entities/MediaStream;-><init>()V

    .line 1474
    sget-object v4, Lmediabrowser/model/entities/MediaStreamType;->Subtitle:Lmediabrowser/model/entities/MediaStreamType;

    invoke-virtual {v2, v4}, Lmediabrowser/model/entities/MediaStream;->setType(Lmediabrowser/model/entities/MediaStreamType;)V

    .line 1475
    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v2, v4}, Lmediabrowser/model/entities/MediaStream;->setDeliveryMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V

    const-string v4, "CC"

    .line 1476
    invoke-virtual {v2, v4}, Lmediabrowser/model/entities/MediaStream;->setDisplayTitle(Ljava/lang/String;)V

    .line 1477
    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmediabrowser/model/entities/MediaStream;->setLanguage(Ljava/lang/String;)V

    const/16 v4, 0x63

    .line 1478
    invoke-virtual {v2, v4}, Lmediabrowser/model/entities/MediaStream;->setIndex(I)V

    .line 1479
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    new-instance v2, Ltv/emby/embyatv/api/SubtitleStreamInfo;

    invoke-direct {v2}, Ltv/emby/embyatv/api/SubtitleStreamInfo;-><init>()V

    .line 1482
    invoke-virtual {v2, v4}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setIndex(I)V

    .line 1483
    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v2, v4}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setDeliveryMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V

    const-string v4, "CC"

    .line 1484
    invoke-virtual {v2, v4}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setDisplayTitle(Ljava/lang/String;)V

    .line 1485
    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setLanguage(Ljava/lang/String;)V

    .line 1486
    iget-object v4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSubtitleStreams:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1487
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/playback/VideoManager;->setAddedCCTrack(Z)V

    .line 1488
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v4, "**** Found CC track of type %s and added to media streams"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    aput-object v0, v5, v1

    invoke-interface {v2, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    return v1
.end method

.method private addErrorTranscodeReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 751
    sget-object v0, Ltv/emby/embyatv/util/Utils;->transcodeReasonKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Ltv/emby/embyatv/util/Utils;->transcodeReasonKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 752
    sget-object v1, Ltv/emby/embyatv/util/Utils;->transcodeReasonKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 753
    sget-object v0, Ltv/emby/embyatv/util/Utils;->transcodeReasonKey:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ltv/emby/embyatv/util/Utils;->transcodeReasonKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DirectPlayError,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 755
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ltv/emby/embyatv/util/Utils;->transcodeReasonKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DirectPlayError"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private bestGuessAudioTrack(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/lang/Integer;
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    .line 271
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v2

    sget-object v3, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v2

    sget-object v3, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private delayedSeek(J)V
    .locals 2

    .line 1380
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$20;

    invoke-direct {v1, p0, p1, p2}, Ltv/emby/embyatv/playback/PlaybackController$20;-><init>(Ltv/emby/embyatv/playback/PlaybackController;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getBestAudioTrack()I
    .locals 4

    .line 1243
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    .line 1244
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v2

    sget-object v3, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NAR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1245
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getDefaultAudioIndex(Ltv/emby/embyatv/api/StreamInfo;)I
    .locals 1

    .line 778
    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStreamIndex()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private getExternalSubtitles(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/api/SubtitleStreamInfo;

    .line 228
    invoke-virtual {v1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v2

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-ne v2, v3, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getRealTimeProgress()J
    .locals 4

    .line 1310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentProgramStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTimeShiftedProgress()J
    .locals 6

    .line 1314
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v0, v1}, Lmediabrowser/model/session/PlayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentTranscodeStartTime:J

    iget-wide v4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentProgramStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getRealTimeProgress()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private handlePlaybackInfoError(Ljava/lang/Exception;)V
    .locals 3

    .line 632
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error getting playback stream info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 633
    instance-of v0, p1, Ltv/emby/embyatv/api/PlaybackException;

    if-eqz v0, :cond_0

    .line 634
    check-cast p1, Ltv/emby/embyatv/api/PlaybackException;

    .line 635
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/api/PlaybackException;->getErrorCode()Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/PlaybackErrorCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 643
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    const v0, 0x7f10063b

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 640
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10063d

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10063e

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 647
    :cond_0
    :goto_0
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz p1, :cond_1

    .line 648
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    const-string v0, "Unable to tune to channel at this time."

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 650
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isHDAudioTrack(Lmediabrowser/model/entities/MediaStream;)Z
    .locals 2

    const-string v0, "dca"

    .line 810
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dts"

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "DTS-HD MA"

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "truehd"

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private itemComplete()V
    .locals 6

    .line 1425
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iput-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 1426
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/PlaybackController;->setSessionState(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V

    .line 1427
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->stopReportLoop()V

    .line 1428
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1429
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v2

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Ltv/emby/embyatv/util/Utils;->ReportStopped(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 1430
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->exoErrorEncountered:Z

    .line 1431
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->liveErrorEncountered:Z

    .line 1432
    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    .line 1433
    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->liveRetries:I

    .line 1434
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->stopPlayback()V

    const/4 v1, 0x0

    .line 1435
    iput-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    .line 1436
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->hasNextItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1437
    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$session$RepeatMode:[I

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRepeatMode:Lmediabrowser/model/session/RepeatMode;

    invoke-virtual {v2}, Lmediabrowser/model/session/RepeatMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1439
    :pswitch_0
    iget v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    goto :goto_0

    .line 1442
    :pswitch_1
    iget v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    .line 1443
    iget v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_0

    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    .line 1447
    :cond_0
    :goto_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v3, "Moving to next queue item. Index: %n Repeat: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRepeatMode:Lmediabrowser/model/session/RepeatMode;

    aput-object v5, v4, v2

    invoke-interface {v1, v3, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1448
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->spinnerOff:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 1449
    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    goto :goto_1

    .line 1452
    :cond_1
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "Last item completed. Finishing activity."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1453
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->isNativeMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1454
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->finish()V

    goto :goto_1

    .line 1457
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$21;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$21;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private play(JI)V
    .locals 7

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 332
    invoke-virtual/range {v0 .. v6}, Ltv/emby/embyatv/playback/PlaybackController;->play(JIIII)V

    return-void
.end method

.method private playInternal(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Long;Ltv/emby/embyatv/api/VideoOptions;)V
    .locals 8

    const/4 v0, 0x0

    .line 604
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackStarted:Z

    .line 605
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v6

    .line 606
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1, p1}, Ltv/emby/embyatv/TvApp;->setCurrentPlayingItem(Lmediabrowser/model/dto/BaseItemDto;)V

    .line 607
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/playback/PlaybackController;->updateTvProgramInfo(Z)V

    .line 609
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/livetv/TvManager;->setLastLiveTvChannel(Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v3, "**** Getting playback info for item %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-interface {v1, v3, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x2710

    mul-long v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v7, Ltv/emby/embyatv/playback/PlaybackController$5;

    invoke-direct {v7, p0, p3, p1, p2}, Ltv/emby/embyatv/playback/PlaybackController$5;-><init>(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/api/VideoOptions;Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Long;)V

    move-object v3, p3

    invoke-virtual/range {v2 .. v7}, Ltv/emby/embyatv/api/PlaybackManager;->getVideoStreamInfo(Ltv/emby/embyatv/api/VideoOptions;Ljava/lang/Long;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private processPlayRequest(JIIIILjava/lang/String;)V
    .locals 8

    .line 411
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getRegistrationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const v3, 0x7f100660

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 416
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Play called with pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " and sub index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->stopThemeSong()V

    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    .line 420
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Negative start requested - adjusting to zero"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide p1, v0

    .line 424
    :cond_1
    sget-object v3, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$tv$emby$embyatv$playback$PlaybackController$PlaybackState:[I

    iget-object v4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-virtual {v4}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_c

    .line 447
    :pswitch_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    .line 448
    iput-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->lastProgressPosition:J

    const-string v0, "YtTrailer"

    .line 451
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    invoke-static {v3, p1}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->PlayYtItem(Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;)V

    .line 453
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->finish()V

    goto/16 :goto_c

    .line 456
    :cond_2
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    if-ne v0, v1, :cond_4

    .line 457
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->hasNextItem()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 458
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "Episode Missing"

    .line 459
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "This episode is missing from your library.  Would you like to skip it and continue to the next one?"

    .line 460
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 461
    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100617

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ltv/emby/embyatv/playback/PlaybackController$3;

    invoke-direct {p3, p0}, Ltv/emby/embyatv/playback/PlaybackController$3;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 467
    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100526

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ltv/emby/embyatv/playback/PlaybackController$2;

    invoke-direct {p3, p0}, Ltv/emby/embyatv/playback/PlaybackController$2;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 477
    :cond_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "Episode Missing"

    .line 478
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "This episode is missing from your library.  Playback will stop."

    .line 479
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 480
    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f10052f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ltv/emby/embyatv/playback/PlaybackController$4;

    invoke-direct {p3, p0}, Ltv/emby/embyatv/playback/PlaybackController$4;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 487
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 494
    :cond_4
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getPlayAccess()Lmediabrowser/model/library/PlayAccess;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/library/PlayAccess;->Full:Lmediabrowser/model/library/PlayAccess;

    if-eq v0, v1, :cond_6

    .line 495
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getIsPlaceHolder()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    const p2, 0x7f100625

    :goto_0
    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    const p2, 0x7f100626

    goto :goto_0

    .line 496
    :goto_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-static {p2, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 500
    :cond_6
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvChannel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    .line 501
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    iget-boolean v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/VideoManager;->setIsLiveTv(Z)V

    .line 502
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz v0, :cond_7

    .line 503
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Live TV.  Direct Stream: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Ltv/emby/embyatv/playback/PlaybackController;->directStreamLiveTv:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v5}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    :cond_7
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->startSpinner()V

    .line 507
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->exoErrorEncountered:Z

    if-eqz v0, :cond_8

    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    if-le v0, v4, :cond_8

    iput-boolean v4, p0, Ltv/emby/embyatv/playback/PlaybackController;->downmixAudio:Z

    :cond_8
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ltz p4, :cond_9

    .line 509
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p4, :cond_9

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmediabrowser/model/dto/MediaSourceInfo;

    goto :goto_2

    :cond_9
    move-object p4, v1

    :goto_2
    if-eqz p4, :cond_a

    .line 510
    invoke-virtual {p4}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_a
    move-object p4, v1

    :goto_3
    if-nez p4, :cond_b

    if-ltz p3, :cond_b

    .line 511
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object p4

    .line 513
    :cond_b
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isX86()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 514
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v5

    const-string v6, "**** x86 CPU - excluding MPV"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    :cond_c
    iput-boolean v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->useMpv:Z

    .line 518
    new-instance v5, Ltv/emby/embyatv/api/VideoOptions;

    invoke-direct {v5}, Ltv/emby/embyatv/api/VideoOptions;-><init>()V

    .line 519
    iget-object v6, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/api/VideoOptions;->setDeviceId(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/api/VideoOptions;->setItemId(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/api/VideoOptions;->setItemType(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/api/VideoOptions;->setMediaSources(Ljava/util/ArrayList;)V

    .line 523
    iget v6, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentMaxBitrate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/api/VideoOptions;->setMaxBitrate(Ljava/lang/Integer;)V

    .line 524
    invoke-virtual {v5, p7}, Ltv/emby/embyatv/api/VideoOptions;->setCurrentPlaySessionId(Ljava/lang/String;)V

    .line 525
    iget p7, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    if-gtz p7, :cond_d

    iget-boolean p7, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz p7, :cond_f

    iget-boolean p7, p0, Ltv/emby/embyatv/playback/PlaybackController;->directStreamLiveTv:Z

    if-nez p7, :cond_f

    .line 526
    :cond_d
    iget-object p7, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p7}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disabling direct play/stream due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    if-lez v7, :cond_e

    const-string v7, "previous error"

    goto :goto_4

    :cond_e
    const-string v7, "disabled option"

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {p7, v6, v7}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    invoke-virtual {v5, v2}, Ltv/emby/embyatv/api/VideoOptions;->setEnableDirectStream(Z)V

    .line 528
    invoke-virtual {v5, v2}, Ltv/emby/embyatv/api/VideoOptions;->setEnableDirectPlay(Z)V

    .line 531
    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {v5, p7}, Ltv/emby/embyatv/api/VideoOptions;->setMaxAudioChannels(Ljava/lang/Integer;)V

    if-ltz p3, :cond_10

    .line 532
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {v5, p6}, Ltv/emby/embyatv/api/VideoOptions;->setSubtitleStreamIndex(Ljava/lang/Integer;)V

    goto :goto_5

    :cond_10
    const/4 p7, -0x1

    if-lt p6, p7, :cond_11

    .line 533
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {v5, p6}, Ltv/emby/embyatv/api/VideoOptions;->setSubtitleStreamIndex(Ljava/lang/Integer;)V

    :cond_11
    :goto_5
    if-ltz p5, :cond_12

    .line 534
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_12
    invoke-virtual {v5, v1}, Ltv/emby/embyatv/api/VideoOptions;->setAudioStreamIndex(Ljava/lang/Integer;)V

    .line 535
    invoke-virtual {v5, p4}, Ltv/emby/embyatv/api/VideoOptions;->setMediaSourceId(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p4

    if-eqz p4, :cond_13

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Ltv/emby/embyatv/api/VideoOptions;->setLiveStreamId(Ljava/lang/String;)V

    .line 537
    :cond_13
    invoke-static {v4}, Ltv/emby/embyatv/util/ProfileHelper;->getBaseProfile(Z)Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object p4

    .line 538
    iget-object p5, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p5}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p5

    invoke-virtual {p5}, Ltv/emby/embyatv/playback/MediaManager;->getSupportedAudio()Ljava/lang/String;

    move-result-object p5

    .line 539
    iget-boolean p6, p0, Ltv/emby/embyatv/playback/PlaybackController;->useMpv:Z

    if-eqz p6, :cond_14

    .line 540
    iget-boolean p5, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    invoke-static {p4, p5}, Ltv/emby/embyatv/util/ProfileHelper;->setMpvOptions(Lmediabrowser/model/dlna/DeviceProfile;Z)V

    goto/16 :goto_8

    :cond_14
    const-string p6, "dtshd"

    .line 542
    invoke-virtual {p5, p6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_15

    iget-object p6, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p6}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p6

    const-string p7, "pref_allow_dts_hd"

    invoke-interface {p6, p7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p6

    if-eqz p6, :cond_15

    const/4 p6, 0x1

    goto :goto_6

    :cond_15
    const/4 p6, 0x0

    :goto_6
    iput-boolean p6, p0, Ltv/emby/embyatv/playback/PlaybackController;->supportsDtsHd:Z

    .line 543
    iget-object p6, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p6}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p6

    const-string p7, "*** Using extended Exoplayer profile options"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p6, p7, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    invoke-static {p4, p5, v4}, Ltv/emby/embyatv/util/ProfileHelper;->addExtendedStreamingAudio(Lmediabrowser/model/dlna/DeviceProfile;Ljava/lang/String;Z)V

    .line 546
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->downMixAudio()Z

    move-result p5

    if-nez p5, :cond_16

    iget-object p5, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p5}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p5

    invoke-virtual {p5}, Ltv/emby/embyatv/playback/MediaManager;->getMaxAudioChannels()I

    move-result p5

    const/4 p6, 0x3

    if-ge p5, p6, :cond_18

    :cond_16
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTvStick()Z

    move-result p5

    if-nez p5, :cond_18

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTvStick4k()Z

    move-result p5

    if-nez p5, :cond_18

    iget-boolean p5, p0, Ltv/emby/embyatv/playback/PlaybackController;->exoErrorEncountered:Z

    if-eqz p5, :cond_17

    iget p5, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    if-le p5, v4, :cond_17

    const-string p5, "mp1"

    goto :goto_7

    :cond_17
    const-string p5, ",ac3,eac3,dca,dts,dtshd,flac,aac_latm,alac,mp1,truehd"

    goto :goto_7

    :cond_18
    iget-object p5, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p5}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p5

    invoke-virtual {p5}, Ltv/emby/embyatv/playback/MediaManager;->getSupportedAudio()Ljava/lang/String;

    move-result-object p5

    .line 547
    :goto_7
    iget p6, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    if-le p6, v4, :cond_19

    const/4 v0, 0x2

    .line 548
    :cond_19
    iget-boolean p6, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isInProgressRecording()Z

    move-result p7

    invoke-static {p4, p6, p7, p5, v0}, Ltv/emby/embyatv/util/ProfileHelper;->setExoOptions(Lmediabrowser/model/dlna/DeviceProfile;ZZLjava/lang/String;I)V

    .line 550
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Log;->setLogLevel(I)V

    .line 552
    :goto_8
    invoke-virtual {v5, p4}, Ltv/emby/embyatv/api/VideoOptions;->setProfile(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 554
    iget-object p4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Max bitrate is: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentMaxBitrate:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    new-array p6, v2, [Ljava/lang/Object;

    invoke-interface {p4, p5, p6}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    iput p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultSubIndex:I

    if-ltz p3, :cond_1a

    const/4 p3, 0x1

    goto :goto_9

    :cond_1a
    const/4 p3, 0x0

    .line 557
    :goto_9
    iput-boolean p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->burningSubs:Z

    .line 558
    iget-boolean p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->burningSubs:Z

    if-eqz p3, :cond_1b

    iget-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p3

    const-string p4, "*** Subs are being burned in"

    new-array p5, v2, [Ljava/lang/Object;

    invoke-interface {p3, p4, p5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    :cond_1b
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p0, p3, p4, v5}, Ltv/emby/embyatv/playback/PlaybackController;->playInternal(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Long;Ltv/emby/embyatv/api/VideoOptions;)V

    .line 561
    sget-object p3, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->BUFFERING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iput-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 562
    iget-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    if-eqz p3, :cond_1c

    .line 563
    iget-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 564
    iget-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p3, p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setCurrentTime(J)V

    .line 567
    :cond_1c
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x2710

    div-long/2addr p1, p3

    goto :goto_a

    :cond_1d
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isInProgressRecording()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    goto :goto_a

    :cond_1e
    const-wide/16 p1, -0x1

    .line 568
    :goto_a
    iget-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {p3, p1, p2}, Ltv/emby/embyatv/playback/VideoManager;->setMetaDuration(J)V

    .line 569
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isInProgressRecording()Z

    move-result p3

    if-eqz p3, :cond_1f

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object p3

    invoke-static {p3}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    iput-wide p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentProgramStartTime:J

    .line 571
    :cond_1f
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->hasNextItem()Z

    move-result p3

    const-wide p4, 0x7fffffffffffffffL

    if-eqz p3, :cond_22

    iget-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p3

    const-string p6, "pref_show_up_next"

    invoke-interface {p3, p6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_22

    const-wide/32 p6, 0x927c0

    cmp-long p3, p1, p6

    if-lez p3, :cond_21

    .line 575
    iput-boolean v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->nextItemReported:Z

    const-string p3, "Episode"

    .line 576
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_20

    const-wide/32 p3, 0x5265c0

    cmp-long p3, p1, p3

    if-lez p3, :cond_20

    const-wide/32 p3, 0x2bf20

    sub-long/2addr p1, p3

    .line 578
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mNextItemThreshold:J

    goto :goto_b

    :cond_20
    const-wide/32 p3, 0xc350

    sub-long/2addr p1, p3

    .line 581
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mNextItemThreshold:J

    .line 583
    :goto_b
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Next item threshold set to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mNextItemThreshold:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 585
    :cond_21
    iput-wide p4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mNextItemThreshold:J

    goto :goto_c

    .line 588
    :cond_22
    iput-wide p4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mNextItemThreshold:J

    goto :goto_c

    .line 430
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/VideoManager;->play()V

    .line 431
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPauseTimerCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    sget-object p1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 433
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->setSessionState(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V

    .line 434
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    if-eqz p1, :cond_23

    .line 435
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 436
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->togglePauseShield(Z)V

    .line 437
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    sget p2, Ltv/emby/embyatv/ui/ImageButton;->STATE_SECONDARY:I

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setPlayPauseActionState(I)V

    .line 438
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/VideoManager;->getDuration()J

    move-result-wide p2

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentPosition()J

    move-result-wide p4

    sub-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateEndTime(J)V

    .line 440
    :cond_23
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->startReportLoop()V

    :goto_c
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setLastZoomMode(Ljava/lang/String;)V
    .locals 2

    .line 760
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$7;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$7;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {v0, p1, v1}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private setSessionState(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V
    .locals 4

    .line 1419
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 1420
    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-wide v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1421
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method private setupCallbacks()V
    .locals 2

    .line 1502
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$22;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$22;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/VideoManager;->setOnErrorListener(Ltv/emby/embyatv/playback/PlaybackListener;)V

    .line 1521
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$23;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$23;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/VideoManager;->setOnPreparedListener(Ltv/emby/embyatv/playback/PlaybackListener;)V

    .line 1609
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$24;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$24;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/VideoManager;->setOnProgressListener(Ltv/emby/embyatv/playback/PlaybackListener;)V

    .line 1660
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$25;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$25;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/VideoManager;->setOnCompletionListener(Ltv/emby/embyatv/playback/PlaybackListener;)V

    return-void
.end method

.method private startItem(Lmediabrowser/model/dto/BaseItemDto;JLtv/emby/embyatv/api/StreamInfo;)V
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    .line 656
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    if-eqz v0, :cond_13

    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 658
    :cond_0
    iput-object v4, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    const-wide/16 v5, 0x2710

    mul-long v5, v5, v2

    .line 659
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v0, 0x96

    .line 662
    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v6

    invoke-virtual {v1, v6}, Ltv/emby/embyatv/playback/PlaybackController;->setPlaybackMethod(Lmediabrowser/model/session/PlayMethod;)V

    .line 664
    iget-object v6, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    iget-boolean v7, v1, Ltv/emby/embyatv/playback/PlaybackController;->useMpv:Z

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/playback/VideoManager;->setNativeMode(Z)V

    .line 665
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v6

    iget-boolean v7, v1, Ltv/emby/embyatv/playback/PlaybackController;->useMpv:Z

    if-eqz v7, :cond_1

    const-string v7, "Playing back in Mpv"

    goto :goto_0

    :cond_1
    const-string v7, "Playing back in native mode."

    :goto_0
    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v10}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    iget-boolean v6, v1, Ltv/emby/embyatv/playback/PlaybackController;->downmixAudio:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_2

    .line 667
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v6

    const-string v10, "Setting max audio to 2-channels"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-interface {v6, v10, v11}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    iget-object v6, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ltv/emby/embyatv/api/StreamInfo;->setMaxAudioChannels(Ljava/lang/Integer;)V

    .line 671
    :cond_2
    iget-object v6, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v10

    invoke-virtual {v6, v10}, Ltv/emby/embyatv/playback/VideoManager;->setHls(Z)V

    .line 674
    iget-boolean v6, v1, Ltv/emby/embyatv/playback/PlaybackController;->refreshRateSwitchingEnabled:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v1, Ltv/emby/embyatv/playback/PlaybackController;->ignoreAutoSwitch:Z

    if-nez v6, :cond_3

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 675
    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v6

    invoke-static {v6}, Ltv/emby/embyatv/display/DisplayHelper;->setBestRefreshRate(Lmediabrowser/model/entities/MediaStream;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v0, 0x1388

    const/16 v6, 0x1388

    goto :goto_1

    :cond_3
    const/16 v6, 0x96

    .line 677
    :goto_1
    iput-boolean v9, v1, Ltv/emby/embyatv/playback/PlaybackController;->ignoreAutoSwitch:Z

    .line 680
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getApiUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v10}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v10

    invoke-virtual {v10}, Lmediabrowser/apiinteraction/ApiClient;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v0, v10}, Ltv/emby/embyatv/api/StreamInfo;->GetSubtitleProfiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mSubtitleStreams:Ljava/util/List;

    .line 682
    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 684
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f1006cc

    invoke-static {v0, v2}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 685
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "getMediaUrl returned null.  Cannot play"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->finish()V

    return-void

    .line 690
    :cond_4
    iget-boolean v10, v1, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz v10, :cond_5

    iget-object v10, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v10}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "pref_live_copy"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    iget v10, v1, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    if-le v10, v8, :cond_7

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&AllowVideoStreamCopy=false"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    :cond_7
    iget-boolean v10, v1, Ltv/emby/embyatv/playback/PlaybackController;->exoErrorEncountered:Z

    if-eqz v10, :cond_8

    .line 693
    invoke-direct {v1, v0}, Ltv/emby/embyatv/playback/PlaybackController;->addErrorTranscodeReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v10, v0

    .line 695
    invoke-static {v10}, Ltv/emby/embyatv/util/Utils;->getTranscodeReasons(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->transcodeReasons:Ljava/util/List;

    .line 698
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->isNativeMode()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v7, :cond_a

    .line 699
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ac3"

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "truehd"

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 700
    :cond_a
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v7, "Setting compatible audio mode..."

    new-array v11, v9, [Ljava/lang/Object;

    invoke-interface {v0, v7, v11}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    :cond_b
    :try_start_0
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    iget-boolean v7, v1, Ltv/emby/embyatv/playback/PlaybackController;->supportsDtsHd:Z

    if-eqz v7, :cond_d

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v7

    sget-object v11, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-eq v7, v11, :cond_d

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_d

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v11, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v11}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v11, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v11}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v11

    goto :goto_2

    :cond_c
    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v11

    :goto_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmediabrowser/model/entities/MediaStream;

    invoke-direct {v1, v7}, Ltv/emby/embyatv/playback/PlaybackController;->isHDAudioTrack(Lmediabrowser/model/entities/MediaStream;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_d
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v0, v8}, Ltv/emby/embyatv/playback/VideoManager;->setForceDtsHd(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 707
    iget-object v7, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v7

    const-string v8, "Bad default audio stream index"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v0, v11}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 708
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0, v9}, Ltv/emby/embyatv/playback/VideoManager;->setForceDtsHd(Z)V

    .line 711
    :goto_4
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    iget-object v7, v1, Ltv/emby/embyatv/playback/PlaybackController;->mSubtitleStreams:Ljava/util/List;

    invoke-direct {v1, v7}, Ltv/emby/embyatv/playback/PlaybackController;->getExternalSubtitles(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v8

    invoke-virtual {v0, v10, v7, v8}, Ltv/emby/embyatv/playback/VideoManager;->setVideoPaths(Ljava/lang/String;Ljava/util/List;Lmediabrowser/model/dto/MediaSourceInfo;)V

    .line 714
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    new-instance v7, Ltv/emby/embyatv/playback/PlaybackController$6;

    invoke-direct {v7, v1}, Ltv/emby/embyatv/playback/PlaybackController$6;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    int-to-long v10, v6

    invoke-virtual {v0, v7, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    iput-wide v2, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    iput-wide v2, v1, Ltv/emby/embyatv/playback/PlaybackController;->mStartPosition:J

    .line 729
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v6, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v0, v6}, Lmediabrowser/model/session/PlayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ts"

    iget-object v6, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v6}, Ltv/emby/embyatv/api/StreamInfo;->getContainer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    const-wide/16 v2, 0x0

    :goto_5
    iput-wide v2, v1, Ltv/emby/embyatv/playback/PlaybackController;->mStartPositionOffset:J

    .line 731
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    :cond_f
    invoke-direct {v1, v4}, Ltv/emby/embyatv/playback/PlaybackController;->getDefaultAudioIndex(Ltv/emby/embyatv/api/StreamInfo;)I

    move-result v0

    :goto_6
    iput v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultAudioIndex:I

    .line 732
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    iget v2, v1, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultAudioIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/api/VideoOptions;->setAudioStreamIndex(Ljava/lang/Integer;)V

    .line 733
    :cond_10
    iget-boolean v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->burningSubs:Z

    if-nez v0, :cond_11

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :cond_11
    iget v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultSubIndex:I

    :goto_7
    iput v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultSubIndex:I

    .line 735
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/TvApp;->setLastPlayedItem(Lmediabrowser/model/dto/BaseItemDto;)V

    .line 736
    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/TvApp;->setLastPlayback(Ljava/util/Calendar;)V

    .line 737
    iget-boolean v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->isRestart:Z

    if-nez v0, :cond_12

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v13

    iget-object v0, v1, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v15

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v15}, Ltv/emby/embyatv/util/Utils;->ReportStart(Lmediabrowser/model/dto/BaseItemDto;JLmediabrowser/model/dto/MediaSourceInfo;Ljava/lang/String;Lmediabrowser/model/session/PlayMethod;)V

    .line 738
    :cond_12
    iput-boolean v9, v1, Ltv/emby/embyatv/playback/PlaybackController;->isRestart:Z

    return-void

    :cond_13
    :goto_8
    return-void
.end method

.method private startReportLoop()V
    .locals 9

    const/4 v0, 0x1

    .line 1326
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressReportInProgress:Z

    .line 1327
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    mul-long v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v4

    iget v5, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "TimeUpdate"

    iget-object v8, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-static/range {v1 .. v8}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 1328
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->showPlayerStats()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v2, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-eq v1, v2, :cond_0

    .line 1329
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->createStats(Lmediabrowser/model/dto/MediaSourceInfo;Ltv/emby/embyatv/api/StreamInfo;)V

    .line 1330
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showStats(Z)V

    .line 1333
    :cond_0
    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController$19;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/PlaybackController$19;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mReportLoop:Ljava/lang/Runnable;

    .line 1369
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mReportLoop:Ljava/lang/Runnable;

    sget v2, Ltv/emby/embyatv/playback/PlaybackController;->REPORT_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopReportLoop()V
    .locals 2

    .line 1373
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mReportLoop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mReportLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private switchToDirect()V
    .locals 4

    .line 814
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Attempting to switch live TV to direct mode"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 815
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->directStreamLiveTv:Z

    .line 816
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    const-wide/16 v0, 0x0

    .line 817
    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    return-void
.end method

.method private updateLiveStreamMediaInfo()V
    .locals 3

    .line 1218
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-nez v0, :cond_0

    return-void

    .line 1220
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/playback/PlaybackController$16;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/PlaybackController$16;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveStreamMediaInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private updatePlaybackInfo(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 1676
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$26;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/playback/PlaybackController$26;-><init>(Ltv/emby/embyatv/playback/PlaybackController;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetCurrentSessionAsync(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method public canSeek()Z
    .locals 4

    .line 193
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearStreamInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1058
    iput-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    return-void
.end method

.method public getAudioDelay()J
    .locals 2

    .line 264
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getAudioDelay()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getAudioStreamIndex()Ljava/lang/Integer;
    .locals 2

    .line 213
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getAudioTrack()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getAudioTrack()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/PlaybackController;->bestGuessAudioTrack(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBufferAmount()I
    .locals 1

    const/16 v0, 0x384

    return v0
.end method

.method public getCurrentItemBitrate()I
    .locals 2

    .line 162
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentMaxBitrateStr()Ljava/lang/String;
    .locals 3

    .line 167
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentMaxBitrate:I

    const v1, 0xf4240

    if-le v0, v1, :cond_0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Mb/s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Kb/s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Auto"

    return-object v0
.end method

.method public getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;
    .locals 2

    .line 191
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/MediaSourceInfo;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1702
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    return-wide v0
.end method

.method public getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;
    .locals 1

    .line 192
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    return-object v0
.end method

.method public getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 2

    .line 189
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    iget v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLastStillWatchingCheck()J
    .locals 2

    .line 1736
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->lastStillWatchingCheck:J

    return-wide v0
.end method

.method public getNextItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 2

    .line 249
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->hasNextItem()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$session$RepeatMode:[I

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRepeatMode:Lmediabrowser/model/session/RepeatMode;

    invoke-virtual {v1}, Lmediabrowser/model/session/RepeatMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 256
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    iget v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    return-object v0

    .line 254
    :pswitch_0
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    iget v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-object v0

    .line 252
    :pswitch_1
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlaybackMethod()Lmediabrowser/model/session/PlayMethod;
    .locals 1

    .line 180
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

    return-object v0
.end method

.method public getRepeatMode()Lmediabrowser/model/session/RepeatMode;
    .locals 1

    .line 204
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRepeatMode:Lmediabrowser/model/session/RepeatMode;

    return-object v0
.end method

.method public getSelectedSubtitleLanguage()Ljava/lang/String;
    .locals 3

    .line 197
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSubtitleStreams:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSubtitleStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 198
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getSubtitleStreamIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/PlaybackController;->getSubtitleStreamInfo(I)Ltv/emby/embyatv/api/SubtitleStreamInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Und"

    :goto_0
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->FirstToUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "off"

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartPositionOffset()J
    .locals 2

    .line 177
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mStartPositionOffset:J

    return-wide v0
.end method

.method public getSubtitleStreamIndex()I
    .locals 1

    .line 195
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSubtitleStreamInfo(I)Ltv/emby/embyatv/api/SubtitleStreamInfo;
    .locals 3

    .line 217
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSubtitleStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/api/SubtitleStreamInfo;

    .line 218
    invoke-virtual {v1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubtitleStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSubtitleStreams:Ljava/util/List;

    return-object v0
.end method

.method public getTranscodeReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->transcodeReasons:Ljava/util/List;

    return-object v0
.end method

.method public getTranscodingInfo()Lmediabrowser/model/session/TranscodingInfo;
    .locals 1

    .line 186
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mTranscodingInfo:Lmediabrowser/model/session/TranscodingInfo;

    return-object v0
.end method

.method public getZoomMode()I
    .locals 1

    .line 1714
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getZoomMode()I

    move-result v0

    return v0
.end method

.method public hasNextItem()Z
    .locals 3

    .line 247
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRepeatMode:Lmediabrowser/model/session/RepeatMode;

    sget-object v1, Lmediabrowser/model/session/RepeatMode;->RepeatNone:Lmediabrowser/model/session/RepeatMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public init(Ltv/emby/embyatv/playback/VideoManager;Landroid/view/View;)V
    .locals 0

    .line 137
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    .line 138
    iput-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mSpinner:Landroid/view/View;

    .line 139
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->getMaxBitrate()I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentMaxBitrate:I

    .line 140
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->directStreamLiveTv()Z

    move-result p1

    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->directStreamLiveTv:Z

    .line 141
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->getMaxAudioChannels()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_1

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->downMixAudio()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->downmixAudio:Z

    .line 142
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->setupCallbacks()V

    return-void
.end method

.method public isBurningSubs()Z
    .locals 1

    .line 876
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->burningSubs:Z

    return v0
.end method

.method public isHls()Z
    .locals 2

    .line 241
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdle()Z
    .locals 2

    .line 1710
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInProgressRecording()Z
    .locals 2

    .line 239
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Recording"

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InProgress"

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiveTv()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    return v0
.end method

.method public isNativeMode()Z
    .locals 1

    .line 243
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->isNativeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 1706
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 261
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStillWatchingActive()Z
    .locals 1

    .line 1744
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->stillWatchingActive:Z

    return v0
.end method

.method public isTranscoding()Z
    .locals 2

    .line 245
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 4

    .line 1091
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Next called."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    iput-boolean v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->exoErrorEncountered:Z

    .line 1093
    iput-boolean v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->liveErrorEncountered:Z

    .line 1094
    iput v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    .line 1095
    iput v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->liveRetries:I

    .line 1096
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->hasNextItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->stop()V

    .line 1098
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$session$RepeatMode:[I

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRepeatMode:Lmediabrowser/model/session/RepeatMode;

    invoke-virtual {v1}, Lmediabrowser/model/session/RepeatMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1100
    :pswitch_0
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    goto :goto_0

    .line 1103
    :pswitch_1
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    .line 1104
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iput v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    .line 1108
    :cond_0
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving to index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " total items."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->spinnerOff:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 1110
    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 10

    .line 992
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->canSeek()Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 995
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Switch playback mode?"

    .line 996
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Currently direct playing Live TV. Cannot pause. Would you like to switch to live seek mode?"

    .line 997
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100617

    new-instance v2, Ltv/emby/embyatv/playback/PlaybackController$12;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/PlaybackController$12;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    .line 998
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100526

    const/4 v2, 0x0

    .line 1004
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 1010
    :cond_0
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iput-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 1011
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->pause()V

    .line 1012
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/PlaybackController;->setSessionState(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V

    .line 1013
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 1015
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    sget v1, Ltv/emby/embyatv/ui/ImageButton;->STATE_PRIMARY:I

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setPlayPauseActionState(I)V

    .line 1016
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPauseTimerCallback:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1019
    :cond_1
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getTimeShiftedProgress()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    .line 1020
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v3

    const-wide/16 v4, 0x2710

    mul-long v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v5

    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Pause"

    iget-object v9, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-static/range {v2 .. v9}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public play(J)V
    .locals 7

    .line 308
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRequestedOptions:Ltv/emby/embyatv/api/VideoOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mMainItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    .line 310
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRequestedOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getMediaSourceId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRequestedOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRequestedOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Ltv/emby/embyatv/playback/PlaybackController;->play(JILjava/lang/String;II)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-wide v1, p1

    .line 312
    invoke-virtual/range {v0 .. v6}, Ltv/emby/embyatv/playback/PlaybackController;->play(JIIII)V

    :goto_0
    return-void
.end method

.method public play(JIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 363
    invoke-virtual/range {v0 .. v7}, Ltv/emby/embyatv/playback/PlaybackController;->play(JIIIILjava/lang/String;)V

    return-void
.end method

.method public play(JIIIILjava/lang/String;)V
    .locals 12

    move-object v9, p0

    .line 367
    iget-object v0, v9, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isTrial()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, v9, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Playback allowed in trial"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-direct/range {p0 .. p7}, Ltv/emby/embyatv/playback/PlaybackController;->processPlayRequest(JIIIILjava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, v9, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, v9, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Playback allowed via unlock purchase"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    invoke-direct/range {p0 .. p7}, Ltv/emby/embyatv/playback/PlaybackController;->processPlayRequest(JIIIILjava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, v9, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getAppValidator()Ltv/emby/embyatv/validation/AppValidator;

    move-result-object v10

    new-instance v11, Ltv/emby/embyatv/playback/PlaybackController$1;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ltv/emby/embyatv/playback/PlaybackController$1;-><init>(Ltv/emby/embyatv/playback/PlaybackController;JIIIILjava/lang/String;)V

    invoke-virtual {v10, v11}, Ltv/emby/embyatv/validation/AppValidator;->validateDevice(Lmediabrowser/apiinteraction/EmptyResponse;)V

    :goto_0
    return-void
.end method

.method public play(JILjava/lang/String;II)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 335
    invoke-virtual/range {v0 .. v7}, Ltv/emby/embyatv/playback/PlaybackController;->play(JILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public play(JILjava/lang/String;IILjava/lang/String;)V
    .locals 13

    move-object/from16 v0, p4

    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 345
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 346
    invoke-virtual {v4}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v8, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, -0x1

    :goto_1
    move-object v4, p0

    move-wide v5, p1

    move/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 352
    invoke-virtual/range {v4 .. v11}, Ltv/emby/embyatv/playback/PlaybackController;->play(JIIIILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v4, -0x1

    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 354
    invoke-virtual/range {v0 .. v7}, Ltv/emby/embyatv/playback/PlaybackController;->play(JIIIILjava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v9, -0x1

    move-object v5, p0

    move-wide v6, p1

    move/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    .line 358
    invoke-virtual/range {v5 .. v12}, Ltv/emby/embyatv/playback/PlaybackController;->play(JIIIILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public play(JLjava/lang/String;Ltv/emby/embyatv/api/VideoOptions;)V
    .locals 9

    .line 317
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, -0x1

    .line 320
    invoke-virtual {p4}, Ltv/emby/embyatv/api/VideoOptions;->getMediaSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p4}, Ltv/emby/embyatv/api/VideoOptions;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p4}, Ltv/emby/embyatv/api/VideoOptions;->getCurrentPlaySessionId()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v8}, Ltv/emby/embyatv/playback/PlaybackController;->play(JILjava/lang/String;IILjava/lang/String;)V

    const/4 p1, 0x0

    .line 322
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRequestedOptions:Ltv/emby/embyatv/api/VideoOptions;

    goto :goto_0

    .line 325
    :cond_0
    iput-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mMainItemId:Ljava/lang/String;

    .line 326
    iput-object p4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRequestedOptions:Ltv/emby/embyatv/api/VideoOptions;

    .line 327
    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    :goto_0
    return-void
.end method

.method public playPause()V
    .locals 10

    .line 1033
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$tv$emby$embyatv$playback$PlaybackController$PlaybackState:[I

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1038
    :pswitch_0
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getTimeShiftedProgress()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    .line 1039
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v3

    const-wide/16 v4, 0x2710

    mul-long v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v5

    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Unpause"

    iget-object v9, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-static/range {v2 .. v9}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_1

    .line 1035
    :pswitch_1
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->pause()V

    goto :goto_2

    .line 1042
    :cond_1
    :goto_1
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->stopReportLoop()V

    .line 1043
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public playerErrorEncountered()V
    .locals 11

    .line 283
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->isNativeMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->exoErrorEncountered:Z

    .line 284
    :cond_0
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    add-int/2addr v0, v1

    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    .line 286
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->playbackRetries:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 287
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Player error encountered - retrying"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    .line 289
    iget-wide v5, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isBurningSubs()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    const/4 v7, -0x1

    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getMediaSourceId()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/VideoOptions;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Ltv/emby/embyatv/playback/PlaybackController;->play(JILjava/lang/String;II)V

    goto :goto_1

    .line 292
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    const-string v1, "Too many errors. Giving up."

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Player error encountered - giving up"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->hasNextItem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->next()V

    goto :goto_1

    .line 297
    :cond_3
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->ERROR:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iput-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 298
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->stop()V

    .line 299
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->finish()V

    :goto_1
    return-void
.end method

.method public prev()V
    .locals 0

    return-void
.end method

.method public removePreviousQueueItems()V
    .locals 8

    .line 1400
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/TvApp;->setLastVideoQueueChange(J)V

    .line 1401
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-nez v0, :cond_7

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isVideoQueueModified()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1406
    :cond_0
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    if-gez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1407
    :goto_0
    iget v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    if-ge v1, v2, :cond_2

    .line 1408
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1412
    :cond_2
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v1}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 1413
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1414
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    iget-wide v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    long-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_6

    :cond_4
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    .line 1415
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-void

    .line 1402
    :cond_7
    :goto_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->clearVideoQueue()V

    return-void
.end method

.method public seek(J)V
    .locals 8

    .line 1119
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v3}, Ltv/emby/embyatv/api/StreamInfo;->getContainer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne v0, v1, :cond_1

    const-string v0, "mkv"

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v1}, Ltv/emby/embyatv/api/StreamInfo;->getContainer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ts"

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v1}, Ltv/emby/embyatv/api/StreamInfo;->getContainer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1123
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->stopPlayback()V

    .line 1124
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    const-wide/16 v5, 0x2710

    mul-long v5, v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v6

    new-instance v7, Ltv/emby/embyatv/playback/PlaybackController$14;

    invoke-direct {v7, p0, p1, p2}, Ltv/emby/embyatv/playback/PlaybackController$14;-><init>(Ltv/emby/embyatv/playback/PlaybackController;J)V

    invoke-virtual/range {v1 .. v7}, Ltv/emby/embyatv/api/PlaybackManager;->changeVideoStream(Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;Ltv/emby/embyatv/api/VideoOptions;Ljava/lang/Long;Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0, p1, p2}, Ltv/emby/embyatv/playback/VideoManager;->seekTo(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 1142
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    if-eqz v0, :cond_5

    .line 1143
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->getDuration()J

    move-result-wide v1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isInProgressRecording()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getTimeShiftedProgress()J

    move-result-wide p1

    :cond_3
    const/4 v3, 0x0

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateEndTime(J)V

    goto :goto_0

    .line 1146
    :cond_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string p2, "Unable to seek"

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setCurrentMaxBitrate(I)V
    .locals 2

    .line 153
    iput p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentMaxBitrate:I

    .line 154
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    .line 156
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    .line 157
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    :goto_0
    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    :cond_2
    return-void
.end method

.method public setIgnoreAutoSwitch(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->ignoreAutoSwitch:Z

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    .line 149
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    return-void
.end method

.method public setLastStillWatchingCheck(J)V
    .locals 0

    .line 1740
    iput-wide p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->lastStillWatchingCheck:J

    return-void
.end method

.method public setPlaybackMethod(Lmediabrowser/model/session/PlayMethod;)V
    .locals 0

    .line 184
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

    return-void
.end method

.method public setRepeatMode(Lmediabrowser/model/session/RepeatMode;)V
    .locals 1

    .line 206
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRepeatMode:Lmediabrowser/model/session/RepeatMode;

    if-eq v0, p1, :cond_0

    .line 207
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mRepeatMode:Lmediabrowser/model/session/RepeatMode;

    .line 208
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V

    :cond_0
    return-void
.end method

.method public setStillWatchingActive(Z)V
    .locals 0

    .line 1748
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->stillWatchingActive:Z

    return-void
.end method

.method public setZoom(I)V
    .locals 3

    .line 1718
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/VideoManager;->setZoom(I)V

    .line 1721
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/playback/PlaybackController$27;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/playback/PlaybackController$27;-><init>(Ltv/emby/embyatv/playback/PlaybackController;I)V

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public skip(I)V
    .locals 11

    .line 1169
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->spinnerOff:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1170
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    if-eq v0, v1, :cond_3

    .line 1172
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    int-to-long v7, p1

    add-long/2addr v0, v7

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 1175
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1, v6}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setProgressiveSkipping(Z)V

    .line 1176
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->playPause()V

    goto :goto_0

    .line 1177
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long p1, v7, v2

    if-lez p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v7, 0x2710

    div-long/2addr v2, v7

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 1178
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v7

    sub-long v2, v0, v4

    .line 1179
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1, v6}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setProgressiveSkipping(Z)V

    goto :goto_0

    :cond_2
    move-wide v2, v0

    .line 1181
    :goto_0
    invoke-virtual {p0, v2, v3}, Ltv/emby/embyatv/playback/PlaybackController;->seek(J)V

    .line 1182
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setCurrentTime(J)V

    goto/16 :goto_5

    .line 1184
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->skipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1185
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->stopReportLoop()V

    .line 1186
    iput-boolean v6, p0, Ltv/emby/embyatv/playback/PlaybackController;->updateProgress:Z

    .line 1187
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    :goto_1
    int-to-long v7, p1

    add-long/2addr v0, v7

    iput-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    .line 1188
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Skip amount requested was %s.  Calculated position is %s"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-wide v9, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-interface {v0, v1, v8}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1189
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    iput-wide v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    .line 1190
    :cond_5
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Duration reported as: %s current pos: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/VideoManager;->getDuration()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1191
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "InProgress"

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "InProgress"

    .line 1192
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentProgramStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc8

    sub-long/2addr v0, v2

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentTranscodeStartTime:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    .line 1193
    :goto_2
    iget-wide v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_9

    .line 1194
    iput-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    .line 1196
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1199
    :cond_8
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/VideoManager;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getDuration()J

    move-result-wide v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    .line 1201
    :cond_9
    :goto_3
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Adjusted Skip Position is %d"

    new-array v2, v10, [Ljava/lang/Object;

    iget-wide v3, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->currentSkipPos:J

    .line 1203
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1204
    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->cumSkipAmt:I

    add-int/2addr v0, p1

    iput v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->cumSkipAmt:I

    .line 1205
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz p1, :cond_a

    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getTimeShiftedProgress()J

    move-result-wide v0

    goto :goto_4

    :cond_a
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    :goto_4
    iget p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->cumSkipAmt:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 1206
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getRealTimeProgress()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_b

    .line 1207
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getRealTimeProgress()J

    move-result-wide v0

    .line 1210
    :cond_b
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setCurrentTime(J)V

    .line 1211
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->skipRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_5
    return-void
.end method

.method public startSpinner()V
    .locals 2

    .line 782
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$8;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$8;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 1061
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 5

    .line 1063
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->stopReportLoop()V

    .line 1064
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPauseTimerCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1065
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->UNDEFINED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-eq v0, v1, :cond_3

    .line 1066
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iput-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 1067
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/PlaybackController;->setSessionState(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V

    .line 1068
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->stopPlayback()V

    :cond_0
    const-wide/16 v0, 0x96

    .line 1071
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1073
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1075
    :goto_0
    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    const-wide/16 v2, 0x2710

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 1077
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Ltv/emby/embyatv/util/Utils;->ReportStopped(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;J)V

    goto :goto_1

    .line 1080
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isTranscoding()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v1}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {p1, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->StopActiveEncodings(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 1082
    :cond_2
    :goto_1
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1084
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmediabrowser/model/dto/UserItemDataDto;->setPlaybackPositionTicks(J)V

    :cond_3
    return-void
.end method

.method public stopSpinner()V
    .locals 2

    .line 796
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$9;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$9;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public switchAudioStream(I)V
    .locals 4

    .line 852
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/VideoOptions;->setAudioStreamIndex(Ljava/lang/Integer;)V

    const/4 v0, 0x1

    .line 855
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->switchedAudio:Z

    .line 856
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v1}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v1, v2}, Lmediabrowser/model/session/PlayMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->isNativeMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->isNewExo()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->forceDtsHd()Z

    move-result v1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v2

    sget-object v3, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    invoke-virtual {v2, v3, p1}, Lmediabrowser/model/dto/MediaSourceInfo;->GetMediaStream(Lmediabrowser/model/entities/MediaStreamType;I)Lmediabrowser/model/entities/MediaStream;

    move-result-object v2

    invoke-direct {p0, v2}, Ltv/emby/embyatv/playback/PlaybackController;->isHDAudioTrack(Lmediabrowser/model/entities/MediaStream;)Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 857
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->startSpinner()V

    .line 858
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting audio index to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 859
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/api/VideoOptions;->setMediaSourceId(Ljava/lang/String;)V

    .line 860
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/api/VideoOptions;->setCurrentPlaySessionId(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    .line 862
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-direct {p0, p1, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->playInternal(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Long;Ltv/emby/embyatv/api/VideoOptions;)V

    .line 863
    sget-object p1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->BUFFERING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    goto :goto_0

    .line 865
    :cond_2
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ltv/emby/embyatv/playback/VideoManager;->setAudioTrack(ILjava/util/List;)V

    .line 866
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V

    .line 867
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ltv/emby/embyatv/api/StreamInfo;->setAudioStreamIndex(Ljava/lang/Integer;)V

    .line 868
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->showPlayerStats()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 869
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p1, v1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->createStats(Lmediabrowser/model/dto/MediaSourceInfo;Ltv/emby/embyatv/api/StreamInfo;)V

    .line 870
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showStats(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public switchLiveTvMode(Z)V
    .locals 6

    if-eqz p1, :cond_1

    .line 822
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v0, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne p1, v0, :cond_3

    .line 823
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getTimeShiftedProgress()J

    move-result-wide v0

    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getRealTimeProgress()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 824
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Turn off Live Seeking"

    .line 825
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "You are requesting to turn off live seeking with your current live viewing not up to real time.  Are you sure you wish to do this?"

    .line 826
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100617

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$10;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$10;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    .line 827
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100526

    const/4 v1, 0x0

    .line 833
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 834
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 836
    :cond_0
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->switchToDirect()V

    goto :goto_0

    .line 840
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v0, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 841
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Switching to transcoding to allow seeking live TV"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    iput-boolean v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->directStreamLiveTv:Z

    .line 843
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    const-wide/16 v0, 0x0

    .line 844
    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    goto :goto_0

    .line 846
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Attempt to switch live stream to transcode that already is"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public switchSubtitleStream(I)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v3, p1

    .line 879
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting subtitle index to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentOptions:Ltv/emby/embyatv/api/VideoOptions;

    const/4 v1, 0x0

    if-ltz v3, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/api/VideoOptions;->setSubtitleStreamIndex(Ljava/lang/Integer;)V

    const/4 v0, -0x1

    if-gez v3, :cond_4

    .line 883
    iget-object v2, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/api/StreamInfo;->setSubtitleStreamIndex(Ljava/lang/Integer;)V

    .line 884
    iput v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mDefaultSubIndex:I

    .line 885
    iget-boolean v2, v8, Ltv/emby/embyatv/playback/PlaybackController;->burningSubs:Z

    if-eqz v2, :cond_3

    .line 886
    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v10

    iget-object v11, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    iget-wide v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    iget v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "SubtitleTrackChange"

    new-instance v17, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct/range {v17 .. v17}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-static/range {v10 .. v17}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 887
    invoke-virtual {v8, v9}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    .line 888
    iget-wide v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    const/4 v3, -0x1

    iget-object v4, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSourceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    iget-object v6, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v6}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_2
    const/4 v6, -0x1

    :goto_2
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Ltv/emby/embyatv/playback/PlaybackController;->play(JILjava/lang/String;IILjava/lang/String;)V

    .line 889
    iput-boolean v9, v8, Ltv/emby/embyatv/playback/PlaybackController;->burningSubs:Z

    goto :goto_3

    .line 891
    :cond_3
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addManualSubtitles(Lmediabrowser/model/mediainfo/SubtitleTrackInfo;)V

    .line 892
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->disableSubs()V

    .line 893
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V

    .line 895
    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v9

    iget-object v10, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    iget-wide v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    iget v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "SubtitleTrackChange"

    new-instance v16, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct/range {v16 .. v16}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-static/range {v9 .. v16}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    :goto_3
    return-void

    .line 900
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v2

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->GetMediaStream(Lmediabrowser/model/dto/MediaSourceInfo;I)Lmediabrowser/model/entities/MediaStream;

    move-result-object v2

    if-nez v2, :cond_5

    .line 902
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    const-string v1, "Unable to select subtitle"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 908
    :cond_5
    invoke-virtual/range {p0 .. p1}, Ltv/emby/embyatv/playback/PlaybackController;->getSubtitleStreamInfo(I)Ltv/emby/embyatv/api/SubtitleStreamInfo;

    move-result-object v4

    const v5, 0x7f10065a

    if-nez v4, :cond_6

    .line 910
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    iget-object v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 912
    :cond_6
    sget-object v6, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$SubtitleDeliveryMethod:[I

    invoke-virtual {v4}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_8

    .line 942
    :pswitch_0
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->isNativeMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 944
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/playback/PlaybackController;->getSubtitleStreams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ltv/emby/embyatv/playback/VideoManager;->setSubtitleTrack(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 946
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    iget-object v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 950
    :cond_7
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addManualSubtitles(Lmediabrowser/model/mediainfo/SubtitleTrackInfo;)V

    .line 951
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->disableSubs()V

    .line 952
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showSubLoadingMsg(Z)V

    .line 953
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v3, "*** Sub Delivery url: %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v0, v3, v5}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v3, "*** Sub format is: %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getFormat()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-interface {v0, v3, v5}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    sget-object v0, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v2, v0}, Lmediabrowser/model/entities/MediaStream;->setDeliveryMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V

    const-string v0, "%1$s/Videos/%2$s/%3$s/Subtitles/%4$s/0/Stream.JSON"

    const/4 v3, 0x4

    .line 956
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/apiinteraction/ApiClient;->getApiUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v4}, Ltv/emby/embyatv/api/StreamInfo;->getItemId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSourceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v4

    invoke-static {v4}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmediabrowser/model/entities/MediaStream;->setDeliveryUrl(Ljava/lang/String;)V

    .line 957
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getDeliveryUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/playback/PlaybackController$11;

    invoke-direct {v2, v8}, Ltv/emby/embyatv/playback/PlaybackController$11;-><init>(Ltv/emby/embyatv/playback/PlaybackController;)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->getSubtitles(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_8

    .line 926
    :pswitch_1
    iget-object v2, v8, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addManualSubtitles(Lmediabrowser/model/mediainfo/SubtitleTrackInfo;)V

    .line 927
    iget-boolean v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->burningSubs:Z

    if-eqz v1, :cond_a

    .line 930
    iget-object v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/api/StreamInfo;->setSubtitleStreamIndex(Ljava/lang/Integer;)V

    .line 931
    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v10

    iget-object v11, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    iget-wide v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    iget v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "SubtitleTrackChange"

    new-instance v17, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct/range {v17 .. v17}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-static/range {v10 .. v17}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 933
    iget-object v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "Restarting to turn off burned in subs"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    invoke-virtual {v8, v9}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    .line 935
    iget-wide v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    iget-object v4, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSourceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_8
    const/4 v5, -0x1

    :goto_4
    iget-object v6, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v6}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_5

    :cond_9
    const/4 v6, -0x1

    :goto_5
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v7}, Ltv/emby/embyatv/playback/PlaybackController;->play(JILjava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_8

    .line 936
    :cond_a
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/playback/PlaybackController;->getSubtitleStreams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ltv/emby/embyatv/playback/VideoManager;->setSubtitleTrack(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 938
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    iget-object v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 916
    :pswitch_2
    iget-object v2, v8, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/VideoManager;->disableSubs()V

    .line 917
    iget-object v2, v8, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addManualSubtitles(Lmediabrowser/model/mediainfo/SubtitleTrackInfo;)V

    .line 919
    iget-object v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->isNativeMode()Z

    move-result v1

    if-nez v1, :cond_b

    .line 920
    iget-object v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    iget-object v2, v8, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100622

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 922
    :cond_b
    invoke-virtual {v8, v9}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    .line 923
    iget-wide v1, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentPosition:J

    iget-object v4, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v4}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSourceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_6

    :cond_c
    const/4 v5, -0x1

    :goto_6
    iget-object v6, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v6}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_7

    :cond_d
    const/4 v6, -0x1

    :goto_7
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v7}, Ltv/emby/embyatv/playback/PlaybackController;->play(JILjava/lang/String;IILjava/lang/String;)V

    .line 985
    :cond_e
    :goto_8
    iget-object v0, v8, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unPause()V
    .locals 10

    .line 1049
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mPlaybackState:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne v0, v1, :cond_1

    .line 1050
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->stopReportLoop()V

    .line 1051
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getTimeShiftedProgress()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    .line 1052
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v3

    const-wide/16 v4, 0x2710

    mul-long v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v5

    iget v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Unpause"

    iget-object v9, p0, Ltv/emby/embyatv/playback/PlaybackController;->progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-static/range {v2 .. v9}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 1053
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    :cond_1
    return-void
.end method

.method public updateTvProgramInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1253
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/PlaybackController;->updateTvProgramInfo(Z)V

    return-void
.end method

.method public updateTvProgramInfo(Z)V
    .locals 5

    const/4 v0, 0x1

    .line 1259
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->programUpdateInProgress:Z

    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController;->lastProgramUpdateAttempt:J

    .line 1262
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TvChannel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1264
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_runaway_prevention"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->stillWatchingActive:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->lastStillWatchingCheck:J

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1265
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showStillWatching()V

    .line 1268
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/playback/PlaybackController$17;

    invoke-direct {v4, p0, p1, v0}, Ltv/emby/embyatv/playback/PlaybackController$17;-><init>(Ltv/emby/embyatv/playback/PlaybackController;ZLmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {v1, v2, v3, v4}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvChannelAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :cond_1
    return-void
.end method
