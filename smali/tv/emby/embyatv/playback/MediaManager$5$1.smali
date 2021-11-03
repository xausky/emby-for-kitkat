.class Ltv/emby/embyatv/playback/MediaManager$5$1;
.super Lmediabrowser/apiinteraction/Response;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/MediaManager$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/playlists/PlaylistCreationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/MediaManager$5;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager$5;Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$5$1;->this$1:Ltv/emby/embyatv/playback/MediaManager$5;

    iput-object p2, p0, Ltv/emby/embyatv/playback/MediaManager$5$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 477
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 468
    check-cast p1, Lmediabrowser/model/playlists/PlaylistCreationResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/MediaManager$5$1;->onResponse(Lmediabrowser/model/playlists/PlaylistCreationResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/playlists/PlaylistCreationResult;)V
    .locals 3

    .line 471
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string v0, "Playlist Saved"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue saved as new playlist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/playback/MediaManager$5$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/TvApp;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setLastLibraryChange(Ljava/util/Calendar;)V

    return-void
.end method
