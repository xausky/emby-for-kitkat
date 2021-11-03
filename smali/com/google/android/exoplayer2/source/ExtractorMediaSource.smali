.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final progressiveMediaSource:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .locals 7
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 257
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V
    .locals 8
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v7, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 280
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V
    .locals 8
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 322
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;

    invoke-direct {p1, p5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    invoke-virtual {p0, p4, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 333
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 334
    new-instance v9, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    .line 339
    invoke-static {}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->getDummyDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object v4

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v0, p0

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->progressiveMediaSource:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$1;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->progressiveMediaSource:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->progressiveMediaSource:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 361
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 354
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 355
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->progressiveMediaSource:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->progressiveMediaSource:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method
