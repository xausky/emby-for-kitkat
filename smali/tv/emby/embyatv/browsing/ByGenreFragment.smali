.class public Ltv/emby/embyatv/browsing/ByGenreFragment;
.super Ltv/emby/embyatv/browsing/CustomViewFragment;
.source "ByGenreFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/CustomViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/CustomViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 5

    .line 25
    iget-object v0, p0, Ltv/emby/embyatv/browsing/ByGenreFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 27
    new-instance v0, Lmediabrowser/model/querying/ItemsByNameQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/ItemsByNameQuery;-><init>()V

    .line 28
    iget-object v1, p0, Ltv/emby/embyatv/browsing/ByGenreFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setParentId(Ljava/lang/String;)V

    const-string v1, "SortName"

    .line 29
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setSortBy([Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Ltv/emby/embyatv/browsing/ByGenreFragment;->includeType:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ltv/emby/embyatv/browsing/ByGenreFragment;->includeType:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/ItemsByNameQuery;->setRecursive(Z)V

    .line 32
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setUserId(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/browsing/ByGenreFragment$1;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/browsing/ByGenreFragment$1;-><init>(Ltv/emby/embyatv/browsing/ByGenreFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetGenresAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V

    :cond_1
    return-void
.end method
