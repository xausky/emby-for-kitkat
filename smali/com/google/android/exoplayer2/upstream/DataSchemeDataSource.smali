.class public final Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "DataSchemeDataSource.java"


# static fields
.field public static final SCHEME_DATA:Ljava/lang/String; = "data"


# instance fields
.field private data:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endPosition:I

.field private readPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    .line 106
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->transferEnded()V

    .line 108
    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 49
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    .line 50
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 51
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 56
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 59
    aget-object v0, v1, v0

    const/4 v2, 0x0

    .line 60
    aget-object v1, v1, v2

    const-string v3, ";base64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing Base64 encoded string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string v1, "US-ASCII"

    .line 68
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    .line 70
    :goto_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    array-length v0, v0

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->endPosition:I

    .line 72
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->endPosition:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    array-length v1, v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->endPosition:I

    if-gt v0, v1, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 77
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->endPosition:I

    int-to-long v0, p1

    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    :cond_2
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    .line 74
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 57
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected URI format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported scheme: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->endPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 89
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    .line 92
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->bytesTransferred(I)V

    return p3
.end method
