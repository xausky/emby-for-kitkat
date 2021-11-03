.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioSink$Listener;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioSessionId(I)V
.end method

.method public abstract onPositionDiscontinuity()V
.end method

.method public abstract onUnderrun(IJJ)V
.end method
