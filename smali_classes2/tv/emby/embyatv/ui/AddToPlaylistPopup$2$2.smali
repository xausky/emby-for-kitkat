.class Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$2;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "AddToPlaylistPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;

.field final synthetic val$selectedPlaylist:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 131
    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$2;->this$1:Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;

    iput-object p2, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$2;->val$selectedPlaylist:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 140
    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$2;->this$1:Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$300(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error adding to playlist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse()V
    .locals 4

    .line 134
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$2;->val$selectedPlaylist:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastPlaylistAddId(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "Playlist Saved"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item added to playlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$2;->val$selectedPlaylist:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/TvApp;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
