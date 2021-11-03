.class final Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressNotifier"
.end annotation


# instance fields
.field private bytesDownloaded:J

.field private final contentLength:J

.field private final progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

.field private segmentsDownloaded:I

.field private final totalSegments:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;JIJI)V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    .line 252
    iput-wide p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    .line 253
    iput p4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    .line 254
    iput-wide p5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    .line 255
    iput p7, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    return-void
.end method

.method private getPercentDownloaded()F
    .locals 6

    .line 270
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 271
    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    long-to-float v0, v2

    mul-float v0, v0, v1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 272
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    if-eqz v0, :cond_1

    .line 273
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method


# virtual methods
.method public onProgress(JJJ)V
    .locals 6

    .line 260
    iget-wide p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    add-long/2addr p1, p5

    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->getPercentDownloaded()F

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;->onProgress(JJF)V

    return-void
.end method

.method public onSegmentDownloaded()V
    .locals 7

    .line 265
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    .line 266
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->getPercentDownloaded()F

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;->onProgress(JJF)V

    return-void
.end method
