.class Ltv/emby/embyatv/playback/PlaybackController$5;
.super Lmediabrowser/apiinteraction/Response;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->playInternal(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Long;Ltv/emby/embyatv/api/VideoOptions;)V
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

.field final synthetic val$internalOptions:Ltv/emby/embyatv/api/VideoOptions;

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$position:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/api/VideoOptions;Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Long;)V
    .locals 0

    .line 612
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iput-object p2, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->val$internalOptions:Ltv/emby/embyatv/api/VideoOptions;

    iput-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p4, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->val$position:Ljava/lang/Long;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 624
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$700(Ltv/emby/embyatv/playback/PlaybackController;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 612
    check-cast p1, Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController$5;->onResponse(Ltv/emby/embyatv/api/StreamInfo;)V

    return-void
.end method

.method public onResponse(Ltv/emby/embyatv/api/StreamInfo;)V
    .locals 4

    .line 615
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Will "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v2

    sget-object v3, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v2, v3}, Lmediabrowser/model/session/PlayMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "transcode"

    goto :goto_0

    :cond_0
    const-string v2, "direct stream"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/VideoManager;->init(Landroid/content/Context;)V

    .line 617
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$400(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 618
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->val$internalOptions:Ltv/emby/embyatv/api/VideoOptions;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$502(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/api/VideoOptions;)Ltv/emby/embyatv/api/VideoOptions;

    .line 619
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$5;->val$position:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$600(Ltv/emby/embyatv/playback/PlaybackController;Lmediabrowser/model/dto/BaseItemDto;JLtv/emby/embyatv/api/StreamInfo;)V

    return-void
.end method
