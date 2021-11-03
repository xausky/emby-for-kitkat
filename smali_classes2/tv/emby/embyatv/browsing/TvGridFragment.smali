.class public Ltv/emby/embyatv/browsing/TvGridFragment;
.super Ltv/emby/embyatv/browsing/TabGridFragment;
.source "TvGridFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
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

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 38
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

    .line 39
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

    .line 40
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

    .line 41
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

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f1004f4

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DateLastContentAdded"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100566

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PremiereDate"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100567

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PremiereDate"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100541

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OfficialRating"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100478

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CriticRating"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f1004e8

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CommunityRating"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100595

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Runtime"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f1004f5

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SeriesDatePlayed"

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-direct {v2, p0, v3, v4, v5}, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;-><init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V
    .locals 7

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TvGridFragment;->mAllowGrouping:Z

    .line 22
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TvGridFragment;->mAllowFilters:Z

    .line 24
    new-instance v3, Ltv/emby/embyatv/querying/StdItemQuery;

    const/16 v1, 0x8

    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v0

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Studios:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->CriticRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->CommunityRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->OfficialRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PremiereDate:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->EndDate:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    invoke-direct {v3, v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>([Lmediabrowser/model/querying/ItemFields;)V

    .line 25
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TvGridFragment;->mParentId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    const-string v1, "Series"

    .line 26
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 28
    invoke-virtual {v3, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 30
    new-instance v0, Ltv/emby/embyatv/browsing/BrowseRowDef;

    const-string v2, ""

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TvGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 31
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TvGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IGridLoader;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    return-void
.end method
