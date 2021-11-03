.class final Lcom/google/android/exoplayer2/offline/ActionFile;
.super Ljava/lang/Object;
.source "ActionFile.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final VERSION:I


# instance fields
.field private final atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/ActionFile;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    return-void
.end method

.method private static generateDownloadId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static readDownloadRequest(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 99
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    .line 101
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 104
    new-array v4, v4, [B

    .line 105
    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->readFully([B)V

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    const/4 v4, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_1

    const-string v8, "progressive"

    .line 111
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 112
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v8, :cond_2

    .line 114
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_2

    .line 116
    invoke-static {v2, v0, p0}, Lcom/google/android/exoplayer2/offline/ActionFile;->readKey(Ljava/lang/String;ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/StreamKey;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    if-ge v0, v8, :cond_3

    const-string v8, "dash"

    .line 123
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "hls"

    .line 124
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "ss"

    .line 125
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_3
    if-nez v4, :cond_5

    .line 128
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    :cond_5
    const/4 v4, 0x3

    if-ge v0, v4, :cond_6

    .line 132
    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/offline/ActionFile;->generateDownloadId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    :goto_4
    if-nez v1, :cond_7

    .line 138
    new-instance v7, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-object v0, v7

    move-object v1, p0

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[B)V

    return-object v7

    .line 136
    :cond_7
    new-instance p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$UnsupportedRequestException;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadRequest$UnsupportedRequestException;-><init>()V

    throw p0
.end method

.method private static readKey(Ljava/lang/String;ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/StreamKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "hls"

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    .line 151
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 152
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    .line 155
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 156
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 158
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ActionFile;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->delete()V

    return-void
.end method

.method public exists()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ActionFile;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->exists()Z

    move-result v0

    return v0
.end method

.method public load()[Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/ActionFile;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    new-array v0, v1, [Lcom/google/android/exoplayer2/offline/DownloadRequest;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ActionFile;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/AtomicFile;->openRead()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-gtz v3, :cond_2

    .line 79
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 83
    :try_start_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/ActionFile;->readDownloadRequest(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/android/exoplayer2/offline/DownloadRequest$UnsupportedRequestException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 88
    :cond_1
    :try_start_3
    new-array v0, v1, [Lcom/google/android/exoplayer2/offline/DownloadRequest;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/offline/DownloadRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 77
    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported action file version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 90
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    throw v0
.end method
