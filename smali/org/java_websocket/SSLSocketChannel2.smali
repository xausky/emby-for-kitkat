.class public Lorg/java_websocket/SSLSocketChannel2;
.super Ljava/lang/Object;
.source "SSLSocketChannel2.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;
.implements Lorg/java_websocket/WrappedByteChannel;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static emptybuffer:Ljava/nio/ByteBuffer;


# instance fields
.field protected bufferallocations:I

.field protected exec:Ljava/util/concurrent/ExecutorService;

.field protected inCrypt:Ljava/nio/ByteBuffer;

.field protected inData:Ljava/nio/ByteBuffer;

.field protected outCrypt:Ljava/nio/ByteBuffer;

.field protected readEngineResult:Ljavax/net/ssl/SSLEngineResult;

.field protected selectionKey:Ljava/nio/channels/SelectionKey;

.field protected socketChannel:Ljava/nio/channels/SocketChannel;

.field protected sslEngine:Ljavax/net/ssl/SSLEngine;

.field protected tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected writeEngineResult:Ljavax/net/ssl/SSLEngineResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/java_websocket/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lorg/java_websocket/SSLSocketChannel2;->bufferallocations:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 89
    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 90
    iput-object p2, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 91
    iput-object p3, p0, Lorg/java_websocket/SSLSocketChannel2;->exec:Ljava/util/concurrent/ExecutorService;

    .line 93
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    invoke-direct {p1, p3, v1, v0, v0}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->writeEngineResult:Ljavax/net/ssl/SSLEngineResult;

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->tasks:Ljava/util/List;

    if-eqz p4, :cond_0

    .line 97
    invoke-virtual {p4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p4, p1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 98
    iput-object p4, p0, Lorg/java_websocket/SSLSocketChannel2;->selectionKey:Ljava/nio/channels/SelectionKey;

    .line 100
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/java_websocket/SSLSocketChannel2;->createBuffers(Ljavax/net/ssl/SSLSession;)V

    .line 102
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    sget-object p2, Lorg/java_websocket/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p2}, Lorg/java_websocket/SSLSocketChannel2;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 103
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->processHandshake()V

    return-void

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private consumeFutureUninterruptible(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 118
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHandShakeComplete()Z
    .locals 2

    .line 344
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 345
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private declared-synchronized processHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 130
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 135
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lorg/java_websocket/SSLSocketChannel2;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-direct {p0, v1}, Lorg/java_websocket/SSLSocketChannel2;->consumeFutureUninterruptible(Ljava/util/concurrent/Future;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :cond_2
    monitor-exit p0

    return-void

    .line 145
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_7

    .line 146
    invoke-virtual {p0}, Lorg/java_websocket/SSLSocketChannel2;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_5

    .line 147
    :cond_4
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 148
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 152
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 154
    :cond_5
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 155
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->unwrap()Ljava/nio/ByteBuffer;

    .line 156
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_7

    .line 157
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/java_websocket/SSLSocketChannel2;->createBuffers(Ljavax/net/ssl/SSLSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 150
    :cond_6
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "connection closed unexpectedly by peer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_7
    invoke-virtual {p0}, Lorg/java_websocket/SSLSocketChannel2;->consumeDelegatedTasks()V

    .line 162
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_9

    .line 163
    :cond_8
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    sget-object v1, Lorg/java_websocket/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lorg/java_websocket/SSLSocketChannel2;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 164
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->writeEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_9

    .line 165
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/java_websocket/SSLSocketChannel2;->createBuffers(Ljavax/net/ssl/SSLSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 171
    :try_start_4
    iput v0, p0, Lorg/java_websocket/SSLSocketChannel2;->bufferallocations:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 128
    monitor-exit p0

    throw v0
.end method

.method private readRemaining(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lorg/java_websocket/SSLSocketChannel2;->transfereTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 319
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->unwrap()Ljava/nio/ByteBuffer;

    .line 321
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lorg/java_websocket/SSLSocketChannel2;->transfereTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 322
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-lez p1, :cond_3

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private transfereTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 394
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 395
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 398
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 400
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 404
    :cond_1
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return v0
.end method

.method private declared-synchronized unwrap()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 188
    :try_start_1
    invoke-virtual {p0}, Lorg/java_websocket/SSLSocketChannel2;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 195
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 196
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    .line 197
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 198
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 185
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 175
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->writeEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 176
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 177
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 173
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 337
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 338
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    sget-object v1, Lorg/java_websocket/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lorg/java_websocket/SSLSocketChannel2;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    return-void
.end method

.method public configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result p1

    return p1
.end method

.method protected consumeDelegatedTasks()V
    .locals 3

    .line 203
    :goto_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->tasks:Ljava/util/List;

    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel2;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected createBuffers(Ljavax/net/ssl/SSLSession;)V
    .locals 2

    .line 210
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    .line 211
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 213
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 214
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    .line 215
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    .line 216
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 219
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    .line 220
    :cond_1
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 221
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    .line 222
    :cond_2
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 223
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    .line 225
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 226
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 227
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 228
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 229
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 230
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 231
    iget p1, p0, Lorg/java_websocket/SSLSocketChannel2;->bufferallocations:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/java_websocket/SSLSocketChannel2;->bufferallocations:I

    return-void
.end method

.method public finishConnect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    return v0
.end method

.method public isNeedRead()Z
    .locals 2

    .line 385
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNeedWrite()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 261
    :cond_0
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    invoke-virtual {p0}, Lorg/java_websocket/SSLSocketChannel2;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :goto_1
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->processHandshake()V

    goto :goto_1

    .line 267
    :cond_1
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->processHandshake()V

    .line 268
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 280
    :cond_2
    invoke-direct {p0, p1}, Lorg/java_websocket/SSLSocketChannel2;->readRemaining(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 288
    :cond_3
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 290
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    .line 291
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2

    .line 293
    :cond_4
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 295
    :goto_2
    invoke-virtual {p0}, Lorg/java_websocket/SSLSocketChannel2;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_6

    .line 296
    :cond_5
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 299
    :cond_6
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 300
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->unwrap()Ljava/nio/ByteBuffer;

    .line 302
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lorg/java_websocket/SSLSocketChannel2;->transfereTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    if-nez v0, :cond_7

    .line 303
    invoke-virtual {p0}, Lorg/java_websocket/SSLSocketChannel2;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    return v0
.end method

.method public readMore(Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1}, Lorg/java_websocket/SSLSocketChannel2;->readRemaining(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel2;->processHandshake()V

    const/4 p1, 0x0

    return p1

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, p1}, Lorg/java_websocket/SSLSocketChannel2;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 244
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->writeEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_1

    return p1

    .line 245
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "Connection is closed"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeMore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/java_websocket/SSLSocketChannel2;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
