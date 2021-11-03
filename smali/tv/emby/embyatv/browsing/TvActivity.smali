.class public Ltv/emby/embyatv/browsing/TvActivity;
.super Ltv/emby/embyatv/browsing/BaseTabActivity;
.source "TvActivity.java"


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

    .line 21
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TvActivity;->mTabs:Ljava/util/List;

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

    .line 47
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TvActivity;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 27
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

    .line 32
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1005b2

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/TvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/TvGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/TvGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1005e5

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/TvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/SuggestedShowsFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1004c2

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/TvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/FavoriteShowsFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/FavoriteShowsFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f100605

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/TvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1004ce

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/TvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/GenreGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/GenreGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1004c6

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/TvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/FolderGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/FolderGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TvActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SearchTv"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TvActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SearchPeople"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltv/emby/embyatv/startup/StartupActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/TvActivity;->startActivity(Landroid/content/Intent;)V

    .line 30
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TvActivity;->finish()V

    :goto_1
    return-void
.end method
