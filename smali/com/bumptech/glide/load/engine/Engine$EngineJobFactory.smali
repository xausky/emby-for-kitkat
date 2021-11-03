.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field final animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
    .locals 2

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;-><init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V

    const/16 v1, 0x96

    .line 458
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->simple(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    .line 479
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 480
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 481
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 482
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 483
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    return-void
.end method

.method private static shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 512
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 514
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 516
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to shutdown"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 521
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method build(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "TR;>;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bumptech/glide/load/engine/EngineJob;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 502
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/EngineJob;->init(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object p1

    return-object p1
.end method

.method shutdown()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 489
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 490
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
