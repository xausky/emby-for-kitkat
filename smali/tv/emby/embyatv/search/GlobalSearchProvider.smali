.class public Ltv/emby/embyatv/search/GlobalSearchProvider;
.super Landroid/content/ContentProvider;
.source "GlobalSearchProvider.java"


# static fields
.field private static final CURSOR_COLUMNS:[Ljava/lang/String;


# instance fields
.field private isReady:Z

.field private searchResult:Lmediabrowser/model/querying/ItemsResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "_id"

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_content_type"

    const-string v3, "suggest_production_year"

    const-string v4, "suggest_result_card_image"

    const-string v5, "suggest_duration"

    const-string v6, "suggest_text_2"

    const-string v7, "suggest_intent_data_id"

    .line 31
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/search/GlobalSearchProvider;->CURSOR_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ltv/emby/embyatv/search/GlobalSearchProvider;Lmediabrowser/model/querying/ItemsResult;)Lmediabrowser/model/querying/ItemsResult;
    .locals 0

    .line 29
    iput-object p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider;->searchResult:Lmediabrowser/model/querying/ItemsResult;

    return-object p1
.end method

.method static synthetic access$102(Ltv/emby/embyatv/search/GlobalSearchProvider;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider;->isReady:Z

    return p1
.end method

.method static synthetic access$200(Ltv/emby/embyatv/search/GlobalSearchProvider;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ltv/emby/embyatv/search/GlobalSearchProvider;->getSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private getSearchResult(Ljava/lang/String;)V
    .locals 8

    .line 122
    new-instance v0, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    const-string v2, "Movie"

    const-string v3, "Video"

    const-string v4, "Series"

    const-string v5, "BoxSet"

    const-string v6, "MusicAlbum"

    const-string v7, "MusicArtist"

    .line 124
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 125
    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->ProductionYear:Lmediabrowser/model/querying/ItemFields;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const/16 v1, 0x14

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 127
    invoke-virtual {v0, p1}, Lmediabrowser/model/querying/ItemQuery;->setSearchTerm(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v1, Ltv/emby/embyatv/search/GlobalSearchProvider$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/search/GlobalSearchProvider$2;-><init>(Ltv/emby/embyatv/search/GlobalSearchProvider;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private getSuggestions()Landroid/database/Cursor;
    .locals 12

    .line 148
    iget-object v0, p0, Ltv/emby/embyatv/search/GlobalSearchProvider;->searchResult:Lmediabrowser/model/querying/ItemsResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/search/GlobalSearchProvider;->searchResult:Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/search/GlobalSearchProvider;->searchResult:Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 150
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Ltv/emby/embyatv/search/GlobalSearchProvider;->CURSOR_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider;->searchResult:Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {v1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const/16 v6, 0x8

    .line 153
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v8, "video/x-matroska"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    invoke-virtual {v8}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v8

    const/16 v9, 0x12c

    invoke-static {v5, v8, v3, v9}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZI)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    div-long/2addr v8, v10

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x0

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasValidConnection()Z
    .locals 2

    .line 117
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    const-string p3, "********** IN SEARCH"

    const/4 p5, 0x0

    new-array v0, p5, [Ljava/lang/Object;

    invoke-interface {p2, p3, v0}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_5

    .line 60
    iput-boolean p5, p0, Ltv/emby/embyatv/search/GlobalSearchProvider;->isReady:Z

    .line 61
    invoke-direct {p0}, Ltv/emby/embyatv/search/GlobalSearchProvider;->hasValidConnection()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 62
    aget-object p1, p4, p5

    invoke-direct {p0, p1}, Ltv/emby/embyatv/search/GlobalSearchProvider;->getSearchResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "tv.mediabrowser.login.json"

    .line 66
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->GetSavedLoginCredentials(Ljava/lang/String;)Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ltv/emby/embyatv/startup/LogonCredentials;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 68
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p3, "No configured auto login - getting last saved user..."

    new-array v0, p5, [Ljava/lang/Object;

    invoke-interface {p1, p3, v0}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "tv.emby.lastlogin.json"

    .line 69
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->GetSavedLoginCredentials(Ljava/lang/String;)Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object p1

    .line 72
    :cond_1
    invoke-virtual {p1}, Ltv/emby/embyatv/startup/LogonCredentials;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    .line 73
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p3, "No valid connection.  Cannot search."

    new-array p4, p5, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 77
    :cond_2
    invoke-virtual {p1}, Ltv/emby/embyatv/startup/LogonCredentials;->getUserDto()Lmediabrowser/model/dto/UserDto;

    move-result-object p3

    .line 78
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->setupConnection()V

    .line 79
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object v0

    invoke-virtual {p1}, Ltv/emby/embyatv/startup/LogonCredentials;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object p1

    new-instance v1, Ltv/emby/embyatv/search/GlobalSearchProvider$1;

    invoke-direct {v1, p0, p3, p4}, Ltv/emby/embyatv/search/GlobalSearchProvider$1;-><init>(Ltv/emby/embyatv/search/GlobalSearchProvider;Lmediabrowser/model/dto/UserDto;[Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lmediabrowser/apiinteraction/IConnectionManager;->Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/Response;)V

    .line 97
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 98
    :goto_1
    iget-boolean p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider;->isReady:Z

    if-nez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v2, p3

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    const-wide/16 v0, 0x64

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 107
    :cond_3
    iget-boolean p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider;->isReady:Z

    if-eqz p1, :cond_4

    .line 108
    invoke-direct {p0}, Ltv/emby/embyatv/search/GlobalSearchProvider;->getSuggestions()Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 111
    :cond_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p3, "**** Timed out waiting for search response"

    new-array p4, p5, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 103
    :catch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p3, "Operation interrupted"

    new-array p4, p5, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 56
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "selectionArgs must be provided for the Uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
