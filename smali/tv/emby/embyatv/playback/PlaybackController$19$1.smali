.class Ltv/emby/embyatv/playback/PlaybackController$19$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/PlaybackController$19;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController$19;)V
    .locals 0

    .line 1349
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$19$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$19;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 4

    .line 1352
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$19;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$19$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$19;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$19$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$19;

    iget-object v2, v2, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$19$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$19;

    iget-object v3, v3, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$3200(Ltv/emby/embyatv/playback/PlaybackController;)Lmediabrowser/model/session/TranscodingInfo;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->createStats(Lmediabrowser/model/dto/MediaSourceInfo;Ltv/emby/embyatv/api/StreamInfo;Lmediabrowser/model/session/TranscodingInfo;)V

    .line 1353
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$19$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$19;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$19;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showStats(Z)V

    return-void
.end method
