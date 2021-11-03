.class final Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$ProgressForwarder;
.super Ljava/lang/Object;
.source "ProgressiveDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressForwarder"
.end annotation


# instance fields
.field private final progessListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$ProgressForwarder;->progessListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    return-void
.end method


# virtual methods
.method public onProgress(JJJ)V
    .locals 6

    const-wide/16 p5, -0x1

    cmp-long p5, p1, p5

    if-eqz p5, :cond_1

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    long-to-float p5, p3

    const/high16 p6, 0x42c80000    # 100.0f

    mul-float p5, p5, p6

    long-to-float p6, p1

    div-float/2addr p5, p6

    move v5, p5

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p5, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$ProgressForwarder;->progessListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;->onProgress(JJF)V

    return-void
.end method
