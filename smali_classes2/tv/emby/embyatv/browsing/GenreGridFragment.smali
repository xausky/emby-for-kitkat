.class public Ltv/emby/embyatv/browsing/GenreGridFragment;
.super Ltv/emby/embyatv/browsing/TabGridFragment;
.source "GenreGridFragment.java"


# instance fields
.field private includeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
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

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 44
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

    .line 45
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

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 32
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/GenreGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IncludeType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->includeType:Ljava/lang/String;

    .line 33
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->includeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iput-boolean v2, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mAllowFavFilter:Z

    .line 35
    iput-boolean v2, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mAllowLetterJump:Z

    .line 36
    iput-boolean v2, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mAllowPlayButtons:Z

    .line 37
    iput-boolean v2, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mAllowViewSelection:Z

    .line 38
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabGridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "genres-"

    .line 26
    iput-object v0, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    .line 27
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabGridFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V
    .locals 7

    .line 51
    iget-object v0, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mFolderName:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "topParentId"

    iget-object v2, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "topParentCollectionType"

    iget-object v2, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    new-instance v0, Lmediabrowser/model/querying/ItemsByNameQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/ItemsByNameQuery;-><init>()V

    .line 57
    iget-object v1, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setParentId(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 58
    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Prefix:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 59
    iget-object v1, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->includeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->includeType:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 62
    new-instance v1, Ltv/emby/embyatv/browsing/BrowseRowDef;

    const-string v2, ""

    const/16 v5, 0x12c

    new-array v4, v4, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v6, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v6, v4, v3

    invoke-direct {v1, v2, v0, v5, v4}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    iput-object v1, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 63
    iget-object v0, p0, Ltv/emby/embyatv/browsing/GenreGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IGridLoader;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    return-void
.end method
