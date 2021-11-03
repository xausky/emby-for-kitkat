.class public final synthetic Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$zcXBZahV9F-k_KJACPO-bl_WWX0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$zcXBZahV9F-k_KJACPO-bl_WWX0;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$zcXBZahV9F-k_KJACPO-bl_WWX0;->f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$zcXBZahV9F-k_KJACPO-bl_WWX0;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$zcXBZahV9F-k_KJACPO-bl_WWX0;->f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->lambda$prepareSourceInternal$0(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    return-void
.end method
