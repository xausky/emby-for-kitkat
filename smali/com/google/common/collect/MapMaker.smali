.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "MapMaker.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$ComputingMapAdapter;,
        Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;,
        Lcom/google/common/collect/MapMaker$NullConcurrentMap;,
        Lcom/google/common/collect/MapMaker$RemovalCause;,
        Lcom/google/common/collect/MapMaker$RemovalNotification;,
        Lcom/google/common/collect/MapMaker$RemovalListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/GenericMapMaker<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final UNSET_INT:I = -0x1


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field maximumSize:I

.field nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

.field ticker:Lcom/google/common/base/Ticker;

.field useCustomMap:Z

.field valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 117
    iput v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 118
    iput v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    const-wide/16 v0, -0x1

    .line 123
    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 124
    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    return-void
.end method

.method private checkExpiration(JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .line 391
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v5, "expireAfterWrite was already set to %s ns"

    new-array v6, v4, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v0, v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "expireAfterAccess was already set to %s ns"

    new-array v3, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v2, "duration cannot be negative: %s %s"

    const/4 v3, 0x2

    .line 395
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic concurrencyLevel(I)Lcom/google/common/collect/GenericMapMaker;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->concurrencyLevel(I)Lcom/google/common/collect/MapMaker;

    move-result-object p1

    return-object p1
.end method

.method public concurrencyLevel(I)Lcom/google/common/collect/MapMaker;
    .locals 6

    .line 240
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    const/4 v1, 0x1

    .line 242
    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 243
    iput p1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    return-object p0
.end method

.method bridge synthetic expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .locals 0

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object p1

    return-object p1
.end method

.method expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->checkExpiration(JLjava/util/concurrent/TimeUnit;)V

    .line 432
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez p1, :cond_0

    .line 435
    sget-object p1, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object p1, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    :cond_0
    const/4 p1, 0x1

    .line 437
    iput-boolean p1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    return-object p0
.end method

.method bridge synthetic expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .locals 0

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object p1

    return-object p1
.end method

.method expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->checkExpiration(JLjava/util/concurrent/TimeUnit;)V

    .line 381
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez p1, :cond_0

    .line 384
    sget-object p1, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object p1, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    :cond_0
    const/4 p1, 0x1

    .line 386
    iput-boolean p1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .line 248
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    :goto_0
    return v0
.end method

.method getExpireAfterAccessNanos()J
    .locals 4

    .line 442
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    :goto_0
    return-wide v0
.end method

.method getExpireAfterWriteNanos()J
    .locals 4

    .line 399
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    :goto_0
    return-wide v0
.end method

.method getInitialCapacity()I
    .locals 2

    .line 178
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    :goto_0
    return v0
.end method

.method getKeyEquivalence()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method getTicker()Lcom/google/common/base/Ticker;
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->ticker:Lcom/google/common/base/Ticker;

    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Ticker;

    return-object v0
.end method

.method getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic initialCapacity(I)Lcom/google/common/collect/GenericMapMaker;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->initialCapacity(I)Lcom/google/common/collect/MapMaker;

    move-result-object p1

    return-object p1
.end method

.method public initialCapacity(I)Lcom/google/common/collect/MapMaker;
    .locals 6

    .line 170
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "initial capacity was already set to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    .line 172
    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 173
    iput p1, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    return-object p0
.end method

.method bridge synthetic keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/GenericMapMaker;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    move-result-object p1

    return-object p1
.end method

.method keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/MapMaker;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Equivalence;

    iput-object p1, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 150
    iput-boolean v2, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    return-object p0
.end method

.method makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    :goto_0
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method makeCustomMap()Lcom/google/common/collect/MapMakerInternalMap;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MapMakerInternalMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 521
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    return-object v0
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 506
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    :goto_0
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method bridge synthetic maximumSize(I)Lcom/google/common/collect/GenericMapMaker;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->maximumSize(I)Lcom/google/common/collect/MapMaker;

    move-result-object p1

    return-object p1
.end method

.method maximumSize(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "maximum size was already set to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "maximum size must not be negative"

    .line 209
    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 210
    iput p1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 211
    iput-boolean v2, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 212
    iget p1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-nez p1, :cond_2

    .line 214
    sget-object p1, Lcom/google/common/collect/MapMaker$RemovalCause;->SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object p1, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    :cond_2
    return-object p0
.end method

.method removalListener(Lcom/google/common/collect/MapMaker$RemovalListener;)Lcom/google/common/collect/GenericMapMaker;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMaker$RemovalListener<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/GenericMapMaker<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 487
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/MapMaker$RemovalListener;

    iput-object p1, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    .line 488
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    return-object p0
.end method

.method setKeyStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .line 269
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 271
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v3, Lcom/google/common/collect/MapMakerInternalMap$Strength;->SOFT:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "Soft keys are not supported"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 272
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_2

    .line 274
    iput-boolean v2, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    :cond_2
    return-object p0
.end method

.method setValueStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .line 339
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 340
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 341
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1

    .line 343
    iput-boolean v2, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    :cond_1
    return-object p0
.end method

.method public bridge synthetic softValues()Lcom/google/common/collect/GenericMapMaker;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->softValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public softValues()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->SOFT:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setValueStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 596
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 597
    iget v1, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "initialCapacity"

    .line 598
    iget v3, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    invoke-virtual {v0, v1, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 600
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v2, :cond_1

    const-string v1, "concurrencyLevel"

    .line 601
    iget v3, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-virtual {v0, v1, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 603
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-eq v1, v2, :cond_2

    const-string v1, "maximumSize"

    .line 604
    iget v2, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 606
    :cond_2
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/16 v2, 0x16

    if-eqz v1, :cond_3

    const-string v1, "expireAfterWrite"

    .line 607
    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ns"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 609
    :cond_3
    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_4

    const-string v1, "expireAfterAccess"

    .line 610
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ns"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 612
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_5

    const-string v1, "keyStrength"

    .line 613
    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 615
    :cond_5
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_6

    const-string v1, "valueStrength"

    .line 616
    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 618
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_7

    const-string v1, "keyEquivalence"

    .line 619
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 621
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    if-eqz v1, :cond_8

    const-string v1, "removalListener"

    .line 622
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 624
    :cond_8
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic weakKeys()Lcom/google/common/collect/GenericMapMaker;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakKeys()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .line 265
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setKeyStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic weakValues()Lcom/google/common/collect/GenericMapMaker;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->weakValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .line 303
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setValueStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
