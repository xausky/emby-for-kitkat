.class public final Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;
.super Ljava/lang/Object;
.source "DownloaderConstructorHelper.java"


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final offlineCacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

.field private final onlineCacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 7
    .param p3    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/upstream/DataSink$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V
    .locals 13
    .param p3    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/upstream/DataSink$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz v10, :cond_0

    .line 107
    new-instance v1, Lcom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;

    const/16 v2, -0x3e8

    move-object v3, p2

    invoke-direct {v1, p2, v10, v2}, Lcom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    if-eqz p3, :cond_1

    move-object/from16 v11, p3

    goto :goto_1

    .line 110
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;-><init>()V

    move-object v11, v1

    :goto_1
    if-nez p4, :cond_2

    .line 115
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;

    const-wide/32 v4, 0x500000

    invoke-direct {v1, p1, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    .line 118
    :goto_2
    new-instance v12, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v12

    move-object v2, p1

    move-object v4, v11

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V

    iput-object v12, v0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->onlineCacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    .line 127
    new-instance v12, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    sget-object v3, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->FACTORY:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 v5, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V

    iput-object v12, v0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->offlineCacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    .line 136
    iput-object v9, v0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 137
    iput-object v10, v0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-object/from16 v1, p6

    .line 138
    iput-object v1, v0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-void
.end method


# virtual methods
.method public createCacheDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->onlineCacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createOfflineCacheDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->offlineCacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    :goto_0
    return-object v0
.end method

.method public getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;-><init>()V

    :goto_0
    return-object v0
.end method
