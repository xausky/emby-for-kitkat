.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field private final playerHandler:Landroid/os/Handler;

.field private volatile released:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$onAdPlaybackState$0(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method


# virtual methods
.method public synthetic onAdClicked()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener$-CC;->$default$onAdClicked(Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method public onAdLoadError(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 16

    move-object/from16 v0, p0

    .line 393
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v1, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v3

    move-object/from16 v1, p2

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 400
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x6

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    move-object/from16 v4, p2

    move-object/from16 v14, p1

    .line 397
    invoke-virtual/range {v3 .. v15}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 2

    .line 379
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$EnOXLA4Xyh_hsc2De4jHB6dR5vU;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$EnOXLA4Xyh_hsc2De4jHB6dR5vU;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic onAdTapped()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener$-CC;->$default$onAdTapped(Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
