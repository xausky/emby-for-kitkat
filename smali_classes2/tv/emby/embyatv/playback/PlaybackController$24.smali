.class Ltv/emby/embyatv/playback/PlaybackController$24;
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

    .line 1609
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 14

    .line 1612
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$1900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1613
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$1902(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    .line 1615
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$1000(Ltv/emby/embyatv/playback/PlaybackController;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_3

    .line 1616
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4900(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    .line 1617
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$3100(Ltv/emby/embyatv/playback/PlaybackController;)Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    sget-object v5, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1619
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0, v3, v4}, Ltv/emby/embyatv/playback/PlaybackController;->access$4902(Ltv/emby/embyatv/playback/PlaybackController;J)J

    goto :goto_0

    .line 1620
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v5

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4900(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 1621
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v5, "*** Seeking to resume point"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1622
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    sget-object v5, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->SEEKING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-static {v0, v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$2802(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 1623
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$4900(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Ltv/emby/embyatv/playback/PlaybackController;->access$5000(Ltv/emby/embyatv/playback/PlaybackController;J)V

    .line 1625
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0, v3, v4}, Ltv/emby/embyatv/playback/PlaybackController;->access$4902(Ltv/emby/embyatv/playback/PlaybackController;J)J

    const/4 v0, 0x0

    goto :goto_1

    .line 1628
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->stopSpinner()V

    goto :goto_0

    .line 1631
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->stopSpinner()V

    :goto_0
    const/4 v0, 0x1

    .line 1633
    :goto_1
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController;->getPlaybackMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-eq v5, v6, :cond_4

    .line 1634
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$500(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/VideoOptions;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v5

    invoke-static {v5}, Ltv/emby/embyatv/util/Utils;->GetAudioStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_4

    .line 1635
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v5, v5, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    iget-object v6, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v6}, Ltv/emby/embyatv/playback/PlaybackController;->access$500(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/VideoOptions;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v7}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ltv/emby/embyatv/playback/VideoManager;->setAudioTrack(ILjava/util/List;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    if-eqz v0, :cond_b

    .line 1639
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v1}, Ltv/emby/embyatv/TvApp;->setLastUserInteraction(JZ)V

    .line 1640
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1641
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$2600(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$5100(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v5, v6}, Lmediabrowser/model/session/PlayMethod;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$2200(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_5

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$2300(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_5

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$2400(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v5

    iget-object v7, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v7}, Ltv/emby/embyatv/playback/PlaybackController;->access$2200(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v7

    iget-object v9, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v9}, Ltv/emby/embyatv/playback/PlaybackController;->access$2300(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-gtz v5, :cond_6

    :cond_5
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    .line 1642
    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v5, v6}, Lmediabrowser/model/session/PlayMethod;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$2200(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v7}, Ltv/emby/embyatv/playback/PlaybackController;->access$2200(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_7

    .line 1644
    :cond_6
    iget-object v5, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v5}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v5

    const-string v6, "************ crossed program time slot: %d %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v8}, Ltv/emby/embyatv/playback/PlaybackController;->access$2400(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2200(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v8

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2300(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v2

    invoke-interface {v5, v6, v7}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1645
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->updateTvProgramInfo()V

    .line 1648
    :cond_7
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2300(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_8

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2400(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v1

    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1649
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setCurrentTime(J)V

    .line 1650
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "InProgress"

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$3600(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setSecondaryTime(J)V

    .line 1651
    :cond_a
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ltv/emby/embyatv/playback/PlaybackController;->access$5202(Ltv/emby/embyatv/playback/PlaybackController;J)J

    .line 1652
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateSubtitles(J)V

    .line 1655
    :cond_b
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$24;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1, v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$1902(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    :cond_c
    return-void
.end method
