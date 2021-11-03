.class public abstract Lorg/java_websocket/client/WebSocketClient;
.super Lorg/java_websocket/AbstractWebSocket;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/java_websocket/WebSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;
    }
.end annotation


# instance fields
.field private closeLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectTimeout:I

.field private draft:Lorg/java_websocket/drafts/Draft;

.field private engine:Lorg/java_websocket/WebSocketImpl;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ostream:Ljava/io/OutputStream;

.field private proxy:Ljava/net/Proxy;

.field private socket:Ljava/net/Socket;

.field protected uri:Ljava/net/URI;

.field private writeThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 128
    new-instance v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 151
    new-instance v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 73
    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    .line 78
    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 88
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    .line 108
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 113
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectTimeout:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 182
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 183
    iput-object p2, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    .line 184
    iput-object p3, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 185
    iput p4, p0, Lorg/java_websocket/client/WebSocketClient;->connectTimeout:I

    .line 186
    invoke-virtual {p0, v0}, Lorg/java_websocket/client/WebSocketClient;->setTcpNoDelay(Z)V

    .line 187
    invoke-virtual {p0, v0}, Lorg/java_websocket/client/WebSocketClient;->setReuseAddr(Z)V

    .line 188
    new-instance p1, Lorg/java_websocket/WebSocketImpl;

    invoke-direct {p1, p0, p2}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-void

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$100(Lorg/java_websocket/client/WebSocketClient;)Lorg/java_websocket/WebSocketImpl;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-object p0
.end method

.method static synthetic access$200(Lorg/java_websocket/client/WebSocketClient;)Ljava/io/OutputStream;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/java_websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic access$300(Lorg/java_websocket/client/WebSocketClient;Ljava/io/IOException;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/java_websocket/client/WebSocketClient;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$400(Lorg/java_websocket/client/WebSocketClient;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->closeSocket()V

    return-void
.end method

.method static synthetic access$502(Lorg/java_websocket/client/WebSocketClient;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private closeSocket()V
    .locals 1

    .line 653
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 657
    invoke-virtual {p0, p0, v0}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getPort()I
    .locals 4

    .line 408
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 410
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wss"

    .line 411
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    :cond_0
    const-string v1, "ws"

    .line 413
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    return v0

    .line 416
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v0
.end method

.method private handleIOException(Ljava/io/IOException;)V
    .locals 1

    .line 769
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p0, p1}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 772
    :cond_0
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    return-void
.end method

.method private reset()V
    .locals 3

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->closeBlocking()V

    .line 243
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 245
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft;->reset()V

    .line 248
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 250
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 258
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 259
    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-direct {v0, p0, v1}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-void

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {p0, v0}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 254
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method private sendHandshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "/"

    :cond_1
    if-eqz v1, :cond_2

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_2
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v1

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    if-eq v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    new-instance v2, Lorg/java_websocket/handshake/HandshakeImpl1Client;

    invoke-direct {v2}, Lorg/java_websocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 440
    invoke-virtual {v2, v0}, Lorg/java_websocket/handshake/HandshakeImpl1Client;->setResourceDescriptor(Ljava/lang/String;)V

    const-string v0, "Host"

    .line 441
    invoke-virtual {v2, v0, v1}, Lorg/java_websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 443
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 444
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/java_websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 447
    :cond_4
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, v2}, Lorg/java_websocket/WebSocketImpl;->startHandshake(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 289
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/java_websocket/WebSocketImpl;->close(I)V

    :cond_0
    return-void
.end method

.method public close(I)V
    .locals 0

    .line 721
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->close()V

    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V

    return-void
.end method

.method public closeBlocking()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->close()V

    .line 299
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1

    .line 731
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 4

    .line 266
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 269
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocketConnectReadThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    .line 280
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 281
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConnection()Lorg/java_websocket/WebSocket;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-object v0
.end method

.method protected getConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDraft()Lorg/java_websocket/drafts/Draft;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 751
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 551
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 552
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReadyState()Lorg/java_websocket/WebSocket$READYSTATE;
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getReadyState()Lorg/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 755
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 558
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 559
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .line 716
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 706
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .line 711
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .line 696
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isFlushAndClose()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 691
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public onFragment(Lorg/java_websocket/framing/Framedata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public abstract onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
.end method

.method public final onWebsocketClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 490
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->stopConnectionLostTimer()V

    .line 491
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 492
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 493
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/java_websocket/client/WebSocketClient;->onClose(ILjava/lang/String;Z)V

    .line 494
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 495
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onWebsocketCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 513
    invoke-virtual {p0, p2, p3}, Lorg/java_websocket/client/WebSocketClient;->onCloseInitiated(ILjava/lang/String;)V

    return-void
.end method

.method public onWebsocketClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 518
    invoke-virtual {p0, p2, p3, p4}, Lorg/java_websocket/client/WebSocketClient;->onClosing(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 503
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 462
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 467
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onMessage(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onWebsocketMessageFragment(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    .locals 0

    .line 472
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onFragment(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public final onWebsocketOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/Handshakedata;)V
    .locals 0

    .line 480
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->startConnectionLostTimer()V

    .line 481
    check-cast p2, Lorg/java_websocket/handshake/ServerHandshake;

    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V

    .line 482
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onWriteDemand(Lorg/java_websocket/WebSocket;)V
    .locals 0

    return-void
.end method

.method public reconnect()V
    .locals 0

    .line 221
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->reset()V

    .line 222
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    return-void
.end method

.method public reconnectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->reset()V

    .line 233
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connectBlocking()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 8

    const/4 v0, -0x1

    .line 347
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 348
    new-instance v1, Ljava/net/Socket;

    iget-object v4, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    invoke-direct {v1, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    const/4 v1, 0x1

    goto :goto_0

    .line 351
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 355
    :goto_0
    iget-object v4, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isTcpNoDelay()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 356
    iget-object v4, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isReuseAddr()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 358
    iget-object v4, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-nez v4, :cond_1

    .line 359
    iget-object v4, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v6, p0, Lorg/java_websocket/client/WebSocketClient;->connectTimeout:I

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :cond_1
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const-string v1, "wss"

    .line 363
    iget-object v5, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TLS"

    .line 365
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 366
    invoke-virtual {v1, v4, v4, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 367
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 368
    iget-object v5, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    iget-object v6, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 371
    :cond_2
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 372
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    .line 374
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->sendHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 381
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;

    invoke-direct {v5, p0, v4}, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;-><init>(Lorg/java_websocket/client/WebSocketClient;Lorg/java_websocket/client/WebSocketClient$1;)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 382
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 384
    sget v2, Lorg/java_websocket/WebSocketImpl;->RCVBUF:I

    new-array v2, v2, [B

    .line 388
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isClosing()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v0, :cond_3

    .line 389
    iget-object v5, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/java_websocket/WebSocketImpl;->decode(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 391
    :cond_3
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->eot()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 396
    invoke-virtual {p0, v0}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 397
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 393
    invoke-direct {p0, v0}, Lorg/java_websocket/client/WebSocketClient;->handleIOException(Ljava/io/IOException;)V

    :goto_2
    return-void

    .line 352
    :cond_4
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v1

    .line 376
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {p0, v2, v1}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 377
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->send([B)V

    return-void
.end method

.method public sendFragmentedFrame(Lorg/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;->sendFragmentedFrame(Lorg/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public sendFrame(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Ljava/util/Collection;)V

    return-void
.end method

.method public sendFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 1

    .line 741
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public sendPing()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->sendPing()V

    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->setAttachment(Ljava/lang/Object;)V

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 668
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    return-void

    .line 667
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 681
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-void

    .line 679
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "socket has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
