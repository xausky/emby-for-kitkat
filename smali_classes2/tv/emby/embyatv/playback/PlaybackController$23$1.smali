.class Ltv/emby/embyatv/playback/PlaybackController$23$1;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController$23;->onEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/PlaybackController$23;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController$23;)V
    .locals 0

    .line 1534
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1538
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->isHls()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->getDuration()J

    move-result-wide v1

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v3, v3, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$2400(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->getDuration()J

    move-result-wide v1

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v3, v3, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v3, v3, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/VideoManager;->getCurrentPosition()J

    move-result-wide v3

    :goto_0
    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateEndTime(J)V

    .line 1539
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    sget v1, Ltv/emby/embyatv/ui/ImageButton;->STATE_SECONDARY:I

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setPlayPauseActionState(I)V

    .line 1540
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$1800(Ltv/emby/embyatv/playback/PlaybackController;)V

    .line 1541
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_runaway_prevention"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4300(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mCurrentIndex:I

    if-lez v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$4400(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1542
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showStillWatching()V

    .line 1546
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$3100(Ltv/emby/embyatv/playback/PlaybackController;)Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne v0, v1, :cond_3

    .line 1547
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$200(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$23$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$23$1$1;-><init>(Ltv/emby/embyatv/playback/PlaybackController$23$1;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1563
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2500(Ltv/emby/embyatv/playback/PlaybackController;)V

    .line 1566
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->stopThemeSong()V

    const/4 v0, 0x1

    .line 1569
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Log;->setLogLevel(I)V

    return-void
.end method
