.class public Ltv/emby/embyatv/eventhandling/TvApiEventListener;
.super Lmediabrowser/apiinteraction/ApiEventListener;
.source "TvApiEventListener.java"


# instance fields
.field private itemChangeListener:Ltv/emby/embyatv/model/IItemChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lmediabrowser/apiinteraction/ApiEventListener;-><init>()V

    return-void
.end method

.method private videoPlaying()Z
    .locals 1

    .line 174
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getItemChangeListener()Ltv/emby/embyatv/model/IItemChangeListener;
    .locals 1

    .line 234
    iget-object v0, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->itemChangeListener:Ltv/emby/embyatv/model/IItemChangeListener;

    return-object v0
.end method

.method public onBrowseCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/BrowseRequest;)V
    .locals 4

    .line 159
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Browse command received"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->videoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p2}, Lmediabrowser/model/session/BrowseRequest;->getItemId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/eventhandling/TvApiEventListener$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/eventhandling/TvApiEventListener$2;-><init>(Ltv/emby/embyatv/eventhandling/TvApiEventListener;)V

    invoke-virtual {p1, p2, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 161
    :cond_1
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Command ignored due to no activity or playback in progress"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onGeneralCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/GeneralCommand;)V
    .locals 3

    .line 85
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General command is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/session/GeneralCommand;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p2}, Lmediabrowser/model/session/GeneralCommand;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x32c3bc93

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2

    const v0, -0x321793ce    # -4.874256E8f

    if-eq p2, v0, :cond_1

    const v0, 0x335219

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "mute"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p2, "unmute"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string p2, "togglemute"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 94
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->isAudioMuted()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->setAudioMuted(Z)V

    goto :goto_2

    .line 91
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/TvApp;->setAudioMuted(Z)V

    goto :goto_2

    .line 88
    :pswitch_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/TvApp;->setAudioMuted(Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLibraryChanged(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/entities/LibraryUpdateInfo;)V
    .locals 4

    .line 66
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Library Changed. Added %d items. Removed %d items. Changed %d items. Folders added to: %d. Folders Removed from: %d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsAdded()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsRemoved()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsUpdated()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getFoldersAddedTo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getFoldersRemovedFrom()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsRemoved()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsAdded()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsUpdated()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 68
    :cond_0
    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsRemoved()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsAdded()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 69
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setLastLibraryChange(Ljava/util/Calendar;)V

    .line 70
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    sget-object v0, Ltv/emby/embyatv/base/CustomMessage;->RefreshRows:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    .line 73
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->itemChangeListener:Ltv/emby/embyatv/model/IItemChangeListener;

    if-eqz p1, :cond_3

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsAdded()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsRemoved()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-virtual {p2}, Lmediabrowser/model/entities/LibraryUpdateInfo;->getItemsUpdated()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object p2, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->itemChangeListener:Ltv/emby/embyatv/model/IItemChangeListener;

    invoke-interface {p2, p1}, Ltv/emby/embyatv/model/IItemChangeListener;->onItemChanged(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onMessageCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/MessageCommand;)V
    .locals 1

    .line 101
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    new-instance v0, Ltv/emby/embyatv/eventhandling/TvApiEventListener$1;

    invoke-direct {v0, p0, p2}, Ltv/emby/embyatv/eventhandling/TvApiEventListener$1;-><init>(Ltv/emby/embyatv/eventhandling/TvApiEventListener;Lmediabrowser/model/session/MessageCommand;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPlayCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/PlayRequest;)V
    .locals 9

    .line 179
    invoke-direct {p0}, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->videoPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->stop()V

    .line 183
    :cond_0
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getItemIds()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_2

    .line 184
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v2, "Playing multiple items by remote request"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    if-nez p1, :cond_1

    .line 186
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "No current activity.  Cannot play"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 189
    :cond_1
    new-instance p1, Ltv/emby/embyatv/querying/StdItemQuery;

    new-array v0, v0, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->MediaSources:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>([Lmediabrowser/model/querying/ItemFields;)V

    .line 190
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getItemIds()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/querying/StdItemQuery;->setIds([Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    new-instance v0, Ltv/emby/embyatv/eventhandling/TvApiEventListener$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/eventhandling/TvApiEventListener$3;-><init>(Ltv/emby/embyatv/eventhandling/TvApiEventListener;)V

    invoke-virtual {p2, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_5

    .line 220
    :cond_2
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getItemIds()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_7

    .line 221
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Playing single item by remote request"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    :goto_0
    move-object v8, p1

    goto :goto_1

    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    goto :goto_0

    .line 223
    :goto_1
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getStartPositionTicks()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getStartPositionTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x0

    .line 224
    :goto_2
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v5, p1

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    .line 225
    :goto_3
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v6, p1

    goto :goto_4

    :cond_6
    const/4 v6, -0x1

    .line 227
    :goto_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->clearAudioQueue()V

    .line 228
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getItemIds()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    const/4 v0, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getMediaSourceId()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move v3, v0

    invoke-static/range {v2 .. v8}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLjava/lang/Long;IILjava/lang/String;Landroid/content/Context;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public onPlaybackStopped(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/SessionInfoDto;)V
    .locals 4

    .line 47
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Got Playback stopped message from server"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p2}, Lmediabrowser/model/session/SessionInfoDto;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setLastPlayback(Ljava/util/Calendar;)V

    .line 51
    invoke-virtual {p2}, Lmediabrowser/model/session/SessionInfoDto;->getNowPlayingItem()Lmediabrowser/model/entities/BaseItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p2}, Lmediabrowser/model/session/SessionInfoDto;->getNowPlayingItem()Lmediabrowser/model/entities/BaseItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/entities/BaseItemInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4714f10

    if-eq v0, v1, :cond_2

    const v1, 0x72a55db

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Episode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "Movie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 57
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->setLastTvPlayback(Ljava/util/Calendar;)V

    goto :goto_2

    .line 54
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->setLastMoviePlayback(Ljava/util/Calendar;)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlaystateCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/PlaystateRequest;)V
    .locals 2

    .line 124
    sget-object p1, Ltv/emby/embyatv/eventhandling/TvApiEventListener$4;->$SwitchMap$mediabrowser$model$session$PlaystateCommand:[I

    invoke-virtual {p2}, Lmediabrowser/model/session/PlaystateRequest;->getCommand()Lmediabrowser/model/session/PlaystateCommand;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/session/PlaystateCommand;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->playbackJump()V

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->playbackJumpBack()V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-virtual {p2}, Lmediabrowser/model/session/PlaystateRequest;->getSeekPositionTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x2710

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 146
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Ltv/emby/embyatv/TvApp;->playbackSeek(I)V

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->playbackPrev()V

    goto :goto_0

    .line 139
    :pswitch_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->playbackNext()V

    goto :goto_0

    .line 136
    :pswitch_5
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->togglePausePlayback()V

    goto :goto_0

    .line 133
    :pswitch_6
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->unPausePlayback()V

    goto :goto_0

    .line 130
    :pswitch_7
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->pausePlayback()V

    goto :goto_0

    .line 127
    :pswitch_8
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->stopPlayback()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUserDataChanged(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/UserDataChangeInfo;)V
    .locals 2

    .line 114
    invoke-virtual {p2}, Lmediabrowser/model/session/UserDataChangeInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->setLastTvPlayback(Ljava/util/Calendar;)V

    .line 116
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->setLastMoviePlayback(Ljava/util/Calendar;)V

    .line 117
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/TvApp;->setLastFavoriteUpdate(J)V

    .line 118
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    sget-object p2, Ltv/emby/embyatv/base/CustomMessage;->RefreshRows:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    :cond_0
    return-void
.end method

.method public setItemChangeListener(Ltv/emby/embyatv/model/IItemChangeListener;)V
    .locals 0

    .line 238
    iput-object p1, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->itemChangeListener:Ltv/emby/embyatv/model/IItemChangeListener;

    return-void
.end method
