.class public interface abstract Lcom/google/android/exoplayer2/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    }
.end annotation


# virtual methods
.method public abstract createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
.end method

.method public abstract getPlaybackLooper()Landroid/os/Looper;
.end method

.method public abstract getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;
.end method

.method public abstract prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
.end method

.method public abstract prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
.end method

.method public abstract retry()V
.end method

.method public abstract setForegroundMode(Z)V
.end method

.method public abstract setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .param p1    # Lcom/google/android/exoplayer2/SeekParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
