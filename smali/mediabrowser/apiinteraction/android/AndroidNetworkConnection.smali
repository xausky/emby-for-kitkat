.class public Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;
.super Ljava/lang/Object;
.source "AndroidNetworkConnection.java"

# interfaces
.implements Lmediabrowser/apiinteraction/network/INetworkConnection;


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lmediabrowser/model/logging/ILogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmediabrowser/model/logging/ILogger;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->logger:Lmediabrowser/model/logging/ILogger;

    return-void
.end method

.method private static getBroadcastAddress()Ljava/lang/String;
    .locals 4

    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    .line 56
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 60
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMacBytes(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 138
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 141
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid MAC address"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid hex digit in MAC address."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public SendWakeOnLan(Ljava/lang/String;ILmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 6

    .line 27
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Sending WakeOnLan over broadcast address. Mac: %s, Port: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :try_start_0
    invoke-static {p1}, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->getMacBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 31
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x10

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v4, -0x1

    .line 33
    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 36
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    array-length v2, p1

    add-int/2addr v1, v2

    goto :goto_1

    .line 39
    :cond_1
    invoke-static {}, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->getBroadcastAddress()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "255.255.255.255"

    .line 41
    :cond_2
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 42
    new-instance p1, Ljava/net/DatagramSocket;

    invoke-direct {p1}, Ljava/net/DatagramSocket;-><init>()V

    .line 43
    invoke-virtual {p1, v5}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 44
    invoke-virtual {p1, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 45
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V

    .line 47
    invoke-virtual {p3}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p3, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public SendWakeOnLan(Ljava/lang/String;Ljava/lang/String;ILmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 6

    .line 76
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Sending WakeOnLan to %s. Mac: %s, Port: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :try_start_0
    invoke-static {p1}, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->getMacBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 80
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x10

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v4, -0x1

    .line 82
    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 85
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    array-length v2, p1

    add-int/2addr v1, v2

    goto :goto_1

    .line 88
    :cond_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 89
    new-instance p2, Ljava/net/DatagramPacket;

    array-length v1, v0

    invoke-direct {p2, v0, v1, p1, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 90
    new-instance p1, Ljava/net/DatagramSocket;

    invoke-direct {p1}, Ljava/net/DatagramSocket;-><init>()V

    .line 91
    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 92
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V

    .line 94
    invoke-virtual {p4}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p4, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public getNetworkStatus()Lmediabrowser/model/apiclient/NetworkStatus;
    .locals 5

    .line 104
    new-instance v0, Lmediabrowser/model/apiclient/NetworkStatus;

    invoke-direct {v0}, Lmediabrowser/model/apiclient/NetworkStatus;-><init>()V

    .line 106
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v2, "Testing local device network connection"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 109
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/NetworkStatus;->setIsNetworkAvailable(Z)V

    .line 115
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v2, "Android device is connected to a network"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v2, "Local device is not connected to a network"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v0, v3}, Lmediabrowser/model/apiclient/NetworkStatus;->setIsNetworkAvailable(Z)V

    :goto_0
    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/NetworkStatus;->setIsLocalNetworkAvailable(Ljava/lang/Boolean;)V

    return-object v0
.end method
