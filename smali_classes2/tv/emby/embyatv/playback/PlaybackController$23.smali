.class Ltv/emby/embyatv/playback/PlaybackController$23;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ltv/emby/embyatv/playback/PlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->setupCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 1521
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 7

    .line 1525
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1531
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4200(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1532
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    sget-object v3, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-static {v0, v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$2802(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 1533
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$2800(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    move-result-object v3

    invoke-static {v0, v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$4100(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V

    .line 1534
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$200(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Ltv/emby/embyatv/playback/PlaybackController$23$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/playback/PlaybackController$23$1;-><init>(Ltv/emby/embyatv/playback/PlaybackController$23;)V

    const-wide/16 v4, 0x2ee

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1574
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v3

    sget-object v4, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne v3, v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v0, v3, v4}, Ltv/emby/embyatv/playback/PlaybackController;->access$4502(Ltv/emby/embyatv/playback/PlaybackController;J)J

    .line 1576
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$4600(Ltv/emby/embyatv/playback/PlaybackController;Ljava/lang/String;)V

    .line 1577
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v3, "Play method: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne v5, v6, :cond_2

    const-string v5, "Trans"

    goto :goto_1

    :cond_2
    const-string v5, "Direct"

    :goto_1
    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1581
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2800(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    move-result-object v0

    sget-object v3, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4200(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 1585
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$4202(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    .line 1586
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2000(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1587
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V

    .line 1588
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1589
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$3600(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setLiveStartTime(J)V

    .line 1590
    :cond_5
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4700(Ltv/emby/embyatv/playback/PlaybackController;)I

    move-result v0

    if-gez v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->autoEnableCC()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1591
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/16 v1, 0x63

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$4702(Ltv/emby/embyatv/playback/PlaybackController;I)I

    .line 1593
    :cond_6
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4700(Ltv/emby/embyatv/playback/PlaybackController;)I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4800(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1595
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selecting default sub stream: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$4700(Ltv/emby/embyatv/playback/PlaybackController;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1596
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$4700(Ltv/emby/embyatv/playback/PlaybackController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->switchSubtitleStream(I)V

    goto :goto_4

    .line 1597
    :cond_7
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4800(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1598
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Turning off subs by default"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addManualSubtitles(Lmediabrowser/model/mediainfo/SubtitleTrackInfo;)V

    .line 1600
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->disableSubs()V

    goto :goto_4

    .line 1582
    :cond_8
    :goto_2
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2802(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 1583
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2800(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$4100(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V

    goto :goto_4

    .line 1526
    :cond_9
    :goto_3
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4000(Ltv/emby/embyatv/playback/PlaybackController;)V

    .line 1527
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->stopPlayback()V

    .line 1528
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2802(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 1529
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2800(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$4100(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)V

    :cond_a
    :goto_4
    return-void
.end method
