.class final Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# static fields
.field private static final UPDATE_PROGRESS_INTERVAL_MS:I = 0x1388


# instance fields
.field private activeDownloadTaskCount:I

.field private final activeTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/offline/DownloadManager$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

.field private final downloaderFactory:Lcom/google/android/exoplayer2/offline/DownloaderFactory;

.field private final downloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field private downloadsPaused:Z

.field private final mainHandler:Landroid/os/Handler;

.field private maxParallelDownloads:I

.field private minRetryCount:I

.field private notMetRequirements:I

.field public released:Z

.field private final thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;Lcom/google/android/exoplayer2/offline/DownloaderFactory;Landroid/os/Handler;IIZ)V
    .locals 1

    .line 673
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 674
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->thread:Landroid/os/HandlerThread;

    .line 675
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    .line 676
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloaderFactory:Lcom/google/android/exoplayer2/offline/DownloaderFactory;

    .line 677
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    .line 678
    iput p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    .line 679
    iput p6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->minRetryCount:I

    .line 680
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadsPaused:Z

    .line 681
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 682
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    return-void
.end method

.method private addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V
    .locals 13

    .line 843
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz v0, :cond_0

    .line 846
    invoke-static {v0, p1, p2, v7, v8}, Lcom/google/android/exoplayer2/offline/DownloadManager;->mergeRequest(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/DownloadRequest;IJ)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    goto :goto_1

    .line 848
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/offline/Download;

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v9, -0x1

    const/4 v12, 0x0

    move-object v2, v0

    move-object v3, p1

    move-wide v5, v7

    move v11, p2

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    .line 858
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private canDownloadsRun()Z
    .locals 1

    .line 1153
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadsPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->notMetRequirements:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static compareStartTimes(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/Download;)I
    .locals 2

    .line 1228
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    iget-wide p0, p1, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result p0

    return p0
.end method

.method private static copyDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;
    .locals 13

    .line 1216
    new-instance v12, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    .line 1220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    iget-object v11, p0, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    return-object v12
.end method

.method private getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1191
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1193
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/Download;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1197
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->getDownload(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string v0, "DownloadManager"

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDownloadIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1206
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1207
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/Download;

    .line 1208
    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private initialize(I)V
    .locals 4

    .line 750
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->notMetRequirements:I

    const/4 p1, 0x0

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setDownloadingStatesToQueued()V

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 755
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->getDownloads([I)Lcom/google/android/exoplayer2/offline/DownloadCursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 757
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 758
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getDownload()Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 764
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    const-string v1, "DownloadManager"

    const-string v2, "Failed to load index."

    .line 761
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 764
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 768
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 770
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void

    .line 764
    :goto_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 765
    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0x7
    .end array-data
.end method

.method public static synthetic lambda$NXQcmC9peGeDWV0s_8pBfzdJpS0(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/Download;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->compareStartTimes(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/Download;)I

    move-result p0

    return p0
.end method

.method private onContentLengthChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .locals 13

    .line 1030
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 1031
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)J

    move-result-wide v8

    const/4 p1, 0x0

    .line 1033
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/Download;

    .line 1034
    iget-wide v0, p1, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget v3, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    iget-wide v4, p1, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v10, p1, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    iget v11, p1, Lcom/google/android/exoplayer2/offline/Download;->failureReason:I

    iget-object v12, p1, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 1037
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private onDownloadTaskStopped(Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Throwable;)V
    .locals 16
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1092
    new-instance v14, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v3, v0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    if-nez p2, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    iget-wide v5, v0, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    iget v11, v0, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    const/4 v15, 0x0

    if-nez p2, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    const/4 v12, 0x1

    :goto_1
    iget-object v13, v0, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 1103
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    iget-object v2, v14, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1106
    :try_start_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v0, v14}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "DownloadManager"

    const-string v3, "Failed to update index."

    .line 1108
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1110
    :goto_2
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v14, v15, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;-><init>(Lcom/google/android/exoplayer2/offline/Download;ZLjava/util/List;)V

    .line 1112
    iget-object v2, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private onRemoveTaskStopped(Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 4

    .line 1116
    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 1117
    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;

    .line 1119
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    goto :goto_1

    .line 1121
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v0

    .line 1122
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->removeDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DownloadManager"

    const-string v2, "Failed to remove from database"

    .line 1126
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;-><init>(Lcom/google/android/exoplayer2/offline/Download;ZLjava/util/List;)V

    .line 1130
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method

.method private onTaskStopped(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .locals 6

    .line 1050
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 1051
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    if-nez v2, :cond_0

    const/16 v2, 0xb

    .line 1055
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->removeMessages(I)V

    .line 1058
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$400(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1059
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void

    .line 1063
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$500(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "DownloadManager"

    .line 1065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    .line 1069
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/Download;

    .line 1070
    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 1085
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1077
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1078
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->onRemoveTaskStopped(Lcom/google/android/exoplayer2/offline/Download;)V

    goto :goto_1

    :cond_5
    xor-int/lit8 v0, v1, 0x1

    .line 1072
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1073
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->onDownloadTaskStopped(Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Throwable;)V

    .line 1088
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;
    .locals 7

    .line 1166
    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1167
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$InternalHandler$NXQcmC9peGeDWV0s_8pBfzdJpS0;->INSTANCE:Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$InternalHandler$NXQcmC9peGeDWV0s_8pBfzdJpS0;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1172
    :cond_1
    iget-wide v3, p1, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/offline/Download;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1173
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1175
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$InternalHandler$NXQcmC9peGeDWV0s_8pBfzdJpS0;->INSTANCE:Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$InternalHandler$NXQcmC9peGeDWV0s_8pBfzdJpS0;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1179
    :cond_3
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "DownloadManager"

    const-string v3, "Failed to update index."

    .line 1181
    invoke-static {v1, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1183
    :goto_3
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v2, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;-><init>(Lcom/google/android/exoplayer2/offline/Download;ZLjava/util/List;)V

    .line 1185
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1159
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1161
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->copyDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object p1

    return-object p1
.end method

.method private release()V
    .locals 4

    .line 902
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 903
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    goto :goto_0

    .line 906
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setDownloadingStatesToQueued()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DownloadManager"

    const-string v3, "Failed to update index."

    .line 908
    invoke-static {v1, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 910
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 911
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 912
    monitor-enter p0

    .line 913
    :try_start_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->released:Z

    .line 914
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 915
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeAllDownloads()V
    .locals 7

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 873
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->getDownloads([I)Lcom/google/android/exoplayer2/offline/DownloadCursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    .line 874
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 875
    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getDownload()Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_3

    .line 877
    :try_start_2
    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v3

    .line 873
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    .line 877
    :try_start_4
    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->close()V

    :cond_2
    :goto_2
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    const-string v2, "DownloadManager"

    const-string v3, "Failed to load downloads."

    .line 878
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 880
    :goto_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v3, v4, :cond_4

    .line 881
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/Download;

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->copyDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 883
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 884
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/Download;

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->copyDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 886
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    sget-object v3, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$InternalHandler$NXQcmC9peGeDWV0s_8pBfzdJpS0;->INSTANCE:Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$InternalHandler$NXQcmC9peGeDWV0s_8pBfzdJpS0;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 888
    :try_start_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setStatesToRemoving()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v3, "DownloadManager"

    const-string v4, "Failed to update index."

    .line 890
    invoke-static {v3, v4, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 892
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    .line 893
    :goto_7
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 894
    new-instance v4, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 895
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/offline/Download;

    invoke-direct {v4, v5, v2, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;-><init>(Lcom/google/android/exoplayer2/offline/Download;ZLjava/util/List;)V

    .line 896
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 898
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void

    :array_0
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method private removeDownload(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 862
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "DownloadManager"

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove nonexistent download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x5

    .line 867
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;

    .line 868
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private setDownloadsPaused(Z)V
    .locals 0

    .line 774
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadsPaused:Z

    .line 775
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private setMaxParallelDownloads(I)V
    .locals 0

    .line 834
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    .line 835
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private setMinRetryCount(I)V
    .locals 0

    .line 839
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->minRetryCount:I

    return-void
.end method

.method private setNotMetRequirements(I)V
    .locals 0

    .line 779
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->notMetRequirements:I

    .line 780
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private setStopReason(Lcom/google/android/exoplayer2/offline/Download;I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v10, p2

    const/4 v2, 0x1

    if-nez v10, :cond_0

    .line 812
    iget v3, v1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    if-ne v3, v2, :cond_3

    const/4 v2, 0x0

    .line 813
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;

    goto :goto_0

    .line 815
    :cond_0
    iget v3, v1, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    if-eq v10, v3, :cond_3

    .line 816
    iget v3, v1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 820
    :cond_2
    new-instance v13, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v2, v1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    .line 825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    move-object v1, v13

    move/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 820
    invoke-direct {p0, v13}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    :cond_3
    :goto_0
    return-void
.end method

.method private setStopReason(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 785
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 786
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/Download;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setStopReason(Lcom/google/android/exoplayer2/offline/Download;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 790
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setStopReason(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "DownloadManager"

    const-string v0, "Failed to set manual stop reason"

    .line 792
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 795
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 797
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setStopReason(Lcom/google/android/exoplayer2/offline/Download;I)V

    goto :goto_1

    .line 801
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setStopReason(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    const-string v0, "DownloadManager"

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set manual stop reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 807
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private syncDownloadingDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;I)V
    .locals 1

    .line 995
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 996
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->canDownloadsRun()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    if-lt p3, v0, :cond_1

    :cond_0
    const/4 p3, 0x0

    .line 997
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;

    .line 998
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    :cond_1
    return-void
.end method

.method private syncQueuedDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    .locals 9
    .param p1    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 965
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 p2, 0x0

    .line 966
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    return-object p1

    .line 970
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->canDownloadsRun()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 975
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;I)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object p1

    .line 976
    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloaderFactory:Lcom/google/android/exoplayer2/offline/DownloaderFactory;

    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/offline/DownloaderFactory;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/Downloader;

    move-result-object v3

    .line 977
    new-instance p2, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v4, p1, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->minRetryCount:I

    const/4 v8, 0x0

    move-object v1, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V

    .line 985
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    if-nez p1, :cond_2

    const/16 p1, 0xb

    const-wide/16 v0, 0x1388

    .line 987
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 989
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->start()V

    return-object p2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private syncRemovingDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 9
    .param p1    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1004
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1006
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    :cond_0
    return-void

    .line 1014
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloaderFactory:Lcom/google/android/exoplayer2/offline/DownloaderFactory;

    iget-object v0, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloaderFactory;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/Downloader;

    move-result-object v3

    .line 1015
    new-instance p1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iget-object v2, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v4, p2, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    const/4 v5, 0x1

    iget v6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->minRetryCount:I

    const/4 v8, 0x0

    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V

    .line 1023
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->start()V

    return-void
.end method

.method private syncStoppedDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 954
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    .line 955
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    :cond_0
    return-void
.end method

.method private syncTasks()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 922
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 923
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/Download;

    .line 924
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 925
    iget v4, v2, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    .line 943
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 933
    :pswitch_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncDownloadingDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;I)V

    goto :goto_1

    .line 927
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncStoppedDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    goto :goto_1

    .line 930
    :pswitch_2
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncQueuedDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    move-result-object v3

    goto :goto_1

    .line 938
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncRemovingDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;)V

    :goto_1
    if-eqz v3, :cond_1

    .line 945
    invoke-static {v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateProgress()V
    .locals 4

    const/4 v0, 0x0

    .line 1137
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/Download;

    .line 1139
    iget v2, v1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1141
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "DownloadManager"

    const-string v3, "Failed to update index."

    .line 1143
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    const-wide/16 v1, 0x1388

    .line 1147
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 688
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 742
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 739
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->release()V

    return-void

    .line 736
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->updateProgress()V

    return-void

    .line 732
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 733
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->onContentLengthChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    return-void

    .line 727
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 728
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->onTaskStopped(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    goto :goto_1

    .line 724
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->removeAllDownloads()V

    goto :goto_0

    .line 720
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 721
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->removeDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 716
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 717
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V

    goto :goto_0

    .line 711
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 712
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setMinRetryCount(I)V

    goto :goto_0

    .line 707
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 708
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setMaxParallelDownloads(I)V

    goto :goto_0

    .line 702
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 703
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 704
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setStopReason(Ljava/lang/String;I)V

    goto :goto_0

    .line 698
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 699
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setNotMetRequirements(I)V

    goto :goto_0

    .line 694
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 695
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setDownloadsPaused(Z)V

    goto :goto_0

    .line 690
    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 691
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->initialize(I)V

    :goto_0
    const/4 v1, 0x1

    .line 744
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    .line 745
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 746
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
