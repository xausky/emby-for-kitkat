.class public Lfr/bmartel/youtubetv/JavascriptInterface;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAvailablePlaybackRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableQualityLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/model/VideoQuality;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferStateListener:Lfr/bmartel/youtubetv/listener/IBufferStateListener;

.field private mCurrentTime:F

.field private mDuration:F

.field private mEmbedCode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLoaded:Z

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mLock:Landroid/os/ConditionVariable;

.field private mMuted:Z

.field private mPlayIcon:Landroid/widget/ImageView;

.field private mPlaybackQuality:Lfr/bmartel/youtubetv/model/VideoQuality;

.field private mPlaybackRate:I

.field private mPlayerListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/listener/IPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerState:Lfr/bmartel/youtubetv/model/VideoState;

.field private mPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistIndex:I

.field private mProgressUpdateListener:Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;

.field private mVideoId:Ljava/lang/String;

.field private mVideoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;

.field private mVideoLoadedFraction:F

.field private mVideoTitle:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mVolume:I

.field private mWaitLoaded:Z

.field private mWebview:Landroid/webkit/WebView;

.field private mYoutubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;

.field private previousPlayPause:Z

.field private suggestedThumbnailQuality:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/webkit/WebView;Lfr/bmartel/youtubetv/YoutubeTvView;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/listener/IPlayerListener;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/widget/ProgressBar;",
            "Landroid/widget/ImageView;",
            "Landroid/webkit/WebView;",
            "Lfr/bmartel/youtubetv/YoutubeTvView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-class v0, Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mAvailablePlaybackRates:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlaylist:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlayerListenerList:Ljava/util/List;

    .line 147
    sget-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_THUMBNAIL_QUALITY:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->suggestedThumbnailQuality:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mAvailableQualityLevels:Ljava/util/List;

    .line 222
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoInfo;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lfr/bmartel/youtubetv/model/VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;

    .line 242
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlayerListenerList:Ljava/util/List;

    .line 243
    iput-object p5, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mWebview:Landroid/webkit/WebView;

    .line 244
    iput-object p3, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 245
    iput-object p2, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mHandler:Landroid/os/Handler;

    .line 246
    iput-object p4, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlayIcon:Landroid/widget/ImageView;

    .line 247
    iput-object p6, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mYoutubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;

    .line 248
    iput-object p7, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->suggestedThumbnailQuality:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lfr/bmartel/youtubetv/JavascriptInterface;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlayerListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mProgressUpdateListener:Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;

    return-object p0
.end method

.method static synthetic access$200(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/YoutubeTvView;
    .locals 0

    .line 59
    iget-object p0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mYoutubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;

    return-object p0
.end method

.method static synthetic access$300(Lfr/bmartel/youtubetv/JavascriptInterface;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->previousPlayPause:Z

    return p0
.end method

.method static synthetic access$302(Lfr/bmartel/youtubetv/JavascriptInterface;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->previousPlayPause:Z

    return p1
.end method

.method static synthetic access$400(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/listener/IBufferStateListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mBufferStateListener:Lfr/bmartel/youtubetv/listener/IBufferStateListener;

    return-object p0
.end method

.method static synthetic access$500(Lfr/bmartel/youtubetv/JavascriptInterface;Ljava/lang/String;ZIJFLjava/lang/String;Landroid/media/session/MediaSession;)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p8}, Lfr/bmartel/youtubetv/JavascriptInterface;->updateMediaSession(Ljava/lang/String;ZIJFLjava/lang/String;Landroid/media/session/MediaSession;)V

    return-void
.end method

.method static synthetic access$600(Lfr/bmartel/youtubetv/JavascriptInterface;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->suggestedThumbnailQuality:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lfr/bmartel/youtubetv/JavascriptInterface;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lfr/bmartel/youtubetv/JavascriptInterface;)Landroid/widget/ProgressBar;
    .locals 0

    .line 59
    iget-object p0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLoadingProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lfr/bmartel/youtubetv/JavascriptInterface;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlayIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private updateMediaSession(Ljava/lang/String;ZIJFLjava/lang/String;Landroid/media/session/MediaSession;)V
    .locals 10

    .line 379
    new-instance v9, Lfr/bmartel/youtubetv/JavascriptInterface$4;

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lfr/bmartel/youtubetv/JavascriptInterface$4;-><init>(Lfr/bmartel/youtubetv/JavascriptInterface;ZLjava/lang/String;Landroid/media/session/MediaSession;IJF)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 420
    invoke-virtual {v9, v0}, Lfr/bmartel/youtubetv/JavascriptInterface$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getAvailablePlaybackRates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mAvailablePlaybackRates:Ljava/util/List;

    return-object v0
.end method

.method public getAvailableQualityLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/model/VideoQuality;",
            ">;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mAvailableQualityLevels:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentTime()F
    .locals 1

    .line 658
    iget v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mCurrentTime:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    .line 694
    iget v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mDuration:F

    return v0
.end method

.method public getPlaybackQuality()Lfr/bmartel/youtubetv/model/VideoQuality;
    .locals 1

    .line 676
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlaybackQuality:Lfr/bmartel/youtubetv/model/VideoQuality;

    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .line 622
    iget v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlaybackRate:I

    return v0
.end method

.method public getPlayerState()Lfr/bmartel/youtubetv/model/VideoState;
    .locals 1

    .line 649
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlayerState:Lfr/bmartel/youtubetv/model/VideoState;

    return-object v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlaylist:Ljava/util/List;

    return-object v0
.end method

.method public getPlaylistIndex()I
    .locals 1

    .line 721
    iget v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlaylistIndex:I

    return v0
.end method

.method public getThumbnailQuality(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    .line 567
    :try_start_0
    invoke-static {p1, p2}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->getThumbnailQuality(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 569
    iget-object p2, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->TAG:Ljava/lang/String;

    const-string v1, "getThumbnailQuality"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getVideoEmbedCode()Ljava/lang/String;
    .locals 1

    .line 712
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mEmbedCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 739
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoInfo()Lfr/bmartel/youtubetv/model/VideoInfo;
    .locals 1

    .line 757
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;

    return-object v0
.end method

.method public getVideoLoadedFraction()F
    .locals 1

    .line 640
    iget v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoLoadedFraction:F

    return v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 748
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 604
    iget v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVolume:I

    return v0
.end method

.method public hideLoading(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 545
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lfr/bmartel/youtubetv/JavascriptInterface$5;

    invoke-direct {v1, p0, p1}, Lfr/bmartel/youtubetv/JavascriptInterface$5;-><init>(Lfr/bmartel/youtubetv/JavascriptInterface;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isMuted()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mMuted:Z

    return v0
.end method

.method public isPageLoaded()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLoaded:Z

    return v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 268
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAvailableQualityLevelsReceived(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 533
    invoke-static {p1}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->parseQualityLevels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mAvailableQualityLevels:Ljava/util/List;

    .line 534
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    if-eqz p1, :cond_0

    .line 535
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public onCurrentTimeReceived(F)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 477
    iput p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mCurrentTime:F

    .line 478
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDurationReceived(F)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 509
    iput p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mDuration:F

    .line 510
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onMuteReceived(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 425
    iput-boolean p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mMuted:Z

    .line 426
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    if-eqz p1, :cond_0

    .line 427
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public onPageLoaded()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLoaded:Z

    .line 581
    iget-boolean v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mWaitLoaded:Z

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mWebview:Landroid/webkit/WebView;

    const-string v2, "setSize"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mViewWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mViewHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->callOnWebviewThread(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPlaybackQualityReceived(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 483
    invoke-static {p1}, Lfr/bmartel/youtubetv/model/VideoQuality;->getVideoQuality(Ljava/lang/String;)Lfr/bmartel/youtubetv/model/VideoQuality;

    move-result-object p1

    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlaybackQuality:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 484
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onPlaybackRateReceived(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 449
    iput p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlaybackRate:I

    .line 450
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public onPlaybackRatesListReceived(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 501
    invoke-static {p1}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->parsePlaybackRates(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mAvailablePlaybackRates:Ljava/util/List;

    .line 502
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    if-eqz p1, :cond_0

    .line 503
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public onPlayerReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 274
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v7, Lfr/bmartel/youtubetv/JavascriptInterface$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lfr/bmartel/youtubetv/JavascriptInterface$1;-><init>(Lfr/bmartel/youtubetv/JavascriptInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayerStateChange(IJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/lang/String;)V
    .locals 15
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object v12, p0

    .line 309
    iget-object v13, v12, Lfr/bmartel/youtubetv/JavascriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v14, Lfr/bmartel/youtubetv/JavascriptInterface$3;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p6

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lfr/bmartel/youtubetv/JavascriptInterface$3;-><init>(Lfr/bmartel/youtubetv/JavascriptInterface;IFFLjava/lang/String;JFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayerStateReceived(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 457
    invoke-static {p1}, Lfr/bmartel/youtubetv/model/VideoState;->getPlayerState(I)Lfr/bmartel/youtubetv/model/VideoState;

    move-result-object p1

    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlayerState:Lfr/bmartel/youtubetv/model/VideoState;

    .line 458
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    if-eqz p1, :cond_0

    .line 459
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public onPlaylistIndexReceived(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 489
    iput p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlaylistIndex:I

    .line 490
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onPlaylistReceived(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 495
    invoke-static {p1}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->parsePlaylist(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mPlaylist:Ljava/util/List;

    .line 496
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onProgressUpdate(F)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 289
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lfr/bmartel/youtubetv/JavascriptInterface$2;

    invoke-direct {v1, p0, p1}, Lfr/bmartel/youtubetv/JavascriptInterface$2;-><init>(Lfr/bmartel/youtubetv/JavascriptInterface;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoEmbedCodeReceived(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 527
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mEmbedCode:Ljava/lang/String;

    .line 528
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onVideoIdReceived(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 465
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoId:Ljava/lang/String;

    .line 466
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onVideoInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 521
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoInfo;

    invoke-static {p4}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->parseQualityLevels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    invoke-direct {v0, p3, p2, p1, p4}, Lfr/bmartel/youtubetv/model/VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;

    .line 522
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onVideoLoadedFractionReceived(F)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 441
    iput p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoLoadedFraction:F

    .line 442
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    if-eqz p1, :cond_0

    .line 443
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public onVideoTitleReceived(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 471
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoTitle:Ljava/lang/String;

    .line 472
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onVideoUrlReceived(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 515
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVideoUrl:Ljava/lang/String;

    .line 516
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onVolumeReceived(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 433
    iput p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mVolume:I

    .line 434
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public setBlock(Landroid/os/ConditionVariable;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mLock:Landroid/os/ConditionVariable;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lfr/bmartel/youtubetv/listener/IBufferStateListener;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mBufferStateListener:Lfr/bmartel/youtubetv/listener/IBufferStateListener;

    return-void
.end method

.method public setOnProgressUpdateListener(Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mProgressUpdateListener:Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;

    return-void
.end method

.method public setSizeOnLoad(II)V
    .locals 1

    const/4 v0, 0x1

    .line 593
    iput-boolean v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mWaitLoaded:Z

    .line 594
    iput p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mViewWidth:I

    .line 595
    iput p2, p0, Lfr/bmartel/youtubetv/JavascriptInterface;->mViewHeight:I

    return-void
.end method
