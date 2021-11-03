.class public Ltv/emby/embyatv/browsing/ArtistGridFragment;
.super Ltv/emby/embyatv/browsing/TabGridFragment;
.source "ArtistGridFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabGridFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected availableSortOptions()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f10051a

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SortName"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f10051b

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SortName"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f10047a

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DateCreated"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f10047b

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DateCreated"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f10045c

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PremiereDate"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "artists-"

    .line 26
    iput-object v0, p0, Ltv/emby/embyatv/browsing/ArtistGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    .line 27
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabGridFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V
    .locals 8

    const v0, 0x7f10044f

    .line 43
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/ArtistGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/ArtistGridFragment;->mFolderName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/ArtistGridFragment;->mAllowFavFilter:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/ArtistGridFragment;->mAllowUnwatched:Z

    .line 47
    new-instance v3, Lmediabrowser/model/querying/ArtistsQuery;

    invoke-direct {v3}, Lmediabrowser/model/querying/ArtistsQuery;-><init>()V

    .line 48
    iget-object v1, p0, Ltv/emby/embyatv/browsing/ArtistGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setParentId(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 49
    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v0

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Prefix:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v3, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 50
    invoke-virtual {v3, v4}, Lmediabrowser/model/querying/ArtistsQuery;->setRecursive(Z)V

    .line 52
    new-instance v7, Ltv/emby/embyatv/browsing/BrowseRowDef;

    const-string v2, ""

    new-array v5, v4, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v5, v0

    sget-object v6, Ltv/emby/embyatv/querying/QueryType;->Artists:Ltv/emby/embyatv/querying/QueryType;

    const/16 v4, 0x12c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ArtistsQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;Ltv/emby/embyatv/querying/QueryType;)V

    iput-object v7, p0, Ltv/emby/embyatv/browsing/ArtistGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 53
    iget-object v0, p0, Ltv/emby/embyatv/browsing/ArtistGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IGridLoader;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    return-void
.end method
