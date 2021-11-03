.class public final Lcom/google/android/exoplayer2/offline/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadHelper$DummyBandwidthMeter;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;
    }
.end annotation


# static fields
.field private static final DASH_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TRACK_SELECTOR_PARAMETERS:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field public static final DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final HLS_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final SS_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

.field private final callbackHandler:Landroid/os/Handler;

.field private final downloadType:Ljava/lang/String;

.field private immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private isPreparedWithMedia:Z

.field private mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private final scratchSet:Landroid/util/SparseIntArray;

.field private trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private final uri:Landroid/net/Uri;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 97
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 104
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 112
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const-string v0, "com.google.android.exoplayer2.source.dash.DashMediaSource$Factory"

    .line 147
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DASH_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const-string v0, "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"

    .line 151
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->SS_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const-string v0, "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"

    .line 155
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->HLS_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/RendererCapabilities;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->downloadType:Ljava/lang/String;

    .line 503
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->uri:Landroid/net/Uri;

    .line 504
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->cacheKey:Ljava/lang/String;

    .line 505
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 506
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance p2, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V

    invoke-direct {p1, p5, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 508
    iput-object p6, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 509
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    .line 510
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    sget-object p2, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$7Z-k9CqspX3ZiYWCChYkf8Ai-TY;->INSTANCE:Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$7Z-k9CqspX3ZiYWCChYkf8Ai-TY;

    new-instance p4, Lcom/google/android/exoplayer2/offline/DownloadHelper$DummyBandwidthMeter;

    invoke-direct {p4, p3}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DummyBandwidthMeter;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V

    invoke-virtual {p1, p2, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 511
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    .line 512
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->onMediaPrepared()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->onMediaPreparationFailed(Ljava/io/IOException;)V

    return-void
.end method

.method private assertPreparedWithMedia()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 837
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->isPreparedWithMedia:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-void
.end method

.method public static createMediaSource(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->createMediaSource(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static createMediaSource(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/offline/DownloadRequest;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;)",
            "Lcom/google/android/exoplayer2/source/MediaSource;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe60

    if-eq v1, v2, :cond_3

    const v2, 0x193ef

    if-eq v1, v2, :cond_2

    const v2, 0x2eef92

    if-eq v1, v2, :cond_1

    const v2, 0x43720b8b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "progressive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v1, "dash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "hls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 454
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->type:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 450
    :pswitch_0
    new-instance p2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 451
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 452
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0

    .line 447
    :pswitch_1
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->HLS_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    goto :goto_2

    .line 444
    :pswitch_2
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->SS_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    goto :goto_2

    .line 441
    :pswitch_3
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DASH_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 456
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    invoke-static {v0, v1, p1, p2, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->createMediaSourceInternal(Ljava/lang/reflect/Constructor;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/List;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createMediaSourceInternal(Ljava/lang/reflect/Constructor;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/List;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2
    .param p0    # Ljava/lang/reflect/Constructor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/MediaSource;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 927
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    if-eqz p3, :cond_0

    .line 929
    invoke-interface {p0, p3}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    :cond_0
    if-eqz p4, :cond_1

    .line 932
    invoke-interface {p0, p4}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 934
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 936
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to instantiate media source."

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 924
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Module missing to create media source."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forDash(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1

    .line 238
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 233
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forDash(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forDash(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forDash(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forDash(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 8
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/RenderersFactory;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Lcom/google/android/exoplayer2/offline/DownloadHelper;"
        }
    .end annotation

    .line 261
    new-instance v7, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    const-string v1, "dash"

    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DASH_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    .line 265
    invoke-static {v0, p0, p1, p3, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->createMediaSourceInternal(Ljava/lang/reflect/Constructor;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/List;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v4

    .line 272
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->getRendererCapabilities(Lcom/google/android/exoplayer2/RenderersFactory;)[Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/RendererCapabilities;)V

    return-object v7
.end method

.method public static forHls(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1

    .line 308
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 303
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forHls(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forHls(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forHls(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forHls(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 8
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/RenderersFactory;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Lcom/google/android/exoplayer2/offline/DownloadHelper;"
        }
    .end annotation

    .line 331
    new-instance v7, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    const-string v1, "hls"

    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->HLS_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    .line 335
    invoke-static {v0, p0, p1, p3, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->createMediaSourceInternal(Ljava/lang/reflect/Constructor;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/List;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v4

    .line 342
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->getRendererCapabilities(Lcom/google/android/exoplayer2/RenderersFactory;)[Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/RendererCapabilities;)V

    return-object v7
.end method

.method public static forProgressive(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forProgressive(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forProgressive(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 196
    new-instance v7, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    const-string v1, "progressive"

    .line 201
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v5

    const/4 p0, 0x0

    new-array v6, p0, [Lcom/google/android/exoplayer2/RendererCapabilities;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/RendererCapabilities;)V

    return-object v7
.end method

.method public static forProgressive(Landroid/net/Uri;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forProgressive(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forProgressive(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    new-instance v7, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    const-string v1, "progressive"

    sget-object v5, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const/4 v0, 0x0

    new-array v6, v0, [Lcom/google/android/exoplayer2/RendererCapabilities;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/RendererCapabilities;)V

    return-object v7
.end method

.method public static forSmoothStreaming(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1

    .line 378
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 373
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forSmoothStreaming(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forSmoothStreaming(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forSmoothStreaming(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forSmoothStreaming(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 8
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/RenderersFactory;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Lcom/google/android/exoplayer2/offline/DownloadHelper;"
        }
    .end annotation

    .line 401
    new-instance v7, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    const-string v1, "ss"

    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->SS_FACTORY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    .line 405
    invoke-static {v0, p0, p1, p3, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->createMediaSourceInternal(Ljava/lang/reflect/Constructor;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/List;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v4

    .line 412
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->getRendererCapabilities(Lcom/google/android/exoplayer2/RenderersFactory;)[Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/RendererCapabilities;)V

    return-object v7
.end method

.method private static getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;"
        }
    .end annotation

    .line 905
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    .line 906
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 913
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 117
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$onMediaPreparationFailed$3(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;->onPrepareError(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic lambda$onMediaPrepared$2(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;->onPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void
.end method

.method public static synthetic lambda$prepare$1(Lcom/google/android/exoplayer2/offline/DownloadHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
    .locals 0

    .line 527
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;->onPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void
.end method

.method private onMediaPreparationFailed(Ljava/io/IOException;)V
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$hBjdVZS3HCrpBmhEy6EcRovW3kg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$hBjdVZS3HCrpBmhEy6EcRovW3kg;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    .line 810
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onMediaPrepared()V
    .locals 7

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v0, v0

    .line 783
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v1, v1

    .line 784
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    .line 786
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    .line 790
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v5, v5, v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v5, v4

    .line 791
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    .line 792
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 795
    :cond_1
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 796
    new-array v1, v0, [Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    :goto_2
    if-ge v2, v0, :cond_2

    .line 798
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    aput-object v3, v1, v2

    .line 799
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->runTrackSelection(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 800
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 801
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 803
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->setPreparedWithMedia()V

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$_iOCksPNImdYV3GPIY_-Y59Pllc;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$_iOCksPNImdYV3GPIY_-Y59Pllc;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    .line 805
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runTrackSelection(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v2, v2, p1

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 858
    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 855
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 860
    :goto_0
    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    if-ge v2, v3, :cond_7

    .line 861
    iget-object v3, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 865
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v4, v4, p1

    aget-object v4, v4, v2

    const/4 v5, 0x0

    .line 868
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 869
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 870
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 872
    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    const/4 v7, 0x0

    .line 873
    :goto_2
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 874
    iget-object v8, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 876
    :goto_3
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 877
    iget-object v8, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-interface {v3, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 879
    :cond_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    const/4 v8, 0x0

    .line 880
    :goto_4
    iget-object v9, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 881
    iget-object v9, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 883
    :cond_3
    new-instance v8, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;

    .line 884
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-direct {v8, v6, v7}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 883
    invoke-interface {v4, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_6

    .line 890
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0

    :catch_0
    move-exception p1

    .line 896
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setPreparedWithMedia()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    const/4 v0, 0x1

    .line 823
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->isPreparedWithMedia:Z

    return-void
.end method


# virtual methods
.method public varargs addAudioLanguagesToSelection([Ljava/lang/String;)V
    .locals 8

    .line 656
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 657
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 658
    sget-object v2, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 659
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    .line 660
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v3, v3, v1

    .line 661
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 663
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 664
    invoke-virtual {v2, v5, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 667
    :cond_1
    array-length v3, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 668
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 669
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelection(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public varargs addTextLanguagesToSelection(Z[Ljava/lang/String;)V
    .locals 8

    .line 686
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 687
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 688
    sget-object v2, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 689
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    .line 690
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v3, v3, v1

    .line 691
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 693
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/4 v6, 0x1

    .line 694
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 697
    :cond_1
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 698
    array-length v3, p2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    .line 699
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 700
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelection(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public addTrackSelection(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    .line 642
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 644
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->runTrackSelection(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    return-void
.end method

.method public addTrackSelectionForSingleRenderer(IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 721
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 722
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 723
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eq v1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 724
    :goto_1
    invoke-virtual {p3, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelection(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    goto :goto_3

    .line 729
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    .line 730
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 731
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {p3, p2, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 732
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelection(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public clearTrackSelections(I)V
    .locals 2

    .line 612
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    const/4 v0, 0x0

    .line 613
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDownloadRequest(Ljava/lang/String;[B)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 15
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 757
    iget-object v1, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v1, :cond_0

    .line 758
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v4, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->downloadType:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->uri:Landroid/net/Uri;

    .line 759
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->cacheKey:Ljava/lang/String;

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/offline/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[B)V

    return-object v1

    .line 761
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 762
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 763
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 764
    iget-object v2, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 766
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 767
    iget-object v5, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v5, v5, v4

    array-length v5, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 769
    iget-object v7, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v7, v7, v4

    aget-object v7, v7, v6

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 771
    :cond_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v5, v5, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v5, v5, v4

    invoke-interface {v5, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 773
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v10, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->downloadType:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->uri:Landroid/net/Uri;

    iget-object v13, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->cacheKey:Ljava/lang/String;

    move-object v8, v1

    move-object/from16 v9, p1

    move-object/from16 v14, p2

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/offline/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[B)V

    return-object v1
.end method

.method public getDownloadRequest([B)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 745
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDownloadRequest(Ljava/lang/String;[B)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public getManifest()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 549
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMappedTrackInfo(I)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .line 588
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 589
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v0, v0

    return v0
.end method

.method public getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 576
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTrackSelections(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            ">;"
        }
    .end annotation

    .line 601
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public prepare(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 523
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_1

    .line 525
    new-instance p1, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p1, v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    goto :goto_1

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$ZOKf-pP2P3thbrI24BJPKtIhRsc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$ZOKf-pP2P3thbrI24BJPKtIhRsc;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->release()V

    :cond_0
    return-void
.end method

.method public replaceTrackSelections(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 0

    .line 628
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->clearTrackSelections(I)V

    .line 629
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelection(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method
