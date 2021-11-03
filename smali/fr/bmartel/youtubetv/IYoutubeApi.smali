.class public interface abstract Lfr/bmartel/youtubetv/IYoutubeApi;
.super Ljava/lang/Object;
.source "IYoutubeApi.java"


# virtual methods
.method public abstract addPlayerListener(Lfr/bmartel/youtubetv/listener/IPlayerListener;)V
.end method

.method public abstract closePlayer()V
.end method

.method public abstract getAvailablePlaybackRates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getAvailableQualityLevels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/model/VideoQuality;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentPosition()F
.end method

.method public abstract getDuration()F
.end method

.method public abstract getPlaybackQuality()Lfr/bmartel/youtubetv/model/VideoQuality;
.end method

.method public abstract getPlaybackRate()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getPlayerState()Lfr/bmartel/youtubetv/model/VideoState;
.end method

.method public abstract getPlaylist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaylistIndex()I
.end method

.method public abstract getVideoEmbedCode()Ljava/lang/String;
.end method

.method public abstract getVideoId()Ljava/lang/String;
.end method

.method public abstract getVideoInfo()Lfr/bmartel/youtubetv/model/VideoInfo;
.end method

.method public abstract getVideoLoadedFraction()F
.end method

.method public abstract getVideoTitle()Ljava/lang/String;
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method public abstract getVolume()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract isMuted()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract moveBackward(I)V
.end method

.method public abstract moveForward(I)V
.end method

.method public abstract mute()V
.end method

.method public abstract nextVideo()V
.end method

.method public abstract pause()V
.end method

.method public abstract playPause()V
.end method

.method public abstract playVideo(Ljava/lang/String;)V
.end method

.method public abstract playVideoAt(I)V
.end method

.method public abstract previousVideo()V
.end method

.method public abstract removePlayerListener(Lfr/bmartel/youtubetv/listener/IPlayerListener;)V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract seekTo(IZ)V
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract setOnBufferingUpdateListener(Lfr/bmartel/youtubetv/listener/IBufferStateListener;)V
.end method

.method public abstract setOnProgressUpdateListener(Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;)V
.end method

.method public abstract setPlaybackQuality(Lfr/bmartel/youtubetv/model/VideoQuality;)V
.end method

.method public abstract setPlaybackRate(I)V
.end method

.method public abstract setShuffle(Z)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract setVolume(I)V
.end method

.method public abstract start()V
.end method

.method public abstract stopVideo()V
.end method

.method public abstract unMute()V
.end method
