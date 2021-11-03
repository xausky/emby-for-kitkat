.class public Ltv/emby/embyatv/browsing/MovieGridFragment;
.super Ltv/emby/embyatv/browsing/TabGridFragment;
.source "MovieGridFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabGridFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V
    .locals 7

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/MovieGridFragment;->mAllowGrouping:Z

    .line 22
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/MovieGridFragment;->mAllowFilters:Z

    .line 24
    new-instance v3, Ltv/emby/embyatv/querying/StdItemQuery;

    const/4 v1, 0x7

    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v0

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->ProductionYear:Lmediabrowser/model/querying/ItemFields;

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

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Prefix:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    invoke-direct {v3, v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>([Lmediabrowser/model/querying/ItemFields;)V

    .line 25
    iget-object v1, p0, Ltv/emby/embyatv/browsing/MovieGridFragment;->mParentId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    const-string v1, "Movie"

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

    const/16 v4, 0x12c

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/MovieGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 31
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MovieGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IGridLoader;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    return-void
.end method
