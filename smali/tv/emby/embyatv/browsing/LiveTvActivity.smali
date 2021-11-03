.class public Ltv/emby/embyatv/browsing/LiveTvActivity;
.super Ltv/emby/embyatv/browsing/BaseTabActivity;
.source "LiveTvActivity.java"


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

    iput-object v0, p0, Ltv/emby/embyatv/browsing/LiveTvActivity;->mTabs:Ljava/util/List;

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

    .line 48
    iget-object v0, p0, Ltv/emby/embyatv/browsing/LiveTvActivity;->mTabs:Ljava/util/List;

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
    iget-object v0, p0, Ltv/emby/embyatv/browsing/LiveTvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f100531

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/LiveTvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/LiveProgramsFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/LiveProgramsFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Ltv/emby/embyatv/browsing/LiveTvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f100605

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/LiveTvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/UpcomingProgramsFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/UpcomingProgramsFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Ltv/emby/embyatv/browsing/LiveTvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1004d5

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/LiveTvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Ltv/emby/embyatv/browsing/LiveTvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f100469

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/LiveTvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/ChannelGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/ChannelGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Ltv/emby/embyatv/browsing/LiveTvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f10057c

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/LiveTvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/RecordingGridFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/RecordingGridFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Ltv/emby/embyatv/browsing/LiveTvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f100598

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/LiveTvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/BrowseScheduleFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/BrowseScheduleFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Ltv/emby/embyatv/browsing/LiveTvActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1005a5

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/LiveTvActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/BrowseSeriesTimersFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/BrowseSeriesTimersFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/LiveTvActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SearchLiveTv"

    const/4 v1, 0x1

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

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/LiveTvActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/LiveTvActivity;->finish()V

    :goto_1
    return-void
.end method
