.class public Ltv/emby/embyatv/livetv/TvManager;
.super Ljava/lang/Object;
.source "TvManager.java"


# static fields
.field private static allChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/livetv/ChannelInfoDto;",
            ">;"
        }
    .end annotation
.end field

.field private static channelIds:[Ljava/lang/String;

.field private static displayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

.field private static forceReload:Z

.field private static lastChannelIndex:I

.field private static lastNavKeyDown:J

.field private static mProgramsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;>;"
        }
    .end annotation
.end field

.field private static needLoadTime:Ljava/util/Calendar;

.field private static prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

.field private static final programDictLock:Ljava/lang/Object;

.field private static programNeedLoadTime:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 61
    sput v0, Ltv/emby/embyatv/livetv/TvManager;->lastChannelIndex:I

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltv/emby/embyatv/livetv/TvManager;->programDictLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ltv/emby/embyatv/model/LiveTvPrefs;

    invoke-direct {v0}, Ltv/emby/embyatv/model/LiveTvPrefs;-><init>()V

    sput-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 53
    invoke-static {p0}, Ltv/emby/embyatv/livetv/TvManager;->loadAllChannelsInternal(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method static synthetic access$100()Lmediabrowser/model/entities/DisplayPreferences;
    .locals 1

    .line 53
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->displayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    return-object v0
.end method

.method static synthetic access$102(Lmediabrowser/model/entities/DisplayPreferences;)Lmediabrowser/model/entities/DisplayPreferences;
    .locals 0

    .line 53
    sput-object p0, Ltv/emby/embyatv/livetv/TvManager;->displayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .line 53
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 53
    sput-object p0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300()Ltv/emby/embyatv/model/LiveTvPrefs;
    .locals 1

    .line 53
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 53
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->fillChannelIds()I

    move-result v0

    return v0
.end method

.method static synthetic access$500([Lmediabrowser/model/dto/BaseItemDto;Ljava/util/Calendar;)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Ltv/emby/embyatv/livetv/TvManager;->buildProgramsDict([Lmediabrowser/model/dto/BaseItemDto;Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$600(Ljava/util/Date;)I
    .locals 0

    .line 53
    invoke-static {p0}, Ltv/emby/embyatv/livetv/TvManager;->getDayInt(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    .line 53
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/livetv/TvManager;->addRow(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    return-void
.end method

.method private static addRow(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;",
            "Landroidx/leanback/widget/Presenter;",
            "Landroidx/leanback/widget/ArrayObjectAdapter;",
            ")V"
        }
    .end annotation

    .line 522
    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V

    .line 523
    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 524
    new-instance p1, Landroidx/leanback/widget/ListRow;

    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0, v1}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, v0}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 525
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private static buildProgramsDict([Lmediabrowser/model/dto/BaseItemDto;Ljava/util/Calendar;)V
    .locals 9

    .line 373
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->programDictLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    .line 375
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 376
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    .line 377
    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object v6

    .line 378
    sget-object v7, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-lez v7, :cond_1

    .line 380
    sget-object v7, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    sput-object p0, Ltv/emby/embyatv/livetv/TvManager;->needLoadTime:Ljava/util/Calendar;

    .line 385
    sget-object p0, Ltv/emby/embyatv/livetv/TvManager;->needLoadTime:Ljava/util/Calendar;

    const-string p1, "Z"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 386
    sget-object p0, Ltv/emby/embyatv/livetv/TvManager;->needLoadTime:Ljava/util/Calendar;

    const/16 p1, 0xc

    const/16 v0, 0x1d

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->add(II)V

    return-void

    :catchall_0
    move-exception p0

    .line 383
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static clearCache()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    sput-boolean v0, Ltv/emby/embyatv/livetv/TvManager;->forceReload:Z

    const/4 v0, 0x0

    .line 113
    sput-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    .line 114
    sput-object v0, Ltv/emby/embyatv/livetv/TvManager;->displayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    return-void
.end method

.method private static fillChannelIds()I
    .locals 8

    .line 279
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    .line 280
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getLastLiveTvChannel()Ljava/lang/String;

    move-result-object v0

    .line 282
    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmediabrowser/model/livetv/ChannelInfoDto;

    .line 283
    sget-object v5, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 285
    invoke-virtual {v4}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v6

    :cond_0
    move v2, v6

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static findRecordingByTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 545
    new-instance v0, Lmediabrowser/model/livetv/RecordingQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/RecordingQuery;-><init>()V

    .line 546
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setUserId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 547
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/RecordingQuery;->setIsInProgress(Ljava/lang/Boolean;)V

    .line 548
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/livetv/TvManager$7;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/livetv/TvManager$7;-><init>(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvRecordingsAsync(Lmediabrowser/model/livetv/RecordingQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static forceReload()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    sput-boolean v0, Ltv/emby/embyatv/livetv/TvManager;->forceReload:Z

    return-void
.end method

.method public static getAllChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmediabrowser/model/livetv/ChannelInfoDto;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    return-object v0
.end method

.method public static getAllChannelsIndex(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 123
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 124
    :goto_0
    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 125
    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getChannel(I)Lmediabrowser/model/livetv/ChannelInfoDto;
    .locals 1

    .line 132
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/livetv/ChannelInfoDto;

    return-object p0
.end method

.method public static getChannelNdxByNumber(Ljava/lang/String;)I
    .locals 5

    .line 147
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    :goto_0
    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 150
    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/livetv/ChannelInfoDto;

    .line 151
    invoke-virtual {v2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 155
    :goto_1
    sget-object v3, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 156
    sget-object v3, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v3}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v4}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static getDayInt(Ljava/util/Date;)I
    .locals 1

    .line 530
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 531
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x6

    .line 532
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getLastLiveTvChannel()Ljava/lang/String;
    .locals 3

    .line 68
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sys_pref_last_tv_channel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastNavKeyDown()J
    .locals 2

    .line 537
    sget-wide v0, Ltv/emby/embyatv/livetv/TvManager;->lastNavKeyDown:J

    return-wide v0
.end method

.method private static getLiveTvPrefs(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 4

    .line 223
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "usersettings"

    const-string v2, "emby"

    new-instance v3, Ltv/emby/embyatv/livetv/TvManager$2;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/livetv/TvManager$2;-><init>(Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {v0, v1, v2, v3}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static getNextChannel()Ljava/lang/String;
    .locals 2

    .line 85
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget v0, Ltv/emby/embyatv/livetv/TvManager;->lastChannelIndex:I

    if-ltz v0, :cond_0

    sget v0, Ltv/emby/embyatv/livetv/TvManager;->lastChannelIndex:I

    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 86
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    sget v1, Ltv/emby/embyatv/livetv/TvManager;->lastChannelIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getOtherCell(Landroid/widget/LinearLayout;Ltv/emby/embyatv/ui/ProgramGridCell;)Ltv/emby/embyatv/ui/ProgramGridCell;
    .locals 6

    const/4 v0, 0x0

    .line 459
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 460
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/ui/ProgramGridCell;

    .line 461
    invoke-virtual {v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->getProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->getProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 462
    invoke-virtual {v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->getProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->getProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;
    .locals 1

    .line 109
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    return-object v0
.end method

.method public static getPrevChannel()Ljava/lang/String;
    .locals 2

    .line 94
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget v0, Ltv/emby/embyatv/livetv/TvManager;->lastChannelIndex:I

    if-lez v0, :cond_0

    .line 95
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    sget v1, Ltv/emby/embyatv/livetv/TvManager;->lastChannelIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPrevLiveTvChannel()Ljava/lang/String;
    .locals 3

    .line 80
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sys_pref_prev_tv_channel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProgramsAsync(IILjava/util/Calendar;Ljava/util/Calendar;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 7

    const/16 v0, 0xc

    .line 318
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    const/4 v1, 0x1

    .line 319
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 320
    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    sget-object p1, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v1

    :cond_1
    if-gez p0, :cond_2

    const/4 p0, 0x0

    .line 323
    :cond_2
    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->programDictLock:Ljava/lang/Object;

    monitor-enter v2

    .line 324
    :try_start_0
    sget-object v4, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    sget-object v5, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    aget-object v5, v5, p0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    sget-object v5, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 325
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 326
    sget-boolean v2, Ltv/emby/embyatv/livetv/TvManager;->forceReload:Z

    if-nez v2, :cond_6

    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->needLoadTime:Ljava/util/Calendar;

    if-eqz v2, :cond_6

    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->needLoadTime:Ljava/util/Calendar;

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v4, :cond_5

    goto :goto_3

    .line 368
    :cond_5
    invoke-virtual {p4}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    goto/16 :goto_6

    .line 327
    :cond_6
    :goto_3
    sput-boolean v3, Ltv/emby/embyatv/livetv/TvManager;->forceReload:Z

    .line 328
    new-instance v2, Lmediabrowser/model/livetv/ProgramQuery;

    invoke-direct {v2}, Lmediabrowser/model/livetv/ProgramQuery;-><init>()V

    .line 329
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmediabrowser/model/livetv/ProgramQuery;->setUserId(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 330
    new-array v5, v4, [Lmediabrowser/model/querying/ItemFields;

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->IsHD:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v3

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->Width:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v1

    invoke-virtual {v2, v5}, Lmediabrowser/model/livetv/ProgramQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    if-lez p1, :cond_8

    .line 332
    sget-object v5, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    array-length v5, v5

    if-le p1, v5, :cond_7

    sget-object p1, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    array-length p1, p1

    goto :goto_4

    :cond_7
    add-int/2addr p1, v1

    .line 333
    :goto_4
    sget-object v5, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    invoke-static {v5, p0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Lmediabrowser/model/livetv/ProgramQuery;->setChannelIds([Ljava/lang/String;)V

    .line 334
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v5

    const-string v6, "**** Retrieving only channels %d to %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v5, v6, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 335
    :cond_8
    sget-object p0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    iget-boolean p0, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->favoriteChannelsOnly:Z

    if-eqz p0, :cond_9

    .line 337
    sget-object p0, Ltv/emby/embyatv/livetv/TvManager;->channelIds:[Ljava/lang/String;

    invoke-virtual {v2, p0}, Lmediabrowser/model/livetv/ProgramQuery;->setChannelIds([Ljava/lang/String;)V

    .line 339
    :cond_9
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v2, p0}, Lmediabrowser/model/livetv/ProgramQuery;->setEnableImages(Ljava/lang/Boolean;)V

    const-string p0, "StartDate"

    .line 340
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lmediabrowser/model/livetv/ProgramQuery;->setSortBy([Ljava/lang/String;)V

    .line 341
    invoke-virtual {p3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const-string p1, "Z"

    .line 342
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p1, -0x1

    .line 343
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 344
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Lmediabrowser/model/livetv/ProgramQuery;->setMaxStartDate(Ljava/util/Date;)V

    .line 345
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Lmediabrowser/model/livetv/ProgramQuery;->setMinEndDate(Ljava/util/Date;)V

    .line 349
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string p1, "*** About to get programs"

    new-array p3, v3, [Ljava/lang/Object;

    invoke-interface {p0, p1, p3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p0

    new-instance p1, Ltv/emby/embyatv/livetv/TvManager$5;

    invoke-direct {p1, p2, p4}, Ltv/emby/embyatv/livetv/TvManager$5;-><init>(Ljava/util/Calendar;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {p0, v2, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvProgramsAsync(Lmediabrowser/model/livetv/ProgramQuery;Lmediabrowser/apiinteraction/Response;)V

    :goto_6
    return-void

    :catchall_0
    move-exception p0

    .line 325
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getProgramsForChannel(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation

    .line 417
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->programDictLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 419
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getProgramsForChannel(Ljava/lang/String;Ltv/emby/embyatv/livetv/GuideFilters;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/emby/embyatv/livetv/GuideFilters;",
            ")",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation

    .line 400
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->programDictLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    .line 403
    :cond_0
    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->mProgramsDict:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 404
    invoke-virtual {p1}, Ltv/emby/embyatv/livetv/GuideFilters;->any()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 405
    monitor-exit v0

    return-object p0

    .line 408
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/dto/BaseItemDto;

    .line 409
    invoke-virtual {p1, v3}, Ltv/emby/embyatv/livetv/GuideFilters;->passesFilter(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_3

    .line 412
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 413
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getScheduleRowsAsync(Lmediabrowser/model/livetv/TimerQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/livetv/TimerQuery;",
            "Landroidx/leanback/widget/Presenter;",
            "Landroidx/leanback/widget/ArrayObjectAdapter;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 470
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/livetv/TvManager$6;

    invoke-direct {v1, p1, p2, p3}, Ltv/emby/embyatv/livetv/TvManager$6;-><init>(Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v0, p0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvTimersAsync(Lmediabrowser/model/livetv/TimerQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static loadAllChannels(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 167
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Channels already loaded - returning %s channels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->sortChannels()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_0
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->displayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Ltv/emby/embyatv/livetv/TvManager$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/livetv/TvManager$1;-><init>(Lmediabrowser/apiinteraction/Response;)V

    invoke-static {v0}, Ltv/emby/embyatv/livetv/TvManager;->getLiveTvPrefs(Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {p0}, Ltv/emby/embyatv/livetv/TvManager;->loadAllChannelsInternal(Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method

.method private static loadAllChannelsInternal(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 243
    new-instance v0, Lmediabrowser/model/livetv/LiveTvChannelQuery;

    invoke-direct {v0}, Lmediabrowser/model/livetv/LiveTvChannelQuery;-><init>()V

    .line 244
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setUserId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 245
    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setAddCurrentProgram(Z)V

    .line 246
    new-array v2, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->ProgramPrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 247
    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    iget-boolean v2, v2, Ltv/emby/embyatv/model/LiveTvPrefs;->favsAtTop:Z

    if-nez v2, :cond_0

    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    iget-boolean v2, v2, Ltv/emby/embyatv/model/LiveTvPrefs;->favoriteChannelsOnly:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setEnableFavoriteSorting(Z)V

    :cond_1
    const-string v2, "DatePlayed"

    .line 248
    sget-object v3, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    iget-object v3, v3, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 249
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DatePlayed"

    sget-object v3, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    iget-object v3, v3, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "DatePlayed"

    goto :goto_1

    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4.4.0.20"

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    iget-object v2, v2, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v2, "SortName"

    :goto_1
    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortBy([Ljava/lang/String;)V

    .line 250
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "*** About to load channels"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/livetv/TvManager$3;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/livetv/TvManager$3;-><init>(Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvChannelsAsync(Lmediabrowser/model/livetv/LiveTvChannelQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static programsNeedLoad(Ljava/util/Calendar;)Z
    .locals 1

    .line 397
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->programNeedLoadTime:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->programNeedLoadTime:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static resetChannels()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    sput-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    return-void
.end method

.method public static setFocusParms(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 442
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 443
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/ui/ProgramGridCell;

    .line 444
    invoke-static {p1, v1}, Ltv/emby/embyatv/livetv/TvManager;->getOtherCell(Landroid/widget/LinearLayout;Ltv/emby/embyatv/ui/ProgramGridCell;)Ltv/emby/embyatv/ui/ProgramGridCell;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 447
    invoke-virtual {v2}, Ltv/emby/embyatv/ui/ProgramGridCell;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/ui/ProgramGridCell;->setNextFocusUpId(I)V

    goto :goto_1

    .line 450
    :cond_0
    invoke-virtual {v2}, Ltv/emby/embyatv/ui/ProgramGridCell;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/ui/ProgramGridCell;->setNextFocusDownId(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setLastLiveTvChannel(Ljava/lang/String;)V
    .locals 5

    .line 72
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sys_pref_prev_tv_channel"

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sys_pref_last_tv_channel"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sys_pref_last_tv_channel"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    invoke-static {p0}, Ltv/emby/embyatv/livetv/TvManager;->updateLastPlayedDate(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannelsIndex(Ljava/lang/String;)I

    move-result p0

    sput p0, Ltv/emby/embyatv/livetv/TvManager;->lastChannelIndex:I

    .line 76
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->sortChannels()I

    return-void
.end method

.method public static setLastNavKeyDown(J)V
    .locals 0

    .line 541
    sput-wide p0, Ltv/emby/embyatv/livetv/TvManager;->lastNavKeyDown:J

    return-void
.end method

.method public static setTimelineRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 4

    .line 423
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 424
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 425
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100530

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 429
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getChannelName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    .line 430
    invoke-virtual {v1, p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 431
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1060012

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static shouldForceReload()Z
    .locals 1

    .line 120
    sget-boolean v0, Ltv/emby/embyatv/livetv/TvManager;->forceReload:Z

    return v0
.end method

.method public static sortChannels()I
    .locals 2

    .line 295
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v0, "DatePlayed"

    .line 297
    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    iget-object v1, v1, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/livetv/TvManager$4;

    invoke-direct {v1}, Ltv/emby/embyatv/livetv/TvManager$4;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->fillChannelIds()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static translatePrefs(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 207
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "livetv-channelorder"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "DatePlayed"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    .line 208
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.4.0.20"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Number"

    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    iget-object v1, v1, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "ChannelNumber,SortName"

    iput-object v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    .line 209
    :cond_0
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "guide-colorcodedbackgrounds"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->colorCodeGuide:Z

    .line 210
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "livetv-favoritechannelsattop"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->favsAtTop:Z

    .line 211
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "guide-indicator-hd"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showHDIndicator:Z

    .line 212
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "guide-indicator-live"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showLiveIndicator:Z

    .line 213
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "guide-indicator-new"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showNewIndicator:Z

    .line 214
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "guide-indicator-premiere"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showPremiereIndicator:Z

    .line 215
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "guide-indicator-rating"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRatingIndicator:Z

    .line 216
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "guide-indicator-repeat"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRepeatIndicator:Z

    .line 217
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "guide-favorite-only"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->favoriteChannelsOnly:Z

    .line 218
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    const-string v1, "guide-compact-layout"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "false"

    invoke-static {p0, v1}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->compactLayout:Z

    :cond_1
    return-void
.end method

.method public static updateLastPlayedDate(Ljava/lang/String;)V
    .locals 5

    .line 136
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannelsIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 141
    sget-object v2, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p0

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Lmediabrowser/model/dto/UserItemDataDto;->setLastPlayedDate(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public static updatePrefs(Ltv/emby/embyatv/model/LiveTvPrefs;)V
    .locals 3

    .line 186
    sput-object p0, Ltv/emby/embyatv/livetv/TvManager;->prefs:Ltv/emby/embyatv/model/LiveTvPrefs;

    .line 187
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->displayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "livetv-channelorder"

    .line 188
    iget-object v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guide-colorcodedbackgrounds"

    .line 189
    iget-boolean v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->colorCodeGuide:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "livetv-favoritechannelsattop"

    .line 190
    iget-boolean v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->favsAtTop:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guide-indicator-hd"

    .line 191
    iget-boolean v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->showHDIndicator:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guide-indicator-live"

    .line 192
    iget-boolean v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->showLiveIndicator:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guide-indicator-new"

    .line 193
    iget-boolean v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->showNewIndicator:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guide-indicator-premiere"

    .line 194
    iget-boolean v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->showPremiereIndicator:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guide-indicator-rating"

    .line 195
    iget-boolean v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRatingIndicator:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guide-indicator-repeat"

    .line 196
    iget-boolean v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRepeatIndicator:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guide-favorite-only"

    .line 197
    iget-boolean v2, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->favoriteChannelsOnly:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guide-compact-layout"

    .line 198
    iget-boolean p0, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->compactLayout:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    const-string v0, "emby"

    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->displayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/TvApp;->updateDisplayPrefs(Ljava/lang/String;Lmediabrowser/model/entities/DisplayPreferences;)V

    const/4 p0, 0x0

    .line 201
    sput-object p0, Ltv/emby/embyatv/livetv/TvManager;->allChannels:Ljava/util/List;

    return-void
.end method

.method public static updateProgramsNeedsLoadTime()Ljava/util/Calendar;
    .locals 5

    .line 391
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "Z"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v0, Ltv/emby/embyatv/livetv/TvManager;->programNeedLoadTime:Ljava/util/Calendar;

    .line 392
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->programNeedLoadTime:Ljava/util/Calendar;

    sget-object v1, Ltv/emby/embyatv/livetv/TvManager;->programNeedLoadTime:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x1e

    if-lt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 393
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->programNeedLoadTime:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 394
    sget-object v0, Ltv/emby/embyatv/livetv/TvManager;->programNeedLoadTime:Ljava/util/Calendar;

    return-object v0
.end method
