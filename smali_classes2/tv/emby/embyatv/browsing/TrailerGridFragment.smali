.class public Ltv/emby/embyatv/browsing/TrailerGridFragment;
.super Ltv/emby/embyatv/browsing/TabGridFragment;
.source "TrailerGridFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabGridFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "trailers-"

    .line 17
    iput-object v0, p0, Ltv/emby/embyatv/browsing/TrailerGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    .line 18
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabGridFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V
    .locals 7

    const v0, 0x7f1005f7

    .line 23
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/TrailerGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TrailerGridFragment;->mFolderName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TrailerGridFragment;->mAllowFavFilter:Z

    .line 26
    new-instance v3, Ltv/emby/embyatv/querying/StdItemQuery;

    const/4 v1, 0x1

    new-array v2, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v2, v0

    invoke-direct {v3, v2}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>([Lmediabrowser/model/querying/ItemFields;)V

    const-string v0, "Trailer"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 30
    new-instance v0, Ltv/emby/embyatv/browsing/BrowseRowDef;

    const-string v2, ""

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TrailerGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 31
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TrailerGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IGridLoader;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    return-void
.end method
