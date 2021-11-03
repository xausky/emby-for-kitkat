.class public Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "BrowseRecordingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    return-void
.end method

.method private addNext24Timers()V
    .locals 3

    .line 81
    new-instance v0, Lmediabrowser/model/livetv/TimerQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/TimerQuery;-><init>()V

    const/4 v1, 0x1

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/TimerQuery;->setIsScheduled(Ljava/lang/Boolean;)V

    .line 84
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment$1;-><init>(Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvTimersAsync(Lmediabrowser/model/livetv/TimerQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 10

    .line 32
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100506

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v0, Lmediabrowser/model/livetv/RecordingQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecordingQuery;-><init>()V

    const/4 v1, 0x3

    .line 36
    new-array v2, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 37
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setUserId(Ljava/lang/String;)V

    .line 38
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setEnableImages(Ljava/lang/Boolean;)V

    .line 39
    iget-object v2, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v3, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v8, 0x7f100574

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x28

    invoke-direct {v3, v7, v0, v8}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Lmediabrowser/model/livetv/RecordingQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecordingQuery;-><init>()V

    .line 43
    new-array v2, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v4

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v5

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 44
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setUserId(Ljava/lang/String;)V

    .line 45
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setEnableImages(Ljava/lang/Boolean;)V

    .line 46
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setIsMovie(Ljava/lang/Boolean;)V

    .line 47
    new-instance v2, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v7, 0x7f100517

    invoke-virtual {v3, v7}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v8}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;I)V

    .line 50
    new-instance v0, Lmediabrowser/model/livetv/RecordingQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecordingQuery;-><init>()V

    .line 51
    new-array v3, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v3, v4

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v3, v5

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v3, v6

    invoke-virtual {v0, v3}, Lmediabrowser/model/livetv/RecordingQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 52
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmediabrowser/model/livetv/RecordingQuery;->setUserId(Ljava/lang/String;)V

    .line 53
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmediabrowser/model/livetv/RecordingQuery;->setEnableImages(Ljava/lang/Boolean;)V

    .line 54
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmediabrowser/model/livetv/RecordingQuery;->setIsSeries(Ljava/lang/Boolean;)V

    .line 55
    new-instance v3, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v9, 0x7f1005fd

    invoke-virtual {v7, v9}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v8}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;I)V

    .line 57
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Lmediabrowser/model/livetv/RecordingQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecordingQuery;-><init>()V

    .line 62
    new-array v2, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v4

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v5

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 63
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setUserId(Ljava/lang/String;)V

    .line 64
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setEnableImages(Ljava/lang/Boolean;)V

    .line 65
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setIsSports(Ljava/lang/Boolean;)V

    .line 66
    iget-object v2, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v3, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v9, 0x7f1005c8

    invoke-virtual {v7, v9}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v8}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lmediabrowser/model/livetv/RecordingQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecordingQuery;-><init>()V

    .line 70
    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v4

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v5

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 71
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setUserId(Ljava/lang/String;)V

    .line 72
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setEnableImages(Ljava/lang/Boolean;)V

    .line 73
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setIsKids(Ljava/lang/Boolean;)V

    .line 74
    iget-object v1, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mRows:Ljava/util/ArrayList;

    new-instance v2, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v4, 0x7f1004f2

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v8}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    .line 77
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->addNext24Timers()V

    return-void
.end method
