.class public Ltv/emby/embyatv/browsing/SuggestedShowsFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "SuggestedShowsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addPremieres(Landroidx/leanback/widget/ListRow;)V
    .locals 9

    .line 84
    iget-object v0, p0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_enable_premieres"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 85
    iget-object v0, p0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Premieres:Ltv/emby/embyatv/querying/QueryType;

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->getRowOfType(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)Landroidx/leanback/widget/ListRow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->getPremieres(Landroidx/leanback/widget/ArrayObjectAdapter;)Ljava/util/List;

    move-result-object v2

    .line 88
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 89
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v3, 0x7f100521

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v7, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    const/16 v1, 0x104

    const/4 v8, 0x1

    invoke-direct {v3, v8, v1}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v4, p0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    sget-object v5, Ltv/emby/embyatv/querying/QueryType;->Premieres:Ltv/emby/embyatv/querying/QueryType;

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;Z)V

    .line 91
    iget-object v1, p0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v2, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v8

    new-instance v2, Landroidx/leanback/widget/ListRow;

    invoke-direct {v2, v0, v7}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    .line 92
    invoke-virtual {v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    :cond_1
    return-void
.end method

.method protected nextUpRetrieveFinished()V
    .locals 2

    .line 79
    iget-object v0, p0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->NextUp:Ltv/emby/embyatv/querying/QueryType;

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->getRowOfType(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)Landroidx/leanback/widget/ListRow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->addPremieres(Landroidx/leanback/widget/ListRow;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 17

    move-object/from16 v0, p0

    .line 39
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v2, "Episode"

    .line 40
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 41
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 42
    iget-object v3, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    const/16 v3, 0x32

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    const/4 v4, 0x0

    .line 45
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 46
    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 47
    new-array v5, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v6, Lmediabrowser/model/querying/ItemFilter;->IsResumable:Lmediabrowser/model/querying/ItemFilter;

    aput-object v6, v5, v4

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v5, "DatePlayed"

    .line 48
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 49
    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 50
    iget-object v5, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v8, 0x7f100477

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v8, v4

    invoke-direct {v6, v7, v1, v4, v8}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lmediabrowser/model/querying/NextUpQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/NextUpQuery;-><init>()V

    .line 54
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmediabrowser/model/querying/NextUpQuery;->setUserId(Ljava/lang/String;)V

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmediabrowser/model/querying/NextUpQuery;->setLimit(Ljava/lang/Integer;)V

    .line 56
    iget-object v5, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmediabrowser/model/querying/NextUpQuery;->setParentId(Ljava/lang/String;)V

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmediabrowser/model/querying/NextUpQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    const/16 v5, 0xa

    .line 58
    new-array v6, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v4

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v6, v2

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->ItemCounts:Lmediabrowser/model/querying/ItemFields;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->CriticRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v10, 0x4

    aput-object v7, v6, v10

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->CommunityRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v11, 0x5

    aput-object v7, v6, v11

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->OfficialRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v12, 0x6

    aput-object v7, v6, v12

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->PremiereDate:Lmediabrowser/model/querying/ItemFields;

    const/4 v13, 0x7

    aput-object v7, v6, v13

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->EndDate:Lmediabrowser/model/querying/ItemFields;

    const/16 v14, 0x8

    aput-object v7, v6, v14

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->ProductionYear:Lmediabrowser/model/querying/ItemFields;

    const/16 v15, 0x9

    aput-object v7, v6, v15

    invoke-virtual {v1, v6}, Lmediabrowser/model/querying/NextUpQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 60
    iget-object v6, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v7, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v3, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f100524

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v15, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v16, Ltv/emby/embyatv/model/ChangeTriggerType;->TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v16, v15, v4

    invoke-direct {v7, v3, v1, v15}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/NextUpQuery;[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lmediabrowser/model/querying/LatestItemsQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/LatestItemsQuery;-><init>()V

    .line 64
    new-array v3, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v4

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v2

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->ItemCounts:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v8

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v9

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->CriticRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v10

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->CommunityRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v11

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->OfficialRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v12

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->PremiereDate:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v13

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->EndDate:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v3, v14

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->ProductionYear:Lmediabrowser/model/querying/ItemFields;

    const/16 v6, 0x9

    aput-object v5, v3, v6

    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/LatestItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const-string v3, "Episode"

    .line 66
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/LatestItemsQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/LatestItemsQuery;->setGroupItems(Z)V

    .line 68
    iget-object v3, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/LatestItemsQuery;->setParentId(Ljava/lang/String;)V

    const/16 v3, 0x32

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/LatestItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/LatestItemsQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 71
    iget-object v3, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004f6

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v7, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v7, v2, v4

    invoke-direct {v5, v6, v1, v2}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/LatestItemsQuery;[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, v0, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;->mRows:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method
