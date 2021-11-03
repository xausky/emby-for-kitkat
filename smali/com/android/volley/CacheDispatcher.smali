.class public Lcom/android/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z

    .line 63
    iput-object p1, p0, Lcom/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    .line 64
    iput-object p2, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput-object p3, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 66
    iput-object p4, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/volley/CacheDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 7

    .line 80
    sget-boolean v0, Lcom/android/volley/CacheDispatcher;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 81
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-interface {v0}, Lcom/android/volley/Cache;->initialize()V

    .line 92
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :try_start_1
    const-string v3, "cache-queue-take"

    .line 101
    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "cache-discard-canceled"

    .line 105
    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "cache-miss"

    .line 112
    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v3}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "cache-hit-expired"

    .line 120
    invoke-virtual {v0, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 122
    iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v4, "cache-hit"

    .line 127
    invoke-virtual {v0, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 128
    new-instance v4, Lcom/android/volley/NetworkResponse;

    iget-object v5, v3, Lcom/android/volley/Cache$Entry;->data:[B

    iget-object v6, v3, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v4}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v4

    const-string v5, "cache-hit-parsed"

    .line 130
    invoke-virtual {v0, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3}, Lcom/android/volley/Cache$Entry;->refreshNeeded()Z

    move-result v5

    if-nez v5, :cond_5

    .line 134
    iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v3, v0, v4}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_0

    :cond_5
    const-string v5, "cache-hit-refresh-needed"

    .line 139
    invoke-virtual {v0, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 143
    iput-boolean v2, v4, Lcom/android/volley/Response;->intermediate:Z

    .line 148
    iget-object v3, p0, Lcom/android/volley/CacheDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v5, Lcom/android/volley/CacheDispatcher$1;

    invoke-direct {v5, p0, v0}, Lcom/android/volley/CacheDispatcher$1;-><init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V

    invoke-interface {v3, v0, v4, v5}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Unhandled exception %s"

    .line 160
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 95
    :catch_1
    iget-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->mQuit:Z

    if-eqz v0, :cond_1

    return-void
.end method
