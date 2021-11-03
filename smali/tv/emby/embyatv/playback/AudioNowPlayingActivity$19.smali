.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;
.super Ltv/emby/embyatv/playback/AudioEventListener;
.source "AudioNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V
    .locals 0

    .line 487
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChange(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 3

    .line 490
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$800(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** Got playstate change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    sget-object p2, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne p1, p2, :cond_0

    .line 493
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    .line 494
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Z)V

    .line 495
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/presentation/CardItemAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/CardItemAdapter;->setCurrentlyPlaying(Z)V

    .line 496
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueuePosition()I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2, v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Z)V

    .line 499
    sget-object p2, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne p1, p2, :cond_1

    .line 500
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)V

    .line 501
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->hasNextAudioItem()Z

    move-result p1

    if-nez p1, :cond_2

    .line 502
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->stopScreenSaver()V

    goto :goto_0

    .line 504
    :cond_1
    sget-object p2, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne p1, p2, :cond_2

    .line 505
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/presentation/CardItemAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->setCurrentlyPlaying(Z)V

    .line 506
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/presentation/CardItemAdapter;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/presentation/CardItemAdapter;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/presentation/CardItemAdapter;->getCurrentItemNdx()I

    move-result p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/CardItemAdapter;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onProgress(J)V
    .locals 1

    .line 513
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-virtual {v0, p1, p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->setCurrentTime(J)V

    return-void
.end method

.method public onQueueStatusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 519
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    .line 520
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Z)V

    goto :goto_0

    .line 522
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->finish()V

    :goto_0
    return-void
.end method
