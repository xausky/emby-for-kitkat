.class Ltv/emby/embyatv/playback/PlaybackController$16;
.super Lmediabrowser/apiinteraction/Response;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->updateLiveStreamMediaInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/MediaSourceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1220
    check-cast p1, Lmediabrowser/model/dto/MediaSourceInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController$16;->onResponse(Lmediabrowser/model/dto/MediaSourceInfo;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 4

    .line 1223
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1224
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/MediaSourceInfo;->setMediaStreams(Ljava/util/ArrayList;)V

    .line 1226
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/apiinteraction/ApiClient;->getApiUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/apiinteraction/ApiClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ltv/emby/embyatv/api/StreamInfo;->GetSubtitleProfiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$1302(Ltv/emby/embyatv/playback/PlaybackController;Ljava/util/List;)Ljava/util/List;

    .line 1227
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2000(Ltv/emby/embyatv/playback/PlaybackController;)Z

    move-result p1

    .line 1229
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2100(Ltv/emby/embyatv/playback/PlaybackController;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1231
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackController;->switchAudioStream(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1232
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->autoEnableCC()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1233
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackController;->switchSubtitleStream(I)V

    goto :goto_0

    .line 1235
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$16;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V

    :cond_2
    :goto_0
    return-void
.end method
