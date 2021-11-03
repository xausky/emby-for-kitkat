.class public Ltv/emby/embyatv/playback/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ltv/emby/embyatv/playback/IPlaybackEventReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;
    }
.end annotation


# instance fields
.field private TYPE_AUDIO:I

.field private TYPE_VIDEO:I

.field private audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field private audioInitialized:Z

.field private lastProgressEvent:J

.field private lastProgressReport:J

.field private mAudioEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/playback/AudioEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioFocusChanged:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

.field private mCurrentAudioPosition:J

.field private mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field private mCurrentAudioQueuePosition:I

.field private mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

.field private mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field private mCurrentMediaPosition:I

.field private mCurrentThemeSongId:Ljava/lang/String;

.field private mCurrentVideoQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

.field private mExoErrorEncountered:Z

.field private mHandler:Landroid/os/Handler;

.field private mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field private mProgressLoop:Ljava/lang/Runnable;

.field private mRepeat:Z

.field private mThemeSongPlayer:Landroid/media/MediaPlayer;

.field private mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

.field private sessionId:I

.field private useMpv:Z

.field private videoQueueModified:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    .line 78
    iput v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    .line 90
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->useMpv:Z

    .line 94
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->videoQueueModified:Z

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    const/16 v1, 0x64

    .line 102
    iput v1, p0, Ltv/emby/embyatv/playback/MediaManager;->sessionId:I

    .line 286
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v1, Ltv/emby/embyatv/playback/MediaManager$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/MediaManager$3;-><init>(Ltv/emby/embyatv/playback/MediaManager;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mProgressLoop:Ljava/lang/Runnable;

    .line 389
    new-instance v1, Ltv/emby/embyatv/playback/MediaManager$4;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/MediaManager$4;-><init>(Ltv/emby/embyatv/playback/MediaManager;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioFocusChanged:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 440
    iput v0, p0, Ltv/emby/embyatv/playback/MediaManager;->TYPE_AUDIO:I

    const/4 v0, 0x1

    .line 441
    iput v0, p0, Ltv/emby/embyatv/playback/MediaManager;->TYPE_VIDEO:I

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/MediaManager;->startThemeAudio(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/playback/MediaManager;Ljava/util/List;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/MediaManager;->createAudioQueue(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$102(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentThemeSongId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/playback/MediaManager;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->fireQueueStatusChange()V

    return-void
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/playback/MediaManager;)I
    .locals 0

    .line 70
    iget p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    return p0
.end method

.method static synthetic access$1202(Ltv/emby/embyatv/playback/MediaManager;I)I
    .locals 0

    .line 70
    iput p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    return p1
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    return-object p0
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/playback/MediaManager;Ljava/util/List;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/MediaManager;->playNowInternal(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1500(Ltv/emby/embyatv/playback/MediaManager;)J
    .locals 2

    .line 70
    iget-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    return-wide v0
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/playback/MediaManager;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 70
    iget-object p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$1700(Ltv/emby/embyatv/playback/MediaManager;Lmediabrowser/model/dto/BaseItemDto;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/MediaManager;->playWithUniversalUrl(Lmediabrowser/model/dto/BaseItemDto;I)V

    return-void
.end method

.method static synthetic access$1800(Ltv/emby/embyatv/playback/MediaManager;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 70
    iget-object p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p0
.end method

.method static synthetic access$1802(Ltv/emby/embyatv/playback/MediaManager;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 70
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p1
.end method

.method static synthetic access$1900(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/api/StreamInfo;
    .locals 0

    .line 70
    iget-object p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    return-object p0
.end method

.method static synthetic access$1902(Ltv/emby/embyatv/playback/MediaManager;Ltv/emby/embyatv/api/StreamInfo;)Ltv/emby/embyatv/api/StreamInfo;
    .locals 0

    .line 70
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    return-object p1
.end method

.method static synthetic access$200(Ltv/emby/embyatv/playback/MediaManager;)Landroid/media/MediaPlayer;
    .locals 0

    .line 70
    iget-object p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$2000(Ltv/emby/embyatv/playback/MediaManager;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/MediaManager;->useMpv:Z

    return p0
.end method

.method static synthetic access$2100(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/MediaManager;->prepareMpvPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/MediaManager;->prepareExoPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Ltv/emby/embyatv/playback/MediaManager;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2400(Ltv/emby/embyatv/playback/MediaManager;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->startProgressLoop()V

    return-void
.end method

.method static synthetic access$2500(Ltv/emby/embyatv/playback/MediaManager;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopProgressLoop()V

    return-void
.end method

.method static synthetic access$2600(Ltv/emby/embyatv/playback/MediaManager;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mExoErrorEncountered:Z

    return p0
.end method

.method static synthetic access$2602(Ltv/emby/embyatv/playback/MediaManager;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mExoErrorEncountered:Z

    return p1
.end method

.method static synthetic access$2700(Ltv/emby/embyatv/playback/MediaManager;Lmediabrowser/model/dto/BaseItemDto;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/MediaManager;->playWithLegacyMethod(Lmediabrowser/model/dto/BaseItemDto;I)V

    return-void
.end method

.method static synthetic access$300(Ltv/emby/embyatv/playback/MediaManager;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->reportProgress()V

    return-void
.end method

.method static synthetic access$400(Ltv/emby/embyatv/playback/MediaManager;)Landroid/os/Handler;
    .locals 0

    .line 70
    iget-object p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/playback/MediaManager;)Landroid/media/AudioManager;
    .locals 0

    .line 70
    iget-object p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/playback/MediaManager;)I
    .locals 0

    .line 70
    iget p0, p0, Ltv/emby/embyatv/playback/MediaManager;->TYPE_AUDIO:I

    return p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/playback/MediaManager;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueueItemIds()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/playback/MediaManager;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueueItemIds()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    return-object p0
.end method

.method private createAudioQueue(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 416
    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    const/16 v3, 0x8c

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    sget-object v2, Ltv/emby/embyatv/querying/QueryType;->StaticAudioQueueItems:Ltv/emby/embyatv/querying/QueryType;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 417
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 418
    iput-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 419
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->fireQueueStatusChange()V

    return-void
.end method

.method private createExoPlayer()Z
    .locals 4

    .line 378
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 379
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    .line 381
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 383
    new-instance v0, Lcom/google/android/exoplayer2/util/EventLogger;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    .line 384
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;-><init>(Ltv/emby/embyatv/playback/MediaManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 385
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return v3
.end method

.method private createMpvPlayer()V
    .locals 0

    return-void
.end method

.method private ensureAudioFocus()Z
    .locals 5

    .line 695
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioFocusChanged:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 696
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to get audio focus"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100626

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return v2

    .line 702
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Ltv/emby/embyatv/util/RemoteControlReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return v2
.end method

.method private ensureInitialized()Z
    .locals 2

    .line 611
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->audioInitialized:Z

    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->initAudio()Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->audioInitialized:Z

    .line 615
    :cond_0
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->audioInitialized:Z

    if-nez v0, :cond_1

    .line 616
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "Unable to play audio"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 619
    :cond_1
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->audioInitialized:Z

    return v0
.end method

.method private fireQueueStatusChange()V
    .locals 5

    .line 408
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/playback/AudioEventListener;

    .line 409
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing queue state change listener. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/AudioEventListener;->onQueueStatusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCurrentAudioQueueItemIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 490
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 491
    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/itemhandling/AudioQueueItem;

    .line 492
    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/AudioQueueItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCurrentPosition()J
    .locals 2

    .line 350
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->useMpv:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 355
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentVideoQueueItemIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 503
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 504
    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isPaused()Z
    .locals 1

    .line 283
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method private pause()V
    .locals 2

    .line 971
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->useMpv:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :goto_0
    return-void
.end method

.method private playInternal(Lmediabrowser/model/dto/BaseItemDto;I)V
    .locals 3

    .line 734
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->ensureAudioFocus()Z

    .line 736
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 737
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/MediaManager;->playWithUniversalUrl(Lmediabrowser/model/dto/BaseItemDto;I)V

    goto :goto_0

    .line 739
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/playback/MediaManager$10;

    invoke-direct {v2, p0, p2}, Ltv/emby/embyatv/playback/MediaManager$10;-><init>(Ltv/emby/embyatv/playback/MediaManager;I)V

    invoke-virtual {v0, p1, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method

.method private playNowInternal(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;I)V"
        }
    .end annotation

    .line 656
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/MediaManager;->createAudioQueue(Ljava/util/List;)V

    add-int/lit8 v0, p2, -0x1

    .line 657
    iput v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    .line 658
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    .line 659
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getSupportsResume()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 660
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    iput-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    goto :goto_0

    .line 662
    :cond_0
    iput-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    .line 664
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->nextAudioItem()I

    .line 665
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    if-eq p2, v0, :cond_1

    .line 666
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    const-class v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 667
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 669
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v1, 0x7f100635

    :goto_1
    invoke-virtual {p1, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v1, 0x7f100633

    goto :goto_1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100658

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    const v2, 0x7f08005f

    invoke-virtual {p2, p1, v0, v1, v2}, Ltv/emby/embyatv/TvApp;->showMessage(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_3
    return-void
.end method

.method private playWithLegacyMethod(Lmediabrowser/model/dto/BaseItemDto;I)V
    .locals 8

    .line 789
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v6

    .line 790
    new-instance v3, Ltv/emby/embyatv/api/AudioOptions;

    invoke-direct {v3}, Ltv/emby/embyatv/api/AudioOptions;-><init>()V

    .line 791
    invoke-virtual {v6}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/api/AudioOptions;->setDeviceId(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/api/AudioOptions;->setItemId(Ljava/lang/String;)V

    .line 793
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getAutoBitrate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/api/AudioOptions;->setMaxBitrate(Ljava/lang/Integer;)V

    .line 794
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/api/AudioOptions;->setMediaSources(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 795
    invoke-static {v0}, Ltv/emby/embyatv/util/ProfileHelper;->getBaseProfile(Z)Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object v0

    .line 796
    invoke-static {v0}, Ltv/emby/embyatv/util/ProfileHelper;->setAudioOptions(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 797
    invoke-virtual {v3, v0}, Ltv/emby/embyatv/api/AudioOptions;->setProfile(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 798
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object v1

    invoke-virtual {v6}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v7, Ltv/emby/embyatv/playback/MediaManager$11;

    invoke-direct {v7, p0, p1, p2}, Ltv/emby/embyatv/playback/MediaManager$11;-><init>(Ltv/emby/embyatv/playback/MediaManager;Lmediabrowser/model/dto/BaseItemDto;I)V

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Ltv/emby/embyatv/api/PlaybackManager;->getAudioStreamInfo(Ljava/lang/String;Ltv/emby/embyatv/api/AudioOptions;Ljava/lang/Long;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private playWithUniversalUrl(Lmediabrowser/model/dto/BaseItemDto;I)V
    .locals 11

    .line 750
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/universal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?PlaySessionId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltv/emby/embyatv/playback/MediaManager;->sessionId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ltv/emby/embyatv/playback/MediaManager;->sessionId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&container=flac,ogg,oga,aac,mp3,mpa,wav,flv,mp2,webma,m4a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&deviceId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&userId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&maxStreamingBitrate=1500000"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&transcodingContainer=aac&transcodingProtocol=hls&audioCodec=aac&enableRedirection=true&enableRemoteMedia=false"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&api_key="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 760
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 761
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 762
    new-instance v1, Ltv/emby/embyatv/api/StreamInfo;

    invoke-direct {v1}, Ltv/emby/embyatv/api/StreamInfo;-><init>()V

    iput-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    .line 763
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/dto/MediaSourceInfo;

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/api/StreamInfo;->setMediaSource(Lmediabrowser/model/dto/MediaSourceInfo;)V

    .line 764
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/api/StreamInfo;->setRunTimeTicks(Ljava/lang/Long;)V

    .line 766
    :cond_0
    iput p2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    .line 767
    iput-boolean v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mExoErrorEncountered:Z

    .line 768
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playback attempt via native player of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p2, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->prepareExoPlayer(Ljava/lang/String;)V

    .line 771
    iget p2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    if-nez p2, :cond_1

    .line 773
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->createManagedAudioQueue()V

    :cond_1
    const/4 p2, 0x1

    .line 776
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/playback/MediaManager;->updateCurrentAudioItemPlaying(Z)V

    .line 777
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ltv/emby/embyatv/TvApp;->setLastMusicPlayback(J)V

    .line 779
    iget-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    const-wide/16 v3, 0x2710

    mul-long v6, v0, v3

    const/4 v8, 0x0

    iget p2, p0, Ltv/emby/embyatv/playback/MediaManager;->sessionId:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Ltv/emby/embyatv/util/Utils;->ReportStart(Lmediabrowser/model/dto/BaseItemDto;JLmediabrowser/model/dto/MediaSourceInfo;Ljava/lang/String;Lmediabrowser/model/session/PlayMethod;)V

    .line 780
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltv/emby/embyatv/playback/AudioEventListener;

    .line 781
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing playback state change listener for item start. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2, v0, v1}, Ltv/emby/embyatv/playback/AudioEventListener;->onPlaybackStateChange(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private prepareExoPlayer(Ljava/lang/String;)V
    .locals 4

    .line 708
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    const-string v3, "Emby"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, ".m3u8"

    .line 711
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    .line 712
    :goto_0
    iget-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 713
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Ltv/emby/embyatv/playback/MediaManager$9;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/MediaManager$9;-><init>(Ltv/emby/embyatv/playback/MediaManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 723
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 724
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method private prepareMpvPlayer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private releaseMpvPlayer()V
    .locals 0

    return-void
.end method

.method private releaseThemeSongPlayer()V
    .locals 1

    .line 276
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private reportProgress()V
    .locals 14

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/emby/embyatv/playback/MediaManager;->lastProgressEvent:J

    const-wide/16 v4, 0x2ee

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->lastProgressEvent:J

    .line 308
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    .line 311
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/playback/AudioEventListener;

    .line 312
    iget-wide v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/playback/AudioEventListener;->onProgress(J)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/emby/embyatv/playback/MediaManager;->lastProgressReport:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 317
    iget-object v6, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v7, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    iget-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    mul-long v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->isPaused()Z

    move-result v9

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "TimeUpdate"

    new-instance v13, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v13}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-static/range {v6 .. v13}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->lastProgressReport:J

    .line 319
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-wide v1, p0, Ltv/emby/embyatv/playback/MediaManager;->lastProgressReport:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltv/emby/embyatv/TvApp;->setLastUserInteraction(JZ)V

    :cond_2
    return-void
.end method

.method private resume()V
    .locals 2

    .line 979
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->useMpv:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 982
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :goto_0
    return-void
.end method

.method private startProgressLoop()V
    .locals 2

    .line 296
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mProgressLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startThemeAudio(Ljava/lang/String;)V
    .locals 3

    .line 250
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopThemeAudio()V

    .line 251
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    .line 253
    :try_start_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Ltv/emby/embyatv/playback/MediaManager$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/MediaManager$2;-><init>(Ltv/emby/embyatv/playback/MediaManager;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 261
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 263
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error playing theme song"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private stop()V
    .locals 1

    .line 945
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->useMpv:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 953
    :goto_0
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopProgressLoop()V

    return-void
.end method

.method private stopProgressLoop()V
    .locals 2

    .line 300
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mProgressLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopThemeAudio()V
    .locals 1

    .line 268
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mThemeSongPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 270
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->releaseThemeSongPlayer()V

    :cond_0
    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentThemeSongId:Ljava/lang/String;

    return-void
.end method

.method private supportsAudio(I)Z
    .locals 1

    .line 197
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V
    .locals 2

    .line 167
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added event listener.  Total listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public addToAudioQueue(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/MediaManager;->createAudioQueue(Ljava/util/List;)V

    goto :goto_1

    .line 564
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    .line 565
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/dto/BaseItemDto;

    .line 566
    new-instance v3, Ltv/emby/embyatv/itemhandling/AudioQueueItem;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v3, v0, v2}, Ltv/emby/embyatv/itemhandling/AudioQueueItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    .line 567
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    move v0, v4

    goto :goto_0

    .line 570
    :cond_2
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->fireQueueStatusChange()V

    .line 572
    :goto_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v2, 0x7f100635

    :goto_2
    invoke-virtual {p1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v2, 0x7f100633

    goto :goto_2

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    const v3, 0x7f100658

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    const v3, 0x7f08005f

    invoke-virtual {v0, p1, v1, v2, v3}, Ltv/emby/embyatv/TvApp;->showMessage(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public addToVideoQueue(Lmediabrowser/model/dto/BaseItemDto;)I
    .locals 8

    .line 525
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    .line 526
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->videoQueueModified:Z

    .line 528
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/TvApp;->setLastVideoQueueChange(J)V

    .line 529
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 530
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    sget-object v2, Ltv/emby/embyatv/base/CustomMessage;->RefreshRows:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    .line 532
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 534
    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmediabrowser/model/dto/BaseItemDto;

    .line 535
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    div-long/2addr v4, v6

    add-long/2addr v1, v4

    goto :goto_0

    .line 538
    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    const v5, 0x7f100663

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 539
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    return p1
.end method

.method public clearAudioQueue()V
    .locals 2

    .line 543
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    new-instance v1, Ltv/emby/embyatv/playback/MediaManager$6;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/MediaManager$6;-><init>(Ltv/emby/embyatv/playback/MediaManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public clearVideoQueue()V
    .locals 1

    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    const/4 v0, 0x0

    .line 1065
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->videoQueueModified:Z

    return-void
.end method

.method public createManagedAudioQueue()V
    .locals 7

    .line 144
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    .line 148
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 149
    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v4, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    if-ltz v3, :cond_2

    iget v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 154
    iget-object v4, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    :cond_3
    new-instance v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v4, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    const/16 v6, 0x96

    invoke-static {v5, v6}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v2, v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    const/4 v5, 0x0

    sget-object v6, Ltv/emby/embyatv/querying/QueryType;->StaticAudioQueueItems:Ltv/emby/embyatv/querying/QueryType;

    invoke-direct {v3, v0, v4, v5, v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    iput-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 157
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 159
    :cond_4
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->setIsPlaying(Z)V

    :cond_5
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 189
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->audioInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopAudio()V

    .line 191
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 193
    :cond_0
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->releaseThemeSongPlayer()V

    return-void
.end method

.method public getCurrentAudioItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 2

    .line 132
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentAudioPosition()J
    .locals 2

    .line 128
    iget-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    return-wide v0
.end method

.method public getCurrentAudioQueue()Ltv/emby/embyatv/itemhandling/ItemRowAdapter;
    .locals 1

    .line 137
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    return-object v0
.end method

.method public getCurrentAudioQueueDisplayPosition()Ljava/lang/String;
    .locals 2

    .line 129
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    add-int/2addr v1, v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAudioQueueDisplaySize()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public getCurrentAudioQueuePosition()I
    .locals 1

    .line 127
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    return v0
.end method

.method public getCurrentAudioQueueSize()I
    .locals 1

    .line 126
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentMediaAdapter()Ltv/emby/embyatv/itemhandling/ItemRowAdapter;
    .locals 1

    .line 107
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    return-object v0
.end method

.method public getCurrentMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 1

    .line 1026
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->getMediaItem(I)Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaPosition()I
    .locals 1

    .line 117
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    return v0
.end method

.method public getCurrentVideoQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    return-object v0
.end method

.method public getManagedAudioQueue()Ltv/emby/embyatv/itemhandling/ItemRowAdapter;
    .locals 1

    .line 139
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->createManagedAudioQueue()V

    .line 140
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    return-object v0
.end method

.method public getMaxAudioChannels()I
    .locals 5

    .line 201
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Max Audio Channels reported as: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getMaxChannelCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 202
    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->supportsAudio(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getMaxChannelCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getMediaItem(I)Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 1

    .line 1023
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getNextAudioItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 2

    .line 850
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    add-int/lit8 v0, v0, 0x1

    .line 853
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 854
    :cond_1
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevAudioItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 2

    .line 858
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 861
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 862
    :cond_1
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedAudio()Ljava/lang/String;
    .locals 4

    const-string v0, ",aac_latm,mp4a_latm"

    const/4 v1, 0x5

    .line 207
    invoke-direct {p0, v1}, Ltv/emby/embyatv/playback/MediaManager;->supportsAudio(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ac3"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x6

    .line 208
    invoke-direct {p0, v1}, Ltv/emby/embyatv/playback/MediaManager;->supportsAudio(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",eac3"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isMi3()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is70()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_allow_dts"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is70()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Ltv/emby/embyatv/playback/MediaManager;->supportsAudio(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",dts,dca,dtshd"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const/16 v1, 0xe

    .line 210
    invoke-direct {p0, v1}, Ltv/emby/embyatv/playback/MediaManager;->supportsAudio(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",truehd"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_5
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reported device audio support is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public hasAudioQueueItems()Z
    .locals 1

    .line 109
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNextAudioItem()Z
    .locals 3

    .line 865
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    if-nez v0, :cond_1

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public hasNextMediaItem()Z
    .locals 3

    .line 1052
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    iget v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hasPrevAudioItem()Z
    .locals 1

    .line 866
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevMediaItem()Z
    .locals 1

    .line 1053
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVideoQueueItems()Z
    .locals 1

    .line 110
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initAudio()Z
    .locals 4

    .line 176
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    .line 178
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 179
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Unable to get audio manager"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v2, 0x7f100626

    invoke-static {v0, v2}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return v1

    .line 185
    :cond_1
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->useMpv:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->createExoPlayer()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isPlayingAudio()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->audioInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRepeatMode()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    return v0
.end method

.method public isVideoQueueModified()Z
    .locals 1

    .line 1056
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->videoQueueModified:Z

    return v0
.end method

.method public nextAudioItem()I
    .locals 4

    .line 893
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 894
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/playback/MediaManager;->updateCurrentAudioItemPlaying(Z)V

    .line 897
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 898
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopAudio()V

    .line 899
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 901
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeItems(II)I

    .line 903
    :cond_2
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    add-int/2addr v0, v2

    .line 904
    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    const-wide/16 v1, 0x0

    .line 905
    iput-wide v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    .line 906
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->getNextAudioItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ltv/emby/embyatv/playback/MediaManager;->playInternal(Lmediabrowser/model/dto/BaseItemDto;I)V

    return v0

    :cond_4
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public nextMedia()Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 3

    .line 1028
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasNextMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    .line 1030
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->loadMoreItemsIfNeeded(J)V

    .line 1033
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    return-object v0
.end method

.method public onComplete()V
    .locals 5

    .line 330
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopProgressLoop()V

    .line 331
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/UserItemDataDto;->setPlayed(Z)V

    .line 332
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    iget v2, p0, Ltv/emby/embyatv/playback/MediaManager;->sessionId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    invoke-static {v0, v1, v2, v3, v4}, Ltv/emby/embyatv/util/Utils;->ReportStopped(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;J)V

    const-wide/16 v0, 0x0

    .line 333
    iput-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    .line 334
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->nextAudioItem()I

    .line 337
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/playback/AudioEventListener;

    .line 338
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing playback state change listener for item completion. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    sget-object v2, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/playback/AudioEventListener;->onPlaybackStateChange(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->startProgressLoop()V

    return-void
.end method

.method public onProgress()V
    .locals 0

    return-void
.end method

.method public pauseAudio()V
    .locals 7

    .line 987
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 988
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->updateCurrentAudioItemPlaying(Z)V

    .line 989
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->pause()V

    .line 990
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    const-wide/16 v1, 0x2710

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    iget-wide v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    mul-long v3, v3, v1

    invoke-virtual {v0, v3, v4}, Lmediabrowser/model/dto/UserItemDataDto;->setPlaybackPositionTicks(J)V

    .line 991
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    iget v4, p0, Ltv/emby/embyatv/playback/MediaManager;->sessionId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    mul-long v5, v5, v1

    invoke-static {v0, v3, v4, v5, v6}, Ltv/emby/embyatv/util/Utils;->ReportStopped(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;J)V

    .line 992
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/playback/AudioEventListener;

    .line 993
    sget-object v2, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/playback/AudioEventListener;->onPlaybackStateChange(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_0

    .line 996
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ltv/emby/embyatv/util/RemoteControlReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->lastProgressReport:J

    .line 998
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopProgressLoop()V

    :cond_2
    return-void
.end method

.method public peekNextMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 1

    .line 1045
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasNextMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->getMediaItem(I)Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public peekPrevMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 1

    .line 1049
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasPrevMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->getMediaItem(I)Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public playFrom(I)Z
    .locals 3

    .line 683
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 685
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopAudio()V

    :cond_1
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 687
    iput p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    const-wide/16 v1, 0x0

    .line 688
    iput-wide v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    .line 689
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->createManagedAudioQueue()V

    .line 690
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->nextAudioItem()I

    return v0
.end method

.method public playNow(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;I)V

    return-void
.end method

.method public playNow(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 625
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;IZ)V

    return-void
.end method

.method public playNow(Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;IZ)V"
        }
    .end annotation

    .line 629
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 631
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 632
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1004ef

    .line 633
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x7f100648

    .line 634
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x7f1003c0

    new-instance v1, Ltv/emby/embyatv/playback/MediaManager$8;

    invoke-direct {v1, p0, p1, p2}, Ltv/emby/embyatv/playback/MediaManager$8;-><init>(Ltv/emby/embyatv/playback/MediaManager;Ljava/util/List;I)V

    .line 635
    invoke-virtual {p3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f10043f

    new-instance v0, Ltv/emby/embyatv/playback/MediaManager$7;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/playback/MediaManager$7;-><init>(Ltv/emby/embyatv/playback/MediaManager;Ljava/util/List;)V

    .line 641
    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f100464

    const/4 p3, 0x0

    .line 647
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 648
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 650
    :cond_1
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/MediaManager;->playNowInternal(Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method public playNow(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 675
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 677
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;)V

    return-void
.end method

.method public playThemeSong(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentThemeSongId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v6

    .line 223
    new-instance v3, Ltv/emby/embyatv/api/AudioOptions;

    invoke-direct {v3}, Ltv/emby/embyatv/api/AudioOptions;-><init>()V

    .line 224
    invoke-virtual {v6}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/api/AudioOptions;->setDeviceId(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v3, p1}, Ltv/emby/embyatv/api/AudioOptions;->setItemId(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getAutoBitrate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/api/AudioOptions;->setMaxBitrate(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 227
    invoke-static {v0}, Ltv/emby/embyatv/util/ProfileHelper;->getBaseProfile(Z)Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object v0

    .line 228
    invoke-static {v0}, Ltv/emby/embyatv/util/ProfileHelper;->setAudioOptions(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 229
    invoke-virtual {v3, v0}, Ltv/emby/embyatv/api/AudioOptions;->setProfile(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 230
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object v1

    invoke-virtual {v6}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v7, Ltv/emby/embyatv/playback/MediaManager$1;

    invoke-direct {v7, p0, p1}, Ltv/emby/embyatv/playback/MediaManager$1;-><init>(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v7}, Ltv/emby/embyatv/api/PlaybackManager;->getAudioStreamInfo(Ljava/lang/String;Ltv/emby/embyatv/api/AudioOptions;Ljava/lang/Long;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V

    :cond_0
    return-void
.end method

.method public playVideosFromMediaPosition(Landroid/content/Context;I)V
    .locals 2

    .line 423
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v0

    if-lez v0, :cond_1

    .line 424
    iput p2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    .line 425
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getLoadedBaseItems(I)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    .line 426
    iget-object p2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 428
    iget-object p2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmediabrowser/model/dto/BaseItemDto;

    .line 429
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    div-int/lit16 v0, p2, 0x2710

    .line 431
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v1, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Position"

    .line 432
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const p2, 0x7f100639

    .line 437
    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public prevAudioItem()I
    .locals 7

    .line 921
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 923
    invoke-virtual {p0, v1, v2}, Ltv/emby/embyatv/playback/MediaManager;->seekTo(J)J

    .line 924
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    return v0

    .line 927
    :cond_1
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    if-ge v0, v3, :cond_2

    .line 929
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    return v0

    .line 933
    :cond_2
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopAudio()V

    .line 934
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    sub-int/2addr v0, v3

    .line 935
    iput-wide v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    .line 936
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v1, :cond_3

    .line 937
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v2, 0x0

    iget-object v4, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(ILjava/lang/Object;)V

    :cond_3
    if-gez v0, :cond_4

    .line 939
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 940
    :cond_4
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->getPrevAudioItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ltv/emby/embyatv/playback/MediaManager;->playInternal(Lmediabrowser/model/dto/BaseItemDto;I)V

    return v0

    :cond_5
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public prevMedia()Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 1

    .line 1037
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasPrevMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    .line 1041
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    return-object v0
.end method

.method public queueAudioItem(ILmediabrowser/model/dto/BaseItemDto;)I
    .locals 4

    .line 512
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->createAudioQueue(Ljava/util/List;)V

    .line 513
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {v1, p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    .line 514
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    const v3, 0x7f10061f

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ltv/emby/embyatv/util/Utils;->GetFullName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0xfa0

    const v3, 0x7f08005f

    invoke-virtual {v0, v1, p2, v2, v3}, Ltv/emby/embyatv/TvApp;->showMessage(Ljava/lang/String;Ljava/lang/String;II)V

    return p1
.end method

.method public queueAudioItem(Lmediabrowser/model/dto/BaseItemDto;)I
    .locals 3

    .line 519
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->createAudioQueue(Ljava/util/List;)V

    .line 520
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/itemhandling/AudioQueueItem;

    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    invoke-direct {v1, v2, p1}, Ltv/emby/embyatv/itemhandling/AudioQueueItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    .line 521
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public removeAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V
    .locals 2

    .line 171
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed event listener.  Total listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeFromAudioQueue(I)V
    .locals 3

    .line 576
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_3

    .line 578
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopAudio()V

    .line 579
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    .line 582
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeItems(II)I

    .line 583
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    const-wide/16 v0, 0x0

    .line 584
    iput-wide v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    if-ltz p1, :cond_1

    .line 585
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 586
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->nextAudioItem()I

    goto :goto_0

    .line 588
    :cond_1
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 590
    :cond_2
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->fireQueueStatusChange()V

    goto :goto_0

    .line 594
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeItems(II)I

    .line 595
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v0, :cond_4

    .line 596
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mManagedAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->findByIndex(I)Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    .line 601
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 602
    :goto_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 603
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->setIndex(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public resumeAudio()V
    .locals 7

    .line 1003
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 1004
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->ensureAudioFocus()Z

    .line 1005
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->resume()V

    const/4 v0, 0x1

    .line 1006
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->updateCurrentAudioItemPlaying(Z)V

    .line 1007
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->startProgressLoop()V

    .line 1008
    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-wide v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    const/4 v4, 0x0

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->sessionId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    invoke-static/range {v1 .. v6}, Ltv/emby/embyatv/util/Utils;->ReportStart(Lmediabrowser/model/dto/BaseItemDto;JLmediabrowser/model/dto/MediaSourceInfo;Ljava/lang/String;Lmediabrowser/model/session/PlayMethod;)V

    .line 1009
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/playback/AudioEventListener;

    .line 1010
    sget-object v2, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/playback/AudioEventListener;->onPlaybackStateChange(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_0

    .line 1012
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->playInternal(Lmediabrowser/model/dto/BaseItemDto;I)V

    :cond_1
    return-void
.end method

.method public saveAudioQueue(Landroid/content/Context;)V
    .locals 1

    .line 444
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->TYPE_AUDIO:I

    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->saveQueue(Landroid/content/Context;I)V

    return-void
.end method

.method public saveQueue(Landroid/content/Context;I)V
    .locals 2

    .line 453
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x2000

    .line 454
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 455
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f100597

    .line 456
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "Enter a name for the new playlist"

    .line 457
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 458
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Ltv/emby/embyatv/playback/MediaManager$5;

    invoke-direct {v1, p0, v0, p2}, Ltv/emby/embyatv/playback/MediaManager$5;-><init>(Ltv/emby/embyatv/playback/MediaManager;Landroid/widget/EditText;I)V

    const p2, 0x7f1003b5

    .line 459
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public saveVideoQueue(Landroid/content/Context;)V
    .locals 1

    .line 448
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->TYPE_VIDEO:I

    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->saveQueue(Landroid/content/Context;I)V

    return-void
.end method

.method public seekTo(J)J
    .locals 1

    .line 911
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->useMpv:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :goto_0
    return-wide p1
.end method

.method public setCurrentMediaAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 113
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    return-void
.end method

.method public setCurrentMediaPosition(I)V
    .locals 0

    .line 1019
    iput p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentMediaPosition:I

    return-void
.end method

.method public setCurrentVideoQueue(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentVideoQueue:Ljava/util/List;

    .line 122
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Video queue loaded with %d items"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVideoQueueModified(Z)V
    .locals 0

    return-void
.end method

.method public shuffleAudioQueue()V
    .locals 3

    .line 837
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 839
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 840
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 841
    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueue:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 845
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;)V

    return-void
.end method

.method public stopAudio()V
    .locals 7

    .line 957
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->stop()V

    const/4 v0, 0x0

    .line 959
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/MediaManager;->updateCurrentAudioItemPlaying(Z)V

    .line 960
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    iget v2, p0, Ltv/emby/embyatv/playback/MediaManager;->sessionId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioPosition:J

    const-wide/16 v5, 0x2710

    mul-long v3, v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Ltv/emby/embyatv/util/Utils;->ReportStopped(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;J)V

    .line 961
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/playback/AudioEventListener;

    .line 962
    sget-object v2, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/playback/AudioEventListener;->onPlaybackStateChange(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_0

    .line 965
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ltv/emby/embyatv/util/RemoteControlReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method public stopThemeSong()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ltv/emby/embyatv/playback/MediaManager;->stopThemeAudio()V

    return-void
.end method

.method public toggleRepeat()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    iget-boolean v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mRepeat:Z

    return v0
.end method

.method public updateCurrentAudioItemPlaying(Z)V
    .locals 2

    .line 869
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager;->mCurrentAudioQueuePosition:I

    if-gez v0, :cond_0

    return-void

    .line 870
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 872
    new-instance v1, Ltv/emby/embyatv/playback/MediaManager$12;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/playback/MediaManager$12;-><init>(Ltv/emby/embyatv/playback/MediaManager;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
