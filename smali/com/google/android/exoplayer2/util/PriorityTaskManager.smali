.class public final Lcom/google/android/exoplayer2/util/PriorityTaskManager;
.super Ljava/lang/Object;
.source "PriorityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;
    }
.end annotation


# instance fields
.field private highestPriority:I

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    const/high16 v0, -0x80000000

    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 62
    iget v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public proceed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    if-eq v1, p1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 77
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public proceedNonBlocking(I)Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public proceedOrThrow(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    if-ne v1, p1, :cond_0

    .line 103
    monitor-exit v0

    return-void

    .line 101
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    iget v2, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    invoke-direct {v1, p1, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;-><init>(II)V

    throw v1

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    .line 115
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
