.class final Lcom/google/android/exoplayer2/source/IcyDataSource;
.super Ljava/lang/Object;
.source "IcyDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;
    }
.end annotation


# instance fields
.field private bytesUntilMetadata:I

.field private final listener:Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

.field private final metadataIntervalBytes:I

.field private final metadataLengthByteHolder:[B

.field private final upstream:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/IcyDataSource$Listener;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 62
    iput p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataIntervalBytes:I

    .line 63
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->listener:Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

    .line 64
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataLengthByteHolder:[B

    .line 65
    iput p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    return-void
.end method

.method private readMetadata()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataLengthByteHolder:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v3

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataLengthByteHolder:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    return v2

    .line 129
    :cond_1
    new-array v4, v0, [B

    move v5, v0

    const/4 v6, 0x0

    :goto_0
    if-lez v5, :cond_3

    .line 131
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v7, v4, v6, v5}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v7

    if-ne v7, v1, :cond_2

    return v3

    :cond_2
    add-int/2addr v6, v7

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    .line 140
    aget-byte v1, v4, v1

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    if-lez v0, :cond_5

    .line 145
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->listener:Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;->onIcyMetadata(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    :cond_5
    return v2
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/IcyDataSource;->readMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataIntervalBytes:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    goto :goto_0

    :cond_0
    return v1

    .line 87
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget v2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 89
    iget p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    :cond_2
    return p1
.end method
