.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;
.super Ljava/lang/Object;
.source "CacheDataSinkFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSink$Factory;


# instance fields
.field private final bufferSize:I

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final fragmentSize:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .locals 1

    const/16 v0, 0x5000

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 37
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->fragmentSize:J

    .line 38
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->bufferSize:I

    return-void
.end method


# virtual methods
.method public createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;
    .locals 5

    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->fragmentSize:J

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;->bufferSize:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V

    return-object v0
.end method
