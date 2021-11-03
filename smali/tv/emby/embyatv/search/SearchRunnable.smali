.class public Ltv/emby/embyatv/search/SearchRunnable;
.super Ljava/lang/Object;
.source "SearchRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private activity:Landroid/app/Activity;

.field private includeLiveTv:Z

.field private includeMovies:Z

.field private includeMusic:Z

.field private includePeople:Z

.field private includePhotos:Z

.field private includeTv:Z

.field private includeVideos:Z

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private parentId:Ljava/lang/String;

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SearchParentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->parentId:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SearchLiveTv"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeLiveTv:Z

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SearchMovies"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeMovies:Z

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SearchMusic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeMusic:Z

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SearchPeople"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includePeople:Z

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SearchTv"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeTv:Z

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SearchVideos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeVideos:Z

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SearchPhotos"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includePhotos:Z

    .line 50
    iget-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeLiveTv:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeVideos:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeTv:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeMovies:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includePeople:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeMusic:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includePhotos:Z

    iput-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeTv:Z

    iput-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeVideos:Z

    iput-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includePeople:Z

    iput-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeMusic:Z

    iput-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeLiveTv:Z

    iput-boolean p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeMovies:Z

    .line 55
    :cond_0
    iput-object p2, p0, Ltv/emby/embyatv/search/SearchRunnable;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/search/SearchRunnable;)Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 0

    .line 22
    iget-object p0, p0, Ltv/emby/embyatv/search/SearchRunnable;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object p0
.end method

.method private getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;
    .locals 2

    .line 233
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const/16 v1, 0x14

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 235
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Ltv/emby/embyatv/search/SearchRunnable;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setParentId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 237
    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    .line 238
    iget-object v1, p0, Ltv/emby/embyatv/search/SearchRunnable;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setSearchTerm(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 240
    invoke-virtual {v0, p1}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 60
    iget-object v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    .line 63
    iget-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeMovies:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Movie"

    const-string v2, "BoxSet"

    .line 64
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/search/SearchRunnable;->getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    .line 65
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v0, v3, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 66
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v3, Landroidx/leanback/widget/HeaderItem;

    iget-object v4, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v5, 0x7f100517

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 67
    invoke-virtual {v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 68
    new-instance v3, Ltv/emby/embyatv/search/SearchRunnable$1;

    invoke-direct {v3, p0, v2, v0}, Ltv/emby/embyatv/search/SearchRunnable$1;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 74
    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 77
    :cond_0
    iget-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeTv:Z

    if-eqz v0, :cond_1

    const-string v0, "Series"

    .line 78
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/search/SearchRunnable;->getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    .line 79
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v0, v3, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 80
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v3, Landroidx/leanback/widget/HeaderItem;

    iget-object v4, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v5, 0x7f1005a5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 81
    invoke-virtual {v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 82
    new-instance v3, Ltv/emby/embyatv/search/SearchRunnable$2;

    invoke-direct {v3, p0, v2, v0}, Ltv/emby/embyatv/search/SearchRunnable$2;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 88
    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    const-string v0, "Episode"

    .line 89
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/search/SearchRunnable;->getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    .line 90
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v0, v3, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 91
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v3, Landroidx/leanback/widget/HeaderItem;

    iget-object v4, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v5, 0x7f1004aa

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 92
    invoke-virtual {v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 93
    new-instance v3, Ltv/emby/embyatv/search/SearchRunnable$3;

    invoke-direct {v3, p0, v2, v0}, Ltv/emby/embyatv/search/SearchRunnable$3;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 99
    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 102
    :cond_1
    iget-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeVideos:Z

    if-eqz v0, :cond_2

    const-string v0, "Video"

    .line 103
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/search/SearchRunnable;->getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    .line 104
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v3}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v0, v3, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 105
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v3, Landroidx/leanback/widget/HeaderItem;

    iget-object v4, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v5, 0x7f100610

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 106
    invoke-virtual {v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 107
    new-instance v3, Ltv/emby/embyatv/search/SearchRunnable$4;

    invoke-direct {v3, p0, v2, v0}, Ltv/emby/embyatv/search/SearchRunnable$4;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 113
    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 116
    :cond_2
    iget-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeMusic:Z

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 117
    new-instance v5, Lmediabrowser/model/querying/ArtistsQuery;

    invoke-direct {v5}, Lmediabrowser/model/querying/ArtistsQuery;-><init>()V

    .line 118
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setUserId(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->parentId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setParentId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 120
    invoke-virtual {v5, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setRecursive(Z)V

    .line 121
    iget-object v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->searchString:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setSearchTerm(Ljava/lang/String;)V

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 123
    invoke-virtual {v5, v3}, Lmediabrowser/model/querying/ArtistsQuery;->setEnableTotalRecordCount(Z)V

    .line 124
    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v6, 0x0

    new-instance v7, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v7}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    const/4 v8, 0x0

    sget-object v9, Ltv/emby/embyatv/querying/QueryType;->Artists:Ltv/emby/embyatv/querying/QueryType;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ArtistsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    .line 125
    new-instance v4, Landroidx/leanback/widget/ListRow;

    new-instance v5, Landroidx/leanback/widget/HeaderItem;

    iget-object v6, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v7, 0x7f10044f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 126
    invoke-virtual {v0, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 127
    new-instance v5, Ltv/emby/embyatv/search/SearchRunnable$5;

    invoke-direct {v5, p0, v0, v4}, Ltv/emby/embyatv/search/SearchRunnable$5;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v0, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 133
    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    const-string v0, "MusicAlbum"

    .line 135
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/search/SearchRunnable;->getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    .line 136
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v4, v0, v5, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 137
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v5, Landroidx/leanback/widget/HeaderItem;

    iget-object v6, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v7, 0x7f100443

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5, v4}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 138
    invoke-virtual {v4, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 139
    new-instance v5, Ltv/emby/embyatv/search/SearchRunnable$6;

    invoke-direct {v5, p0, v4, v0}, Ltv/emby/embyatv/search/SearchRunnable$6;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 145
    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    const-string v0, "Audio"

    .line 147
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/search/SearchRunnable;->getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    .line 148
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v4, v0, v5, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 149
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v5, Landroidx/leanback/widget/HeaderItem;

    iget-object v6, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v7, 0x7f1005c3

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5, v4}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 150
    invoke-virtual {v4, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 151
    new-instance v5, Ltv/emby/embyatv/search/SearchRunnable$7;

    invoke-direct {v5, p0, v4, v0}, Ltv/emby/embyatv/search/SearchRunnable$7;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 157
    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 160
    :cond_3
    iget-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includeLiveTv:Z

    if-eqz v0, :cond_4

    const-string v0, "Program"

    .line 173
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/search/SearchRunnable;->getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    .line 174
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v4, v0, v5, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 175
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v5, Landroidx/leanback/widget/HeaderItem;

    iget-object v6, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v7, 0x7f100571

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5, v4}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 176
    invoke-virtual {v4, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 177
    new-instance v5, Ltv/emby/embyatv/search/SearchRunnable$8;

    invoke-direct {v5, p0, v4, v0}, Ltv/emby/embyatv/search/SearchRunnable$8;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 183
    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    const-string v0, "TvChannel"

    .line 185
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/search/SearchRunnable;->getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    .line 186
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v4, v0, v5, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 187
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v5, Landroidx/leanback/widget/HeaderItem;

    iget-object v6, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v7, 0x7f100469

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5, v4}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 188
    invoke-virtual {v4, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 189
    new-instance v5, Ltv/emby/embyatv/search/SearchRunnable$9;

    invoke-direct {v5, p0, v4, v0}, Ltv/emby/embyatv/search/SearchRunnable$9;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 195
    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 198
    :cond_4
    iget-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includePhotos:Z

    if-eqz v0, :cond_5

    const-string v0, "Photo"

    const-string v4, "PhotoAlbum"

    .line 199
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/search/SearchRunnable;->getSearchQuery([Ljava/lang/String;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    .line 200
    new-instance v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v4, v0, v5, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 201
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v5, Landroidx/leanback/widget/HeaderItem;

    iget-object v6, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v7, 0x7f100545

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5, v4}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 202
    invoke-virtual {v4, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 203
    new-instance v5, Ltv/emby/embyatv/search/SearchRunnable$10;

    invoke-direct {v5, p0, v4, v0}, Ltv/emby/embyatv/search/SearchRunnable$10;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 209
    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 212
    :cond_5
    iget-boolean v0, p0, Ltv/emby/embyatv/search/SearchRunnable;->includePeople:Z

    if-eqz v0, :cond_6

    .line 213
    new-instance v0, Lmediabrowser/model/querying/PersonsQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/PersonsQuery;-><init>()V

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/PersonsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 215
    iget-object v2, p0, Ltv/emby/embyatv/search/SearchRunnable;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/PersonsQuery;->setSearchTerm(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/PersonsQuery;->setEnableTotalRecordCount(Z)V

    .line 217
    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v4, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v4}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v2, v0, v3, v4, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/PersonsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 218
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v1, Landroidx/leanback/widget/HeaderItem;

    iget-object v3, p0, Ltv/emby/embyatv/search/SearchRunnable;->activity:Landroid/app/Activity;

    const v4, 0x7f100543

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 219
    invoke-virtual {v2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRow(Landroidx/leanback/widget/ListRow;)V

    .line 220
    new-instance v1, Ltv/emby/embyatv/search/SearchRunnable$11;

    invoke-direct {v1, p0, v2, v0}, Ltv/emby/embyatv/search/SearchRunnable$11;-><init>(Ltv/emby/embyatv/search/SearchRunnable;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 226
    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    :cond_6
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Ltv/emby/embyatv/search/SearchRunnable;->searchString:Ljava/lang/String;

    return-void
.end method
