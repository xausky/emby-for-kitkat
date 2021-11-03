.class public Lmediabrowser/model/devices/ContentUploadHistory;
.super Ljava/lang/Object;
.source "ContentUploadHistory.java"


# instance fields
.field private DeviceId:Ljava/lang/String;

.field private FilesUploaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/devices/ContentUploadHistory;->setFilesUploaded(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/devices/ContentUploadHistory;->DeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilesUploaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lmediabrowser/model/devices/ContentUploadHistory;->FilesUploaded:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/devices/ContentUploadHistory;->DeviceId:Ljava/lang/String;

    return-void
.end method

.method public final setFilesUploaded(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lmediabrowser/model/devices/ContentUploadHistory;->FilesUploaded:Ljava/util/ArrayList;

    return-void
.end method
