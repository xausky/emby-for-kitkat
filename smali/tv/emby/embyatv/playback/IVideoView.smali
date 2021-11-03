.class public interface abstract Ltv/emby/embyatv/playback/IVideoView;
.super Ljava/lang/Object;
.source "IVideoView.java"


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onActivityCreated(Ltv/emby/embyatv/playback/PlaybackOverlayActivity;)V
.end method

.method public abstract pause()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method

.method public abstract stopPlayback()V
.end method
