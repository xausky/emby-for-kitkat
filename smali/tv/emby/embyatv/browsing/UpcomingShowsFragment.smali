.class public Ltv/emby/embyatv/browsing/UpcomingShowsFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "UpcomingShowsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNewRow(Ljava/lang/String;Ljava/util/List;)Landroidx/leanback/widget/ListRow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)",
            "Landroidx/leanback/widget/ListRow;"
        }
    .end annotation

    .line 80
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/presentation/CardPresenter;

    const/4 v2, 0x1

    const/16 v3, 0x104

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v3, 0x0

    invoke-direct {p1, p2, v1, v2, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V

    .line 82
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 83
    new-instance p2, Landroidx/leanback/widget/ListRow;

    invoke-direct {p2, v0, p1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 84
    iget-object v0, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    return-object p2
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 4

    .line 31
    new-instance p1, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {p1}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;-><init>()V

    .line 32
    iget-object v0, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_use_cards"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setShadowEnabled(Z)V

    .line 33
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 34
    iget-object p1, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1, v0}, Landroidx/leanback/app/RowsSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 36
    new-instance p1, Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    invoke-direct {p1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;-><init>()V

    .line 37
    iget-object v0, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setParentId(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setUserId(Ljava/lang/String;)V

    const/16 v0, 0x96

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setLimit(Ljava/lang/Integer;)V

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setImageTypeLimit(Ljava/lang/Integer;)V

    const/4 v1, 0x3

    .line 41
    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->AirTime:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v2

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v0

    sget-object v0, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 43
    iget-object v0, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;-><init>(Ltv/emby/embyatv/browsing/UpcomingShowsFragment;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetUpcomingEpisodesAsync(Lmediabrowser/model/querying/UpcomingEpisodesQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
