.class Ltv/emby/embyatv/playback/PlaybackController$11;
.super Lmediabrowser/apiinteraction/Response;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->switchSubtitleStream(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/mediainfo/SubtitleTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 957
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$11;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 974
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error downloading subtitles"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 975
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$11;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$11;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10065a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 976
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$11;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showSubLoadingMsg(Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 957
    check-cast p1, Lmediabrowser/model/mediainfo/SubtitleTrackInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController$11;->onResponse(Lmediabrowser/model/mediainfo/SubtitleTrackInfo;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/mediainfo/SubtitleTrackInfo;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 963
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "Adding json subtitle track to player"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 964
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$11;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addManualSubtitles(Lmediabrowser/model/mediainfo/SubtitleTrackInfo;)V

    goto :goto_0

    .line 966
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "Empty subtitle result"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$11;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$11;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10065a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 968
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$11;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showSubLoadingMsg(Z)V

    :goto_0
    return-void
.end method
