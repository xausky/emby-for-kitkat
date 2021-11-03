.class Ltv/emby/embyatv/playback/PlaybackController$6;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->startItem(Lmediabrowser/model/dto/BaseItemDto;JLtv/emby/embyatv/api/StreamInfo;)V
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

    .line 714
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$6;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 718
    :try_start_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$6;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "**** starting playback..."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$6;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$802(Ltv/emby/embyatv/playback/PlaybackController;J)J

    .line 720
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$6;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->start()V

    .line 721
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$6;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 723
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$6;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "Error trying to start playback.  May have backed out quickly."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
