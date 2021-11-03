.class public Ltv/emby/embyatv/browsing/CustomBrowseFragment;
.super Landroid/app/Fragment;
.source "CustomBrowseFragment.java"

# interfaces
.implements Ltv/emby/embyatv/browsing/IRowLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;,
        Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;,
        Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_UPDATE_DELAY:I = 0x64


# instance fields
.field protected MainTitle:Ljava/lang/String;

.field protected ShowBadge:Z

.field protected mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field protected mApplication:Ltv/emby/embyatv/TvApp;

.field private mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

.field private mBackgroundTimer:Ljava/util/Timer;

.field private mBackgroundUrl:Ljava/lang/String;

.field mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

.field protected mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

.field protected mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

.field protected mCurrentRow:Landroidx/leanback/widget/ListRow;

.field private final mHandler:Landroid/os/Handler;

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

.field private mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

.field protected mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->ShowBadge:Z

    .line 52
    new-instance v0, Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-direct {v0}, Ltv/emby/embyatv/browsing/CompositeClickedListener;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    .line 53
    new-instance v0, Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-direct {v0}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRows:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$200(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackgroundUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ltv/emby/embyatv/browsing/CustomBrowseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackgroundUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->startBackgroundTimer()V

    return-void
.end method

.method static synthetic access$500(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private startBackgroundTimer()V
    .locals 4

    .line 247
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 250
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    .line 251
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    new-instance v1, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/CustomBrowseFragment$UpdateBackgroundTask;-><init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;Ltv/emby/embyatv/browsing/CustomBrowseFragment$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method protected addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method public loadRows(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/browsing/BrowseRowDef;",
            ">;)V"
        }
    .end annotation

    .line 135
    new-instance v0, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v0}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 138
    new-instance v1, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 140
    sget-object v2, Ltv/emby/embyatv/browsing/CustomBrowseFragment$2;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 172
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getQuery()Lmediabrowser/model/querying/ItemQuery;

    move-result-object v8

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v9

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPreferParentThumb()Z

    move-result v10

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight()Z

    move-result v11

    iget-object v12, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v13, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_1

    .line 169
    :pswitch_0
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getRecordingQuery()Lmediabrowser/model/livetv/RecordingQuery;

    move-result-object v3

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v4

    iget-object v5, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v6, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v3, v4, v5, v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecordingQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_1

    .line 166
    :pswitch_1
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getProgramQuery()Lmediabrowser/model/livetv/RecommendedProgramQuery;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v5, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v3, v4, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecommendedProgramQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto/16 :goto_1

    .line 163
    :pswitch_2
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getTvChannelQuery()Lmediabrowser/model/livetv/LiveTvChannelQuery;

    move-result-object v7

    const/16 v8, 0x28

    iget-object v9, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v10, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getShowPrograms()Z

    move-result v11

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/LiveTvChannelQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V

    goto :goto_1

    .line 160
    :pswitch_3
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getPersonsQuery()Lmediabrowser/model/querying/PersonsQuery;

    move-result-object v3

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChunkSize()I

    move-result v4

    iget-object v5, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v6, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v3, v4, v5, v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/PersonsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 157
    :pswitch_4
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSimilarQuery()Lmediabrowser/model/querying/SimilarItemsQuery;

    move-result-object v3

    sget-object v4, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    iget-object v5, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v6, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v3, v4, v5, v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 154
    :pswitch_5
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSimilarQuery()Lmediabrowser/model/querying/SimilarItemsQuery;

    move-result-object v3

    sget-object v4, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    iget-object v5, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v6, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v3, v4, v5, v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 151
    :pswitch_6
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/querying/ViewQuery;

    invoke-direct {v3}, Ltv/emby/embyatv/querying/ViewQuery;-><init>()V

    iget-object v4, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v5, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v3, v4, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ltv/emby/embyatv/querying/ViewQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 148
    :pswitch_7
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getUpcomingQuery()Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v5, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v3, v4, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/UpcomingEpisodesQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 145
    :pswitch_8
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getSeasonQuery()Lmediabrowser/model/querying/SeasonQuery;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v5, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v3, v4, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/SeasonQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    goto :goto_1

    .line 142
    :pswitch_9
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getNextUpQuery()Lmediabrowser/model/querying/NextUpQuery;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCardPresenter:Ltv/emby/embyatv/presentation/CardPresenter;

    iget-object v6, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v3, v4, v5, v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/NextUpQuery;ZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 176
    :goto_1
    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;->getChangeTriggers()[Ltv/emby/embyatv/model/ChangeTriggerType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setReRetrieveTriggers([Ltv/emby/embyatv/model/ChangeTriggerType;)V

    .line 178
    new-instance v0, Landroidx/leanback/widget/ListRow;

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 179
    iget-object v1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 181
    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    goto/16 :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 186
    iget-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1, v0}, Landroidx/leanback/app/RowsSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 93
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->setupUIElements()V

    .line 95
    invoke-virtual {p0, p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V

    .line 97
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->setupEventListeners()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d0047

    .line 65
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Ltv/emby/embyatv/base/BaseActivity;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 69
    iget-object p2, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const v0, 0x7f0a0268

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_0

    .line 70
    new-instance p2, Landroidx/leanback/app/RowsSupportFragment;

    invoke-direct {p2}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    iput-object p2, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 71
    iget-object p2, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 72
    invoke-virtual {p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 75
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Landroidx/leanback/app/RowsSupportFragment;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 78
    :goto_0
    new-instance p2, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {p2}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;-><init>()V

    .line 79
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_use_cards"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->setShadowEnabled(Z)V

    .line 80
    new-instance p3, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p3, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object p3, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 81
    iget-object p2, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    const/16 v0, 0x28

    invoke-static {p3, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setAlignment(I)V

    .line 82
    iget-object p2, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object p3, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 107
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 117
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltv/emby/embyatv/browsing/CustomBrowseFragment$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment$1;-><init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected setupEventListeners()V
    .locals 3

    .line 200
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 201
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mClickedListener:Ltv/emby/embyatv/browsing/CompositeClickedListener;

    new-instance v1, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewClickedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;Ltv/emby/embyatv/browsing/CustomBrowseFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeClickedListener;->registerListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 203
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 204
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mSelectedListener:Ltv/emby/embyatv/browsing/CompositeSelectedListener;

    new-instance v1, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;

    invoke-direct {v1, p0, v2}, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;Ltv/emby/embyatv/browsing/CustomBrowseFragment$1;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->registerListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 1

    .line 101
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method

.method protected setupUIElements()V
    .locals 2

    .line 195
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/BackgroundFrame;

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    return-void
.end method

.method protected updateBackground(Ljava/lang/String;)V
    .locals 1

    .line 243
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method
