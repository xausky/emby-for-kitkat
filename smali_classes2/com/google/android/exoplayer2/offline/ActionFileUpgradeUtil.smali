.class public final Lcom/google/android/exoplayer2/offline/ActionFileUpgradeUtil;
.super Ljava/lang/Object;
.source "ActionFileUpgradeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/ActionFileUpgradeUtil$DownloadIdProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mergeRequest(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;ZJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move-object v11, p1

    .line 104
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->getDownload(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget v2, v0, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    move-wide/from16 v5, p3

    invoke-static {v0, p0, v2, v5, v6}, Lcom/google/android/exoplayer2/offline/DownloadManager;->mergeRequest(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/DownloadRequest;IJ)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    :cond_0
    move-wide/from16 v5, p3

    .line 108
    new-instance v12, Lcom/google/android/exoplayer2/offline/Download;

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V

    .line 118
    :goto_1
    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)V

    return-void
.end method

.method public static upgradeAndDelete(Ljava/io/File;Lcom/google/android/exoplayer2/offline/ActionFileUpgradeUtil$DownloadIdProvider;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;ZZ)V
    .locals 7
    .param p1    # Lcom/google/android/exoplayer2/offline/ActionFileUpgradeUtil$DownloadIdProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/offline/ActionFile;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/offline/ActionFile;-><init>(Ljava/io/File;)V

    .line 71
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/ActionFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 74
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 75
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/ActionFile;->load()[Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/offline/ActionFileUpgradeUtil$DownloadIdProvider;->getId(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/offline/DownloadRequest;->copyWithId(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v5

    .line 79
    :cond_0
    invoke-static {v5, p2, p4, v1, v2}, Lcom/google/android/exoplayer2/offline/ActionFileUpgradeUtil;->mergeRequest(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/ActionFile;->delete()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/ActionFile;->delete()V

    .line 86
    :cond_2
    throw p0

    :cond_3
    :goto_1
    return-void
.end method
