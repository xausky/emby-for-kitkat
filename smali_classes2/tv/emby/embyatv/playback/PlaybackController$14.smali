.class Ltv/emby/embyatv/playback/PlaybackController$14;
.super Lmediabrowser/apiinteraction/Response;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->seek(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ltv/emby/embyatv/api/StreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;J)V
    .locals 0

    .line 1124
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iput-wide p2, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->val$pos:J

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1136
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const v1, 0x7f100661

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 1137
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error trying to seek transcoded stream"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1124
    check-cast p1, Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController$14;->onResponse(Ltv/emby/embyatv/api/StreamInfo;)V

    return-void
.end method

.method public onResponse(Ltv/emby/embyatv/api/StreamInfo;)V
    .locals 4

    .line 1127
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$1202(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/api/StreamInfo;)Ltv/emby/embyatv/api/StreamInfo;

    .line 1128
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$1300(Ltv/emby/embyatv/playback/PlaybackController;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ltv/emby/embyatv/playback/PlaybackController;->access$1400(Ltv/emby/embyatv/playback/PlaybackController;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ltv/emby/embyatv/playback/VideoManager;->setVideoPaths(Ljava/lang/String;Ljava/util/List;Lmediabrowser/model/dto/MediaSourceInfo;)V

    const-string p1, "ts"

    .line 1130
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$1200(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getContainer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-wide v0, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->val$pos:J

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$1502(Ltv/emby/embyatv/playback/PlaybackController;J)J

    .line 1131
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$14;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object p1, p1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/VideoManager;->start()V

    return-void
.end method
