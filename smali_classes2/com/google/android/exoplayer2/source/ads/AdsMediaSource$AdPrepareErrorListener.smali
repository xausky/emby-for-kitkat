.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdPrepareErrorListener"
.end annotation


# instance fields
.field private final adGroupIndex:I

.field private final adIndexInAdGroup:I

.field private final adUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;II)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->adUri:Landroid/net/Uri;

    .line 418
    iput p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->adGroupIndex:I

    .line 419
    iput p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->adIndexInAdGroup:I

    return-void
.end method

.method public static synthetic lambda$onPrepareError$0(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;Ljava/io/IOException;)V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->adGroupIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->adIndexInAdGroup:I

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->handlePrepareError(IILjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public onPrepareError(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 15

    move-object v0, p0

    .line 424
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->adUri:Landroid/net/Uri;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->adUri:Landroid/net/Uri;

    .line 428
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 433
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;->createForAd(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v13

    const/4 v6, 0x6

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    .line 425
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    .line 435
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$300(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$AdPrepareErrorListener$JESn0be9jt8rlP-1WMBP87BIkQ8;

    move-object/from16 v3, p2

    invoke-direct {v2, p0, v3}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$AdPrepareErrorListener$JESn0be9jt8rlP-1WMBP87BIkQ8;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
