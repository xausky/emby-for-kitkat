.class public Lmediabrowser/apiinteraction/android/UploadFileRunnable;
.super Ljava/lang/Object;
.source "UploadFileRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private apiClient:Lmediabrowser/apiinteraction/android/AndroidApiClient;

.field private cancellationToken:Lmediabrowser/apiinteraction/tasks/CancellationToken;

.field private file:Lmediabrowser/model/devices/LocalFileInfo;

.field private fileInputStream:Ljava/io/FileInputStream;

.field private progress:Lmediabrowser/apiinteraction/tasks/IProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/tasks/IProgress<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/android/AndroidApiClient;Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/android/AndroidApiClient;",
            "Ljava/io/FileInputStream;",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            "Lmediabrowser/apiinteraction/tasks/IProgress<",
            "Ljava/lang/Double;",
            ">;",
            "Lmediabrowser/apiinteraction/tasks/CancellationToken;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->apiClient:Lmediabrowser/apiinteraction/android/AndroidApiClient;

    .line 20
    iput-object p2, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->fileInputStream:Ljava/io/FileInputStream;

    .line 21
    iput-object p3, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->file:Lmediabrowser/model/devices/LocalFileInfo;

    .line 22
    iput-object p4, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->progress:Lmediabrowser/apiinteraction/tasks/IProgress;

    .line 23
    iput-object p5, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->cancellationToken:Lmediabrowser/apiinteraction/tasks/CancellationToken;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 30
    :try_start_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->apiClient:Lmediabrowser/apiinteraction/android/AndroidApiClient;

    iget-object v1, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->fileInputStream:Ljava/io/FileInputStream;

    iget-object v2, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->file:Lmediabrowser/model/devices/LocalFileInfo;

    iget-object v3, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->progress:Lmediabrowser/apiinteraction/tasks/IProgress;

    iget-object v4, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->cancellationToken:Lmediabrowser/apiinteraction/tasks/CancellationToken;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmediabrowser/apiinteraction/android/AndroidApiClient;->PerformUploadFile(Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/UploadFileRunnable;->progress:Lmediabrowser/apiinteraction/tasks/IProgress;

    invoke-interface {v1, v0}, Lmediabrowser/apiinteraction/tasks/IProgress;->reportError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
