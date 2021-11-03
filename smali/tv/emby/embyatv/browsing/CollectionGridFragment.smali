.class public Ltv/emby/embyatv/browsing/CollectionGridFragment;
.super Ltv/emby/embyatv/browsing/TabGridFragment;
.source "CollectionGridFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabGridFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "collections-"

    .line 18
    iput-object v0, p0, Ltv/emby/embyatv/browsing/CollectionGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    .line 19
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabGridFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V
    .locals 7

    const v0, 0x7f10046e

    .line 24
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/CollectionGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CollectionGridFragment;->mFolderName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/CollectionGridFragment;->mAllowFavFilter:Z

    .line 27
    new-instance v3, Ltv/emby/embyatv/querying/StdItemQuery;

    const/4 v1, 0x2

    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v0

    sget-object v0, Lmediabrowser/model/querying/ItemFields;->Prefix:Lmediabrowser/model/querying/ItemFields;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-direct {v3, v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>([Lmediabrowser/model/querying/ItemFields;)V

    const-string v0, "BoxSet"

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 30
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CollectionGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ltv/emby/embyatv/browsing/BrowseRowDef;

    const-string v2, ""

    const/16 v4, 0x12c

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CollectionGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 33
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CollectionGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IGridLoader;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    return-void
.end method
