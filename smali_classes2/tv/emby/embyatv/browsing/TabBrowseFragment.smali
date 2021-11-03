.class public Ltv/emby/embyatv/browsing/TabBrowseFragment;
.super Landroid/app/Fragment;
.source "TabBrowseFragment.java"

# interfaces
.implements Ltv/emby/embyatv/browsing/IRowLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;,
        Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;,
        Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_UPDATE_DELAY:I = 0x64


# instance fields
.field protected BackGoHome:Z

.field protected CameFromLongPress:Z

.field protected ConfirmExit:Z

.field private DEF_INFO_WIDTH:I

.field protected DeferLoad:Z

.field private EXP_INFO_WIDTH:I

.field protected ShowFanart:Z

.field protected ShowInfoArea:Z

.field protected itemTypeString:Ljava/lang/String;

.field protected justLoaded:Z

.field protected mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field protected mApplication:Ltv/emby/embyatv/TvApp;

.field protected mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

.field private mBackgroundTimer:Ljava/util/Timer;

.field private mBackgroundUrl:Ljava/lang/String;

.field protected mBusyIndicator:Landroid/widget/ProgressBar;

.field protected mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

.field protected mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

.field protected mCurrentRow:Landroidx/leanback/widget/ListRow;

.field protected mFolder:Lmediabrowser/model/dto/BaseItemDto;

.field protected mFragmentHolder:Landroid/widget/FrameLayout;

.field private final mHandler:Landroid/os/Handler;

.field protected mInfoAria:Landroid/widget/RelativeLayout;

.field protected mInfoRow:Landroid/widget/LinearLayout;

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

.field mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

.field protected mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

.field protected mSummary:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;

.field protected roboto:Landroid/graphics/Typeface;

.field protected updateContentTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->justLoaded:Z

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->ShowFanart:Z

    .line 84
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->ShowInfoArea:Z

    .line 85
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->DeferLoad:Z

    .line 86
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->BackGoHome:Z

    .line 87
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->ConfirmExit:Z

    .line 88
    iput-boolean v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->CameFromLongPress:Z

    .line 93
    new-instance v0, Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-direct {v0}, Ltv/emby/embyatv/browsing/CompositeClickedListener;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    .line 94
    new-instance v0, Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-direct {v0}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mHandler:Landroid/os/Handler;

    .line 569
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x1d6

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->DEF_INFO_WIDTH:I

    .line 570
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x320

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->EXP_INFO_WIDTH:I

    .line 577
    new-instance v0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->updateContentTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$200(Ltv/emby/embyatv/browsing/TabBrowseFragment;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/browsing/TabBrowseFragment;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackgroundUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Ltv/emby/embyatv/browsing/TabBrowseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackgroundUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->startBackgroundTimer()V

    return-void
.end method

.method static synthetic access$500(Ltv/emby/embyatv/browsing/TabBrowseFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->EXP_INFO_WIDTH:I

    return p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/browsing/TabBrowseFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->DEF_INFO_WIDTH:I

    return p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/browsing/TabBrowseFragment;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->refreshCurrentItem(Z)V

    return-void
.end method

.method private refreshCurrentItem(Z)V
    .locals 1

    .line 482
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isShuttingDown()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz p1, :cond_1

    const-string p1, "Photo"

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Playlist"

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MusicArtist"

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MusicAlbum"

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 483
    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 484
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance v0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->refresh(Lmediabrowser/apiinteraction/EmptyResponse;)V

    :cond_1
    return-void
.end method

.method private startBackgroundTimer()V
    .locals 4

    .line 598
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 601
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    .line 602
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    new-instance v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/TabBrowseFragment$UpdateBackgroundTask;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;Ltv/emby/embyatv/browsing/TabBrowseFragment$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method protected OnMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 1

    .line 466
    sget-object v0, Ltv/emby/embyatv/browsing/TabBrowseFragment$8;->$SwitchMap$tv$emby$embyatv$base$CustomMessage:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/base/CustomMessage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 473
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz p1, :cond_0

    .line 474
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 469
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->refreshCurrentItem(Z)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method protected load()V
    .locals 0

    .line 162
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->setupUIElements()V

    .line 163
    invoke-virtual {p0, p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V

    .line 164
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->setupEventListeners()V

    return-void
.end method

.method public loadRows(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/browsing/BrowseRowDef;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 265
    new-instance v1, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {v1}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;-><init>()V

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setSelectEffectEnabled(Z)V

    .line 267
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setShadowEnabled(Z)V

    .line 268
    iget-object v3, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getUserViews()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getUserViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v1, v3}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setNumRows(I)V

    .line 269
    new-instance v3, Landroidx/leanback/widget/ClassPresenterSelector;

    invoke-direct {v3}, Landroidx/leanback/widget/ClassPresenterSelector;-><init>()V

    .line 270
    const-class v5, Ltv/emby/embyatv/presentation/TileListRow;

    invoke-virtual {v3, v5, v1}, Landroidx/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroidx/leanback/widget/Presenter;)Landroidx/leanback/widget/ClassPresenterSelector;

    .line 271
    new-instance v1, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {v1}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;-><init>()V

    .line 272
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setSelectEffectEnabled(Z)V

    .line 273
    iget-object v5, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pref_use_cards"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setShadowEnabled(Z)V

    .line 274
    const-class v5, Landroidx/leanback/widget/ListRow;

    invoke-virtual {v3, v5, v1}, Landroidx/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroidx/leanback/widget/Presenter;)Landroidx/leanback/widget/ClassPresenterSelector;

    .line 275
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    iput-object v1, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 277
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 278
    new-instance v5, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getHeaderText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 280
    sget-object v6, Ltv/emby/embyatv/browsing/TabBrowseFragment$8;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 350
    iget-object v6, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v6

    const-string v7, "*** query type: %s"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-interface {v6, v7, v8}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQuery()Lmediabrowser/model/querying/ItemQuery;

    move-result-object v11

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v12

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPreferParentThumb()Z

    move-result v13

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight()Z

    move-result v14

    new-instance v15, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v7

    invoke-direct {v15, v4, v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v7, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v17

    move-object v10, v6

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v17}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    goto/16 :goto_4

    .line 330
    :pswitch_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 333
    new-instance v6, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance v7, Ltv/emby/embyatv/ui/GridButton;

    const/16 v9, 0x3e8

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v10

    invoke-virtual {v10}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100503

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0800e7

    invoke-direct {v7, v9, v10, v11}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {v6, v7}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v6, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance v7, Ltv/emby/embyatv/ui/GridButton;

    const/16 v9, 0x7d0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v10

    invoke-virtual {v10}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f10057a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f080167

    invoke-direct {v7, v9, v10, v11}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {v6, v7}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->canManageRecordings()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 340
    new-instance v6, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance v7, Ltv/emby/embyatv/ui/GridButton;

    const/16 v9, 0xfa0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v10

    invoke-virtual {v10}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100598

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f080086

    invoke-direct {v7, v9, v10, v11}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {v6, v7}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v6, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance v7, Ltv/emby/embyatv/ui/GridButton;

    const/16 v9, 0x1388

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v10

    invoke-virtual {v10}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1005a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f08018c

    invoke-direct {v7, v9, v10, v11}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {v6, v7}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_2
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v9, Ltv/emby/embyatv/presentation/CardPresenter;

    const/16 v7, 0xc8

    invoke-direct {v9, v4, v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v10, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 327
    :pswitch_1
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSeriesTimerQuery()Lmediabrowser/model/livetv/SeriesTimerQuery;

    move-result-object v7

    new-instance v8, Ltv/emby/embyatv/presentation/CardPresenter;

    const/16 v9, 0x118

    invoke-direct {v8, v4, v9}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v9, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v8, v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/SeriesTimerQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_4

    .line 324
    :pswitch_2
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQuery()Lmediabrowser/model/querying/ItemQuery;

    move-result-object v11

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v12

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPreferParentThumb()Z

    move-result v13

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight()Z

    move-result v14

    new-instance v15, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v7

    invoke-direct {v15, v4, v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v7, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v17

    move-object v10, v6

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v17}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    goto/16 :goto_4

    .line 321
    :pswitch_3
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getRecordingQuery()Lmediabrowser/model/livetv/RecordingQuery;

    move-result-object v7

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v8

    new-instance v9, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v10

    invoke-direct {v9, v4, v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v10, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v8, v9, v10}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecordingQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_4

    .line 318
    :pswitch_4
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getProgramQuery()Lmediabrowser/model/livetv/RecommendedProgramQuery;

    move-result-object v7

    new-instance v8, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v9

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getProgramQuery()Lmediabrowser/model/livetv/RecommendedProgramQuery;

    move-result-object v10

    invoke-virtual {v10}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getIsAiring()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v8, v4, v9, v2, v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZIIZ)V

    iget-object v9, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v8, v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecommendedProgramQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_4

    .line 315
    :pswitch_5
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getTvChannelQuery()Lmediabrowser/model/livetv/LiveTvChannelQuery;

    move-result-object v11

    const/16 v12, 0x28

    new-instance v13, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v7

    invoke-direct {v13, v4, v7, v2, v4}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZIIZ)V

    iget-object v14, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getShowPrograms()Z

    move-result v15

    move-object v10, v6

    invoke-direct/range {v10 .. v15}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/LiveTvChannelQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V

    goto/16 :goto_4

    .line 312
    :pswitch_6
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getArtistsQuery()Lmediabrowser/model/querying/ArtistsQuery;

    move-result-object v17

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v18

    new-instance v7, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v8

    invoke-direct {v7, v4, v8}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v8, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v21

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v16 .. v21}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ArtistsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    goto/16 :goto_4

    .line 309
    :pswitch_7
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPersonsQuery()Lmediabrowser/model/querying/PersonsQuery;

    move-result-object v7

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v8

    new-instance v9, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v10

    invoke-direct {v9, v4, v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v10, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v8, v9, v10}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/PersonsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_4

    .line 306
    :pswitch_8
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSimilarQuery()Lmediabrowser/model/querying/SimilarItemsQuery;

    move-result-object v7

    sget-object v8, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    new-instance v9, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v10

    invoke-direct {v9, v4, v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v10, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v8, v9, v10}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_4

    .line 303
    :pswitch_9
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSimilarQuery()Lmediabrowser/model/querying/SimilarItemsQuery;

    move-result-object v7

    sget-object v8, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    new-instance v9, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v10

    invoke-direct {v9, v4, v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v10, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v8, v9, v10}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_4

    .line 300
    :pswitch_a
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v7, Ltv/emby/embyatv/querying/ViewQuery;

    invoke-direct {v7}, Ltv/emby/embyatv/querying/ViewQuery;-><init>()V

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->isUseTile()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ltv/emby/embyatv/presentation/TilePresenter;

    invoke-direct {v8}, Ltv/emby/embyatv/presentation/TilePresenter;-><init>()V

    goto :goto_3

    :cond_3
    new-instance v8, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v9

    invoke-direct {v8, v4, v9}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    :goto_3
    iget-object v9, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v8, v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ltv/emby/embyatv/querying/ViewQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_4

    .line 297
    :pswitch_b
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getUpcomingQuery()Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    move-result-object v7

    new-instance v8, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v9

    invoke-direct {v8, v4, v9}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v9, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v8, v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/UpcomingEpisodesQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_4

    .line 294
    :pswitch_c
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSeasonQuery()Lmediabrowser/model/querying/SeasonQuery;

    move-result-object v7

    new-instance v8, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v9

    invoke-direct {v8, v4, v9}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v9, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v8, v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SeasonQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_4

    .line 291
    :pswitch_d
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getLatestItemsQuery()Lmediabrowser/model/querying/LatestItemsQuery;

    move-result-object v11

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPreferParentThumb()Z

    move-result v12

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPreferSeriesPoster()Z

    move-result v13

    new-instance v14, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v7

    invoke-direct {v14, v4, v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v15, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    move-object v10, v6

    invoke-direct/range {v10 .. v15}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/LatestItemsQuery;ZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_4

    .line 282
    :pswitch_e
    new-instance v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getNextUpQuery()Lmediabrowser/model/querying/NextUpQuery;

    move-result-object v7

    new-instance v8, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getStaticHeight()I

    move-result v9

    invoke-direct {v8, v4, v9}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v9, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v7, v4, v8, v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/NextUpQuery;ZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 283
    new-instance v7, Ltv/emby/embyatv/browsing/TabBrowseFragment$2;

    invoke-direct {v7, v0}, Ltv/emby/embyatv/browsing/TabBrowseFragment$2;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 355
    :goto_4
    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChangeTriggers()[Ltv/emby/embyatv/model/ChangeTriggerType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setReRetrieveTriggers([Ltv/emby/embyatv/model/ChangeTriggerType;)V

    .line 357
    invoke-virtual {v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;->isUseTile()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ltv/emby/embyatv/presentation/TileListRow;

    invoke-direct {v3, v5, v6}, Ltv/emby/embyatv/presentation/TileListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    goto :goto_5

    :cond_4
    new-instance v3, Landroidx/leanback/widget/ListRow;

    invoke-direct {v3, v5, v6}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 358
    :goto_5
    iget-object v5, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v5, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v6, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 360
    invoke-virtual {v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    goto/16 :goto_2

    .line 363
    :cond_5
    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 365
    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v3, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v1, v3}, Landroidx/leanback/app/RowsSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->setInitialFocus()V

    .line 367
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->showBusyIndicator(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
    .locals 4

    .line 144
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 146
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CameFromLongPress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->CameFromLongPress:Z

    .line 152
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 153
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Fragment %s onActivityCreated"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->setupViews()V

    .line 156
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->DeferLoad:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->load()V

    goto :goto_1

    .line 147
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Ltv/emby/embyatv/startup/StartupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRows:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->justLoaded:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p3, 0x0

    const v0, 0x7f0d00c0

    .line 114
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 116
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Ltv/emby/embyatv/base/BaseActivity;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 117
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->roboto:Landroid/graphics/Typeface;

    const p2, 0x7f0a0307

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mTitle:Landroid/widget/TextView;

    .line 120
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p2, 0x7f0a0180

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoRow:Landroid/widget/LinearLayout;

    const p2, 0x7f0a017c

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoAria:Landroid/widget/RelativeLayout;

    const p2, 0x7f0a02c9

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    .line 124
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p2, 0x7f0a012d

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mFragmentHolder:Landroid/widget/FrameLayout;

    .line 126
    new-instance p2, Landroidx/leanback/app/RowsSupportFragment;

    invoke-direct {p2}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 127
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    const v1, 0x7f0a0267

    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 129
    new-instance p2, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {p2}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;-><init>()V

    .line 130
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_use_cards"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->setShadowEnabled(Z)V

    .line 131
    new-instance p3, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p3, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object p3, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 132
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object p3, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 133
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    const/16 v0, 0x28

    invoke-static {p3, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setAlignment(I)V

    const p2, 0x7f0a023c

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBusyIndicator:Landroid/widget/ProgressBar;

    const p2, 0x7f0a005b

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Ltv/emby/embyatv/ui/BackgroundFrame;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    return-object p1
.end method

.method public onDestroy()V
    .locals 5

    .line 202
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 203
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Fragment %s destroyed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 208
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->clearListeners()V

    .line 209
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/CompositeClickedListener;->clearListeners()V

    :cond_1
    return-void
.end method

.method protected onNewViewSelected(Landroidx/leanback/widget/ListRow;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 216
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Fragment %s paused"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 222
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 224
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Fragment %s resumed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_show_backdrop"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->ShowFanart:Z

    .line 228
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastDeletedItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    .line 230
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastDeletedItemId(Ljava/lang/String;)V

    .line 231
    iput-boolean v5, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->justLoaded:Z

    goto :goto_0

    .line 232
    :cond_0
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->justLoaded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isShuttingDown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    if-eqz v0, :cond_2

    .line 235
    invoke-direct {p0, v5}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->refreshCurrentItem(Z)V

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment$1;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 257
    :cond_1
    iput-boolean v5, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->justLoaded:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected setInitialFocus()V
    .locals 4

    .line 372
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->focusContentOnEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment$3;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->setFocusContentOnEntry(Z)V

    return-void
.end method

.method protected setupEventListeners()V
    .locals 3

    .line 420
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 421
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    new-instance v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewClickedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;Ltv/emby/embyatv/browsing/TabBrowseFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeClickedListener;->registerListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 423
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 424
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    new-instance v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;Ltv/emby/embyatv/browsing/TabBrowseFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->registerListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 425
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    .line 455
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$5;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment$5;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->registerMessageListener(Ltv/emby/embyatv/base/IMessageListener;)V

    :cond_0
    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 1

    .line 173
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method

.method protected setupUIElements()V
    .locals 3

    .line 412
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "**** In SetupUIElements"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getSummaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->ShowInfoArea:Z

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->toggleInfoArea(Z)V

    return-void
.end method

.method protected setupViews()V
    .locals 4

    .line 177
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Folder"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    .line 178
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3fac58bd

    if-eq v2, v3, :cond_4

    const v3, -0x37cbc82c

    if-eq v2, v3, :cond_3

    const v3, -0x28b98e3b

    if-eq v2, v3, :cond_2

    const v3, 0x636ee25

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "folders"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string v2, "tvshows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string v2, "movies"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :cond_5
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "MusicAlbum"

    .line 189
    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->itemTypeString:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string v0, "Series"

    .line 186
    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->itemTypeString:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string v0, "Movie"

    .line 183
    iput-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->itemTypeString:Ljava/lang/String;

    :cond_6
    :goto_1
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected showBusyIndicator(Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBusyIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected toggleInfoArea(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoAria:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 399
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setFullMode(Z)V

    .line 400
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoAria:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 403
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setFullMode(Z)V

    .line 405
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    .line 406
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->ShowInfoArea:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->ShowFanart:Z

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const v0, 0x7f0600e9

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDimLayer(I)V

    .line 407
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoAria:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected updateBackground(Ljava/lang/String;)V
    .locals 1

    .line 594
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setImageUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
