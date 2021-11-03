.class public Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "SuggestedMoviesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 9

    .line 33
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v1, "Movie"

    .line 34
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 36
    iget-object v2, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    const/16 v2, 0x32

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    const/4 v3, 0x0

    .line 39
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 40
    invoke-virtual {v0, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 41
    new-array v4, v1, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsResumable:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "DatePlayed"

    .line 42
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 43
    sget-object v4, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v0, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 44
    iget-object v4, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f100477

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->MoviePlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v7, v3

    invoke-direct {v5, v6, v0, v3, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lmediabrowser/model/querying/LatestItemsQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/LatestItemsQuery;-><init>()V

    .line 48
    iget-object v4, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmediabrowser/model/querying/LatestItemsQuery;->setParentId(Ljava/lang/String;)V

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/LatestItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/LatestItemsQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    const/16 v2, 0xa

    .line 51
    new-array v2, v2, [Lmediabrowser/model/querying/ItemFields;

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v2, v3

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v2, v1

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->ItemCounts:Lmediabrowser/model/querying/ItemFields;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    const/4 v6, 0x3

    aput-object v4, v2, v6

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->CriticRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v6, 0x4

    aput-object v4, v2, v6

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->CommunityRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v6, 0x5

    aput-object v4, v2, v6

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->OfficialRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v6, 0x6

    aput-object v4, v2, v6

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PremiereDate:Lmediabrowser/model/querying/ItemFields;

    const/4 v7, 0x7

    aput-object v4, v2, v7

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->EndDate:Lmediabrowser/model/querying/ItemFields;

    const/16 v7, 0x8

    aput-object v4, v2, v7

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->ProductionYear:Lmediabrowser/model/querying/ItemFields;

    const/16 v7, 0x9

    aput-object v4, v2, v7

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/LatestItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 53
    iget-object v2, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v4, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v8, 0x7f1004f6

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->MoviePlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v5, v3

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v5, v1

    invoke-direct {v4, v7, v0, v3, v5}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/LatestItemsQuery;Z[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    .line 56
    iget-object v2, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    const-string v2, "Movie"

    .line 57
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setUserId(Ljava/lang/String;)V

    .line 59
    sget-object v2, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    const-string v2, "DatePlayed"

    .line 60
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 62
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 64
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;-><init>(Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
