.class Ltv/emby/embyatv/playback/PlaybackController$23$1$1$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController$23$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Ltv/emby/embyatv/playback/PlaybackController$23$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController$23$1$1;)V
    .locals 0

    .line 1550
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1$1;->this$3:Ltv/emby/embyatv/playback/PlaybackController$23$1$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 1553
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1$1;->this$3:Ltv/emby/embyatv/playback/PlaybackController$23$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1;->this$2:Ltv/emby/embyatv/playback/PlaybackController$23$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V

    .line 1554
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1$1;->this$3:Ltv/emby/embyatv/playback/PlaybackController$23$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1;->this$2:Ltv/emby/embyatv/playback/PlaybackController$23$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2900(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1$1;->this$3:Ltv/emby/embyatv/playback/PlaybackController$23$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1;->this$2:Ltv/emby/embyatv/playback/PlaybackController$23$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1$1;->this$3:Ltv/emby/embyatv/playback/PlaybackController$23$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1;->this$2:Ltv/emby/embyatv/playback/PlaybackController$23$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1$1;->this$3:Ltv/emby/embyatv/playback/PlaybackController$23$1$1;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23$1$1;->this$2:Ltv/emby/embyatv/playback/PlaybackController$23$1;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$3600(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setLiveStartTime(J)V

    :cond_0
    return-void
.end method
