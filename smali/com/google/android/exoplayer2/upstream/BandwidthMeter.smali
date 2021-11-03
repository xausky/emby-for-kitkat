.class public interface abstract Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
.end method

.method public abstract getBitrateEstimate()J
.end method

.method public abstract getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
.end method
