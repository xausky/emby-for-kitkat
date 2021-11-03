.class public final Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private buildCalled:Z

.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final context:Landroid/content/Context;

.field private loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private looper:Landroid/os/Looper;

.field private final renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private useLazyPreparation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 126
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V
    .locals 10

    .line 139
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 144
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v5

    .line 145
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getLooper()Landroid/os/Looper;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    sget-object v9, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 139
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;ZLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;ZLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->context:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    .line 181
    iput-object p3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 182
    iput-object p4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 183
    iput-object p5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 184
    iput-object p6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 185
    iput-object p7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 186
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->useLazyPreparation:Z

    .line 187
    iput-object p9, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 11

    .line 294
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 295
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    .line 296
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iget-object v8, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    iget-object v9, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iget-object v10, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->looper:Landroid/os/Looper;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V

    return-object v0
.end method

.method public setAnalyticsCollector(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object p0
.end method

.method public setBandwidthMeter(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 225
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-object p0
.end method

.method public setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 283
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 284
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method public setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 212
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 239
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 199
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    return-object p0
.end method

.method public setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 269
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->useLazyPreparation:Z

    return-object p0
.end method
