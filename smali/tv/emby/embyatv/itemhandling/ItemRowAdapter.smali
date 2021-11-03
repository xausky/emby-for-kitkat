.class public Ltv/emby/embyatv/itemhandling/ItemRowAdapter;
.super Landroidx/leanback/widget/ArrayObjectAdapter;
.source "ItemRowAdapter.java"


# static fields
.field private static ignoreTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ignoreTypes:[Ljava/lang/String;


# instance fields
.field private chunkSize:I

.field private currentItemIndex:I

.field private currentlyRetrieving:Z

.field private fullyLoaded:Z

.field private itemsLoaded:I

.field private lastFullRetrieve:Ljava/util/Calendar;

.field private mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

.field private mChapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/ChapterItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEpisodeQuery:Lmediabrowser/model/querying/EpisodeQuery;

.field private mFilters:Ltv/emby/embyatv/model/FilterOptions;

.field private mGenresQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestQuery:Lmediabrowser/model/querying/LatestItemsQuery;

.field private mNextUpQuery:Lmediabrowser/model/querying/NextUpQuery;

.field private mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private mPersons:[Lmediabrowser/model/dto/BaseItemPerson;

.field private mPersonsQuery:Lmediabrowser/model/querying/PersonsQuery;

.field private mQuery:Lmediabrowser/model/querying/ItemQuery;

.field private mRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

.field private mRetrieveStartedListener:Lmediabrowser/apiinteraction/EmptyResponse;

.field private mRow:Landroidx/leanback/widget/ListRow;

.field private mSearchQuery:Lmediabrowser/model/search/SearchQuery;

.field private mSeasonQuery:Lmediabrowser/model/querying/SeasonQuery;

.field private mSeriesTimerQuery:Lmediabrowser/model/livetv/SeriesTimerQuery;

.field private mServer:Lmediabrowser/model/apiclient/ServerInfo;

.field private mServers:[Lmediabrowser/model/apiclient/ServerInfo;

.field private mSimilarQuery:Lmediabrowser/model/querying/SimilarItemsQuery;

.field private mSortBy:Ljava/lang/String;

.field private mSortOrder:Lmediabrowser/model/entities/SortOrder;

.field private mSpecialsQuery:Ltv/emby/embyatv/querying/SpecialsQuery;

.field private mStaticGenres:[Ljava/lang/String;

.field private mTrailersQuery:Ltv/emby/embyatv/querying/TrailersQuery;

.field private mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

.field private mTvProgramQuery:Lmediabrowser/model/livetv/RecommendedProgramQuery;

.field private mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

.field private mUpcomingQuery:Lmediabrowser/model/querying/UpcomingEpisodesQuery;

.field private preferParentThumb:Z

.field private preferSeriesPoster:Z

.field private queryType:Ltv/emby/embyatv/querying/QueryType;

.field private reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

.field private saveQueryLimit:I

.field private showPrograms:Z

.field private staticHeight:Z

.field private totalItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "books"

    const-string v1, "games"

    .line 1168
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->ignoreTypes:[Ljava/lang/String;

    .line 1169
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->ignoreTypes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->ignoreTypeList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/ChapterItemInfo;",
            ">;",
            "Landroidx/leanback/widget/Presenter;",
            "Landroidx/leanback/widget/ArrayObjectAdapter;",
            ")V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 295
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 296
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mChapters:Ljava/util/List;

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 298
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 299
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->StaticChapters:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;",
            "Landroidx/leanback/widget/Presenter;",
            "Landroidx/leanback/widget/ArrayObjectAdapter;",
            "Ltv/emby/embyatv/querying/QueryType;",
            ")V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 304
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 305
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mItems:Ljava/util/List;

    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 307
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/itemhandling/BaseRowItem;",
            ">;",
            "Landroidx/leanback/widget/Presenter;",
            "Landroidx/leanback/widget/ArrayObjectAdapter;",
            "Ltv/emby/embyatv/querying/QueryType;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 311
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array p5, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p5

    iput-object p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 312
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 314
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 317
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;",
            "Landroidx/leanback/widget/Presenter;",
            "Landroidx/leanback/widget/ArrayObjectAdapter;",
            "Ltv/emby/embyatv/querying/QueryType;",
            "Z)V"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 322
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 323
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mItems:Ljava/util/List;

    const/4 p1, 0x1

    .line 324
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 325
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 326
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;",
            "Landroidx/leanback/widget/Presenter;",
            "Landroidx/leanback/widget/ArrayObjectAdapter;",
            "Z)V"
        }
    .end annotation

    .line 330
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array p4, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 331
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 332
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mItems:Ljava/util/List;

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 334
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->StaticItems:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/apiclient/ServerInfo;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 451
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 452
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 453
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mServer:Lmediabrowser/model/apiclient/ServerInfo;

    .line 454
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Users:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/livetv/LiveTvChannelQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V
    .locals 1

    .line 362
    invoke-direct {p0, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p3, 0x0

    .line 99
    new-array v0, p3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 363
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 364
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    .line 365
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    if-lez p2, :cond_0

    .line 366
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setLimit(Ljava/lang/Integer;)V

    .line 367
    :cond_0
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->LiveTvChannel:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 368
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 369
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    const p5, 0x7f100506

    invoke-virtual {p4, p5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p4

    const p5, 0x7f080135

    invoke-direct {p2, p3, p4, p5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/livetv/RecommendedProgramQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 2

    .line 373
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 374
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 375
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvProgramQuery:Lmediabrowser/model/livetv/RecommendedProgramQuery;

    .line 376
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->LiveTvProgram:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    const/4 p1, 0x1

    .line 377
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 378
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p3, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100506

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080135

    invoke-direct {p3, p2, v0, v1}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/livetv/RecordingQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 382
    invoke-direct {p0, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p3, 0x0

    .line 99
    new-array v0, p3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 383
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 384
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    .line 385
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    if-lez p2, :cond_0

    .line 386
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/livetv/RecordingQuery;->setLimit(Ljava/lang/Integer;)V

    .line 387
    :cond_0
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->LiveTvRecording:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    const/4 p1, 0x1

    .line 388
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 389
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 390
    new-array p1, p1, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object p2, Ltv/emby/embyatv/model/ChangeTriggerType;->Always:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object p2, p1, p3

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 391
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    const v0, 0x7f100506

    invoke-virtual {p4, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f080135

    invoke-direct {p2, p3, p4, v0}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/livetv/SeriesTimerQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 2

    .line 263
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 264
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 265
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSeriesTimerQuery:Lmediabrowser/model/livetv/SeriesTimerQuery;

    const/4 p1, 0x1

    .line 266
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 267
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->SeriesTimer:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 268
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p3, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100506

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080135

    invoke-direct {p3, p2, v0, v1}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/ArtistsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 203
    invoke-direct {p0, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p3, 0x0

    .line 99
    new-array v0, p3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 204
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 205
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    .line 206
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/querying/ArtistsQuery;->setUserId(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 208
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    if-lez p2, :cond_0

    .line 209
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 210
    :cond_0
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->AlbumArtists:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 211
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    const v0, 0x7f100506

    invoke-virtual {p4, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f080135

    invoke-direct {p2, p3, p4, v0}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/ArtistsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V
    .locals 1

    .line 227
    invoke-direct {p0, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p3, 0x0

    .line 99
    new-array v0, p3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 228
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 229
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    .line 230
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/querying/ArtistsQuery;->setUserId(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 232
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    if-lez p2, :cond_0

    .line 233
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 234
    :cond_0
    iput-object p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 235
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    const p5, 0x7f100506

    invoke-virtual {p4, p5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p4

    const p5, 0x7f080135

    invoke-direct {p2, p3, p4, p5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/EpisodeQuery;IZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 251
    invoke-direct {p0, p4}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p4, 0x0

    .line 99
    new-array v0, p4, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 252
    iput-object p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 253
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mEpisodeQuery:Lmediabrowser/model/querying/EpisodeQuery;

    .line 254
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mEpisodeQuery:Lmediabrowser/model/querying/EpisodeQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p5

    invoke-virtual {p5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p5

    invoke-virtual {p5}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lmediabrowser/model/querying/EpisodeQuery;->setUserId(Ljava/lang/String;)V

    .line 255
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Episodes:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 256
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    const/4 p1, 0x1

    .line 257
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 258
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 259
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    const p5, 0x7f100506

    invoke-virtual {p3, p5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p3

    const p5, 0x7f080135

    invoke-direct {p2, p4, p3, p5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/ItemQuery;IZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 165
    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 8

    .line 199
    sget-object v7, Ltv/emby/embyatv/querying/QueryType;->Items:Ltv/emby/embyatv/querying/QueryType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V
    .locals 1

    .line 169
    invoke-direct {p0, p5}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p5, 0x0

    .line 99
    new-array v0, p5, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 170
    iput-object p6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 171
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    .line 172
    iget-object p6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 173
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 174
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 175
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    if-lez p2, :cond_0

    .line 176
    iget-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 177
    :cond_0
    iput-object p7, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 178
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getGenreIds()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 180
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getGenreIds()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mStaticGenres:[Ljava/lang/String;

    .line 182
    :cond_1
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    const p4, 0x7f100506

    invoke-virtual {p3, p4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p3

    const p4, 0x7f080135

    invoke-direct {p2, p5, p3, p4}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/PresenterSelector;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V
    .locals 1

    .line 186
    invoke-direct {p0, p5}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    const/4 p5, 0x0

    .line 99
    new-array v0, p5, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 187
    iput-object p6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 188
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    .line 189
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p6

    invoke-virtual {p6}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p6

    invoke-virtual {p6}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p6}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 190
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 191
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 192
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    if-lez p2, :cond_0

    .line 193
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 194
    :cond_0
    iput-object p7, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 195
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    const p4, 0x7f100506

    invoke-virtual {p3, p4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p3

    const p4, 0x7f080135

    invoke-direct {p2, p5, p3, p4}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/ItemQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 161
    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/ItemsByNameQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 215
    invoke-direct {p0, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p3, 0x0

    .line 99
    new-array v0, p3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 216
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 217
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mGenresQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

    .line 218
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mGenresQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/querying/ItemsByNameQuery;->setUserId(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 220
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    if-lez p2, :cond_0

    .line 221
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mGenresQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->setLimit(Ljava/lang/Integer;)V

    .line 222
    :cond_0
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Genres:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 223
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    const v0, 0x7f100506

    invoke-virtual {p4, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f080135

    invoke-direct {p2, p3, p4, v0}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/LatestItemsQuery;ZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 272
    invoke-direct {p0, p4}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p4, 0x0

    .line 99
    new-array v0, p4, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 273
    iput-object p5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 274
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mLatestQuery:Lmediabrowser/model/querying/LatestItemsQuery;

    .line 275
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mLatestQuery:Lmediabrowser/model/querying/LatestItemsQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p5

    invoke-virtual {p5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p5

    invoke-virtual {p5}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lmediabrowser/model/querying/LatestItemsQuery;->setUserId(Ljava/lang/String;)V

    .line 276
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->LatestItems:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 277
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 278
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    const/4 p1, 0x1

    .line 280
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 281
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    const p5, 0x7f100506

    invoke-virtual {p3, p5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p3

    const p5, 0x7f080135

    invoke-direct {p2, p4, p3, p5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/NextUpQuery;ZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 239
    invoke-direct {p0, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p3, 0x0

    .line 99
    new-array v0, p3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 240
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 241
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mNextUpQuery:Lmediabrowser/model/querying/NextUpQuery;

    .line 242
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mNextUpQuery:Lmediabrowser/model/querying/NextUpQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/querying/NextUpQuery;->setUserId(Ljava/lang/String;)V

    .line 243
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->NextUp:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 244
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 246
    new-array p1, p1, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object p2, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object p2, p1, p3

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 247
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    const v0, 0x7f100506

    invoke-virtual {p4, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f080135

    invoke-direct {p2, p3, p4, v0}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/PersonsQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 422
    invoke-direct {p0, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p3, 0x0

    .line 99
    new-array v0, p3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 423
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 424
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 425
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersonsQuery:Lmediabrowser/model/querying/PersonsQuery;

    .line 426
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersonsQuery:Lmediabrowser/model/querying/PersonsQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/querying/PersonsQuery;->setUserId(Ljava/lang/String;)V

    if-lez p2, :cond_0

    .line 427
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersonsQuery:Lmediabrowser/model/querying/PersonsQuery;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/PersonsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 428
    :cond_0
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Persons:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 429
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    const v0, 0x7f100506

    invoke-virtual {p4, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f080135

    invoke-direct {p2, p3, p4, v0}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/SeasonQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 2

    .line 413
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 414
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 415
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSeasonQuery:Lmediabrowser/model/querying/SeasonQuery;

    .line 416
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSeasonQuery:Lmediabrowser/model/querying/SeasonQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmediabrowser/model/querying/SeasonQuery;->setUserId(Ljava/lang/String;)V

    .line 417
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Season:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 418
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p3, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100506

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080135

    invoke-direct {p3, p2, v0, v1}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 395
    invoke-direct {p0, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p3, 0x0

    .line 99
    new-array v0, p3, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 396
    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 397
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSimilarQuery:Lmediabrowser/model/querying/SimilarItemsQuery;

    .line 398
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSimilarQuery:Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    invoke-virtual {p4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/querying/SimilarItemsQuery;->setUserId(Ljava/lang/String;)V

    .line 399
    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 400
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p4

    const v0, 0x7f100506

    invoke-virtual {p4, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f080135

    invoke-direct {p2, p3, p4, v0}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/querying/UpcomingEpisodesQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 2

    .line 404
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 405
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 406
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mUpcomingQuery:Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    .line 407
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mUpcomingQuery:Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setUserId(Ljava/lang/String;)V

    .line 408
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Upcoming:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 409
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p3, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100506

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080135

    invoke-direct {p3, p2, v0, v1}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/search/SearchQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 2

    .line 433
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 434
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 435
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSearchQuery:Lmediabrowser/model/search/SearchQuery;

    .line 436
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSearchQuery:Lmediabrowser/model/search/SearchQuery;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmediabrowser/model/search/SearchQuery;->setUserId(Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSearchQuery:Lmediabrowser/model/search/SearchQuery;

    const/16 p3, 0x32

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmediabrowser/model/search/SearchQuery;->setLimit(Ljava/lang/Integer;)V

    .line 438
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Search:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 439
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p3, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100506

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080135

    invoke-direct {p3, p2, v0, v1}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ltv/emby/embyatv/querying/SpecialsQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 2

    .line 346
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 347
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 348
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSpecialsQuery:Ltv/emby/embyatv/querying/SpecialsQuery;

    .line 349
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Specials:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 350
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p3, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100506

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080135

    invoke-direct {p3, p2, v0, v1}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ltv/emby/embyatv/querying/TrailersQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 2

    .line 354
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 355
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 356
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTrailersQuery:Ltv/emby/embyatv/querying/TrailersQuery;

    .line 357
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Trailers:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 358
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p3, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100506

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080135

    invoke-direct {p3, p2, v0, v1}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p1, p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ltv/emby/embyatv/querying/ViewQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 2

    .line 443
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p1, 0x0

    .line 99
    new-array p2, p1, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 444
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 445
    sget-object p2, Ltv/emby/embyatv/querying/QueryType;->Views:Ltv/emby/embyatv/querying/QueryType;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    const/4 p2, 0x1

    .line 446
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 447
    new-instance p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance p3, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f100506

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080135

    invoke-direct {p3, p1, v0, v1}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {p2, p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {p0, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Lmediabrowser/model/apiclient/ServerInfo;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 338
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 339
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 340
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mServers:[Lmediabrowser/model/apiclient/ServerInfo;

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 342
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->StaticServers:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>([Lmediabrowser/model/dto/BaseItemPerson;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 285
    invoke-direct {p0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 p2, 0x0

    .line 99
    new-array v0, p2, [Ltv/emby/embyatv/model/ChangeTriggerType;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    .line 111
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    .line 113
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 114
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 115
    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    .line 116
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 117
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 119
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    .line 120
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    .line 121
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 122
    iput-boolean p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    .line 286
    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 287
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersons:[Lmediabrowser/model/dto/BaseItemPerson;

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    .line 289
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    .line 290
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->StaticPeople:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method private LoadChapters()V
    .locals 3

    .line 1113
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mChapters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mChapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/model/ChapterItemInfo;

    .line 1115
    new-instance v2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {v2, v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/model/ChapterItemInfo;)V

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 1119
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    :cond_1
    const/4 v0, 0x0

    .line 1122
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    return-void
.end method

.method private LoadPeople()V
    .locals 6

    .line 1100
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersons:[Lmediabrowser/model/dto/BaseItemPerson;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersons:[Lmediabrowser/model/dto/BaseItemPerson;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1102
    new-instance v5, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {v5, v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Lmediabrowser/model/dto/BaseItemPerson;)V

    invoke-virtual {p0, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1109
    :cond_1
    iput-boolean v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    return-void
.end method

.method private LoadServers()V
    .locals 6

    .line 1156
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mServers:[Lmediabrowser/model/apiclient/ServerInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mServers:[Lmediabrowser/model/apiclient/ServerInfo;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 1158
    new-instance v5, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {v5, v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Lmediabrowser/model/apiclient/ServerInfo;)V

    invoke-virtual {p0, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1160
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mServers:[Lmediabrowser/model/apiclient/ServerInfo;

    array-length v0, v0

    iput v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    goto :goto_1

    .line 1162
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1165
    :goto_1
    iput-boolean v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    return-void
.end method

.method private LoadStaticAudioItems()V
    .locals 6

    .line 1141
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1143
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/dto/BaseItemDto;

    .line 1144
    new-instance v4, Ltv/emby/embyatv/itemhandling/AudioQueueItem;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v2, v3}, Ltv/emby/embyatv/itemhandling/AudioQueueItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {p0, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    move v2, v5

    goto :goto_0

    .line 1146
    :cond_0
    iput v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    goto :goto_1

    .line 1149
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1152
    :goto_1
    iput-boolean v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    return-void
.end method

.method private LoadStaticItems()V
    .locals 8

    .line 1126
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/dto/BaseItemDto;

    .line 1129
    new-instance v5, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v6, v2, 0x1

    iget-boolean v7, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    invoke-direct {v5, v2, v3, v7, v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V

    invoke-virtual {p0, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    move v2, v6

    goto :goto_0

    .line 1131
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 1132
    iput-boolean v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    goto :goto_1

    .line 1134
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1137
    :goto_1
    iput-boolean v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    return-void
.end method

.method private RefreshWithDiff(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 1

    .line 951
    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 976
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    return-void
.end method

.method private Retrieve(Lmediabrowser/model/search/SearchQuery;)V
    .locals 2

    .line 1220
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;

    invoke-direct {v1, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetSearchHintsAsync(Lmediabrowser/model/search/SearchQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private RetrieveToNdxAsync(ILmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 602
    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    iget v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    if-ge v1, v2, :cond_0

    .line 605
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;

    invoke-direct {v1, p0, p1, v0, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/Response;)V

    iput-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 622
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveNext()V

    return-void

    .line 627
    :cond_0
    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    const/4 v0, 0x0

    .line 628
    invoke-direct {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setLetterSearchParams(Ljava/lang/String;)V

    .line 631
    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private RetrieveUsers(Lmediabrowser/model/apiclient/ServerInfo;)V
    .locals 1

    .line 1075
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$6;

    invoke-direct {v0, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$6;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetPublicUsersAsync(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private RetrieveViews()V
    .locals 3

    .line 1172
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getUserViews()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getUserViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1173
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getUserViews()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->loadViews(Ljava/util/List;)V

    goto :goto_0

    .line 1175
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    .line 1176
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->GetApiClient(Lmediabrowser/model/dto/IHasServerId;)Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$7;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$7;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetUserViews(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setLetterSearchParams(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I
    .locals 0

    .line 72
    iget p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    return p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ljava/util/List;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->loadViews(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$102(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I
    .locals 0

    .line 72
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    return p1
.end method

.method static synthetic access$1100()Ljava/util/List;
    .locals 1

    .line 72
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->ignoreTypeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Landroidx/leanback/widget/ListRow;
    .locals 0

    .line 72
    iget-object p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRow:Landroidx/leanback/widget/ListRow;

    return-object p0
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I
    .locals 0

    .line 72
    iget p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    return p0
.end method

.method static synthetic access$1500(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I
    .locals 0

    .line 72
    iget p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    return p0
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    return p0
.end method

.method static synthetic access$1700(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    return p0
.end method

.method static synthetic access$1800(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    return p0
.end method

.method static synthetic access$1900(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    return p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I
    .locals 0

    .line 72
    iget p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    return p0
.end method

.method static synthetic access$202(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I
    .locals 0

    .line 72
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    return p1
.end method

.method static synthetic access$302(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I
    .locals 0

    .line 72
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->saveQueryLimit:I

    return p1
.end method

.method static synthetic access$400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Lmediabrowser/model/querying/ArtistsQuery;
    .locals 0

    .line 72
    iget-object p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveToNdxAsync(ILmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method static synthetic access$600(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Lmediabrowser/model/querying/ItemQuery;
    .locals 0

    .line 72
    iget-object p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    return-object p0
.end method

.method static synthetic access$702(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/EmptyResponse;)Lmediabrowser/apiinteraction/EmptyResponse;
    .locals 0

    .line 72
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    return-object p1
.end method

.method static synthetic access$800(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Ltv/emby/embyatv/querying/QueryType;
    .locals 0

    .line 72
    iget-object p0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-object p0
.end method

.method static synthetic access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    return p1
.end method

.method private loadViews(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 1194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 1196
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1197
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmediabrowser/model/dto/BaseItemDto;

    .line 1199
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/model/dto/BaseItemDto;->setDisplayPreferencesId(Ljava/lang/String;)V

    .line 1200
    sget-object v5, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->ignoreTypeList:Ljava/util/List;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->ignoreTypeList:Ljava/util/List;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1201
    new-instance v5, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v6, v3, 0x1

    iget-boolean v7, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    iget-boolean v8, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    invoke-direct {v5, v3, v4, v7, v8}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V

    invoke-virtual {p0, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    move v3, v6

    goto :goto_1

    .line 1203
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    .line 1204
    iget p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    if-lez v0, :cond_4

    .line 1208
    invoke-virtual {p0, v1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeItems(II)I

    goto :goto_2

    .line 1212
    :cond_3
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1214
    :cond_4
    :goto_2
    iput-boolean v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    return-void
.end method

.method private setLetterSearchParams(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 486
    sget-object p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v0}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    .line 494
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->saveQueryLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    goto :goto_0

    .line 491
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->saveQueryLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    :goto_0
    :pswitch_1
    const/4 p1, 0x0

    .line 498
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setStartLetter(Ljava/lang/String;)V

    goto :goto_2

    .line 500
    :cond_0
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    .line 509
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ItemQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->saveQueryLimit:I

    .line 510
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    goto :goto_1

    .line 505
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ArtistsQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->saveQueryLimit:I

    .line 506
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 514
    :goto_1
    :pswitch_3
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setStartLetter(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public GetResultSizeAsync(Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1251
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x28

    .line 1310
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1270
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 1272
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetArtistsAsync(Lmediabrowser/model/querying/ArtistsQuery;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 1253
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 1255
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$9;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$9;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetAlbumArtistsAsync(Lmediabrowser/model/querying/ArtistsQuery;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 1287
    :cond_0
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    const/4 v1, 0x0

    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    invoke-direct {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>([Lmediabrowser/model/querying/ItemFields;)V

    .line 1288
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v1}, Lmediabrowser/model/querying/ItemQuery;->getIncludeItemTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 1289
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v1}, Lmediabrowser/model/querying/ItemQuery;->getNameStartsWithOrGreater()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setNameStartsWithOrGreater(Ljava/lang/String;)V

    .line 1290
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v1}, Lmediabrowser/model/querying/ItemQuery;->getNameLessThan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setNameLessThan(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/model/FilterOptions;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 1292
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 1293
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v1}, Lmediabrowser/model/querying/ItemQuery;->getRecursive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 1294
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v1}, Lmediabrowser/model/querying/ItemQuery;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 1295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 1297
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$11;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$11;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ReRetrieveIfNeeded()Z
    .locals 21

    move-object/from16 v0, p0

    .line 885
    iget-object v1, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 888
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    .line 889
    iget-object v3, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v4, :cond_5

    aget-object v8, v3, v5

    .line 890
    sget-object v9, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    invoke-virtual {v8}, Ltv/emby/embyatv/model/ChangeTriggerType;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 910
    :pswitch_1
    new-instance v7, Ljava/util/GregorianCalendar;

    const-string v8, "Z"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/16 v8, 0xc

    .line 911
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0x1e

    if-lt v9, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v7, v8, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 912
    invoke-virtual {v7, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 913
    invoke-static {v7}, Ltv/emby/embyatv/livetv/TvManager;->programsNeedLoad(Ljava/util/Calendar;)Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_5

    .line 907
    :pswitch_2
    iget-object v8, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastVideoQueueChange()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    or-int/2addr v6, v7

    goto :goto_5

    .line 904
    :pswitch_3
    iget-object v8, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastFavoriteUpdate()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    or-int/2addr v6, v7

    goto :goto_5

    .line 901
    :pswitch_4
    iget-object v8, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastMusicPlayback()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    or-int/2addr v6, v7

    goto :goto_5

    .line 898
    :pswitch_5
    iget-object v7, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastTvPlayback()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_5

    .line 895
    :pswitch_6
    iget-object v7, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastMoviePlayback()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_5

    .line 892
    :pswitch_7
    iget-object v7, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastLibraryChange()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v6, :cond_8

    .line 922
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-retrieving row of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    sget-object v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v2, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v2}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v7, :cond_7

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    packed-switch v1, :pswitch_data_1

    .line 943
    invoke-virtual/range {p0 .. p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    goto/16 :goto_6

    .line 934
    :pswitch_8
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvProgramQuery:Lmediabrowser/model/livetv/RecommendedProgramQuery;

    new-instance v4, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v4}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v1, v2, v4, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecommendedProgramQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    invoke-direct {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RefreshWithDiff(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    goto/16 :goto_6

    .line 931
    :pswitch_9
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mNextUpQuery:Lmediabrowser/model/querying/NextUpQuery;

    iget-boolean v4, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v1, v2, v4, v5, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/NextUpQuery;ZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    invoke-direct {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RefreshWithDiff(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    goto :goto_6

    .line 928
    :pswitch_a
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v8, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mLatestQuery:Lmediabrowser/model/querying/LatestItemsQuery;

    iget-boolean v9, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    iget-boolean v10, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferSeriesPoster:Z

    new-instance v11, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v11}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/LatestItemsQuery;ZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    invoke-direct {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RefreshWithDiff(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    goto :goto_6

    .line 925
    :pswitch_b
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v14, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    iget v15, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    iget-boolean v2, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    iget-boolean v3, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    new-instance v18, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct/range {v18 .. v18}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    const/16 v19, 0x0

    iget-object v4, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    move-object v13, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v20, v4

    invoke-direct/range {v13 .. v20}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)V

    invoke-direct {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RefreshWithDiff(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    goto :goto_6

    .line 940
    :cond_6
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    const/16 v4, 0x12c

    new-instance v5, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v5}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    invoke-direct {v1, v2, v4, v5, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/RecordingQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    invoke-direct {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RefreshWithDiff(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    goto :goto_6

    .line 937
    :cond_7
    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v8, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    iget v9, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    new-instance v10, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v10}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    const/4 v11, 0x0

    iget-boolean v12, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->showPrograms:Z

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/livetv/LiveTvChannelQuery;ILandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V

    invoke-direct {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RefreshWithDiff(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    :cond_8
    :goto_6
    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public Retrieve()V
    .locals 3

    const/4 v0, 0x1

    .line 981
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 982
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->lastFullRetrieve:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 983
    iput v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 984
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveStarted()V

    .line 985
    sget-object v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v2}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1065
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSeriesTimerQuery:Lmediabrowser/model/livetv/SeriesTimerQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/livetv/SeriesTimerQuery;)V

    goto/16 :goto_0

    .line 1054
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSearchQuery:Lmediabrowser/model/search/SearchQuery;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/search/SearchQuery;)V

    goto/16 :goto_0

    .line 1051
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mServer:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveUsers(Lmediabrowser/model/apiclient/ServerInfo;)V

    goto/16 :goto_0

    .line 1048
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTrailersQuery:Ltv/emby/embyatv/querying/TrailersQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Ltv/emby/embyatv/querying/TrailersQuery;)V

    goto/16 :goto_0

    .line 1045
    :pswitch_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSpecialsQuery:Ltv/emby/embyatv/querying/SpecialsQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Ltv/emby/embyatv/querying/SpecialsQuery;)V

    goto/16 :goto_0

    .line 1042
    :pswitch_5
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->LoadStaticAudioItems()V

    goto/16 :goto_0

    .line 1039
    :pswitch_6
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->LoadStaticItems()V

    goto/16 :goto_0

    .line 1035
    :pswitch_7
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->LoadChapters()V

    goto/16 :goto_0

    .line 1032
    :pswitch_8
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->LoadServers()V

    goto/16 :goto_0

    .line 1029
    :pswitch_9
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->LoadPeople()V

    goto/16 :goto_0

    .line 1012
    :pswitch_a
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSimilarQuery:Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveSimilarMovies(Lmediabrowser/model/querying/SimilarItemsQuery;)V

    goto/16 :goto_0

    .line 1009
    :pswitch_b
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSimilarQuery:Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveSimilarSeries(Lmediabrowser/model/querying/SimilarItemsQuery;)V

    goto/16 :goto_0

    .line 1006
    :pswitch_c
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveViews()V

    goto/16 :goto_0

    .line 1000
    :pswitch_d
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSeasonQuery:Lmediabrowser/model/querying/SeasonQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/SeasonQuery;)V

    goto/16 :goto_0

    .line 997
    :pswitch_e
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mUpcomingQuery:Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/UpcomingEpisodesQuery;)V

    goto :goto_0

    .line 1022
    :pswitch_f
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvProgramQuery:Lmediabrowser/model/livetv/RecommendedProgramQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/livetv/RecommendedProgramQuery;)V

    goto :goto_0

    .line 991
    :pswitch_10
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mNextUpQuery:Lmediabrowser/model/querying/NextUpQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/NextUpQuery;)V

    goto :goto_0

    .line 994
    :pswitch_11
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mLatestQuery:Lmediabrowser/model/querying/LatestItemsQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/LatestItemsQuery;)V

    goto :goto_0

    .line 1062
    :pswitch_12
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveContinueWatching(Lmediabrowser/model/querying/ItemQuery;)V

    goto :goto_0

    .line 1003
    :pswitch_13
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mEpisodeQuery:Lmediabrowser/model/querying/EpisodeQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/EpisodeQuery;)V

    goto :goto_0

    .line 1015
    :pswitch_14
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersonsQuery:Lmediabrowser/model/querying/PersonsQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/PersonsQuery;)V

    goto :goto_0

    .line 987
    :pswitch_15
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/querying/ItemQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 988
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/ItemQuery;)V

    goto :goto_0

    .line 1025
    :pswitch_16
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/livetv/RecordingQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 1026
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/livetv/RecordingQuery;)V

    goto :goto_0

    .line 1068
    :pswitch_17
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mGenresQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/ItemsByNameQuery;)V

    goto :goto_0

    .line 1058
    :pswitch_18
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/querying/ArtistsQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 1059
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/ArtistsQuery;)V

    goto :goto_0

    .line 1018
    :pswitch_19
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 1019
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/livetv/LiveTvChannelQuery;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Retrieve(Lmediabrowser/model/livetv/LiveTvChannelQuery;)V
    .locals 2

    .line 1685
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;

    invoke-direct {v1, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvChannelsAsync(Lmediabrowser/model/livetv/LiveTvChannelQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/livetv/RecommendedProgramQuery;)V
    .locals 2

    .line 1725
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$22;

    invoke-direct {v1, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$22;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetRecommendedLiveTvProgramsAsync(Lmediabrowser/model/livetv/RecommendedProgramQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/livetv/RecordingQuery;)V
    .locals 2

    .line 1808
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;

    invoke-direct {v1, p0, p1, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/model/livetv/RecordingQuery;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvRecordingsAsync(Lmediabrowser/model/livetv/RecordingQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/livetv/SeriesTimerQuery;)V
    .locals 2

    .line 1768
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;

    invoke-direct {v1, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvSeriesTimersAsync(Lmediabrowser/model/livetv/SeriesTimerQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/querying/ArtistsQuery;)V
    .locals 2

    .line 1455
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Artists:Ltv/emby/embyatv/querying/QueryType;

    if-ne v0, v1, :cond_0

    .line 1456
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveArtists(Lmediabrowser/model/querying/ArtistsQuery;)V

    goto :goto_0

    .line 1458
    :cond_0
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveAlbumArtists(Lmediabrowser/model/querying/ArtistsQuery;)V

    :goto_0
    return-void
.end method

.method public Retrieve(Lmediabrowser/model/querying/EpisodeQuery;)V
    .locals 2

    .line 1376
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$13;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$13;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetEpisodesAsync(Lmediabrowser/model/querying/EpisodeQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/querying/ItemQuery;)V
    .locals 2

    .line 1317
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/model/querying/ItemQuery;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/querying/ItemsByNameQuery;)V
    .locals 2

    .line 1529
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$18;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$18;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetGenresAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/querying/LatestItemsQuery;)V
    .locals 2

    .line 1562
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetLatestItems(Lmediabrowser/model/querying/LatestItemsQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/querying/NextUpQuery;)V
    .locals 2

    .line 1602
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    invoke-direct {v1, p0, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/model/querying/NextUpQuery;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetNextUpEpisodesAsync(Lmediabrowser/model/querying/NextUpQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/querying/PersonsQuery;)V
    .locals 2

    .line 2036
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$30;

    invoke-direct {v1, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$30;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetPeopleAsync(Lmediabrowser/model/querying/PersonsQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/querying/SeasonQuery;)V
    .locals 2

    .line 2070
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$31;

    invoke-direct {v1, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$31;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetSeasonsAsync(Lmediabrowser/model/querying/SeasonQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Lmediabrowser/model/querying/UpcomingEpisodesQuery;)V
    .locals 2

    .line 2002
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$29;

    invoke-direct {v1, p0, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$29;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/model/querying/UpcomingEpisodesQuery;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetUpcomingEpisodesAsync(Lmediabrowser/model/querying/UpcomingEpisodesQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Ltv/emby/embyatv/querying/SpecialsQuery;)V
    .locals 3

    .line 1852
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

    invoke-virtual {p1}, Ltv/emby/embyatv/querying/SpecialsQuery;->getItemId()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$25;

    invoke-direct {v2, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$25;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, v1, p1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetSpecialFeaturesAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Retrieve(Ltv/emby/embyatv/querying/TrailersQuery;)V
    .locals 4

    .line 1885
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

    invoke-virtual {p1}, Ltv/emby/embyatv/querying/TrailersQuery;->getItemId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;

    invoke-direct {v3, p0, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/querying/TrailersQuery;)V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetLocalTrailersAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public RetrieveAlbumArtists(Lmediabrowser/model/querying/ArtistsQuery;)V
    .locals 2

    .line 1463
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetAlbumArtistsAsync(Lmediabrowser/model/querying/ArtistsQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public RetrieveArtists(Lmediabrowser/model/querying/ArtistsQuery;)V
    .locals 2

    .line 1496
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$17;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$17;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetArtistsAsync(Lmediabrowser/model/querying/ArtistsQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public RetrieveContinueWatching(Lmediabrowser/model/querying/ItemQuery;)V
    .locals 3

    .line 1435
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$14;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$14;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1441
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->hasVideoQueueItems()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1442
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Adding video queue..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1443
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$15;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$15;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1451
    :cond_0
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/ItemQuery;)V

    return-void
.end method

.method public RetrieveNext()V
    .locals 2

    .line 826
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 874
    :pswitch_0
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isCurrentlyRetrieving()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_6

    .line 856
    :pswitch_1
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mEpisodeQuery:Lmediabrowser/model/querying/EpisodeQuery;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isCurrentlyRetrieving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 860
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mEpisodeQuery:Lmediabrowser/model/querying/EpisodeQuery;

    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/EpisodeQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 861
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mEpisodeQuery:Lmediabrowser/model/querying/EpisodeQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/EpisodeQuery;)V

    goto/16 :goto_5

    :cond_1
    :goto_0
    return-void

    .line 828
    :pswitch_2
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersonsQuery:Lmediabrowser/model/querying/PersonsQuery;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isCurrentlyRetrieving()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 829
    :cond_2
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 832
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersonsQuery:Lmediabrowser/model/querying/PersonsQuery;

    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/PersonsQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 833
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mPersonsQuery:Lmediabrowser/model/querying/PersonsQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/PersonsQuery;)V

    goto/16 :goto_5

    :cond_3
    :goto_1
    return-void

    .line 865
    :pswitch_3
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isCurrentlyRetrieving()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 866
    :cond_4
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 869
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 870
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/livetv/RecordingQuery;)V

    goto :goto_5

    :cond_5
    :goto_2
    return-void

    .line 847
    :pswitch_4
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isCurrentlyRetrieving()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 848
    :cond_6
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 851
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 852
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/ArtistsQuery;)V

    goto :goto_5

    :cond_7
    :goto_3
    return-void

    .line 837
    :pswitch_5
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isCurrentlyRetrieving()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 838
    :cond_8
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 841
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 842
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/livetv/LiveTvChannelQuery;)V

    goto :goto_5

    :cond_9
    :goto_4
    return-void

    .line 875
    :cond_a
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 878
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 879
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/ItemQuery;)V

    :goto_5
    return-void

    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public RetrieveSimilarMovies(Lmediabrowser/model/querying/SimilarItemsQuery;)V
    .locals 2

    .line 1969
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$28;

    invoke-direct {v1, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$28;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetSimilarItems(Lmediabrowser/model/querying/SimilarItemsQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public RetrieveSimilarSeries(Lmediabrowser/model/querying/SimilarItemsQuery;)V
    .locals 2

    .line 1936
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$27;

    invoke-direct {v1, p0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$27;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetSimilarItems(Lmediabrowser/model/querying/SimilarItemsQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public containsPhotos()Z
    .locals 5

    .line 635
    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const-string v3, "Photo"

    .line 637
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public findByIndex(I)Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 3

    const/4 v0, 0x0

    .line 690
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 691
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 692
    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentItemIndex()I
    .locals 1

    .line 2126
    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    return v0
.end method

.method public getFilters()Ltv/emby/embyatv/model/FilterOptions;
    .locals 1

    .line 700
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    return-object v0
.end method

.method public getGroupItems()Z
    .locals 2

    .line 742
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Items:Ltv/emby/embyatv/querying/QueryType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ItemQuery;->getGroupItemsIntoCollections()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIncludeItemTypes()[Ljava/lang/String;
    .locals 2

    .line 750
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 756
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ItemQuery;->getIncludeItemTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "Artist"

    .line 754
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "AlbumArtist"

    .line 752
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIndexOfStartsWithAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "#"

    .line 520
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 525
    :cond_0
    invoke-direct {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setLetterSearchParams(Ljava/lang/String;)V

    .line 528
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 570
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;

    invoke-direct {v2, p0, p2, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/Response;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 548
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;

    invoke-direct {v1, p0, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetArtistsAsync(Lmediabrowser/model/querying/ArtistsQuery;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 530
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$1;

    invoke-direct {v1, p0, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$1;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetAlbumArtistsAsync(Lmediabrowser/model/querying/ArtistsQuery;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    :pswitch_2
    return-void

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 521
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIsRecursive()Z
    .locals 2

    .line 761
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 766
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ItemQuery;->getRecursive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 764
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ArtistsQuery;->getRecursive()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemsLoaded()I
    .locals 1

    .line 471
    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    return v0
.end method

.method public getLoadedBaseItems(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    :goto_0
    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    if-ge p1, v1, :cond_1

    .line 646
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 647
    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v2

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getParent()Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 1

    .line 149
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object v0
.end method

.method public getPreferParentThumb()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->preferParentThumb:Z

    return v0
.end method

.method public getQueryType()Ltv/emby/embyatv/querying/QueryType;
    .locals 1

    .line 145
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-object v0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortBy:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Lmediabrowser/model/entities/SortOrder;
    .locals 1

    .line 698
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortOrder:Lmediabrowser/model/entities/SortOrder;

    return-object v0
.end method

.method public getStartLetter()Ljava/lang/String;
    .locals 1

    .line 770
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ItemQuery;->getNameStartsWithOrGreater()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTotalItems()I
    .locals 1

    .line 479
    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    return v0
.end method

.method public isActiveRecordingRow()Z
    .locals 2

    .line 463
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LiveTvRecording:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/QueryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/RecordingQuery;->getIsInProgress()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentlyRetrieving()Z
    .locals 1

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnNowRow()Z
    .locals 2

    .line 467
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LiveTvProgram:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/querying/QueryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvProgramQuery:Lmediabrowser/model/livetv/RecommendedProgramQuery;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getIsAiring()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStaticHeight()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->staticHeight:Z

    return v0
.end method

.method public loadMoreItemsIfNeeded(J)V
    .locals 4

    .line 809
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 813
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isCurrentlyRetrieving()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 814
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Not loading more because currently retrieving"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 818
    :cond_1
    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    add-int/lit8 v0, v0, -0xf

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_2

    .line 819
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loading more items starting at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveNext()V

    :cond_2
    return-void
.end method

.method public notifyRetrieveFinished()V
    .locals 1

    .line 2106
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method

.method public notifyRetrieveStarted()V
    .locals 1

    .line 2116
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveStartedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveStartedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method

.method public removeRow()V
    .locals 6

    .line 791
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    if-nez v0, :cond_0

    .line 793
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 800
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Ltv/emby/embyatv/presentation/TextItemPresenter;

    invoke-direct {v1}, Ltv/emby/embyatv/presentation/TextItemPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 801
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100527

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 802
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Landroidx/leanback/widget/ListRow;

    new-instance v3, Landroidx/leanback/widget/HeaderItem;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    const v5, 0x7f100497

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 805
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mParent:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 0

    .line 2130
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentItemIndex:I

    return-void
.end method

.method public setCurrentlyRetrieving(Z)V
    .locals 0

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->currentlyRetrieving:Z

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFilters(Ltv/emby/embyatv/model/FilterOptions;)V
    .locals 4

    .line 703
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    .line 704
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 716
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    if-eqz v0, :cond_a

    .line 717
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    invoke-virtual {v3}, Ltv/emby/embyatv/model/FilterOptions;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/ItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 718
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    invoke-virtual {v3}, Ltv/emby/embyatv/model/FilterOptions;->is3dOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/ItemQuery;->setIs3D(Ljava/lang/Boolean;)V

    .line 719
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    invoke-virtual {v3}, Ltv/emby/embyatv/model/FilterOptions;->is4KOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/ItemQuery;->setIs4K(Ljava/lang/Boolean;)V

    .line 720
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/FilterOptions;->isHdOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setIsHD(Ljava/lang/Boolean;)V

    goto :goto_3

    .line 721
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/FilterOptions;->isSdOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setIsHD(Ljava/lang/Boolean;)V

    goto :goto_3

    .line 722
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/ItemQuery;->setIsHD(Ljava/lang/Boolean;)V

    .line 724
    :goto_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->getGenres()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->getGenres()[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mStaticGenres:[Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setGenreIds([Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->getStudios()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setStudioIds([Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->getOfficialRatings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setOfficialRatings([Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->getTags()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setTagIds([Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->getYears()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/querying/ItemQuery;->setYears([Ljava/lang/String;)V

    goto :goto_5

    .line 707
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/FilterOptions;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    :cond_6
    invoke-virtual {p1, v2}, Lmediabrowser/model/querying/ArtistsQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    goto :goto_5

    .line 710
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/FilterOptions;->isFavoriteOnly()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_7
    invoke-virtual {p1, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setIsFavorite(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 713
    :cond_8
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mFilters:Ltv/emby/embyatv/model/FilterOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/FilterOptions;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    :cond_9
    invoke-virtual {p1, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    :cond_a
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setGroupItems(Z)V
    .locals 2

    .line 735
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 737
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->isUnwatchedOnly()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->isFavoriteOnly()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/querying/ItemQuery;->setGroupItemsIntoCollections(Ljava/lang/Boolean;)V

    :goto_1
    return-void
.end method

.method public setItemsLoaded(I)V
    .locals 1

    .line 458
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->itemsLoaded:I

    .line 459
    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->chunkSize:I

    if-eqz v0, :cond_1

    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->fullyLoaded:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 746
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getParent()Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/ArrayObjectAdapter;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/presentation/IPositionablePresenter;

    invoke-interface {v0, p1}, Ltv/emby/embyatv/presentation/IPositionablePresenter;->setPosition(I)V

    return-void
.end method

.method public setReRetrieveTriggers([Ltv/emby/embyatv/model/ChangeTriggerType;)V
    .locals 0

    .line 157
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->reRetrieveTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    return-void
.end method

.method public setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 2112
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    return-void
.end method

.method public setRetrieveStartedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 2122
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRetrieveStartedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    return-void
.end method

.method public setRow(Landroidx/leanback/widget/ListRow;)V
    .locals 0

    .line 153
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mRow:Landroidx/leanback/widget/ListRow;

    return-void
.end method

.method public setSortBy(Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;)Z
    .locals 5

    .line 653
    iget-object v0, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->value:Ljava/lang/String;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortOrder:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v0, v2}, Lmediabrowser/model/entities/SortOrder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 654
    :cond_1
    :goto_0
    iget-object v0, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->value:Ljava/lang/String;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortBy:Ljava/lang/String;

    .line 655
    iget-object v0, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortOrder:Lmediabrowser/model/entities/SortOrder;

    .line 656
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v2}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 675
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortBy:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/ItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    iget-object v1, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    goto :goto_1

    .line 671
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortBy:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lmediabrowser/model/livetv/RecordingQuery;->setSortBy([Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvRecordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    iget-object v1, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    goto :goto_1

    .line 663
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mGenresQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortBy:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/ItemsByNameQuery;->setSortBy([Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mGenresQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

    iget-object v1, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    goto :goto_1

    .line 659
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortBy:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lmediabrowser/model/querying/ArtistsQuery;->setSortBy([Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    iget-object v1, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    goto :goto_1

    .line 667
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mSortBy:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortBy([Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mTvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    iget-object v1, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    :cond_2
    :goto_1
    const-string v0, "SortName"

    .line 681
    iget-object p1, p1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setStartLetter(Ljava/lang/String;)V

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStartLetter(Ljava/lang/String;)V
    .locals 2

    .line 773
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->queryType:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 782
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "#"

    .line 783
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {p1, v1}, Lmediabrowser/model/querying/ItemQuery;->setNameStartsWithOrGreater(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    if-eqz p1, :cond_0

    const-string v0, "#"

    .line 776
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-virtual {p1, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setNameStartsWithOrGreater(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mArtistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    invoke-virtual {v0, p1}, Lmediabrowser/model/querying/ArtistsQuery;->setNameStartsWithOrGreater(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->mQuery:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v0, p1}, Lmediabrowser/model/querying/ItemQuery;->setNameStartsWithOrGreater(Ljava/lang/String;)V

    :cond_2
    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTotalItems(I)V
    .locals 0

    .line 475
    iput p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->totalItems:I

    return-void
.end method
