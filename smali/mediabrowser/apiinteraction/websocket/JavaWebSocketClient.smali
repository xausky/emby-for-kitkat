.class public Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "JavaWebSocketClient.java"


# instance fields
.field private _logger:Lmediabrowser/model/logging/ILogger;

.field private listener:Lmediabrowser/apiinteraction/websocket/ISocketListener;


# direct methods
.method public constructor <init>(Lmediabrowser/model/logging/ILogger;Ljava/net/URI;Lmediabrowser/apiinteraction/websocket/ISocketListener;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 19
    iput-object p1, p0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->_logger:Lmediabrowser/model/logging/ILogger;

    .line 20
    iput-object p3, p0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->listener:Lmediabrowser/apiinteraction/websocket/ISocketListener;

    return-void
.end method


# virtual methods
.method public IsWebSocketOpen()Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->getReadyState()Lorg/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    .line 54
    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->OPEN:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsWebSocketOpenOrConnecting()Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->getReadyState()Lorg/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    .line 61
    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->OPEN:Lorg/java_websocket/WebSocket$READYSTATE;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lorg/java_websocket/WebSocket$READYSTATE;

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

.method public onClose(ILjava/lang/String;Z)V
    .locals 0

    .line 40
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->_logger:Lmediabrowser/model/logging/ILogger;

    const-string p2, "Web socket connection closed."

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->listener:Lmediabrowser/apiinteraction/websocket/ISocketListener;

    invoke-interface {p1}, Lmediabrowser/apiinteraction/websocket/ISocketListener;->onClose()V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->_logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Web socket error."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->_logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Web socket message received."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->listener:Lmediabrowser/apiinteraction/websocket/ISocketListener;

    invoke-interface {v0, p1}, Lmediabrowser/apiinteraction/websocket/ISocketListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 2

    .line 26
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->_logger:Lmediabrowser/model/logging/ILogger;

    const-string v0, "Web socket connection opened."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->listener:Lmediabrowser/apiinteraction/websocket/ISocketListener;

    invoke-interface {p1}, Lmediabrowser/apiinteraction/websocket/ISocketListener;->onOpen()V

    return-void
.end method
