.class public Lmediabrowser/apiinteraction/discovery/ServerLocator;
.super Ljava/lang/Object;
.source "ServerLocator.java"

# interfaces
.implements Lmediabrowser/apiinteraction/discovery/IServerLocator;


# instance fields
.field private jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field private logger:Lmediabrowser/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/model/serialization/IJsonSerializer;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    .line 21
    iput-object p2, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    return-void
.end method

.method private Receive(Ljava/net/DatagramSocket;JLmediabrowser/apiinteraction/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/DatagramSocket;",
            "J",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerDiscoveryInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v2, 0x3a98

    .line 98
    new-array v2, v2, [B

    .line 99
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v2

    invoke-direct {v6, v2, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    long-to-int v2, p2

    .line 100
    invoke-virtual {p1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 103
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 113
    iget-object v7, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ">>> Broadcast response from server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 118
    iget-object v7, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ">>> Broadcast response from server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v7, v8, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v3, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v7, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;

    invoke-interface {v3, v6, v7}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->setEndpointAddress(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 127
    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    sub-long/2addr p2, v2

    goto/16 :goto_0

    .line 106
    :catch_0
    iget-object p1, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    const-string p2, "Server discovery timed out waiting for response."

    new-array p3, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_2
    iget-object p1, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    const-string p2, "Found %d servers"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v3

    invoke-interface {p1, p2, p3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p4, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public FindServers(ILmediabrowser/apiinteraction/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerDiscoveryInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    const-string v2, "who is EmbyServer?"

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v3, 0x1cbf

    .line 39
    :try_start_1
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v2

    const-string v6, "255.255.255.255"

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 40
    invoke-virtual {v1, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 41
    iget-object v4, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">>> Request packet sent to: 255.255.255.255 (DEFAULT)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 43
    :try_start_2
    iget-object v5, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v6, "Error sending DatagramPacket"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-interface {v5, v6, v4, v7}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 47
    :goto_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 48
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 51
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InterfaceAddress;

    .line 56
    invoke-virtual {v7}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v7, :cond_2

    goto :goto_2

    .line 63
    :cond_2
    :try_start_3
    new-instance v8, Ljava/net/DatagramPacket;

    array-length v9, v2

    invoke-direct {v8, v2, v9, v7, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 64
    invoke-virtual {v1, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    .line 66
    :try_start_4
    iget-object v9, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v10, "Error sending DatagramPacket"

    new-array v11, v0, [Ljava/lang/Object;

    invoke-interface {v9, v10, v8, v11}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 69
    :goto_3
    iget-object v8, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ">>> Request packet sent to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; Interface: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v0, [Ljava/lang/Object;

    invoke-interface {v8, v7, v9}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 73
    :cond_3
    iget-object v2, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">>> Done looping over all network interfaces. Now waiting for a reply!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long v2, p1

    .line 75
    invoke-direct {p0, v1, v2, v3, p2}, Lmediabrowser/apiinteraction/discovery/ServerLocator;->Receive(Ljava/net/DatagramSocket;JLmediabrowser/apiinteraction/Response;)V

    .line 78
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 82
    iget-object v1, p0, Lmediabrowser/apiinteraction/discovery/ServerLocator;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v2, "Error finding servers"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, p1, v0}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    :goto_4
    return-void
.end method
