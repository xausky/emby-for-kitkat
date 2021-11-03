.class Ltv/emby/embyatv/playback/PlaybackController$27;
.super Lmediabrowser/apiinteraction/Response;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->setZoom(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/entities/DisplayPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;I)V
    .locals 0

    .line 1721
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$27;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iput p2, p0, Ltv/emby/embyatv/playback/PlaybackController$27;->val$mode:I

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1730
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$27;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error getting display prefs to set zoom mode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1721
    check-cast p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController$27;->onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 3

    .line 1724
    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ZoomMode"

    iget v2, p0, Ltv/emby/embyatv/playback/PlaybackController$27;->val$mode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$27;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->updateDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method
