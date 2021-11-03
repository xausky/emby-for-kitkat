.class Ltv/emby/embyatv/playback/PlaybackController$22;
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

    .line 1502
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 5

    .line 1506
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$3800(Ltv/emby/embyatv/playback/PlaybackController;)I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1507
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$3902(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    .line 1508
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$3808(Ltv/emby/embyatv/playback/PlaybackController;)I

    .line 1509
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Live TV error.  Retrying..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->retry()V

    goto :goto_0

    .line 1512
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v2, 0x7f1006cc

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1513
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playback error - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1514
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$22;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->playerErrorEncountered()V

    :cond_1
    :goto_0
    return-void
.end method
