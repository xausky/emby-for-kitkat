.class Ltv/emby/embyatv/playback/MediaManager$1;
.super Lmediabrowser/apiinteraction/Response;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/MediaManager;->playThemeSong(Lmediabrowser/model/dto/BaseItemDto;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/playback/MediaManager;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$1;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iput-object p2, p0, Ltv/emby/embyatv/playback/MediaManager$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 239
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error getting playback info for theme media"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/MediaManager$1;->onResponse(Ltv/emby/embyatv/api/StreamInfo;)V

    return-void
.end method

.method public onResponse(Ltv/emby/embyatv/api/StreamInfo;)V
    .locals 1

    .line 233
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$1;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->access$000(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$1;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$1;->val$id:Ljava/lang/String;

    invoke-static {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->access$102(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
