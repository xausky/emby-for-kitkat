.class public Ltv/emby/embyatv/browsing/LiveProgramsFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "LiveProgramsFragment.java"


# instance fields
.field protected onNow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->onNow:Z

    return-void
.end method


# virtual methods
.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 10

    .line 23
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->onNow:Z

    const/16 v1, 0x32

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lmediabrowser/model/livetv/LiveTvChannelQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/LiveTvChannelQuery;-><init>()V

    .line 26
    invoke-virtual {v0, v3}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setAddCurrentProgram(Z)V

    .line 27
    invoke-virtual {v0, v3}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setEnableUserData(Z)V

    .line 28
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v5

    iget-boolean v5, v5, Ltv/emby/embyatv/model/LiveTvPrefs;->favsAtTop:Z

    invoke-virtual {v0, v5}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setEnableFavoriteSorting(Z)V

    .line 29
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v6

    iget-object v6, v6, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortBy([Ljava/lang/String;)V

    const-string v5, "DatePlayed"

    .line 30
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v6

    iget-object v6, v6, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    goto :goto_0

    :cond_0
    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    :goto_0
    invoke-virtual {v0, v5}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setLimit(Ljava/lang/Integer;)V

    .line 32
    new-array v5, v2, [Lmediabrowser/model/querying/ItemFields;

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->ProgramPrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v4

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v3

    invoke-virtual {v0, v5}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 33
    iget-object v5, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setUserId(Ljava/lang/String;)V

    .line 34
    iget-object v5, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v8, 0x7f100531

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->Always:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v8, v4

    invoke-direct {v6, v7, v0, v8, v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/LiveTvChannelQuery;[Ltv/emby/embyatv/model/ChangeTriggerType;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    new-instance v0, Lmediabrowser/model/livetv/RecommendedProgramQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecommendedProgramQuery;-><init>()V

    .line 39
    iget-boolean v5, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->onNow:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsAiring(Ljava/lang/Boolean;)V

    .line 40
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setHasAired(Ljava/lang/Boolean;)V

    const/4 v5, 0x3

    .line 41
    new-array v6, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v4

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v3

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->ChannelInfo:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v2

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 42
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setUserId(Ljava/lang/String;)V

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 44
    invoke-virtual {v0, v4}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setEnableTotalRecordCount(Z)V

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setLimit(Ljava/lang/Integer;)V

    .line 46
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsSeries(Ljava/lang/Boolean;)V

    .line 47
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsNews(Ljava/lang/Boolean;)V

    .line 48
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsKids(Ljava/lang/Boolean;)V

    .line 49
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsSports(Ljava/lang/Boolean;)V

    .line 50
    iget-object v6, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v7, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v8, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v9, 0x7f1004aa

    invoke-virtual {v8, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecommendedProgramQuery;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lmediabrowser/model/livetv/RecommendedProgramQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecommendedProgramQuery;-><init>()V

    .line 54
    iget-boolean v6, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->onNow:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsAiring(Ljava/lang/Boolean;)V

    .line 55
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setHasAired(Ljava/lang/Boolean;)V

    .line 56
    new-array v6, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v4

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v3

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->ChannelInfo:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v2

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 57
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setUserId(Ljava/lang/String;)V

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 59
    invoke-virtual {v0, v4}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setEnableTotalRecordCount(Z)V

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setLimit(Ljava/lang/Integer;)V

    .line 61
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsMovie(Ljava/lang/Boolean;)V

    .line 62
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsKids(Ljava/lang/Boolean;)V

    .line 63
    iget-object v6, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v7, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v8, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v9, 0x7f100517

    invoke-virtual {v8, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecommendedProgramQuery;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lmediabrowser/model/livetv/RecommendedProgramQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecommendedProgramQuery;-><init>()V

    .line 67
    iget-boolean v6, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->onNow:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsAiring(Ljava/lang/Boolean;)V

    .line 68
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setHasAired(Ljava/lang/Boolean;)V

    .line 69
    new-array v6, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v4

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v3

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->ChannelInfo:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v2

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 70
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setUserId(Ljava/lang/String;)V

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 72
    invoke-virtual {v0, v4}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setEnableTotalRecordCount(Z)V

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setLimit(Ljava/lang/Integer;)V

    .line 74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsSports(Ljava/lang/Boolean;)V

    .line 75
    iget-object v6, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v7, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v8, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v9, 0x7f1005c8

    invoke-virtual {v8, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecommendedProgramQuery;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lmediabrowser/model/livetv/RecommendedProgramQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecommendedProgramQuery;-><init>()V

    .line 79
    iget-boolean v6, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->onNow:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsAiring(Ljava/lang/Boolean;)V

    .line 80
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setHasAired(Ljava/lang/Boolean;)V

    .line 81
    new-array v6, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v4

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v3

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->ChannelInfo:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v2

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 82
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setUserId(Ljava/lang/String;)V

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 84
    invoke-virtual {v0, v4}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setEnableTotalRecordCount(Z)V

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setLimit(Ljava/lang/Integer;)V

    .line 86
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsKids(Ljava/lang/Boolean;)V

    .line 87
    iget-object v6, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v7, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v8, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v9, 0x7f1004f2

    invoke-virtual {v8, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecommendedProgramQuery;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lmediabrowser/model/livetv/RecommendedProgramQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecommendedProgramQuery;-><init>()V

    .line 91
    iget-boolean v6, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->onNow:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsAiring(Ljava/lang/Boolean;)V

    .line 92
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setHasAired(Ljava/lang/Boolean;)V

    .line 93
    new-array v5, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v4

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v3

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->ChannelInfo:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v2

    invoke-virtual {v0, v5}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 94
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setUserId(Ljava/lang/String;)V

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {v0, v4}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setEnableTotalRecordCount(Z)V

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setLimit(Ljava/lang/Integer;)V

    .line 98
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setIsNews(Ljava/lang/Boolean;)V

    .line 99
    iget-object v1, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v2, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f100522

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecommendedProgramQuery;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method
