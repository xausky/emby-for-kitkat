.class Ltv/emby/embyatv/playback/PlaybackController$26;
.super Lmediabrowser/apiinteraction/Response;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->updatePlaybackInfo(Lmediabrowser/apiinteraction/EmptyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/session/SessionInfoDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;

.field final synthetic val$callback:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 1676
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$26;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iput-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController$26;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1695
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$26;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Error updating session data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1676
    check-cast p1, [Lmediabrowser/model/session/SessionInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController$26;->onResponse([Lmediabrowser/model/session/SessionInfoDto;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/session/SessionInfoDto;)V
    .locals 2

    .line 1679
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1681
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$26;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lmediabrowser/model/session/SessionInfoDto;->getTranscodingInfo()Lmediabrowser/model/session/TranscodingInfo;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$3202(Ltv/emby/embyatv/playback/PlaybackController;Lmediabrowser/model/session/TranscodingInfo;)Lmediabrowser/model/session/TranscodingInfo;

    .line 1682
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$26;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    .line 1683
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$26;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$3200(Ltv/emby/embyatv/playback/PlaybackController;)Lmediabrowser/model/session/TranscodingInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1684
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$26;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Transcoding info updated"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1689
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$26;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** No return from session data..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
