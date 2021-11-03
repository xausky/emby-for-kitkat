.class Lorg/java_websocket/AbstractWebSocket$1;
.super Ljava/util/TimerTask;
.source "AbstractWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/java_websocket/AbstractWebSocket;


# direct methods
.method constructor <init>(Lorg/java_websocket/AbstractWebSocket;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/java_websocket/AbstractWebSocket$1;->this$0:Lorg/java_websocket/AbstractWebSocket;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 140
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket$1;->this$0:Lorg/java_websocket/AbstractWebSocket;

    invoke-virtual {v1}, Lorg/java_websocket/AbstractWebSocket;->getConnections()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/java_websocket/AbstractWebSocket$1;->this$0:Lorg/java_websocket/AbstractWebSocket;

    invoke-static {v2}, Lorg/java_websocket/AbstractWebSocket;->access$000(Lorg/java_websocket/AbstractWebSocket;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x5dc

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 144
    iget-object v2, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/java_websocket/WebSocket;

    .line 145
    instance-of v4, v3, Lorg/java_websocket/WebSocketImpl;

    if-eqz v4, :cond_0

    .line 146
    move-object v4, v3

    check-cast v4, Lorg/java_websocket/WebSocketImpl;

    .line 147
    invoke-virtual {v4}, Lorg/java_websocket/WebSocketImpl;->getLastPong()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gez v5, :cond_2

    .line 148
    sget-boolean v5, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 149
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closing connection due to no pong received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/16 v3, 0x3ee

    const-string v5, "The connection was closed because the other endpoint did not respond with a pong in time. For more information check: https://github.com/TooTallNate/Java-WebSocket/wiki/Lost-connection-detection"

    .line 150
    invoke-virtual {v4, v3, v5}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v4}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    invoke-virtual {v4}, Lorg/java_websocket/WebSocketImpl;->sendPing()V

    goto :goto_0

    .line 155
    :cond_3
    sget-boolean v4, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 156
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to ping a non open connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
