.class public Ltv/emby/embyatv/browsing/FavoriteMusicFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "FavoriteMusicFragment.java"


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
    .locals 10

    .line 27
    new-instance v2, Lmediabrowser/model/querying/ArtistsQuery;

    invoke-direct {v2}, Lmediabrowser/model/querying/ArtistsQuery;-><init>()V

    const/4 v6, 0x1

    .line 28
    invoke-virtual {v2, v6}, Lmediabrowser/model/querying/ArtistsQuery;->setRecursive(Z)V

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setParentId(Ljava/lang/String;)V

    .line 30
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 31
    invoke-virtual {v2, v6}, Lmediabrowser/model/querying/ArtistsQuery;->setEnableTotalRecordCount(Z)V

    .line 32
    new-array v0, v6, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    const/4 v7, 0x0

    aput-object v1, v0, v7

    invoke-virtual {v2, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [Lmediabrowser/model/querying/ItemFields;

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, v0, v6

    invoke-virtual {v2, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const-string v0, "SortName"

    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setSortBy([Ljava/lang/String;)V

    .line 35
    iget-object v8, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mRows:Ljava/util/ArrayList;

    new-instance v9, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v1, 0x7f1004b6

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v0, v4, v7

    sget-object v5, Ltv/emby/embyatv/querying/QueryType;->Artists:Ltv/emby/embyatv/querying/QueryType;

    const/16 v3, 0x1e

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ArtistsQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;Ltv/emby/embyatv/querying/QueryType;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v1, "MusicAlbum"

    .line 39
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v6}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 43
    invoke-virtual {v0, v6}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 44
    new-array v1, v6, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v2, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v1, "AlbumArtist"

    const-string v2, "SortName"

    .line 45
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mRows:Ljava/util/ArrayList;

    new-instance v2, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1004b5

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v5, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v5, v4, v7

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v0, v5, v4}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v1, "Audio"

    .line 50
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v6}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 54
    invoke-virtual {v0, v6}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 55
    new-array v1, v6, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v2, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v1, "AlbumArtist"

    const-string v2, "SortName"

    .line 56
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mRows:Ljava/util/ArrayList;

    new-instance v2, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1004c0

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v4, v7

    invoke-direct {v2, v3, v0, v5, v4}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v1, "Playlist"

    .line 61
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v6}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 65
    invoke-virtual {v0, v6}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 66
    new-array v1, v6, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v2, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v1, "SortName"

    .line 67
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mRows:Ljava/util/ArrayList;

    new-instance v2, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1004be

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v6, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v6, v4, v7

    invoke-direct {v2, v3, v0, v5, v4}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Ltv/emby/embyatv/browsing/FavoriteMusicFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method
