.class public Lorg/java_websocket/SocketChannelIOHelper;
.super Ljava/lang/Object;
.source "SocketChannelIOHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static batch(Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    instance-of v0, p1, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v0, :cond_2

    .line 80
    move-object v0, p1

    check-cast v0, Lorg/java_websocket/WrappedByteChannel;

    .line 81
    invoke-interface {v0}, Lorg/java_websocket/WrappedByteChannel;->isNeedWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    invoke-interface {v0}, Lorg/java_websocket/WrappedByteChannel;->writeMore()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {p1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 97
    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isFlushAndClose()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v2

    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft;->getRole()Lorg/java_websocket/WebSocket$Role;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v2

    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft;->getRole()Lorg/java_websocket/WebSocket$Role;

    move-result-object v2

    sget-object v3, Lorg/java_websocket/WebSocket$Role;->SERVER:Lorg/java_websocket/WebSocket$Role;

    if-ne v2, v3, :cond_4

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->closeConnection()V

    .line 100
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 102
    check-cast p1, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {p1}, Lorg/java_websocket/WrappedByteChannel;->isNeedWrite()Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public static read(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38
    invoke-interface {p2, p0}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public static readMore(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/WrappedByteChannel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 58
    invoke-interface {p2, p0}, Lorg/java_websocket/WrappedByteChannel;->readMore(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p0, -0x1

    if-ne v0, p0, :cond_0

    .line 62
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_0
    invoke-interface {p2}, Lorg/java_websocket/WrappedByteChannel;->isNeedRead()Z

    move-result p0

    return p0
.end method
