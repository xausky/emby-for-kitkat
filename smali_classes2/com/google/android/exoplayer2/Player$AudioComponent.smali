.class public interface abstract Lcom/google/android/exoplayer2/Player$AudioComponent;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioComponent"
.end annotation


# virtual methods
.method public abstract addAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V
.end method

.method public abstract clearAuxEffectInfo()V
.end method

.method public abstract getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getVolume()F
.end method

.method public abstract removeAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V
.end method

.method public abstract setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V
.end method

.method public abstract setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
.end method

.method public abstract setVolume(F)V
.end method
