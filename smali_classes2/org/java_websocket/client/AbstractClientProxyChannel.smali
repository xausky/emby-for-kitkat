.class public abstract Lorg/java_websocket/client/AbstractClientProxyChannel;
.super Lorg/java_websocket/AbstractWrappedByteChannel;
.source "AbstractClientProxyChannel.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final proxyHandshake:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lorg/java_websocket/AbstractWrappedByteChannel;-><init>(Ljava/nio/channels/ByteChannel;)V

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lorg/java_websocket/client/AbstractClientProxyChannel;->buildHandShake()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/java_websocket/client/AbstractClientProxyChannel;->proxyHandshake:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abstract buildHandShake()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/java_websocket/client/AbstractClientProxyChannel;->proxyHandshake:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-super {p0, p1}, Lorg/java_websocket/AbstractWrappedByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 60
    :cond_0
    iget-object p1, p0, Lorg/java_websocket/client/AbstractClientProxyChannel;->proxyHandshake:Ljava/nio/ByteBuffer;

    invoke-super {p0, p1}, Lorg/java_websocket/AbstractWrappedByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
