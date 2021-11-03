.class public final Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "RawResourceDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# static fields
.field public static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private final resources:Landroid/content/res/Resources;

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 184
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 191
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 192
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 188
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 191
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_3

    .line 192
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    .line 195
    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 180
    :try_start_3
    new-instance v3, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 184
    :try_start_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 185
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 190
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 191
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_5

    .line 192
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    .line 196
    :cond_5
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 188
    :try_start_5
    new-instance v3, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 190
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 191
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6

    .line 192
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    .line 195
    :cond_6
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 87
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 88
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    const-string v1, "rawresource"

    .line 89
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    .line 95
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 101
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 102
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_3

    .line 106
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 107
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 109
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    .line 110
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    .line 111
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 116
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 117
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    :goto_0
    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 131
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    return-wide v0

    .line 114
    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 104
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource is compressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :catch_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v0, "Resource identifier must be an integer."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v0, "URI must use scheme rawresource"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 125
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 144
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    int-to-long v6, p3

    .line 145
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v1, :cond_4

    .line 152
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    return v1

    .line 154
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 158
    :cond_4
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long p2, p2, v4

    if-eqz p2, :cond_5

    .line 159
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 161
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesTransferred(I)V

    return p1

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
