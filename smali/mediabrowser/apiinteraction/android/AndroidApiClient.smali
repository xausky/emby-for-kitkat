.class public Lmediabrowser/apiinteraction/android/AndroidApiClient;
.super Lmediabrowser/apiinteraction/ApiClient;
.source "AndroidApiClient.java"


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiEventListener;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p6}, Lmediabrowser/apiinteraction/ApiClient;-><init>(Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiEventListener;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiEventListener;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object v7, p6

    move-object/from16 v8, p8

    .line 27
    invoke-direct/range {v0 .. v8}, Lmediabrowser/apiinteraction/ApiClient;-><init>(Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Lmediabrowser/apiinteraction/ApiEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lmediabrowser/apiinteraction/android/AndroidApiClient;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/android/AndroidApiClient;->getResponseStreamInternal(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method static synthetic access$100(Lmediabrowser/apiinteraction/android/AndroidApiClient;JLmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/android/AndroidApiClient;->detectBitrateInternal(JLmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private getAndroidHttpClient()Lmediabrowser/apiinteraction/android/VolleyHttpClient;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidApiClient;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    check-cast v0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    return-object v0
.end method


# virtual methods
.method PerformUploadFile(Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            "Lmediabrowser/apiinteraction/tasks/IProgress<",
            "Ljava/lang/Double;",
            ">;",
            "Lmediabrowser/apiinteraction/tasks/CancellationToken;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Lmediabrowser/apiinteraction/android/AndroidApiClient;->UploadFileInternal(Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V

    return-void
.end method

.method public UploadFile(Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            "Lmediabrowser/apiinteraction/tasks/IProgress<",
            "Ljava/lang/Double;",
            ">;",
            "Lmediabrowser/apiinteraction/tasks/CancellationToken;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lmediabrowser/apiinteraction/android/UploadFileRunnable;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lmediabrowser/apiinteraction/android/UploadFileRunnable;-><init>(Lmediabrowser/apiinteraction/android/AndroidApiClient;Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected detectBitrate(JLmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmediabrowser/apiinteraction/android/AndroidApiClient$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lmediabrowser/apiinteraction/android/AndroidApiClient$2;-><init>(Lmediabrowser/apiinteraction/android/AndroidApiClient;JLmediabrowser/apiinteraction/Response;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 1

    .line 36
    invoke-direct {p0}, Lmediabrowser/apiinteraction/android/AndroidApiClient;->getAndroidHttpClient()Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStream(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ResponseStreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmediabrowser/apiinteraction/android/AndroidApiClient$1;

    invoke-direct {v1, p0, p1, p2}, Lmediabrowser/apiinteraction/android/AndroidApiClient$1;-><init>(Lmediabrowser/apiinteraction/android/AndroidApiClient;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
