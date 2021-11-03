.class public Ltv/emby/embyatv/browsing/StdBrowseFragment;
.super Landroidx/leanback/app/BrowseFragment;
.source "StdBrowseFragment.java"

# interfaces
.implements Ltv/emby/embyatv/browsing/IRowLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;,
        Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;,
        Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_UPDATE_DELAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "StdBrowseFragment"


# instance fields
.field protected MainTitle:Ljava/lang/String;

.field protected ShowBadge:Z

.field protected ShowFanart:Z

.field protected ShowInfoPanel:Z

.field private fadeInPanel:Landroid/view/animation/Animation;

.field private fadeOutPanel:Landroid/view/animation/Animation;

.field private hideItemPanel:Ljava/lang/Runnable;

.field protected justLoaded:Z

.field protected mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field protected mApplication:Ltv/emby/embyatv/TvApp;

.field protected mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

.field private mBackgroundTimer:Ljava/util/Timer;

.field private mBackgroundUrl:Ljava/lang/String;

.field protected mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

.field protected mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

.field protected mCurrentRow:Landroidx/leanback/widget/ListRow;

.field private final mHandler:Landroid/os/Handler;

.field private mItemPanel:Ltv/emby/embyatv/ui/ItemPanel;

.field protected mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltv/emby/embyatv/browsing/BrowseRowDef;",
            ">;"
        }
    .end annotation
.end field

.field protected mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field protected mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

.field private showItemPanel:Ljava/lang/Runnable;

.field protected useCards:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Landroidx/leanback/app/BrowseFragment;-><init>()V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->ShowBadge:Z

    .line 72
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->ShowInfoPanel:Z

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->ShowFanart:Z

    .line 78
    new-instance v2, Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-direct {v2}, Ltv/emby/embyatv/browsing/CompositeClickedListener;-><init>()V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    .line 79
    new-instance v2, Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-direct {v2}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;-><init>()V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    .line 83
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRows:Ljava/util/ArrayList;

    .line 87
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->justLoaded:Z

    .line 88
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_use_cards"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->useCards:Z

    .line 348
    new-instance v0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->showItemPanel:Ljava/lang/Runnable;

    .line 362
    new-instance v0, Ltv/emby/embyatv/browsing/StdBrowseFragment$6;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$6;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->hideItemPanel:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ltv/emby/embyatv/ui/ItemPanel;
    .locals 0

    .line 65
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mItemPanel:Ltv/emby/embyatv/ui/ItemPanel;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/view/animation/Animation;
    .locals 0

    .line 65
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->fadeInPanel:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->startBackgroundTimer()V

    return-void
.end method

.method static synthetic access$200(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->hideItemPanel:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/view/animation/Animation;
    .locals 0

    .line 65
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->fadeOutPanel:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->refreshCurrentItem()V

    return-void
.end method

.method static synthetic access$800(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->showItemPanel:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackgroundUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Ltv/emby/embyatv/browsing/StdBrowseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackgroundUrl:Ljava/lang/String;

    return-object p1
.end method

.method private refreshCurrentItem()V
    .locals 3

    .line 407
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectionFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$10;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$10;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->refresh(Lmediabrowser/apiinteraction/EmptyResponse;)V

    :cond_0
    return-void
.end method

.method private startBackgroundTimer()V
    .locals 4

    .line 477
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 480
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    .line 481
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/StdBrowseFragment$UpdateBackgroundTask;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;Ltv/emby/embyatv/browsing/StdBrowseFragment$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method protected addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method protected load()V
    .locals 0

    .line 110
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setupUIElements()V

    .line 112
    invoke-virtual {p0, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V

    .line 114
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setupEventListeners()V

    return-void
.end method

.method public loadRows(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/browsing/BrowseRowDef;",
            ">;)V"
        }
    .end annotation

    .line 182
    new-instance v0, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {v0}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;-><init>()V

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setSelectEffectEnabled(Z)V

    .line 184
    iget-boolean v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->useCards:Z

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setShadowEnabled(Z)V

    .line 186
    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 189
    new-instance v3, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getHeaderText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 191
    sget-object v4, Ltv/emby/embyatv/browsing/StdBrowseFragment$11;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 232
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQuery()Lmediabrowser/model/querying/ItemQuery;

    move-result-object v6

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v7

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPreferParentThumb()Z

    move-result v8

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight()Z

    move-result v9

    new-instance v10, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v5

    invoke-direct {v10, v2, v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v11, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v12

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    goto/16 :goto_1

    .line 229
    :pswitch_0
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getRecordingQuery()Lmediabrowser/model/livetv/RecordingQuery;

    move-result-object v5

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v6

    new-instance v7, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v8

    invoke-direct {v7, v2, v8}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v4, v5, v6, v7, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecordingQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_1

    .line 226
    :pswitch_1
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getProgramQuery()Lmediabrowser/model/livetv/RecommendedProgramQuery;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v7

    invoke-direct {v6, v2, v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v4, v5, v6, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecommendedProgramQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_1

    .line 223
    :pswitch_2
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getTvChannelQuery()Lmediabrowser/model/livetv/LiveTvChannelQuery;

    move-result-object v8

    const/16 v9, 0x28

    new-instance v10, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v5

    invoke-direct {v10, v2, v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v11, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getShowPrograms()Z

    move-result v12

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/LiveTvChannelQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V

    goto/16 :goto_1

    .line 220
    :pswitch_3
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPersonsQuery()Lmediabrowser/model/querying/PersonsQuery;

    move-result-object v5

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v6

    new-instance v7, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v8

    invoke-direct {v7, v2, v8}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v4, v5, v6, v7, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/PersonsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_1

    .line 217
    :pswitch_4
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSimilarQuery()Lmediabrowser/model/querying/SimilarItemsQuery;

    move-result-object v5

    sget-object v6, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    new-instance v7, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v8

    invoke-direct {v7, v2, v8}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v4, v5, v6, v7, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_1

    .line 214
    :pswitch_5
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSimilarQuery()Lmediabrowser/model/querying/SimilarItemsQuery;

    move-result-object v5

    sget-object v6, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    new-instance v7, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v8

    invoke-direct {v7, v2, v8}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v4, v5, v6, v7, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_1

    .line 211
    :pswitch_6
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v5, Ltv/emby/embyatv/querying/ViewQuery;

    invoke-direct {v5}, Ltv/emby/embyatv/querying/ViewQuery;-><init>()V

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v7

    invoke-direct {v6, v2, v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v4, v5, v6, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ltv/emby/embyatv/querying/ViewQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 208
    :pswitch_7
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getUpcomingQuery()Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v7

    invoke-direct {v6, v2, v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v4, v5, v6, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/UpcomingEpisodesQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 205
    :pswitch_8
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSeasonQuery()Lmediabrowser/model/querying/SeasonQuery;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v7

    invoke-direct {v6, v2, v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v4, v5, v6, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SeasonQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 202
    :pswitch_9
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getLatestItemsQuery()Lmediabrowser/model/querying/LatestItemsQuery;

    move-result-object v8

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPreferParentThumb()Z

    move-result v9

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPreferSeriesPoster()Z

    move-result v10

    new-instance v11, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v5

    invoke-direct {v11, v2, v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v12, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/LatestItemsQuery;ZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 193
    :pswitch_a
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getNextUpQuery()Lmediabrowser/model/querying/NextUpQuery;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v7

    invoke-direct {v6, v2, v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v7, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v4, v5, v2, v6, v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/NextUpQuery;ZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 194
    new-instance v2, Ltv/emby/embyatv/browsing/StdBrowseFragment$2;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$2;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    invoke-virtual {v4, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 236
    :goto_1
    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChangeTriggers()[Ltv/emby/embyatv/model/ChangeTriggerType;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setReRetrieveTriggers([Ltv/emby/embyatv/model/ChangeTriggerType;)V

    .line 238
    new-instance v0, Landroidx/leanback/widget/ListRow;

    invoke-direct {v0, v3, v4}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 239
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v4, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    goto/16 :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 245
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 246
    new-instance p1, Ltv/emby/embyatv/browsing/RowLoadTask;

    invoke-direct {p1}, Ltv/emby/embyatv/browsing/RowLoadTask;-><init>()V

    new-array v0, v2, [Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/browsing/RowLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected nextUpRetrieveFinished()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getBrowseTheme()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 103
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Ltv/emby/embyatv/base/BaseActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/base/BaseActivity;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroidx/leanback/app/BrowseFragment;->onDestroy()V

    .line 125
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroidx/leanback/app/BrowseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 138
    invoke-super {p0}, Landroidx/leanback/app/BrowseFragment;->onResume()V

    .line 141
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getBrandColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setBrandColor(I)V

    .line 145
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_enable_info_panel"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->ShowInfoPanel:Z

    .line 146
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_show_backdrop"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->ShowFanart:Z

    .line 149
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastDeletedItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastDeletedItemId(Ljava/lang/String;)V

    .line 154
    :cond_1
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->justLoaded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isShuttingDown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    if-eqz v0, :cond_3

    .line 157
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->refreshCurrentItem()V

    .line 158
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->refreshRows()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->justLoaded:Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected refreshRows()V
    .locals 4

    .line 167
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$1;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected setupEventListeners()V
    .locals 3

    .line 370
    new-instance v0, Ltv/emby/embyatv/browsing/StdBrowseFragment$7;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$7;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 379
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewClickedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;Ltv/emby/embyatv/browsing/StdBrowseFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeClickedListener;->registerListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 381
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 382
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;Ltv/emby/embyatv/browsing/StdBrowseFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->registerListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 384
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$8;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$8;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    .line 392
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$9;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$9;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->registerMessageListener(Ltv/emby/embyatv/base/IMessageListener;)V

    :cond_0
    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 1

    .line 119
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method

.method protected setupUIElements()V
    .locals 5

    .line 254
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->ShowBadge:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->MainTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a030c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0xfa

    const/16 v2, 0x78

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 264
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 265
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0a030f

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 270
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 271
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 272
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 276
    :cond_2
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 279
    new-instance v1, Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v1, v2}, Ltv/emby/embyatv/ui/BackgroundFrame;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    .line 280
    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 283
    new-instance v1, Ltv/emby/embyatv/ui/ItemPanel;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Ltv/emby/embyatv/ui/ItemPanel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mItemPanel:Ltv/emby/embyatv/ui/ItemPanel;

    .line 284
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const/16 v4, 0x91

    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    .line 285
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 286
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mItemPanel:Ltv/emby/embyatv/ui/ItemPanel;

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/ui/ItemPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mItemPanel:Ltv/emby/embyatv/ui/ItemPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 288
    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mItemPanel:Ltv/emby/embyatv/ui/ItemPanel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/ui/ItemPanel;->setVisibility(I)V

    .line 291
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 292
    new-instance v2, Ltv/emby/embyatv/ui/ClockUserView;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Ltv/emby/embyatv/ui/ClockUserView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x35

    .line 293
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 295
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x28

    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 296
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 298
    invoke-virtual {v2, v1}, Ltv/emby/embyatv/ui/ClockUserView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/high16 v1, 0x7f010000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->fadeInPanel:Landroid/view/animation/Animation;

    .line 308
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->fadeInPanel:Landroid/view/animation/Animation;

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$3;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 325
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v1, 0x7f010001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->fadeOutPanel:Landroid/view/animation/Animation;

    .line 326
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->fadeOutPanel:Landroid/view/animation/Animation;

    new-instance v1, Ltv/emby/embyatv/browsing/StdBrowseFragment$4;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdBrowseFragment$4;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 344
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getSearchColor()I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->setSearchAffordanceColor(I)V

    return-void
.end method

.method protected updateBackground(Ljava/lang/String;)V
    .locals 1

    .line 472
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method
