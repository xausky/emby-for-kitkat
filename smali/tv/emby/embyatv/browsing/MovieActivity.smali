.class public Ltv/emby/embyatv/browsing/MovieActivity;
.super Ltv/emby/embyatv/browsing/BaseTabActivity;
.source "MovieActivity.java"


# instance fields
.field mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/TabDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/MovieActivity;->mTabs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getTabDefinitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/TabDef;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MovieActivity;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 28
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MovieActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f100517

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/MovieGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/MovieGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MovieActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1005e5

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MovieActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1004c2

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/FavoriteMoviesFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/FavoriteMoviesFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MovieActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f10046e

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/CollectionGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/CollectionGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MovieActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1005f7

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/TrailerGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/TrailerGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MovieActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1004ce

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/GenreGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/GenreGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MovieActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1004c6

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/FolderGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/FolderGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SearchMovies"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SearchPeople"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltv/emby/embyatv/startup/StartupActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/MovieActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/MovieActivity;->finish()V

    :goto_1
    return-void
.end method
