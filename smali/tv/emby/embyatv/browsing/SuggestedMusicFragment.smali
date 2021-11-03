.class public Ltv/emby/embyatv/browsing/SuggestedMusicFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "SuggestedMusicFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 23

    move-object/from16 v0, p0

    .line 27
    new-instance v1, Lmediabrowser/model/querying/LatestItemsQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/LatestItemsQuery;-><init>()V

    const/4 v2, 0x1

    .line 28
    new-array v3, v2, [Lmediabrowser/model/querying/ItemFields;

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/LatestItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const-string v3, "Audio"

    .line 29
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/LatestItemsQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v2}, Lmediabrowser/model/querying/LatestItemsQuery;->setGroupItems(Z)V

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/LatestItemsQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 32
    iget-object v3, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/LatestItemsQuery;->setParentId(Ljava/lang/String;)V

    const/16 v3, 0x32

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmediabrowser/model/querying/LatestItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 34
    iget-object v4, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v8, 0x7f1004f6

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v9, v8, v5

    invoke-direct {v6, v7, v1, v5, v8}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/LatestItemsQuery;Z[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v12, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v12}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v1, "Audio"

    .line 38
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 39
    invoke-virtual {v12, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 40
    iget-object v1, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 42
    new-array v1, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v4, Lmediabrowser/model/querying/ItemFilter;->IsPlayed:Lmediabrowser/model/querying/ItemFilter;

    aput-object v4, v1, v5

    invoke-virtual {v12, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v1, "DatePlayed"

    .line 43
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 44
    sget-object v1, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v12, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 45
    invoke-virtual {v12, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 47
    iget-object v1, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mRows:Ljava/util/ArrayList;

    new-instance v4, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f100575

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x2

    new-array v7, v6, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->MusicPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v7, v5

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v7, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v10, v4

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "Audio"

    .line 51
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 53
    iget-object v4, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 55
    new-array v4, v2, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v7, Lmediabrowser/model/querying/ItemFilter;->IsPlayed:Lmediabrowser/model/querying/ItemFilter;

    aput-object v7, v4, v5

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v4, "PlayCount"

    .line 56
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 57
    sget-object v4, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 58
    invoke-virtual {v1, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 60
    iget-object v3, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mRows:Ljava/util/ArrayList;

    new-instance v4, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v8, 0x7f1004cb

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-array v6, v6, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v7, Ltv/emby/embyatv/model/ChangeTriggerType;->MusicPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v7, v6, v5

    sget-object v5, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v5, v6, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v16, v4

    move-object/from16 v18, v1

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v22}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, v0, Ltv/emby/embyatv/browsing/SuggestedMusicFragment;->mRows:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method
