.class public Ltv/emby/embyatv/browsing/ChannelGridFragment;
.super Ltv/emby/embyatv/browsing/TabGridFragment;
.source "ChannelGridFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabGridFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected availableSortOptions()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.4.0.20"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f1004f5

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "DatePlayed"

    sget-object v6, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v4, p0, v2, v5, v6}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f1004d6

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChannelNumber,SortName"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f1002bb

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PlayCount"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "DatePlayed"

    sget-object v6, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v4, p0, v2, v5, v6}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100468

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SortName"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabGridFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f100469

    .line 23
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/ChannelGridFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/ChannelGridFragment;->mFolderName:Ljava/lang/String;

    .line 24
    iget-object p1, p0, Ltv/emby/embyatv/browsing/ChannelGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    const-string v0, "livetv"

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setCollectionType(Ljava/lang/String;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V
    .locals 4

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/ChannelGridFragment;->mAllowLetterJump:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/ChannelGridFragment;->mAllowPlayButtons:Z

    .line 49
    new-instance v1, Lmediabrowser/model/livetv/LiveTvChannelQuery;

    invoke-direct {v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;-><init>()V

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setAddCurrentProgram(Z)V

    .line 51
    invoke-virtual {v1, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setEnableUserData(Z)V

    .line 52
    iget-object v2, p0, Ltv/emby/embyatv/browsing/ChannelGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setUserId(Ljava/lang/String;)V

    .line 53
    new-instance v2, Ltv/emby/embyatv/browsing/BrowseRowDef;

    const-string v3, ""

    invoke-direct {v2, v3, v1, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/LiveTvChannelQuery;Z)V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/ChannelGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 54
    iget-object v0, p0, Ltv/emby/embyatv/browsing/ChannelGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IGridLoader;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    return-void
.end method
