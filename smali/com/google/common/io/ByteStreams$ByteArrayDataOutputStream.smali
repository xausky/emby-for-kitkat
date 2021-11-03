.class Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteArrayDataOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayDataOutputStream"
.end annotation


# instance fields
.field final byteArrayOutputSteam:Ljava/io/ByteArrayOutputStream;

.field final output:Ljava/io/DataOutput;


# direct methods
.method constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->byteArrayOutputSteam:Ljava/io/ByteArrayOutputStream;

    .line 381
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->byteArrayOutputSteam:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 388
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public write([B)V
    .locals 1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 396
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public write([BII)V
    .locals 1

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 404
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 412
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeByte(I)V
    .locals 1

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 420
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 428
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeChar(I)V
    .locals 1

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeChar(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 436
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeChars(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 444
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeDouble(D)V
    .locals 1

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeDouble(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 452
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public writeFloat(F)V
    .locals 1

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 460
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeInt(I)V
    .locals 1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 468
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeLong(J)V
    .locals 1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 476
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public writeShort(I)V
    .locals 1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 484
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 492
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
