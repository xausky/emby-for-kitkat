.class Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$1;
.super Lmediabrowser/apiinteraction/Response;
.source "AddToPlaylistPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$1;->this$1:Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;

    iput-object p2, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 119
    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$1;->this$1:Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$300(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error saving playlist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Lmediabrowser/model/playlists/PlaylistCreationResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$1;->onResponse(Lmediabrowser/model/playlists/PlaylistCreationResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/playlists/PlaylistCreationResult;)V
    .locals 4

    .line 112
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "Playlist Saved"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item saved as new playlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$1;->val$text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/TvApp;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastLibraryChange(Ljava/util/Calendar;)V

    .line 114
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistCreationResult;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setLastPlaylistAddId(Ljava/lang/String;)V

    return-void
.end method
