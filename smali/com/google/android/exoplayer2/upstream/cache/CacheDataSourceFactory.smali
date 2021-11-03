.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final flags:I

.field private final upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V
    .locals 7

    .line 49
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .locals 8
    .param p4    # Lcom/google/android/exoplayer2/upstream/DataSink$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 69
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V
    .locals 0
    .param p4    # Lcom/google/android/exoplayer2/upstream/DataSink$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 92
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 93
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 94
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 95
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->flags:I

    .line 96
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 97
    iput-object p7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .locals 9

    .line 102
    new-instance v8, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 104
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 105
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 106
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSink$Factory;->createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->flags:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V

    return-object v8
.end method
