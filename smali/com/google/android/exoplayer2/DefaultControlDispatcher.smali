.class public Lcom/google/android/exoplayer2/DefaultControlDispatcher;
.super Ljava/lang/Object;
.source "DefaultControlDispatcher.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ControlDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z
    .locals 0

    .line 34
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z
    .locals 0

    .line 28
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z
    .locals 0

    .line 40
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetShuffleModeEnabled(Lcom/google/android/exoplayer2/Player;Z)Z
    .locals 0

    .line 46
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchStop(Lcom/google/android/exoplayer2/Player;Z)Z
    .locals 0

    .line 52
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->stop(Z)V

    const/4 p1, 0x1

    return p1
.end method
