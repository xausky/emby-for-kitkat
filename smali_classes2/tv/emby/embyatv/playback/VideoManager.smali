.class public Ltv/emby/embyatv/playback/VideoManager;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ltv/emby/embyatv/playback/IPlaybackEventReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;
    }
.end annotation


# static fields
.field private static final FIXED_FACTORY:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field public static final ZOOM_FULL:I = 0x3

.field public static final ZOOM_HORIZONTAL:I = 0x2

.field public static final ZOOM_NORMAL:I = 0x0

.field public static final ZOOM_VERTICAL:I = 0x1


# instance fields
.field private addedCCTrack:Z

.field private audioRendererIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field completeListener:Ltv/emby/embyatv/playback/PlaybackListener;

.field errorListener:Ltv/emby/embyatv/playback/PlaybackListener;

.field private exoMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private exoRenderers:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

.field private forceDtsHd:Z

.field public isContracted:Z

.field private isHls:Z

.field private isLiveTv:Z

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

.field private mContext:Landroid/content/Context;

.field private mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

.field private mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private mExoTrackParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private mExoTracks:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

.field private mHandler:Landroid/os/Handler;

.field private mLanguageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaDuration:J

.field private mSubtitlesSurface:Landroid/view/SurfaceView;

.field private mSurfaceFrame:Landroid/widget/FrameLayout;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceReady:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private mZoomMode:I

.field private nativeMode:Z

.field normalHeight:I

.field normalWidth:I

.field preparedListener:Ltv/emby/embyatv/playback/PlaybackListener;

.field private progressListener:Ltv/emby/embyatv/playback/PlaybackListener;

.field private progressLoop:Ljava/lang/Runnable;

.field private subRendererNdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;-><init>()V

    sput-object v0, Ltv/emby/embyatv/playback/VideoManager;->FIXED_FACTORY:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    return-void
.end method

.method public constructor <init>(Ltv/emby/embyatv/playback/PlaybackOverlayActivity;Landroid/view/View;)V
    .locals 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mZoomMode:I

    .line 88
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, -0x1

    .line 101
    iput-wide v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mMetaDuration:J

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    .line 105
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mSurfaceReady:Z

    .line 106
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->isContracted:Z

    .line 107
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->addedCCTrack:Z

    .line 145
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->isLiveTv:Z

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->audioRendererIndexes:Ljava/util/List;

    const/4 v0, -0x1

    .line 1010
    iput v0, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    .line 111
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const p1, 0x7f0a0225

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mSurfaceView:Landroid/view/SurfaceView;

    .line 113
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const p1, 0x7f0a0226

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mSurfaceFrame:Landroid/widget/FrameLayout;

    .line 115
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->logger:Lmediabrowser/model/logging/ILogger;

    const p1, 0x7f0a0323

    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 118
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->createIso3ToIso2Map()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mLanguageMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/playback/VideoManager;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ltv/emby/embyatv/playback/VideoManager;->startProgressLoop()V

    return-void
.end method

.method static synthetic access$102(Ltv/emby/embyatv/playback/VideoManager;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 0

    .line 72
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTracks:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    return-object p1
.end method

.method static synthetic access$200(Ltv/emby/embyatv/playback/VideoManager;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Ltv/emby/embyatv/playback/VideoManager;->audioRendererIndexes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Ltv/emby/embyatv/playback/VideoManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 72
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->audioRendererIndexes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Ltv/emby/embyatv/playback/VideoManager;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 0

    .line 72
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->exoRenderers:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    return-object p1
.end method

.method static synthetic access$400(Ltv/emby/embyatv/playback/VideoManager;)Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 0

    .line 72
    iget-object p0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object p0
.end method

.method static synthetic access$502(Ltv/emby/embyatv/playback/VideoManager;I)I
    .locals 0

    .line 72
    iput p1, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    return p1
.end method

.method static synthetic access$600(Ltv/emby/embyatv/playback/VideoManager;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ltv/emby/embyatv/playback/VideoManager;->stopProgressLoop()V

    return-void
.end method

.method static synthetic access$700(Ltv/emby/embyatv/playback/VideoManager;)Ltv/emby/embyatv/playback/PlaybackListener;
    .locals 0

    .line 72
    iget-object p0, p0, Ltv/emby/embyatv/playback/VideoManager;->progressListener:Ltv/emby/embyatv/playback/PlaybackListener;

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/playback/VideoManager;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Ltv/emby/embyatv/playback/VideoManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private createExoPlayer()V
    .locals 12

    .line 768
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 770
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v2, p0, Ltv/emby/embyatv/playback/VideoManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 772
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 773
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 778
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->isLiveTv:Z

    const/16 v1, 0x9c4

    if-eqz v0, :cond_0

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_0
    const/16 v0, 0x9c4

    :goto_0
    const/16 v2, 0x1388

    .line 781
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_buffer_size"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 782
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_live_start_time"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 784
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x30

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v5, v6, :cond_2

    const/16 v6, 0x32

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, -0x1

    :goto_2
    const v5, 0xea60

    const/16 v6, 0x7530

    packed-switch v3, :pswitch_data_0

    const v3, 0xea60

    const/16 v5, 0x7530

    goto :goto_3

    :pswitch_0
    const v3, 0x3a980

    goto :goto_3

    :pswitch_1
    const/16 v5, 0x3a98

    const/16 v3, 0x7530

    .line 795
    :goto_3
    iget-boolean v6, p0, Ltv/emby/embyatv/playback/VideoManager;->isLiveTv:Z

    if-eqz v6, :cond_5

    .line 796
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto :goto_4

    :pswitch_2
    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :pswitch_3
    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v7, 0x0

    :cond_4
    :goto_4
    packed-switch v7, :pswitch_data_2

    goto :goto_5

    :pswitch_4
    const/16 v1, 0xe10

    goto :goto_6

    :cond_5
    :goto_5
    move v1, v0

    .line 807
    :goto_6
    :pswitch_5
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    iget-object v4, p0, Ltv/emby/embyatv/playback/VideoManager;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 808
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->downMixAudio()Z

    move-result v7

    const/4 v10, 0x2

    if-nez v7, :cond_7

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/playback/MediaManager;->getMaxAudioChannels()I

    move-result v7

    const/4 v11, 0x3

    if-ge v7, v11, :cond_6

    goto :goto_7

    :cond_6
    const/4 v7, 0x1

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v7, 0x2

    :goto_8
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    iget-object v4, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object v0

    new-instance v4, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setPrioritizeTimeOverSizeThresholds(Z)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v4

    invoke-virtual {v4, v5, v3, v1, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 811
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 814
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 816
    new-instance v0, Lcom/google/android/exoplayer2/util/EventLogger;

    iget-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    .line 818
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 820
    new-instance v11, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_sub_text_color_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->getColorValue(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x1000000

    iget-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    .line 822
    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v7, "fonts/subfont.ttf"

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v1, v11

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 820
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V

    .line 823
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_sub_text_size_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->getSubTextSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFixedTextSize(IF)V

    .line 824
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_sub_text_alpha_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->getAlphaValue(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setAlpha(F)V

    .line 827
    :cond_8
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;-><init>(Ltv/emby/embyatv/playback/VideoManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 828
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 829
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private createMpvPlayer()V
    .locals 0

    return-void
.end method

.method private enableEmbeddedMpvSubtitleTrack(Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;IZ)V"
        }
    .end annotation

    return-void
.end method

.method private getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)I
    .locals 1

    const/4 v0, 0x0

    .line 732
    invoke-direct {p0, p1, p2, v0}, Ltv/emby/embyatv/playback/VideoManager;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)I

    move-result p1

    return p1
.end method

.method private getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)I
    .locals 1

    .line 735
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 736
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    .line 737
    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private prepareExoPlayer(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->addedCCTrack:Z

    .line 289
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const-string v2, "Emby"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x61a8

    const/16 v5, 0x61a8

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    .line 291
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-direct {v1, v2, v3, v7}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    .line 295
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v5

    const-string v6, "*** External sub streams: %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-interface {v5, v6, v7}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltv/emby/embyatv/api/SubtitleStreamInfo;

    .line 298
    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getFormat()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "vtt"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_1
    const-string v8, "ssa"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_2
    const-string v8, "srt"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_3
    const-string v8, "dvb"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_4
    const-string v8, "ass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_5
    const-string v8, "dvb_teletext"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_6
    const-string v8, "subrip"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    move-object v6, v3

    goto/16 :goto_3

    .line 312
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ext-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "application/dvbsubs"

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v0, v8}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    goto :goto_3

    .line 308
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ext-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/x-ssa"

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v0, v8}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    goto :goto_3

    .line 304
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ext-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/vtt"

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v0, v8}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    goto :goto_3

    .line 301
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ext-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "application/x-subrip"

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v0, v8}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_0

    .line 316
    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 317
    new-instance v7, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    invoke-direct {v7, v1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v6, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setDeliveryMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V

    .line 321
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v6

    const-string v7, "*** External subtitle %s will be rendered internally by Exo"

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const-string p2, ".m3u8"

    .line 327
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 328
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;

    invoke-direct {p2, v4, v4}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    .line 329
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setExtractorFactory(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    goto :goto_4

    .line 333
    :cond_3
    new-instance p2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 334
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setTsExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    .line 335
    new-instance v3, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v3, v1, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    .line 339
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 340
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p2, v4

    new-array p2, p2, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 341
    aput-object p1, p2, v0

    const/4 p1, 0x1

    .line 342
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v4

    if-ge p1, v0, :cond_4

    add-int/lit8 v0, p1, -0x1

    .line 343
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 345
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->exoMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    goto :goto_6

    .line 347
    :cond_5
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->exoMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3523ad27 -> :sswitch_6
        -0x24bfdeda -> :sswitch_5
        0x17a81 -> :sswitch_4
        0x18610 -> :sswitch_3
        0x1bdf5 -> :sswitch_2
        0x1be01 -> :sswitch_1
        0x1c976 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private prepareMpvPlayer(Ljava/lang/String;Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 0

    return-void
.end method

.method private releaseExoPlayer()V
    .locals 1

    .line 833
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    return-void
.end method

.method private startProgressLoop()V
    .locals 2

    .line 992
    new-instance v0, Ltv/emby/embyatv/playback/VideoManager$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/VideoManager$1;-><init>(Ltv/emby/embyatv/playback/VideoManager;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->progressLoop:Ljava/lang/Runnable;

    .line 999
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->progressLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopProgressLoop()V
    .locals 2

    .line 1003
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->progressLoop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->progressLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public contractVideo(I)V
    .locals 3

    .line 841
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 842
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/VideoManager;->isContracted:Z

    if-eqz v1, :cond_1

    return-void

    .line 844
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 845
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 847
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 848
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 850
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    float-to-double v1, p1

    .line 851
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 852
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Ltv/emby/embyatv/playback/VideoManager;->normalWidth:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x6e

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 853
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Ltv/emby/embyatv/playback/VideoManager;->normalHeight:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x32

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 855
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz p1, :cond_3

    .line 856
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->invalidate()V

    :cond_3
    const/4 p1, 0x1

    .line 864
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/VideoManager;->isContracted:Z

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 750
    invoke-direct {p0}, Ltv/emby/embyatv/playback/VideoManager;->releaseExoPlayer()V

    return-void
.end method

.method public disableSubs()V
    .locals 3

    .line 463
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    if-ltz v0, :cond_0

    .line 465
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    .line 466
    iget v1, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 467
    iget-object v1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 469
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->updateAutoEnableCC(Z)V

    :cond_0
    return-void
.end method

.method public fakeError()V
    .locals 1

    .line 974
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->errorListener:Ltv/emby/embyatv/playback/PlaybackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->errorListener:Ltv/emby/embyatv/playback/PlaybackListener;

    invoke-interface {v0}, Ltv/emby/embyatv/playback/PlaybackListener;->onEvent()V

    :cond_0
    return-void
.end method

.method public forceDtsHd()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->forceDtsHd:Z

    return v0
.end method

.method public getAudioDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAudioTrack()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCCTrackInfo()Lcom/google/android/exoplayer2/Format;
    .locals 8

    .line 608
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    if-ltz v0, :cond_3

    .line 609
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    iget v1, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 610
    :goto_0
    iget v3, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v3, :cond_3

    .line 611
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    const/4 v4, 0x0

    .line 612
    :goto_1
    iget v5, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v5, :cond_2

    .line 613
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    const-string v6, "application/cea-608"

    .line 614
    iget-object v7, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    iget-object v7, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 213
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/PlaybackController;->getStartPositionOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .line 203
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/VideoManager;->isHls()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mMetaDuration:J

    :goto_0
    return-wide v0

    .line 208
    :cond_1
    iget-wide v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mMetaDuration:J

    return-wide v0
.end method

.method public getZoomMode()I
    .locals 1

    .line 142
    iget v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mZoomMode:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 125
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mContext:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Ltv/emby/embyatv/playback/VideoManager;->createExoPlayer()V

    const-string p1, "subfont.ttf"

    .line 127
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->copyFontFile(Ljava/lang/String;)V

    return-void
.end method

.method public isHls()Z
    .locals 1

    .line 1013
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->isHls:Z

    return v0
.end method

.method public isNativeMode()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    return v0
.end method

.method public isNewExo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 221
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onComplete()V
    .locals 1

    .line 877
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->completeListener:Ltv/emby/embyatv/playback/PlaybackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->completeListener:Ltv/emby/embyatv/playback/PlaybackListener;

    invoke-interface {v0}, Ltv/emby/embyatv/playback/PlaybackListener;->onEvent()V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 873
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->preparedListener:Ltv/emby/embyatv/playback/PlaybackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->preparedListener:Ltv/emby/embyatv/playback/PlaybackListener;

    invoke-interface {v0}, Ltv/emby/embyatv/playback/PlaybackListener;->onEvent()V

    :cond_0
    return-void
.end method

.method public onProgress()V
    .locals 1

    .line 881
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->progressListener:Ltv/emby/embyatv/playback/PlaybackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->progressListener:Ltv/emby/embyatv/playback/PlaybackListener;

    invoke-interface {v0}, Ltv/emby/embyatv/playback/PlaybackListener;->onEvent()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 249
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 239
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 241
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method public retry()V
    .locals 1

    .line 869
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->retry()V

    :cond_0
    return-void
.end method

.method public seekTo(J)J
    .locals 1

    .line 273
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    return-wide p1

    :cond_0
    return-wide p1
.end method

.method public setAddedCCTrack(Z)V
    .locals 0

    .line 889
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/VideoManager;->addedCCTrack:Z

    return-void
.end method

.method public setAudioTrack(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;)V"
        }
    .end annotation

    .line 627
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 665
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 668
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/entities/MediaStream;

    .line 669
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v3

    sget-object v4, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v3, v4, :cond_1

    .line 670
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v2

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_3
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object p1

    .line 679
    iget-object p2, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 682
    :goto_2
    iget v5, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v5, :cond_6

    .line 683
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-ne v4, v1, :cond_4

    .line 685
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-lt v4, v1, :cond_e

    if-nez v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x1

    .line 698
    invoke-direct {p0, p1, v1}, Ltv/emby/embyatv/playback/VideoManager;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)I

    move-result v3

    :goto_4
    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 700
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p2

    .line 701
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v5

    if-eq v5, v4, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 707
    invoke-direct {p0, p1, v1, v3}, Ltv/emby/embyatv/playback/VideoManager;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)I

    move-result v3

    goto :goto_4

    :cond_9
    const/4 v5, -0x1

    :goto_5
    if-ne v5, v4, :cond_a

    .line 711
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string p2, "Couldn\'t find available track group in mapped track info array"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 718
    :cond_a
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v4, v1, [I

    aput v0, v4, v0

    invoke-direct {v2, v5, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 719
    iget-object v4, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v4

    const/4 v5, 0x0

    .line 720
    :goto_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 721
    iget-object v6, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v6

    if-ne v6, v1, :cond_c

    if-eq v5, v3, :cond_b

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    .line 722
    :goto_7
    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 725
    :cond_d
    invoke-virtual {v4, v3, p2, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 726
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    goto :goto_9

    .line 692
    :cond_e
    :goto_8
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string p2, "Cannot set audio stream index because the track doesn\'t exist in the track list"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_f
    :goto_9
    return-void
.end method

.method public setForceDtsHd(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/VideoManager;->forceDtsHd:Z

    .line 152
    sput-boolean p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ForceDtsHd:Z

    return-void
.end method

.method public setHls(Z)V
    .locals 0

    .line 1017
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/VideoManager;->isHls:Z

    return-void
.end method

.method public setIsLiveTv(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/VideoManager;->isLiveTv:Z

    return-void
.end method

.method public setMetaDuration(J)V
    .locals 5

    .line 198
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "**** Player meta duration set to: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iput-wide p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mMetaDuration:J

    return-void
.end method

.method public setNativeMode(Z)V
    .locals 2

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    .line 132
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Ltv/emby/embyatv/playback/PlaybackListener;)V
    .locals 0

    .line 978
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->completeListener:Ltv/emby/embyatv/playback/PlaybackListener;

    return-void
.end method

.method public setOnErrorListener(Ltv/emby/embyatv/playback/PlaybackListener;)V
    .locals 0

    .line 970
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->errorListener:Ltv/emby/embyatv/playback/PlaybackListener;

    return-void
.end method

.method public setOnPreparedListener(Ltv/emby/embyatv/playback/PlaybackListener;)V
    .locals 0

    .line 982
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->preparedListener:Ltv/emby/embyatv/playback/PlaybackListener;

    return-void
.end method

.method public setOnProgressListener(Ltv/emby/embyatv/playback/PlaybackListener;)V
    .locals 0

    .line 986
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->progressListener:Ltv/emby/embyatv/playback/PlaybackListener;

    return-void
.end method

.method public setSubtitleTrack(ILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;)Z"
        }
    .end annotation

    .line 525
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    .line 564
    iget v2, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    if-ltz v2, :cond_1

    .line 566
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    .line 567
    iget p2, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 568
    iget-object p2, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 570
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->updateAutoEnableCC(Z)V

    return v1

    .line 572
    :cond_1
    iget v2, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    if-ltz v2, :cond_a

    const/16 v2, 0x63

    if-eq p1, v2, :cond_3

    .line 574
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/VideoManager;->getCCTrackInfo()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge p1, v2, :cond_7

    .line 576
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/api/SubtitleStreamInfo;

    .line 577
    invoke-virtual {v2}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v4

    sget-object v5, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-eq v4, v5, :cond_5

    invoke-virtual {v2}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v4

    sget-object v5, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Hls:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-ne v4, v5, :cond_4

    .line 578
    :cond_5
    invoke-virtual {v2}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-ne p1, v2, :cond_8

    .line 586
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/TvApp;->updateAutoEnableCC(Z)V

    .line 588
    :cond_8
    :goto_3
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 590
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    const-string v2, "*** Setting Exo subtitle track to index %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {p2, v2, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object p2, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p2

    .line 592
    iget v2, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    invoke-virtual {p2, v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 593
    iget v2, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    iget v4, p0, Ltv/emby/embyatv/playback/VideoManager;->subRendererNdx:I

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v5, v1, [I

    aput v0, v5, v0

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {p2, v2, p1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 594
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return v1

    .line 598
    :cond_9
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "*** No Exo Track info trying to set track to index %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p1, p2, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_a
    return v0
.end method

.method public setVideoPaths(Ljava/lang/String;Ljava/util/List;Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 443
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video path set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 446
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "Error writing path to log"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v4}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 449
    :goto_0
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v1, :cond_0

    .line 451
    :try_start_1
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/VideoManager;->prepareExoPlayer(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 453
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    const-string p3, "Unable to set video path.  Probably backing out."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p3, p1, v0}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_1

    .line 456
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/playback/VideoManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 457
    invoke-direct {p0, p1, p3}, Ltv/emby/embyatv/playback/VideoManager;->prepareMpvPlayer(Ljava/lang/String;Lmediabrowser/model/dto/MediaSourceInfo;)V

    :goto_1
    return-void
.end method

.method public setZoom(I)V
    .locals 3

    .line 158
    iput p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mZoomMode:I

    .line 159
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    const v1, 0x3faa3d71    # 1.33f

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is70()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setScaleY(F)V

    .line 188
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setScaleX(F)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is70()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 179
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setScaleY(F)V

    .line 180
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setScaleX(F)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is70()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setScaleY(F)V

    .line 172
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setScaleX(F)V

    goto :goto_0

    .line 174
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    goto :goto_0

    .line 162
    :pswitch_3
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is70()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 163
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setScaleX(F)V

    .line 164
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setScaleY(F)V

    goto :goto_0

    .line 166
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 3

    .line 225
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 228
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Ltv/emby/embyatv/playback/VideoManager;->exoMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 229
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setKeepScreenOn(Z)V

    .line 230
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Ltv/emby/embyatv/playback/VideoManager;->normalWidth:I

    .line 231
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Ltv/emby/embyatv/playback/VideoManager;->normalHeight:I

    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 260
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/VideoManager;->nativeMode:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager;->mVideoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 269
    :cond_0
    invoke-direct {p0}, Ltv/emby/embyatv/playback/VideoManager;->stopProgressLoop()V

    return-void
.end method
