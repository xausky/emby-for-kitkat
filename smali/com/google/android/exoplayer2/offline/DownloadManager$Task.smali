.class Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
.super Ljava/lang/Thread;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private contentLength:J

.field private final downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

.field private final downloader:Lcom/google/android/exoplayer2/offline/Downloader;

.field private finalError:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile isCanceled:Z

.field private final isRemove:Z

.field private final minRetryCount:I

.field private final request:Lcom/google/android/exoplayer2/offline/DownloadRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;)V
    .locals 0

    .line 1252
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1253
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 1254
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    .line 1255
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    .line 1256
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    .line 1257
    iput p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    .line 1258
    iput-object p6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const-wide/16 p1, -0x1

    .line 1259
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V
    .locals 0

    .line 1232
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z
    .locals 0

    .line 1232
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 0

    .line 1232
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)J
    .locals 2

    .line 1232
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z
    .locals 0

    .line 1232
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Ljava/lang/Throwable;
    .locals 0

    .line 1232
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->finalError:Ljava/lang/Throwable;

    return-object p0
.end method

.method private static getRetryDelayMillis(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    const/16 v0, 0x1388

    .line 1330
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1269
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 1271
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1272
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    .line 1273
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/offline/Downloader;->cancel()V

    .line 1274
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->interrupt()V

    :cond_1
    return-void
.end method

.method public onProgress(JJF)V
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iput-wide p3, v0, Lcom/google/android/exoplayer2/offline/DownloadProgress;->bytesDownloaded:J

    .line 1319
    iget-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iput p5, p3, Lcom/google/android/exoplayer2/offline/DownloadProgress;->percentDownloaded:F

    .line 1320
    iget-wide p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    .line 1321
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    .line 1322
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    if-eqz p1, :cond_0

    const/16 p2, 0xa

    .line 1324
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .line 1283
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/Downloader;->remove()V

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1288
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_4

    .line 1290
    :try_start_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v4, p0}, Lcom/google/android/exoplayer2/offline/Downloader;->download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 1293
    :try_start_2
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    if-nez v5, :cond_1

    .line 1294
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/offline/DownloadProgress;->bytesDownloaded:J

    cmp-long v7, v5, v0

    if-eqz v7, :cond_2

    move-wide v0, v5

    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1299
    iget v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    if-gt v3, v5, :cond_3

    .line 1302
    invoke-static {v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getRetryDelayMillis(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1300
    :cond_3
    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 1308
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->finalError:Ljava/lang/Throwable;

    .line 1310
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 1312
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method
