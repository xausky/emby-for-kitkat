.class public Ltv/emby/embyatv/browsing/TabHomeFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "TabHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final UNLOCK:I = 0x3


# instance fields
.field private final TOTAL_SECTIONS:I

.field private activeRecordingsPos:I

.field protected audioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

.field private continueWatchingConfigured:Z

.field private homeScreenSections:[Ljava/lang/String;

.field private lastLoaded:Ljava/util/Calendar;

.field private liveTVFavsAtTop:Z

.field private liveTVSortBy:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private nextUpConfigured:Z

.field protected nowPlayingRow:Landroidx/leanback/widget/ListRow;

.field private premiereButton:Ltv/emby/embyatv/ui/GridButton;

.field refreshTask:Ljava/lang/Runnable;

.field private toolsRow:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private unlockButton:Ltv/emby/embyatv/ui/GridButton;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 59
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->continueWatchingConfigured:Z

    .line 68
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nextUpConfigured:Z

    .line 69
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->liveTVFavsAtTop:Z

    const-string v0, "SortName"

    .line 70
    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->liveTVSortBy:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->lastLoaded:Ljava/util/Calendar;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->activeRecordingsPos:I

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Ltv/emby/embyatv/browsing/TabHomeFragment$4;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/TabHomeFragment$4;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->refreshTask:Ljava/lang/Runnable;

    .line 558
    new-instance v0, Ltv/emby/embyatv/browsing/TabHomeFragment$9;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/TabHomeFragment$9;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->audioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    const/4 v0, 0x7

    .line 602
    iput v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->TOTAL_SECTIONS:I

    const-string v1, "librarytiles"

    const-string v2, "resume"

    const-string v3, "resumeaudio"

    const-string v4, "livetv"

    const-string v5, "nextup"

    const-string v6, "latestmedia"

    const-string v7, "none"

    .line 603
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->homeScreenSections:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/browsing/TabHomeFragment;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->continueWatchingConfigured:Z

    return p0
.end method

.method static synthetic access$002(Ltv/emby/embyatv/browsing/TabHomeFragment;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->continueWatchingConfigured:Z

    return p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/browsing/TabHomeFragment;)I
    .locals 0

    .line 59
    iget p0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->activeRecordingsPos:I

    return p0
.end method

.method static synthetic access$102(Ltv/emby/embyatv/browsing/TabHomeFragment;I)I
    .locals 0

    .line 59
    iput p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->activeRecordingsPos:I

    return p1
.end method

.method static synthetic access$200(Ltv/emby/embyatv/browsing/TabHomeFragment;)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->homeScreenSections:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->setupQueriesInternal(Ltv/emby/embyatv/browsing/IRowLoader;)V

    return-void
.end method

.method static synthetic access$402(Ltv/emby/embyatv/browsing/TabHomeFragment;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nextUpConfigured:Z

    return p1
.end method

.method static synthetic access$502(Ltv/emby/embyatv/browsing/TabHomeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->liveTVSortBy:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Ltv/emby/embyatv/browsing/TabHomeFragment;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->liveTVFavsAtTop:Z

    return p1
.end method

.method static synthetic access$700(Ltv/emby/embyatv/browsing/TabHomeFragment;)Ltv/emby/embyatv/ui/GridButton;
    .locals 0

    .line 59
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->unlockButton:Ltv/emby/embyatv/ui/GridButton;

    return-object p0
.end method

.method static synthetic access$702(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/ui/GridButton;)Ltv/emby/embyatv/ui/GridButton;
    .locals 0

    .line 59
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->unlockButton:Ltv/emby/embyatv/ui/GridButton;

    return-object p1
.end method

.method static synthetic access$800(Ltv/emby/embyatv/browsing/TabHomeFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->toolsRow:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/browsing/TabHomeFragment;)Ltv/emby/embyatv/ui/GridButton;
    .locals 0

    .line 59
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->premiereButton:Ltv/emby/embyatv/ui/GridButton;

    return-object p0
.end method

.method static synthetic access$902(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/ui/GridButton;)Ltv/emby/embyatv/ui/GridButton;
    .locals 0

    .line 59
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->premiereButton:Ltv/emby/embyatv/ui/GridButton;

    return-object p1
.end method

.method private getHomeScreenPrefs(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 4

    .line 606
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "usersettings"

    const-string v2, "emby"

    new-instance v3, Ltv/emby/embyatv/browsing/TabHomeFragment$10;

    invoke-direct {v3, p0, p1}, Ltv/emby/embyatv/browsing/TabHomeFragment$10;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {v0, v1, v2, v3}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private setupQueriesInternal(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 3

    .line 245
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/browsing/TabHomeFragment$6;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/browsing/TabHomeFragment$6;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetUserViews(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method protected OnMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 2

    .line 193
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    sget-object v0, Ltv/emby/embyatv/browsing/TabHomeFragment$13;->$SwitchMap$tv$emby$embyatv$base$CustomMessage:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/base/CustomMessage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->OnMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->hasResumeRow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 197
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->addContinueWatching()V

    .line 199
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->refreshRows()V

    :goto_0
    :pswitch_1
    return-void

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected addActiveRecordings()V
    .locals 6

    .line 491
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getActiveRecordingQuery()Lmediabrowser/model/livetv/RecordingQuery;

    move-result-object v0

    .line 492
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v2, Ltv/emby/embyatv/presentation/CardPresenter;

    const/4 v3, 0x1

    const/16 v4, 0xfa

    invoke-direct {v2, v3, v4}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v4, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5, v2, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecordingQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 493
    new-array v0, v3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v2, Ltv/emby/embyatv/model/ChangeTriggerType;->Always:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v2, v0, v5

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setReRetrieveTriggers([Ltv/emby/embyatv/model/ChangeTriggerType;)V

    .line 494
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f10043d

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 495
    invoke-virtual {v1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 496
    new-instance v2, Ltv/emby/embyatv/browsing/TabHomeFragment$7;

    invoke-direct {v2, p0, v1, v0}, Ltv/emby/embyatv/browsing/TabHomeFragment$7;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 506
    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    return-void
.end method

.method protected addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 5

    .line 655
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 657
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f100539

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 659
    new-instance v1, Ltv/emby/embyatv/presentation/GridButtonPresenter;

    invoke-direct {v1}, Ltv/emby/embyatv/presentation/GridButtonPresenter;-><init>()V

    .line 660
    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->toolsRow:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 662
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Ltv/emby/embyatv/browsing/TabHomeFragment$12;

    invoke-direct {v2, p0, p1, v0}, Ltv/emby/embyatv/browsing/TabHomeFragment$12;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Landroidx/leanback/widget/ArrayObjectAdapter;Landroidx/leanback/widget/HeaderItem;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected addContinueWatching()V
    .locals 10

    .line 541
    new-instance v8, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getResumeQuery()Ltv/emby/embyatv/querying/StdItemQuery;

    move-result-object v1

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    const/4 v9, 0x1

    const/16 v0, 0xfa

    invoke-direct {v5, v9, v0}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v6, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    sget-object v7, Ltv/emby/embyatv/querying/QueryType;->ContinueWatching:Ltv/emby/embyatv/querying/QueryType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    const/4 v0, 0x4

    .line 542
    new-array v0, v0, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->VideoQueueChange:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v9

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->MoviePlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {v8, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setReRetrieveTriggers([Ltv/emby/embyatv/model/ChangeTriggerType;)V

    .line 543
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v1, Landroidx/leanback/widget/HeaderItem;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v3, 0x7f100477

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v8}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 544
    invoke-virtual {v8, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 545
    new-instance v1, Ltv/emby/embyatv/browsing/TabHomeFragment$8;

    invoke-direct {v1, p0, v8, v0}, Ltv/emby/embyatv/browsing/TabHomeFragment$8;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v8, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 555
    invoke-virtual {v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    return-void
.end method

.method protected addLatestMedia([Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "playlists"

    const-string v3, "livetv"

    const-string v4, "boxsets"

    const-string v5, "channels"

    .line 405
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 406
    iget-object v3, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/configuration/UserConfiguration;->getLatestItemsExcludes()[Ljava/lang/String;

    move-result-object v3

    .line 407
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v1, v6

    .line 408
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v9, :cond_2

    .line 410
    new-instance v8, Lmediabrowser/model/querying/LatestItemsQuery;

    invoke-direct {v8}, Lmediabrowser/model/querying/LatestItemsQuery;-><init>()V

    const/16 v9, 0xa

    .line 411
    new-array v9, v9, [Lmediabrowser/model/querying/ItemFields;

    sget-object v10, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v10, v9, v5

    sget-object v10, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    sget-object v10, Lmediabrowser/model/querying/ItemFields;->ItemCounts:Lmediabrowser/model/querying/ItemFields;

    const/4 v12, 0x2

    aput-object v10, v9, v12

    sget-object v10, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    const/4 v13, 0x3

    aput-object v10, v9, v13

    sget-object v10, Lmediabrowser/model/querying/ItemFields;->CriticRating:Lmediabrowser/model/querying/ItemFields;

    const/4 v14, 0x4

    aput-object v10, v9, v14

    const/4 v10, 0x5

    sget-object v15, Lmediabrowser/model/querying/ItemFields;->CommunityRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v15, v9, v10

    const/4 v10, 0x6

    sget-object v15, Lmediabrowser/model/querying/ItemFields;->OfficialRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v15, v9, v10

    const/4 v10, 0x7

    sget-object v15, Lmediabrowser/model/querying/ItemFields;->PremiereDate:Lmediabrowser/model/querying/ItemFields;

    aput-object v15, v9, v10

    const/16 v10, 0x8

    sget-object v15, Lmediabrowser/model/querying/ItemFields;->EndDate:Lmediabrowser/model/querying/ItemFields;

    aput-object v15, v9, v10

    const/16 v10, 0x9

    sget-object v15, Lmediabrowser/model/querying/ItemFields;->ProductionYear:Lmediabrowser/model/querying/ItemFields;

    aput-object v15, v9, v10

    invoke-virtual {v8, v9}, Lmediabrowser/model/querying/LatestItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 413
    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmediabrowser/model/querying/LatestItemsQuery;->setParentId(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v8, v11}, Lmediabrowser/model/querying/LatestItemsQuery;->setGroupItems(Z)V

    .line 415
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmediabrowser/model/querying/LatestItemsQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    .line 416
    invoke-virtual {v8, v5}, Lmediabrowser/model/querying/LatestItemsQuery;->setEnableTotalRecordCount(Z)V

    const/16 v9, 0x1e

    .line 417
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmediabrowser/model/querying/LatestItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 418
    iget-object v9, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v10, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v15, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v13, 0x7f1004f7

    invoke-virtual {v15, v13}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-array v15, v11, [Ljava/lang/Object;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v5

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "tvshows"

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    new-array v12, v14, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v14, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v14, v12, v5

    sget-object v14, Ltv/emby/embyatv/model/ChangeTriggerType;->MoviePlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v14, v12, v11

    sget-object v11, Ltv/emby/embyatv/model/ChangeTriggerType;->TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    const/4 v14, 0x2

    aput-object v11, v12, v14

    sget-object v11, Ltv/emby/embyatv/model/ChangeTriggerType;->MusicPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    const/4 v14, 0x3

    aput-object v11, v12, v14

    invoke-direct {v10, v13, v8, v7, v12}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/LatestItemsQuery;Z[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method protected addLatestRecordings()V
    .locals 5

    .line 470
    new-instance v0, Lmediabrowser/model/livetv/RecordingQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecordingQuery;-><init>()V

    const/4 v1, 0x2

    .line 471
    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 472
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setUserId(Ljava/lang/String;)V

    .line 473
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setEnableImages(Ljava/lang/Boolean;)V

    const/16 v1, 0x1e

    .line 474
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setLimit(Ljava/lang/Integer;)V

    .line 475
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v2, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v4, 0x7f10057c

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addNextUp()V
    .locals 8

    .line 426
    new-instance v0, Lmediabrowser/model/querying/NextUpQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/NextUpQuery;-><init>()V

    .line 427
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/NextUpQuery;->setUserId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 428
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/NextUpQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    const/16 v2, 0x1e

    .line 429
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/NextUpQuery;->setLimit(Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .line 430
    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/NextUpQuery;->setEnableTotalRecordCount(Z)V

    const/4 v3, 0x3

    .line 431
    new-array v3, v3, [Lmediabrowser/model/querying/ItemFields;

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v3, v2

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->DateCreated:Lmediabrowser/model/querying/ItemFields;

    aput-object v4, v3, v1

    sget-object v4, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/NextUpQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 432
    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v4, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v6, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f100525

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v7, Ltv/emby/embyatv/model/ChangeTriggerType;->TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v7, v5, v2

    sget-object v2, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v2, v5, v1

    invoke-direct {v4, v6, v0, v5}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/NextUpQuery;[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addNowPlaying()V
    .locals 3

    .line 572
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nowPlayingRow:Landroidx/leanback/widget/ListRow;

    if-nez v0, :cond_1

    .line 574
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v1, Landroidx/leanback/widget/HeaderItem;

    const v2, 0x7f10052c

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/MediaManager;->getManagedAudioQueue()Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nowPlayingRow:Landroidx/leanback/widget/ListRow;

    .line 575
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nowPlayingRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 578
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nowPlayingRow:Landroidx/leanback/widget/ListRow;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nowPlayingRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nowPlayingRow:Landroidx/leanback/widget/ListRow;

    :cond_1
    :goto_0
    return-void
.end method

.method protected addOnNow()V
    .locals 8

    .line 451
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->hasLiveTv()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->canAccessLiveTv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v1, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v3, 0x7f100502

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ltv/emby/embyatv/querying/QueryType;->LiveTvButtons:Ltv/emby/embyatv/querying/QueryType;

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Ltv/emby/embyatv/querying/QueryType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v0, Lmediabrowser/model/livetv/LiveTvChannelQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/LiveTvChannelQuery;-><init>()V

    const/4 v1, 0x1

    .line 455
    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setAddCurrentProgram(Z)V

    .line 456
    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setEnableUserData(Z)V

    .line 457
    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->liveTVFavsAtTop:Z

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setEnableFavoriteSorting(Z)V

    .line 458
    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->liveTVSortBy:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortBy([Ljava/lang/String;)V

    const-string v2, "DatePlayed"

    .line 459
    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->liveTVSortBy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    goto :goto_0

    :cond_0
    sget-object v2, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    :goto_0
    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    const/16 v2, 0x1e

    .line 460
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setLimit(Ljava/lang/Integer;)V

    const/4 v2, 0x2

    .line 461
    new-array v2, v2, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->ProgramPrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v4

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 462
    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setUserId(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v3, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v5, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v6, 0x7f100531

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v7, Ltv/emby/embyatv/model/ChangeTriggerType;->Always:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v0, v6, v1}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/LiveTvChannelQuery;[Ltv/emby/embyatv/model/ChangeTriggerType;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected addPremieres(Landroidx/leanback/widget/ListRow;)V
    .locals 9

    .line 437
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_enable_premieres"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 438
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Premieres:Ltv/emby/embyatv/querying/QueryType;

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->getRowOfType(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)Landroidx/leanback/widget/ListRow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->getPremieres(Landroidx/leanback/widget/ArrayObjectAdapter;)Ljava/util/List;

    move-result-object v2

    .line 441
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 442
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v3, 0x7f100521

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 443
    new-instance v7, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    const/16 v1, 0xfa

    const/4 v8, 0x1

    invoke-direct {v3, v8, v1}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v4, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    sget-object v5, Ltv/emby/embyatv/querying/QueryType;->Premieres:Ltv/emby/embyatv/querying/QueryType;

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;Z)V

    .line 444
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v2, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v8

    new-instance v2, Landroidx/leanback/widget/ListRow;

    invoke-direct {v2, v0, v7}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    .line 445
    invoke-virtual {v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    :cond_1
    return-void
.end method

.method protected getActiveRecordingQuery()Lmediabrowser/model/livetv/RecordingQuery;
    .locals 4

    .line 480
    new-instance v0, Lmediabrowser/model/livetv/RecordingQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecordingQuery;-><init>()V

    const/4 v1, 0x2

    .line 481
    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 482
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setUserId(Ljava/lang/String;)V

    .line 483
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setEnableImages(Ljava/lang/Boolean;)V

    .line 484
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setIsInProgress(Ljava/lang/Boolean;)V

    const/16 v1, 0x14

    .line 485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setLimit(Ljava/lang/Integer;)V

    return-object v0
.end method

.method protected getLiveTvLibrary([Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 5

    .line 377
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "livetv"

    .line 378
    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getResumeQuery()Ltv/emby/embyatv/querying/StdItemQuery;
    .locals 4

    .line 391
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v1, "Video"

    .line 392
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setMediaTypes([Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 393
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .line 395
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 396
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    const/16 v3, 0x1e

    .line 397
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 398
    new-array v1, v1, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v3, Lmediabrowser/model/querying/ItemFilter;->IsResumable:Lmediabrowser/model/querying/ItemFilter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v1, "DatePlayed"

    .line 399
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 400
    sget-object v1, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    return-object v0
.end method

.method protected hasActiveRecordingRow()Z
    .locals 5

    .line 520
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 521
    :goto_0
    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 522
    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ListRow;

    .line 523
    invoke-virtual {v3}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v4

    instance-of v4, v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v3

    check-cast v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isActiveRecordingRow()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected hasNextUpRow()Z
    .locals 5

    .line 530
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 531
    :goto_0
    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 532
    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ListRow;

    .line 533
    invoke-virtual {v3}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v4

    instance-of v4, v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v3

    check-cast v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v3

    sget-object v4, Ltv/emby/embyatv/querying/QueryType;->NextUp:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/querying/QueryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected hasResumeRow()Z
    .locals 5

    .line 510
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 511
    :goto_0
    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 512
    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ListRow;

    .line 513
    invoke-virtual {v3}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v4

    instance-of v4, v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v3

    check-cast v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v3

    sget-object v4, Ltv/emby/embyatv/querying/QueryType;->ContinueWatching:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/querying/QueryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected nextUpRetrieveFinished()V
    .locals 2

    .line 386
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->NextUp:Ltv/emby/embyatv/querying/QueryType;

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->getRowOfType(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)Landroidx/leanback/widget/ListRow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->addPremieres(Landroidx/leanback/widget/ListRow;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->ShowInfoArea:Z

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->DeferLoad:Z

    .line 79
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->ConfirmExit:Z

    .line 80
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/browsing/TabHomeFragment$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabHomeFragment$1;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/base/BaseActivity;->registerLongPressBackListener(Ltv/emby/embyatv/base/IMessageListener;)V

    .line 92
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 95
    :try_start_0
    new-instance p1, Ltv/emby/embyatv/startup/LogonCredentials;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUserPw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Ltv/emby/embyatv/startup/LogonCredentials;-><init>(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V

    const-string v1, "tv.emby.lastlogin.json"

    invoke-static {p1, v1}, Ltv/emby/embyatv/util/Utils;->SaveLoginCredentials(Ltv/emby/embyatv/startup/LogonCredentials;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "Unable to save login creds"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, p1, v0}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 100
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->load()V

    .line 105
    .line 108
    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->determineAutoBitrate()V

    .line 110
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->showWelcomeMessage()V

    .line 122
    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->audioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->addAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 714
    invoke-super {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->onDestroy()V

    .line 715
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->audioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->removeAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V

    return-void
.end method

.method protected onNewViewSelected(Landroidx/leanback/widget/ListRow;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 2

    .line 587
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    if-eq p1, p2, :cond_1

    const/4 p2, 0x0

    .line 589
    :try_start_0
    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 591
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->ShowInfoArea:Z

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Views:Ltv/emby/embyatv/querying/QueryType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object p1

    sget-object v0, Ltv/emby/embyatv/querying/QueryType;->LiveTvButtons:Ltv/emby/embyatv/querying/QueryType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->toggleInfoArea(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 596
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error on new row"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 707
    invoke-super {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->onPause()V

    .line 708
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->stopRefreshTimer()V

    .line 709
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiEventListener()Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->setItemChangeListener(Ltv/emby/embyatv/model/IItemChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 128
    invoke-super {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->onResume()V

    .line 131
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nextUpConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->hasNextUpRow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastTvPlayback()Ljava/util/Calendar;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->lastLoaded:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setReloadRequired(Z)V

    .line 134
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->stopThemeSong()V

    .line 136
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isReloadRequired()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/TvApp;->setReloadRequired(Z)V

    .line 138
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->recreate()V

    goto/16 :goto_3

    .line 140
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_enable_info_panel"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->ShowInfoArea:Z

    .line 141
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-boolean v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->ShowInfoArea:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v3

    sget-object v4, Ltv/emby/embyatv/querying/QueryType;->Views:Ltv/emby/embyatv/querying/QueryType;

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v0

    sget-object v3, Ltv/emby/embyatv/querying/QueryType;->LiveTvButtons:Ltv/emby/embyatv/querying/QueryType;

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->toggleInfoArea(Z)V

    .line 143
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->ShowInfoArea:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->ShowFanart:Z

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getFullBackdropDimLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDimLayer(I)V

    .line 145
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getHomeScreenDarkening()F

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    .line 149
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->unlockButton:Ltv/emby/embyatv/ui/GridButton;

    if-eqz v0, :cond_6

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    :cond_5
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->toolsRow:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->unlockButton:Ltv/emby/embyatv/ui/GridButton;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_7

    .line 152
    new-instance v0, Ltv/emby/embyatv/ui/GridButton;

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v3, 0x7f1003b6

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080096

    invoke-direct {v0, v1, v2, v3}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->premiereButton:Ltv/emby/embyatv/ui/GridButton;

    .line 153
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->toolsRow:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->premiereButton:Ltv/emby/embyatv/ui/GridButton;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 156
    :cond_6
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->premiereButton:Ltv/emby/embyatv/ui/GridButton;

    if-eqz v0, :cond_7

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->toolsRow:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->premiereButton:Ltv/emby/embyatv/ui/GridButton;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 160
    :cond_7
    :goto_2
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiEventListener()Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/browsing/TabHomeFragment$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabHomeFragment$2;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/eventhandling/TvApiEventListener;->setItemChangeListener(Ltv/emby/embyatv/model/IItemChangeListener;)V

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltv/emby/embyatv/browsing/TabHomeFragment$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabHomeFragment$3;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V

    const-wide/16 v2, 0x3b6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    :goto_3
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->startRefreshTimer()V

    .line 186
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->lastLoaded:Ljava/util/Calendar;

    return-void
.end method

.method protected refreshRows()V
    .locals 2

    .line 637
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/browsing/TabHomeFragment$11;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabHomeFragment$11;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected setupEventListeners()V
    .locals 3

    .line 681
    invoke-super {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->setupEventListeners()V

    .line 682
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    new-instance v1, Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/browsing/TabHomeFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeClickedListener;->registerListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 1

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->showBusyIndicator(Z)V

    .line 233
    new-instance v0, Ltv/emby/embyatv/browsing/TabHomeFragment$5;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/browsing/TabHomeFragment$5;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V

    invoke-direct {p0, v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getHomeScreenPrefs(Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method protected startRefreshTimer()V
    .locals 4

    .line 222
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->refreshTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->refreshTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected stopRefreshTimer()V
    .locals 2

    .line 227
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment;->refreshTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
