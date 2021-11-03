.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000

.field public static final DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/-$$Lambda$CacheUtil$uQzD0N2Max0h6DuMDYcCbN2peIo;->INSTANCE:Lcom/google/android/exoplayer2/upstream/cache/-$$Lambda$CacheUtil$uQzD0N2Max0h6DuMDYcCbN2peIo;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 392
    :goto_0
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 10
    .param p2    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 128
    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v3, p1, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/high16 p3, 0x20000

    new-array v4, p3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 28
    .param p2    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p7

    .line 181
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static/range {p4 .. p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p2

    .line 184
    invoke-static {v12, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)Ljava/lang/String;

    move-result-object v13

    if-eqz v0, :cond_0

    .line 188
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;-><init>(Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;)V

    .line 189
    invoke-static/range {p0 .. p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)Landroid/util/Pair;

    move-result-object v0

    .line 190
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->init(JJ)V

    .line 191
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v14, p1

    :goto_0
    move-object v15, v2

    goto :goto_1

    :cond_0
    move-object/from16 v14, p1

    .line 193
    invoke-static {v12, v14, v13}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getRequestLength(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    goto :goto_0

    .line 196
    :goto_1
    iget-wide v2, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const-wide/16 v16, -0x1

    cmp-long v4, v0, v16

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-nez v4, :cond_1

    const/16 v20, 0x1

    goto :goto_2

    :cond_1
    const/16 v20, 0x0

    :goto_2
    move-wide/from16 v21, v0

    move-wide/from16 v23, v2

    :cond_2
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v0, v21, v6

    if-eqz v0, :cond_9

    .line 199
    invoke-static/range {p8 .. p8}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-wide v8, 0x7fffffffffffffffL

    if-eqz v20, :cond_3

    move-wide v4, v8

    goto :goto_4

    :cond_3
    move-wide/from16 v4, v21

    :goto_4
    move-object/from16 v0, p1

    move-object v1, v13

    move-wide/from16 v2, v23

    .line 201
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-lez v2, :cond_4

    move-wide/from16 v26, v0

    goto :goto_7

    :cond_4
    neg-long v10, v0

    cmp-long v0, v10, v8

    if-nez v0, :cond_5

    move-wide/from16 v3, v16

    goto :goto_5

    :cond_5
    move-wide v3, v10

    :goto_5
    cmp-long v0, v3, v21

    if-nez v0, :cond_6

    const/16 v25, 0x1

    goto :goto_6

    :cond_6
    const/16 v25, 0x0

    :goto_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object v9, v15

    move-wide/from16 v26, v10

    move/from16 v10, v25

    move-object/from16 v11, p8

    .line 210
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;ZLjava/util/concurrent/atomic/AtomicBoolean;)J

    move-result-wide v0

    cmp-long v0, v0, v26

    if-gez v0, :cond_8

    if-eqz p9, :cond_9

    if-eqz v20, :cond_7

    goto :goto_8

    .line 224
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    :goto_7
    const/4 v1, 0x0

    add-long v23, v23, v26

    if-nez v20, :cond_2

    sub-long v21, v21, v26

    goto :goto_3

    :cond_9
    :goto_8
    return-void
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)Landroid/util/Pair;
    .locals 21
    .param p2    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 81
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)Ljava/lang/String;

    move-result-object v6

    .line 82
    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    move-object/from16 v7, p1

    .line 83
    invoke-static {v0, v7, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getRequestLength(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-wide v14, v1

    move-wide v12, v8

    move-wide/from16 v16, v10

    :goto_0
    cmp-long v0, v12, v10

    if-eqz v0, :cond_4

    const-wide/16 v0, -0x1

    cmp-long v18, v12, v0

    const-wide v19, 0x7fffffffffffffffL

    if-eqz v18, :cond_0

    move-wide v4, v12

    goto :goto_1

    :cond_0
    move-wide/from16 v4, v19

    :goto_1
    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v14

    .line 88
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_1

    add-long v16, v16, v0

    goto :goto_2

    :cond_1
    neg-long v0, v0

    cmp-long v2, v0, v19

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v2, 0x0

    add-long/2addr v14, v0

    if-nez v18, :cond_3

    move-wide v0, v10

    :cond_3
    const/4 v2, 0x0

    sub-long/2addr v12, v0

    goto :goto_0

    .line 101
    :cond_4
    :goto_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static getRequestLength(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)J
    .locals 4

    .line 237
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 238
    iget-wide p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    return-wide p0

    .line 240
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long v2, p1, v0

    :goto_0
    return-wide v2
.end method

.method static isCausedByPositionOutOfRange(Ljava/io/IOException;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 378
    instance-of v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v0, :cond_0

    .line 379
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 384
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$static$0(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;ZLjava/util/concurrent/atomic/AtomicBoolean;)J
    .locals 18
    .param p7    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    .line 277
    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long v7, p1, v7

    const-wide/16 v9, -0x1

    cmp-long v0, p3, v9

    if-eqz v0, :cond_0

    add-long v2, v7, p3

    goto :goto_0

    :cond_0
    move-wide v2, v9

    :goto_0
    move-wide v11, v7

    :goto_1
    if-eqz p7, :cond_1

    .line 283
    invoke-virtual/range {p7 .. p8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 285
    :cond_1
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    cmp-long v13, v2, v9

    if-eqz v13, :cond_3

    sub-long v9, v2, v11

    .line 296
    :try_start_0
    invoke-virtual {v1, v11, v12, v9, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    const-wide/16 v14, -0x1

    goto/16 :goto_8

    :catch_1
    move-exception v0

    if-eqz p10, :cond_2

    .line 299
    :try_start_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 302
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto :goto_2

    .line 300
    :cond_2
    throw v0
    :try_end_1
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    const/4 v0, 0x0

    const-wide/16 v9, -0x1

    :goto_3
    if-nez v0, :cond_4

    const-wide/16 v9, -0x1

    .line 306
    :try_start_2
    invoke-virtual {v1, v11, v12, v9, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v9
    :try_end_3
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_2
    move-wide v14, v9

    goto :goto_8

    :cond_4
    move-wide/from16 v16, v9

    :goto_4
    if-eqz p10, :cond_5

    if-eqz v6, :cond_5

    const-wide/16 v14, -0x1

    cmp-long v0, v9, v14

    if-eqz v0, :cond_6

    add-long/2addr v9, v11

    .line 309
    :try_start_4
    invoke-virtual {v6, v9, v10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->onRequestLengthResolved(J)V

    goto :goto_5

    :cond_5
    const-wide/16 v14, -0x1

    :cond_6
    :goto_5
    cmp-long v0, v11, v2

    if-eqz v0, :cond_a

    .line 312
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    if-eqz v13, :cond_7

    .line 313
    array-length v0, v5

    int-to-long v9, v0

    sub-long v0, v2, v11

    .line 318
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_6

    :cond_7
    array-length v0, v5

    :goto_6
    const/4 v1, 0x0

    .line 314
    invoke-interface {v4, v5, v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_8

    if-eqz v6, :cond_a

    .line 322
    invoke-virtual {v6, v11, v12}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->onRequestLengthResolved(J)V

    goto :goto_9

    :cond_8
    int-to-long v9, v0

    add-long/2addr v11, v9

    if-eqz v6, :cond_9

    .line 328
    invoke-virtual {v6, v9, v10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->onBytesCached(J)V
    :try_end_4
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    move-object/from16 v1, p0

    goto :goto_5

    .line 335
    :goto_7
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 336
    throw v0

    .line 335
    :catch_3
    :goto_8
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    move-wide v9, v14

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_a
    :goto_9
    const/4 v0, 0x0

    sub-long/2addr v11, v7

    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-wide v11
.end method

.method public static remove(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 352
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    return-void
.end method

.method public static remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 365
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 366
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 368
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p0    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 397
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-void

    .line 398
    :cond_1
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method
