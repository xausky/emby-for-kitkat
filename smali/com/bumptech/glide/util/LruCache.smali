.class public Lcom/bumptech/glide/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;TY;>;"
        }
    .end annotation
.end field

.field private currentSize:J

.field private final initialMaxSize:J

.field private maxSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 30
    iput-wide p1, p0, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:J

    .line 31
    iput-wide p1, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    return-void
.end method

.method private evict()V
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/LruCache;->trimToSize(J)V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/LruCache;->trimToSize(J)V

    return-void
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentSize()J
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSize(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    .line 125
    iget-wide v2, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 127
    monitor-exit p0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 131
    :try_start_1
    iget-wide v2, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    const/4 v4, 0x0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    iget-wide v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 137
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/util/LruCache;->evict()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 152
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSizeMultiplier(F)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 45
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:J

    long-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    .line 46
    invoke-direct {p0}, Lcom/bumptech/glide/util/LruCache;->evict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multiplier must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized trimToSize(J)V
    .locals 7

    monitor-enter p0

    .line 176
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 180
    iget-wide v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 181
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 183
    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 175
    monitor-exit p0

    throw p1
.end method
