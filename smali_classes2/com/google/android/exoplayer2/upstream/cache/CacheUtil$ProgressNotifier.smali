.class final Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressNotifier"
.end annotation


# instance fields
.field private bytesCached:J

.field private final listener:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;

.field private requestLength:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->listener:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;

    return-void
.end method


# virtual methods
.method public init(JJ)V
    .locals 7

    .line 417
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->requestLength:J

    .line 418
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->bytesCached:J

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->listener:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;

    const-wide/16 v5, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;->onProgress(JJJ)V

    return-void
.end method

.method public onBytesCached(J)V
    .locals 9

    .line 430
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->bytesCached:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->bytesCached:J

    .line 431
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->listener:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->requestLength:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->bytesCached:J

    move-wide v7, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;->onProgress(JJJ)V

    return-void
.end method

.method public onRequestLengthResolved(J)V
    .locals 8

    .line 423
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->requestLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 424
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->requestLength:J

    .line 425
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->listener:Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressNotifier;->bytesCached:J

    const-wide/16 v6, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;->onProgress(JJJ)V

    :cond_0
    return-void
.end method
