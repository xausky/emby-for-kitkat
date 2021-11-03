.class public Lmediabrowser/apiinteraction/android/WakeOnLan;
.super Ljava/lang/Object;
.source "WakeOnLan.java"


# instance fields
.field private final BROADCAST_ADDRESS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "255.255.255.255"

    .line 20
    iput-object v0, p0, Lmediabrowser/apiinteraction/android/WakeOnLan;->BROADCAST_ADDRESS:Ljava/lang/String;

    return-void
.end method

.method private buildPayload([B)[B
    .locals 4

    .line 57
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x10

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v3, -0x1

    .line 59
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 62
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private decodeMacAddress(Ljava/lang/String;)[B
    .locals 4

    const-string v0, "[\\-: ]"

    const-string v1, ""

    .line 45
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 46
    array-length v1, v0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 50
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal non-hex mac address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal length mac address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;ILmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 25
    :try_start_0
    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/android/WakeOnLan;->decodeMacAddress(Ljava/lang/String;)[B

    move-result-object p2

    .line 26
    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/android/WakeOnLan;->buildPayload([B)[B

    move-result-object p2

    .line 28
    new-instance v0, Ljava/net/InetSocketAddress;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "255.255.255.255"

    :goto_0
    invoke-direct {v0, p1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string p1, "255.255.255.255"

    invoke-direct {v0, p1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 32
    :cond_1
    new-instance p1, Ljava/net/DatagramPacket;

    array-length p3, p2

    invoke-direct {p1, p2, p3, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 34
    new-instance p2, Ljava/net/DatagramSocket;

    invoke-direct {p2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 35
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 36
    invoke-virtual {p2, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 37
    invoke-virtual {p4}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p3, p1

    .line 34
    :try_start_3
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p3, :cond_2

    .line 38
    :try_start_4
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception p2

    :try_start_5
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->close()V

    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 40
    invoke-virtual {p4, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method
