.class public interface abstract Lmediabrowser/apiinteraction/device/IDevice;
.super Ljava/lang/Object;
.source "IDevice.java"


# virtual methods
.method public abstract GetLocalPhotos()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract GetLocalVideos()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract UploadFile(Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            "Lmediabrowser/apiinteraction/ApiClient;",
            "Lmediabrowser/apiinteraction/tasks/IProgress<",
            "Ljava/lang/Double;",
            ">;",
            "Lmediabrowser/apiinteraction/tasks/CancellationToken;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method
