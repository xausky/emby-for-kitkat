.class public interface abstract Lcom/google/android/exoplayer2/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;,
        Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
.end method

.method public abstract createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
.end method

.method public abstract disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract getTag()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .param p2    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
.end method

.method public abstract releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
.end method
