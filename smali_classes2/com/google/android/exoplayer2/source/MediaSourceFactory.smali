.class public interface abstract Lcom/google/android/exoplayer2/source/MediaSourceFactory;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"


# virtual methods
.method public abstract createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
.end method

.method public abstract getSupportedTypes()[I
.end method

.method public abstract setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;)",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;"
        }
    .end annotation
.end method

.method public abstract setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;"
        }
    .end annotation
.end method
