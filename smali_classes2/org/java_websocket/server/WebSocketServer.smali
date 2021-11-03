.class public abstract Lorg/java_websocket/server/WebSocketServer;
.super Lorg/java_websocket/AbstractWebSocket;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DECODERS:I


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private buffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field protected decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;",
            ">;"
        }
    .end annotation
.end field

.field private drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private iqueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/java_websocket/WebSocketImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private queueinvokes:I

.field private final queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private selector:Ljava/nio/channels/Selector;

.field private selectorthread:Ljava/lang/Thread;

.field private server:Ljava/nio/channels/ServerSocketChannel;

.field private wsf:Lorg/java_websocket/WebSocketServerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lorg/java_websocket/server/WebSocketServer;->DECODERS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 110
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    sget v1, Lorg/java_websocket/server/WebSocketServer;->DECODERS:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2

    .line 120
    sget v0, Lorg/java_websocket/server/WebSocketServer;->DECODERS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;I)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    iput v1, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    new-instance v0, Lorg/java_websocket/server/DefaultWebSocketServerFactory;

    invoke-direct {v0}, Lorg/java_websocket/server/DefaultWebSocketServerFactory;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    if-eqz p4, :cond_2

    if-nez p3, :cond_0

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    goto :goto_0

    .line 192
    :cond_0
    iput-object p3, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    .line 194
    :goto_0
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    .line 195
    iput-object p4, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    .line 196
    invoke-virtual {p0, v1}, Lorg/java_websocket/server/WebSocketServer;->setTcpNoDelay(Z)V

    .line 197
    invoke-virtual {p0, v1}, Lorg/java_websocket/server/WebSocketServer;->setReuseAddr(Z)V

    .line 198
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    .line 200
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    .line 201
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    :goto_1
    if-ge v1, p2, :cond_1

    .line 203
    new-instance p1, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-direct {p1, p0}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;-><init>(Lorg/java_websocket/server/WebSocketServer;)V

    .line 204
    iget-object p3, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p1}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 186
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address and connectionscontainer must not be null and you need at least 1 decoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/List<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .line 145
    sget v0, Lorg/java_websocket/server/WebSocketServer;->DECODERS:I

    invoke-direct {p0, p1, v0, p2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lorg/java_websocket/server/WebSocketServer;Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method private getSocket(Lorg/java_websocket/WebSocket;)Ljava/net/Socket;
    .locals 0

    .line 719
    check-cast p1, Lorg/java_websocket/WebSocketImpl;

    .line 720
    iget-object p1, p1, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method private handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 1

    .line 546
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 548
    iget-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 549
    iget-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 550
    invoke-virtual {p2}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    .line 554
    iget-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const/4 p1, 0x0

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 561
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 562
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception p2

    .line 559
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 p1, 0x3ee

    .line 530
    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/java_websocket/WebSocket;->closeConnection(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 532
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 533
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 535
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :catch_0
    sget-boolean p1, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 540
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connection closed because of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private pushBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method private takeBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method protected addConnection(Lorg/java_websocket/WebSocket;)Z
    .locals 2

    .line 643
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v0

    .line 645
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 647
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x3e9

    .line 651
    invoke-interface {p1, v0}, Lorg/java_websocket/WebSocket;->close(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected allocateBuffers(Lorg/java_websocket/WebSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 493
    iget-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-lt p1, v0, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 497
    iget-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public broadcast(Ljava/lang/String;)V
    .locals 1

    .line 804
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lorg/java_websocket/server/WebSocketServer;->broadcast(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public broadcast(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 854
    monitor-enter p2

    .line 855
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/WebSocket;

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v2}, Lorg/java_websocket/WebSocket;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v3

    .line 858
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 859
    invoke-virtual {v3, p1, v4}, Lorg/java_websocket/drafts/Draft;->createFrames(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 860
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    :cond_1
    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Lorg/java_websocket/WebSocket;->sendFrame(Ljava/util/Collection;)V
    :try_end_1
    .catch Lorg/java_websocket/exceptions/WebsocketNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 869
    :cond_2
    :try_start_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 851
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public broadcast([B)V
    .locals 1

    .line 812
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lorg/java_websocket/server/WebSocketServer;->broadcast([BLjava/util/Collection;)V

    return-void
.end method

.method public broadcast([BLjava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 824
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 825
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 826
    monitor-enter p2

    .line 827
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/WebSocket;

    if-eqz v2, :cond_0

    .line 829
    invoke-interface {v2}, Lorg/java_websocket/WebSocket;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v3

    .line 830
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 831
    invoke-virtual {v3, p1, v4}, Lorg/java_websocket/drafts/Draft;->createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v4

    .line 832
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    :cond_1
    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Lorg/java_websocket/WebSocket;->sendFrame(Ljava/util/Collection;)V
    :try_end_1
    .catch Lorg/java_websocket/exceptions/WebsocketNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 841
    :cond_2
    :try_start_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 822
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public connections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->getConnections()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 506
    sget v0, Lorg/java_websocket/WebSocketImpl;->RCVBUF:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getConnections()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDraft()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 725
    invoke-direct {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->getSocket(Lorg/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method public getPort()I
    .locals 2

    .line 302
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_0

    .line 304
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getRemoteSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 730
    invoke-direct {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->getSocket(Lorg/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method public final getWebSocketFactory()Lorg/java_websocket/WebSocketFactory;
    .locals 1

    .line 696
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    return-object v0
.end method

.method public abstract onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected onConnect(Ljava/nio/channels/SelectionKey;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
.end method

.method public onFragment(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public abstract onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
.end method

.method public abstract onStart()V
.end method

.method public final onWebsocketClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 594
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->removeConnection(Lorg/java_websocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/java_websocket/server/WebSocketServer;->onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->releaseBuffers(Lorg/java_websocket/WebSocket;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 599
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->releaseBuffers(Lorg/java_websocket/WebSocket;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 601
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 602
    :goto_1
    throw p2
.end method

.method public onWebsocketCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 675
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/server/WebSocketServer;->onCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V

    return-void
.end method

.method public onWebsocketClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 680
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/java_websocket/server/WebSocketServer;->onClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V

    return-void
.end method

.method public final onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 658
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lorg/java_websocket/WebSocket;Lorg/java_websocket/drafts/Draft;Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 634
    invoke-super {p0, p1, p2, p3}, Lorg/java_websocket/AbstractWebSocket;->onWebsocketHandshakeReceivedAsServer(Lorg/java_websocket/WebSocket;Lorg/java_websocket/drafts/Draft;Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/handshake/ServerHandshakeBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 569
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 580
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onWebsocketMessageFragment(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onFragment(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public final onWebsocketOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/Handshakedata;)V
    .locals 1

    .line 585
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->addConnection(Lorg/java_websocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    check-cast p2, Lorg/java_websocket/handshake/ClientHandshake;

    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V

    :cond_0
    return-void
.end method

.method public final onWriteDemand(Lorg/java_websocket/WebSocket;)V
    .locals 2

    .line 663
    check-cast p1, Lorg/java_websocket/WebSocketImpl;

    .line 665
    :try_start_0
    iget-object v0, p1, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    iget-object p1, p1, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 670
    :goto_0
    iget-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method protected queue(Lorg/java_websocket/WebSocketImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 510
    iget-object v0, p1, Lorg/java_websocket/WebSocketImpl;->workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    iget v1, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    iput-object v0, p1, Lorg/java_websocket/WebSocketImpl;->workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 512
    iget v0, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    .line 514
    :cond_0
    iget-object v0, p1, Lorg/java_websocket/WebSocketImpl;->workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-virtual {v0, p1}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->put(Lorg/java_websocket/WebSocketImpl;)V

    return-void
.end method

.method protected releaseBuffers(Lorg/java_websocket/WebSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    return-void
.end method

.method protected removeConnection(Lorg/java_websocket/WebSocket;)Z
    .locals 4

    .line 617
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v0

    .line 618
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 622
    :cond_0
    sget-boolean v1, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 623
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing connection which is not in the connections collection! Possible no handshake recieved! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 626
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 628
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    .line 626
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 11

    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-nez v0, :cond_24

    .line 318
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    .line 319
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    monitor-exit p0

    return-void

    .line 322
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocketSelector-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 325
    :try_start_1
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    .line 326
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 327
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    .line 328
    sget v3, Lorg/java_websocket/WebSocketImpl;->RCVBUF:I

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 329
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->isReuseAddr()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 330
    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 331
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    .line 332
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->validOps()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 333
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->startConnectionLostTimer()V

    .line 334
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->onStart()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_16

    const/4 v1, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 342
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1b

    if-eqz v3, :cond_1b

    .line 346
    :try_start_3
    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x5

    .line 349
    :cond_2
    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v5

    if-nez v5, :cond_3

    .line 350
    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 353
    :cond_3
    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v5

    .line 354
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v0

    move-object v7, v6

    .line 356
    :goto_1
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 357
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/channels/SelectionKey;
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 360
    :try_start_5
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 365
    :cond_4
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_8

    .line 366
    invoke-virtual {p0, v8}, Lorg/java_websocket/server/WebSocketServer;->onConnect(Ljava/nio/channels/SelectionKey;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 367
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    .line 371
    :cond_5
    iget-object v6, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v6}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_2

    .line 375
    :cond_6
    invoke-virtual {v6, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 376
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v9

    .line 377
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->isTcpNoDelay()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 378
    invoke-virtual {v9, v7}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 379
    iget-object v9, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    iget-object v10, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-interface {v9, p0, v10}, Lorg/java_websocket/WebSocketServerFactory;->createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v9

    .line 380
    iget-object v10, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v6, v10, v7, v9}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v7

    iput-object v7, v9, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_11
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 382
    :try_start_6
    iget-object v7, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    iget-object v10, v9, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-interface {v7, v6, v10}, Lorg/java_websocket/WebSocketServerFactory;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;

    move-result-object v6

    iput-object v6, v9, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    .line 383
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 384
    invoke-virtual {p0, v9}, Lorg/java_websocket/server/WebSocketServer;->allocateBuffers(Lorg/java_websocket/WebSocket;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_11
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v6

    .line 387
    :try_start_7
    iget-object v7, v9, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    if-eqz v7, :cond_7

    .line 388
    iget-object v7, v9, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 390
    :cond_7
    iget-object v7, v9, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-direct {p0, v7, v0, v6}, Lorg/java_websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V

    :goto_2
    move-object v7, v0

    :goto_3
    move-object v6, v8

    goto :goto_1

    .line 395
    :cond_8
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 396
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/java_websocket/WebSocketImpl;
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 397
    :try_start_8
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 398
    iget-object v10, v6, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    if-nez v10, :cond_a

    if-eqz v8, :cond_9

    .line 400
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 402
    :cond_9
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    invoke-direct {p0, v8, v6, v7}, Lorg/java_websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 406
    :cond_a
    :try_start_9
    iget-object v10, v6, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v9, v6, v10}, Lorg/java_websocket/SocketChannelIOHelper;->read(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 407
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 408
    iget-object v10, v6, Lorg/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10, v9}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p0, v6}, Lorg/java_websocket/server/WebSocketServer;->queue(Lorg/java_websocket/WebSocketImpl;)V

    .line 410
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 411
    iget-object v10, v6, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v10, v10, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v10, :cond_e

    .line 412
    iget-object v10, v6, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v10, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {v10}, Lorg/java_websocket/WrappedByteChannel;->isNeedRead()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 413
    iget-object v10, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 417
    :cond_b
    invoke-direct {p0, v9}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    .line 419
    :cond_c
    invoke-direct {p0, v9}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v5

    .line 422
    :try_start_a
    invoke-direct {p0, v9}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 423
    throw v5

    :cond_d
    move-object v6, v0

    .line 426
    :cond_e
    :goto_4
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 427
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/java_websocket/WebSocketImpl;
    :try_end_a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 428
    :try_start_b
    iget-object v6, v9, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v9, v6}, Lorg/java_websocket/SocketChannelIOHelper;->batch(Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 429
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 430
    invoke-virtual {v8, v7}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_f
    move-object v6, v8

    move-object v7, v9

    goto/16 :goto_1

    :catch_3
    move-exception v5

    move-object v6, v9

    goto/16 :goto_b

    :cond_10
    :goto_5
    move-object v7, v6

    goto/16 :goto_3

    :catch_4
    move-exception v5

    goto/16 :goto_b

    :catch_5
    move-exception v5

    move-object v6, v0

    goto/16 :goto_b

    .line 434
    :cond_11
    :goto_6
    :try_start_c
    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 435
    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/java_websocket/WebSocketImpl;
    :try_end_c
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 436
    :try_start_d
    iget-object v7, v5, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v7, Lorg/java_websocket/WrappedByteChannel;

    .line 437
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8
    :try_end_d
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 439
    :try_start_e
    invoke-static {v8, v5, v7}, Lorg/java_websocket/SocketChannelIOHelper;->readMore(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/WrappedByteChannel;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 440
    iget-object v7, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_12
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 442
    iget-object v7, v5, Lorg/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7, v8}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 443
    invoke-virtual {p0, v5}, Lorg/java_websocket/server/WebSocketServer;->queue(Lorg/java_websocket/WebSocketImpl;)V

    goto :goto_7

    .line 445
    :cond_13
    invoke-direct {p0, v8}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_11
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_7
    move-object v7, v5

    goto :goto_6

    :catch_6
    move-exception v7

    .line 448
    :try_start_f
    invoke-direct {p0, v8}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 449
    throw v7
    :try_end_f
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catch_7
    move-exception v7

    move-object v8, v6

    move-object v6, v5

    move-object v5, v7

    goto :goto_b

    :catch_8
    move-exception v5

    move-object v8, v6

    move-object v6, v7

    goto :goto_b

    .line 470
    :catch_9
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->stopConnectionLostTimer()V

    .line 471
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 472
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 473
    invoke-virtual {v2}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_8

    .line 476
    :cond_14
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_15

    .line 478
    :try_start_10
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_9

    :catch_a
    move-exception v1

    .line 480
    invoke-virtual {p0, v0, v1}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 483
    :cond_15
    :goto_9
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_16

    .line 485
    :try_start_11
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_a

    :catch_b
    move-exception v1

    .line 487
    invoke-virtual {p0, v0, v1}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :cond_16
    :goto_a
    return-void

    :catch_c
    move-exception v5

    move-object v6, v0

    move-object v8, v6

    :goto_b
    if-eqz v8, :cond_17

    .line 459
    :try_start_12
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 460
    :cond_17
    invoke-direct {p0, v8, v6, v5}, Lorg/java_websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 470
    :catch_d
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->stopConnectionLostTimer()V

    .line 471
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v1, :cond_18

    .line 472
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 473
    invoke-virtual {v2}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_c

    .line 476
    :cond_18
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_19

    .line 478
    :try_start_13
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_d

    :catch_e
    move-exception v1

    .line 480
    invoke-virtual {p0, v0, v1}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 483
    :cond_19
    :goto_d
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_1a

    .line 485
    :try_start_14
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    goto :goto_e

    :catch_f
    move-exception v1

    .line 487
    invoke-virtual {p0, v0, v1}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :cond_1a
    :goto_e
    return-void

    .line 470
    :cond_1b
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->stopConnectionLostTimer()V

    .line 471
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v1, :cond_1c

    .line 472
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 473
    invoke-virtual {v2}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_f

    .line 476
    :cond_1c
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_1d

    .line 478
    :try_start_15
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    .line 480
    invoke-virtual {p0, v0, v1}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 483
    :cond_1d
    :goto_10
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_20

    .line 485
    :try_start_16
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_13

    goto :goto_13

    :catchall_0
    move-exception v1

    goto :goto_14

    :catch_11
    move-exception v1

    .line 468
    :try_start_17
    invoke-direct {p0, v0, v1}, Lorg/java_websocket/server/WebSocketServer;->handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 470
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->stopConnectionLostTimer()V

    .line 471
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v1, :cond_1e

    .line 472
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 473
    invoke-virtual {v2}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_11

    .line 476
    :cond_1e
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_1f

    .line 478
    :try_start_18
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12

    goto :goto_12

    :catch_12
    move-exception v1

    .line 480
    invoke-virtual {p0, v0, v1}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 483
    :cond_1f
    :goto_12
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_20

    .line 485
    :try_start_19
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13

    goto :goto_13

    :catch_13
    move-exception v1

    .line 487
    invoke-virtual {p0, v0, v1}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :cond_20
    :goto_13
    return-void

    .line 470
    :goto_14
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->stopConnectionLostTimer()V

    .line 471
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v2, :cond_21

    .line 472
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 473
    invoke-virtual {v3}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_15

    .line 476
    :cond_21
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_22

    .line 478
    :try_start_1a
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_14

    goto :goto_16

    :catch_14
    move-exception v2

    .line 480
    invoke-virtual {p0, v0, v2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 483
    :cond_22
    :goto_16
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_23

    .line 485
    :try_start_1b
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_15

    goto :goto_17

    :catch_15
    move-exception v2

    .line 487
    invoke-virtual {p0, v0, v2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 488
    :cond_23
    :goto_17
    throw v1

    :catch_16
    move-exception v1

    .line 336
    invoke-direct {p0, v0, v1}, Lorg/java_websocket/server/WebSocketServer;->handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void

    .line 317
    :cond_24
    :try_start_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 322
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    throw v0
.end method

.method public final setWebSocketFactory(Lorg/java_websocket/WebSocketServerFactory;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    return-void
.end method

.method public start()V
    .locals 3

    .line 220
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, v0}, Lorg/java_websocket/server/WebSocketServer;->stop(I)V

    return-void
.end method

.method public stop(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v0

    .line 246
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    const/16 v2, 0x3e9

    .line 250
    invoke-interface {v1, v2}, Lorg/java_websocket/WebSocket;->close(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    invoke-interface {v0}, Lorg/java_websocket/WebSocketServerFactory;->close()V

    .line 255
    monitor-enter p0

    .line 256
    :try_start_1
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 258
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 260
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 247
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
