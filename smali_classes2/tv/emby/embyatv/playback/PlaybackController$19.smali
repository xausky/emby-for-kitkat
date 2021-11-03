.class Ltv/emby/embyatv/playback/PlaybackController$19;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->startReportLoop()V
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

    .line 1333
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1336
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2800(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2800(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-ne v0, v1, :cond_4

    .line 1337
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2400(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v0

    .line 1340
    :goto_0
    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$2700(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 1341
    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3, v4}, Ltv/emby/embyatv/playback/PlaybackController;->access$2702(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    .line 1342
    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v5

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v6

    const-wide/16 v7, 0x2710

    mul-long v7, v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v8

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget v3, v3, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v3, v3, Ltv/emby/embyatv/playback/PlaybackController;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "TimeUpdate"

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$3000(Ltv/emby/embyatv/playback/PlaybackController;)Lmediabrowser/apiinteraction/EmptyResponse;

    move-result-object v12

    invoke-static/range {v5 .. v12}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_1

    .line 1344
    :cond_2
    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v3

    const-string v5, "***** Progress report skipped due to one already in progress"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    :goto_1
    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$3100(Ltv/emby/embyatv/playback/PlaybackController;)Lmediabrowser/model/session/PlayMethod;

    move-result-object v3

    sget-object v5, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->showPlayerStats()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1349
    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    new-instance v5, Ltv/emby/embyatv/playback/PlaybackController$19$1;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/playback/PlaybackController$19$1;-><init>(Ltv/emby/embyatv/playback/PlaybackController$19;)V

    invoke-static {v3, v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$3300(Ltv/emby/embyatv/playback/PlaybackController;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 1359
    :cond_3
    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$3400(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/PlaybackController;->hasNextItem()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$3500(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-ltz v0, :cond_4

    .line 1360
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0, v4}, Ltv/emby/embyatv/playback/PlaybackController;->access$3402(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    .line 1361
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getNextItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->nextItemThresholdHit(Lmediabrowser/model/dto/BaseItemDto;)V

    .line 1364
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "InProgress"

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$3600(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setSecondaryTime(J)V

    .line 1365
    :cond_6
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Ltv/emby/embyatv/TvApp;->setLastUserInteraction(JZ)V

    .line 1366
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2800(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->UNDEFINED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2800(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$200(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/playback/PlaybackController;->access$3700()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method
