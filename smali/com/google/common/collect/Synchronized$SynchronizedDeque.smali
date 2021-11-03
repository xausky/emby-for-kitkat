.class final Lcom/google/common/collect/Synchronized$SynchronizedDeque;
.super Lcom/google/common/collect/Synchronized$SynchronizedQueue;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Deque;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "Deque"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedQueue<",
        "TE;>;",
        "Ljava/util/Deque<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Deque;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1633
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;-><init>(Ljava/util/Queue;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1642
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1643
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1644
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1649
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1650
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 1651
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1628
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 1628
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation

    .line 1637
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Queue;
    .locals 1

    .line 1628
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1754
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1755
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1756
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1698
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1699
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1700
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1705
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1706
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1707
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1656
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1657
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1663
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1664
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1665
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1712
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1713
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1714
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1719
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1720
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1721
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1684
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1685
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1686
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1691
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1692
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1693
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1747
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1748
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1749
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public push(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1741
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1742
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1670
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1671
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1672
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 2

    .line 1726
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1727
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1728
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1677
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1678
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1679
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 2

    .line 1733
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1734
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1735
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
