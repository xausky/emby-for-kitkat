.class Ltv/emby/embyatv/playback/MediaManager$5;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/MediaManager;->saveQueue(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/MediaManager;

.field final synthetic val$name:Landroid/widget/EditText;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;Landroid/widget/EditText;I)V
    .locals 0

    .line 459
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$5;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iput-object p2, p0, Ltv/emby/embyatv/playback/MediaManager$5;->val$name:Landroid/widget/EditText;

    iput p3, p0, Ltv/emby/embyatv/playback/MediaManager$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 462
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$5;->val$name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    new-instance p2, Lmediabrowser/model/playlists/PlaylistCreationRequest;

    invoke-direct {p2}, Lmediabrowser/model/playlists/PlaylistCreationRequest;-><init>()V

    .line 464
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->setUserId(Ljava/lang/String;)V

    .line 465
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager$5;->val$type:I

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager$5;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v1}, Ltv/emby/embyatv/playback/MediaManager;->access$600(Ltv/emby/embyatv/playback/MediaManager;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "Audio"

    goto :goto_0

    :cond_0
    const-string v0, "Video"

    :goto_0
    invoke-virtual {p2, v0}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->setMediaType(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2, p1}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->setName(Ljava/lang/String;)V

    .line 467
    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager$5;->val$type:I

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager$5;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v1}, Ltv/emby/embyatv/playback/MediaManager;->access$600(Ltv/emby/embyatv/playback/MediaManager;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$5;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$700(Ltv/emby/embyatv/playback/MediaManager;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$5;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$800(Ltv/emby/embyatv/playback/MediaManager;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->setItemIdList(Ljava/util/ArrayList;)V

    .line 468
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/MediaManager$5$1;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/playback/MediaManager$5$1;-><init>(Ltv/emby/embyatv/playback/MediaManager$5;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lmediabrowser/apiinteraction/ApiClient;->CreatePlaylist(Lmediabrowser/model/playlists/PlaylistCreationRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
