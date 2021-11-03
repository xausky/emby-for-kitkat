.class final Lcom/google/android/exoplayer2/DefaultMediaClock;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;
    }
.end annotation


# instance fields
.field private isUsingStandaloneClock:Z

.field private final listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

.field private rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rendererClockSource:Lcom/google/android/exoplayer2/Renderer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

.field private standaloneClockIsStarted:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    .line 61
    new-instance p1, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    return-void
.end method

.method private shouldUseStandaloneClock(Z)Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 193
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 194
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 195
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private syncClocks(Z)V
    .locals 4

    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->shouldUseStandaloneClock(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    .line 161
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    :cond_0
    return-void

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    .line 167
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz p1, :cond_3

    .line 169
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 170
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    .line 174
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz p1, :cond_3

    .line 175
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    .line 180
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 154
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 155
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 139
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public onRendererDisabled(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    :cond_0
    return-void
.end method

.method public onRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eq v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-nez v1, :cond_0

    .line 105
    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 107
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto :goto_0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public resetPosition(J)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 146
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    return-void
.end method

.method public syncAndGetPositionUs(Z)J
    .locals 2

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->syncClocks(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method
