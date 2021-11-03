.class public Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "GlobalFavoritesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->BackGoHome:Z

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 17

    move-object/from16 v0, p0

    .line 30
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v2, "Movie"

    .line 31
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    const/4 v3, 0x0

    .line 34
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 35
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 36
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "SortName"

    .line 37
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 38
    iget-object v4, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004ba

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v7, v3

    const/16 v8, 0x1e

    invoke-direct {v5, v6, v1, v8, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "BoxSet"

    .line 42
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 46
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 47
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "SortName"

    .line 48
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 49
    iget-object v4, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004b8

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v7, v3

    invoke-direct {v5, v6, v1, v8, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "Trailer"

    .line 53
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 56
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 57
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 58
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "SortName"

    .line 59
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 60
    iget-object v4, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004c1

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v7, v3

    invoke-direct {v5, v6, v1, v8, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "Series"

    .line 64
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 68
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 69
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "SortName"

    .line 70
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 71
    iget-object v4, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004bf

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v7, v3

    invoke-direct {v5, v6, v1, v8, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "Episode"

    .line 75
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 78
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 79
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 80
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "SeriesSortName"

    const-string v5, "SortName"

    .line 81
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 82
    iget-object v4, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004b9

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v7, v3

    invoke-direct {v5, v6, v1, v8, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lmediabrowser/model/querying/PersonsQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/PersonsQuery;-><init>()V

    .line 86
    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/PersonsQuery;->setRecursive(Z)V

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmediabrowser/model/querying/PersonsQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/PersonsQuery;->setEnableTotalRecordCount(Z)V

    .line 89
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Lmediabrowser/model/querying/PersonsQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const/4 v4, 0x2

    .line 90
    new-array v5, v4, [Lmediabrowser/model/querying/ItemFields;

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v3

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lmediabrowser/model/querying/PersonsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const-string v5, "SortName"

    .line 91
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmediabrowser/model/querying/PersonsQuery;->setSortBy([Ljava/lang/String;)V

    .line 92
    iget-object v5, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v9, 0x7f1004bc

    invoke-virtual {v7, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v10, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v10, v9, v3

    invoke-direct {v6, v7, v1, v8, v9}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/PersonsQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v5, "Video"

    .line 96
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 99
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 100
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 101
    new-array v5, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v6, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v6, v5, v3

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v5, "SortName"

    .line 102
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 103
    iget-object v5, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v9, 0x7f10012e

    invoke-virtual {v7, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v10, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v10, v9, v3

    invoke-direct {v6, v7, v1, v8, v9}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v5, "Photo"

    .line 107
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 110
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 111
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 112
    new-array v5, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v6, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v6, v5, v3

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v5, "SortName"

    .line 113
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 114
    iget-object v5, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v9, 0x7f1004bd

    invoke-virtual {v7, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v10, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v10, v9, v3

    invoke-direct {v6, v7, v1, v8, v9}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lmediabrowser/model/livetv/LiveTvChannelQuery;

    invoke-direct {v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;-><init>()V

    .line 118
    invoke-virtual {v1, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setAddCurrentProgram(Z)V

    .line 119
    invoke-virtual {v1, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setEnableUserData(Z)V

    .line 120
    iget-object v5, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setUserId(Ljava/lang/String;)V

    .line 121
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setIsFavorite(Ljava/lang/Boolean;)V

    const-string v5, "SortName"

    .line 122
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortBy([Ljava/lang/String;)V

    .line 123
    iget-object v5, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v9, 0x7f1004b7

    invoke-virtual {v7, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v10, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v10, v9, v3

    invoke-direct {v6, v7, v1, v9, v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/LiveTvChannelQuery;[Ltv/emby/embyatv/model/ChangeTriggerType;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v13, Lmediabrowser/model/querying/ArtistsQuery;

    invoke-direct {v13}, Lmediabrowser/model/querying/ArtistsQuery;-><init>()V

    .line 127
    invoke-virtual {v13, v2}, Lmediabrowser/model/querying/ArtistsQuery;->setRecursive(Z)V

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 129
    invoke-virtual {v13, v2}, Lmediabrowser/model/querying/ArtistsQuery;->setEnableTotalRecordCount(Z)V

    .line 130
    new-array v1, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v1, v3

    invoke-virtual {v13, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 131
    new-array v1, v4, [Lmediabrowser/model/querying/ItemFields;

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v1, v3

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v1, v2

    invoke-virtual {v13, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const-string v1, "SortName"

    .line 132
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setSortBy([Ljava/lang/String;)V

    .line 133
    iget-object v1, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v4, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v5, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v6, 0x7f1004b6

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-array v15, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v5, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v5, v15, v3

    sget-object v16, Ltv/emby/embyatv/querying/QueryType;->Artists:Ltv/emby/embyatv/querying/QueryType;

    const/16 v14, 0x1e

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ArtistsQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;Ltv/emby/embyatv/querying/QueryType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "MusicAlbum"

    .line 137
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 140
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 141
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "AlbumArtist"

    const-string v5, "SortName"

    .line 142
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 143
    iget-object v4, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004b5

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v7, v3

    invoke-direct {v5, v6, v1, v8, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "Audio"

    .line 147
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 150
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 151
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "AlbumArtist"

    const-string v5, "SortName"

    .line 152
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 153
    iget-object v4, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004c0

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v7, v3

    invoke-direct {v5, v6, v1, v8, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "MusicVideo"

    .line 157
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 161
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 162
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "SortName"

    .line 163
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 164
    iget-object v4, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004bb

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v7, v3

    invoke-direct {v5, v6, v1, v8, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "Playlist"

    .line 168
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 171
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 172
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v5, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "SortName"

    .line 173
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 174
    iget-object v4, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v5, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004be

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v7, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v7, v2, v3

    invoke-direct {v5, v6, v1, v8, v2}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, v0, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;->mRows:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method
