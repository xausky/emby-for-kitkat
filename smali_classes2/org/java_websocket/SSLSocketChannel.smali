.class public Lorg/java_websocket/SSLSocketChannel;
.super Ljava/lang/Object;
.source "SSLSocketChannel.java"

# interfaces
.implements Lorg/java_websocket/WrappedByteChannel;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private myAppData:Ljava/nio/ByteBuffer;

.field private myNetData:Ljava/nio/ByteBuffer;

.field private peerAppData:Ljava/nio/ByteBuffer;

.field private peerNetData:Ljava/nio/ByteBuffer;

.field private final socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 115
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    if-eq v0, p3, :cond_2

    .line 118
    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 119
    iput-object p2, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    .line 120
    iput-object p3, p0, Lorg/java_websocket/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    .line 121
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    .line 122
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    .line 123
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 124
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->doHandshake()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_1

    .line 126
    invoke-virtual {p4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p4, p1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 130
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private closeConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 441
    :try_start_0
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->doHandshake()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :catch_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    return-void
.end method

.method private doHandshake()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 253
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->myAppData:Ljava/nio/ByteBuffer;

    .line 254
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    .line 255
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 256
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 258
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 259
    :goto_0
    :pswitch_0
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_6

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_6

    .line 260
    sget-object v1, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 362
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SSL status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 312
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->myAppData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    sget-object v2, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 347
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SSL status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :pswitch_3
    :try_start_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 337
    :goto_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 341
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 343
    :catch_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    .line 330
    :pswitch_4
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 333
    :pswitch_5
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Buffer underflow occured after a wrap. I don\'t think we should ever get here."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :pswitch_6
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 322
    :goto_3
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_3

    :cond_2
    :goto_4
    move-object v0, v1

    goto/16 :goto_0

    .line 315
    :catch_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 316
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    .line 262
    :pswitch_7
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 263
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 267
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 271
    :catch_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 273
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :cond_4
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 278
    :try_start_3
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 279
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 280
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 286
    sget-object v3, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 306
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SSL status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :pswitch_8
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 301
    :cond_5
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 302
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    .line 291
    :pswitch_9
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 295
    :pswitch_a
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/SSLSocketChannel;->handleBufferUnderflow(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    :goto_5
    :pswitch_b
    move-object v0, v2

    goto/16 :goto_0

    .line 282
    :catch_3
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 283
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 400
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 401
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private handleBufferUnderflow(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 418
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-object p1

    .line 421
    :cond_0
    invoke-direct {p0, p1}, Lorg/java_websocket/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 423
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private handleEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "This engine was forced to close inbound, without having received the proper SSL/TLS close notification message from the peer, due to end of stream."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    :goto_0
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V

    return-void
.end method

.method public isBlocking()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isNeedRead()Z
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

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

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 140
    monitor-exit p0

    return p1

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 144
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 146
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 148
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 152
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-gez v0, :cond_4

    .line 182
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->handleEndOfStream()V

    goto/16 :goto_3

    .line 153
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 154
    :goto_1
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :try_start_3
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :try_start_4
    sget-object v2, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 178
    new-instance p1, Ljava/lang/IllegalStateException;

    goto :goto_2

    .line 174
    :pswitch_0
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V

    .line 175
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p1, -0x1

    .line 176
    monitor-exit p0

    return p1

    .line 171
    :pswitch_1
    :try_start_5
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lorg/java_websocket/SSLSocketChannel;->enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 168
    :pswitch_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 169
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return p1

    .line 165
    :pswitch_3
    :try_start_6
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 166
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return p1

    .line 178
    :goto_2
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SSL status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 161
    throw p1

    .line 184
    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 185
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 138
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readMore(Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0, p1}, Lorg/java_websocket/SSLSocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 195
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 196
    sget-object v3, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 212
    new-instance p1, Ljava/lang/IllegalStateException;

    goto :goto_2

    .line 209
    :pswitch_0
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return v0

    .line 204
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lorg/java_websocket/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 207
    :pswitch_2
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string v0, "Buffer underflow occured after a wrap. I don\'t think we should ever get here."

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :pswitch_3
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 199
    :goto_1
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 212
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid SSL status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeMore()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
