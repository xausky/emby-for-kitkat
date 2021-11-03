.class public abstract Lorg/java_websocket/AbstractWebSocket;
.super Lorg/java_websocket/WebSocketAdapter;
.source "AbstractWebSocket.java"


# instance fields
.field private connectionLostTimeout:I

.field private connectionLostTimer:Ljava/util/Timer;

.field private connectionLostTimerTask:Ljava/util/TimerTask;

.field private reuseAddr:Z

.field private tcpNoDelay:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/java_websocket/WebSocketAdapter;-><init>()V

    const/16 v0, 0x3c

    .line 68
    iput v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:I

    return-void
.end method

.method static synthetic access$000(Lorg/java_websocket/AbstractWebSocket;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:I

    return p0
.end method

.method private cancelConnectionLostTimer()V
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 181
    iput-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimer:Ljava/util/Timer;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 185
    iput-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimerTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method private restartConnectionLostTimer()V
    .locals 7

    .line 130
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 131
    new-instance v0, Ljava/util/Timer;

    const-string v1, "WebSocketTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimer:Ljava/util/Timer;

    .line 132
    new-instance v0, Lorg/java_websocket/AbstractWebSocket$1;

    invoke-direct {v0, p0}, Lorg/java_websocket/AbstractWebSocket$1;-><init>(Lorg/java_websocket/AbstractWebSocket;)V

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimerTask:Ljava/util/TimerTask;

    .line 164
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimer:Ljava/util/Timer;

    iget-object v2, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimerTask:Ljava/util/TimerTask;

    iget v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    iget v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public getConnectionLostTimeout()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:I

    return v0
.end method

.method protected abstract getConnections()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end method

.method public isReuseAddr()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->reuseAddr:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->tcpNoDelay:Z

    return v0
.end method

.method public setConnectionLostTimeout(I)V
    .locals 1

    .line 88
    iput p1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:I

    .line 89
    iget p1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:I

    if-gtz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/java_websocket/AbstractWebSocket;->stopConnectionLostTimer()V

    .line 92
    :cond_0
    iget-object p1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimer:Ljava/util/Timer;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimerTask:Ljava/util/TimerTask;

    if-eqz p1, :cond_3

    .line 93
    :cond_1
    sget-boolean p1, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 94
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Connection lost timer restarted"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :cond_2
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V

    :cond_3
    return-void
.end method

.method public setReuseAddr(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->reuseAddr:Z

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->tcpNoDelay:Z

    return-void
.end method

.method protected startConnectionLostTimer()V
    .locals 2

    .line 115
    iget v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:I

    if-gtz v0, :cond_1

    .line 116
    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Connection lost timer deactivated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 120
    :cond_1
    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Connection lost timer started"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    :cond_2
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V

    return-void
.end method

.method protected stopConnectionLostTimer()V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 105
    :cond_0
    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Connection lost timer stopped"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    :cond_2
    return-void
.end method
