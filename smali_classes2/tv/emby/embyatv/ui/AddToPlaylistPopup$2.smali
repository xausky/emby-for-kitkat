.class Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;
.super Ljava/lang/Object;
.source "AddToPlaylistPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/AddToPlaylistPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)V
    .locals 0

    .line 91
    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 94
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$100(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ""

    .line 96
    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$200(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$300(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const-string v0, "Please enter a name for the new playlist or select an existing one."

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$200(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$200(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance v0, Lmediabrowser/model/playlists/PlaylistCreationRequest;

    invoke-direct {v0}, Lmediabrowser/model/playlists/PlaylistCreationRequest;-><init>()V

    .line 103
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->setUserId(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$400(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->setMediaType(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->setName(Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v2, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v2}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$400(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v0, v1}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->setItemIdList(Ljava/util/ArrayList;)V

    .line 109
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$1;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$1;-><init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->CreatePlaylist(Lmediabrowser/model/playlists/PlaylistCreationRequest;Lmediabrowser/apiinteraction/Response;)V

    .line 123
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->dismiss()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$100(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)I

    move-result p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$500(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 129
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$500(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$100(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    .line 131
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {v4}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$400(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$2;

    invoke-direct {v4, p0, p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2$2;-><init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;Lmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lmediabrowser/apiinteraction/ApiClient;->AddToPlaylist(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 146
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->dismiss()V

    :goto_0
    return-void
.end method
