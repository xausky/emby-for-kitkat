.class public Lorg/java_websocket/AbstractWrappedByteChannel;
.super Ljava/lang/Object;
.source "AbstractWrappedByteChannel.java"

# interfaces
.implements Lorg/java_websocket/WrappedByteChannel;


# instance fields
.field private final channel:Ljava/nio/channels/ByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    return-void
.end method

.method public constructor <init>(Lorg/java_websocket/WrappedByteChannel;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    return-void
.end method

.method public isBlocking()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {v0}, Lorg/java_websocket/WrappedByteChannel;->isBlocking()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedRead()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {v0}, Lorg/java_websocket/WrappedByteChannel;->isNeedRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedWrite()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {v0}, Lorg/java_websocket/WrappedByteChannel;->isNeedWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public readMore(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {v0, p1}, Lorg/java_websocket/WrappedByteChannel;->readMore(Ljava/nio/ByteBuffer;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public writeMore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/java_websocket/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {v0}, Lorg/java_websocket/WrappedByteChannel;->writeMore()V

    :cond_0
    return-void
.end method
