.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSession$-CC;
.super Ljava/lang/Object;
.source "DrmSession.java"


# direct methods
.method public static $default$playClearSamplesWithoutKeys(Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 0
    .param p0    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;)V"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->acquire()V

    :cond_1
    if-eqz p0, :cond_2

    .line 47
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release()V

    :cond_2
    return-void
.end method
