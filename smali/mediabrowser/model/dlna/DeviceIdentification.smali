.class public Lmediabrowser/model/dlna/DeviceIdentification;
.super Ljava/lang/Object;
.source "DeviceIdentification.java"


# instance fields
.field private DeviceDescription:Ljava/lang/String;

.field private FriendlyName:Ljava/lang/String;

.field private Headers:[Lmediabrowser/model/dlna/HttpHeaderInfo;

.field private Manufacturer:Ljava/lang/String;

.field private ManufacturerUrl:Ljava/lang/String;

.field private ModelDescription:Ljava/lang/String;

.field private ModelName:Ljava/lang/String;

.field private ModelNumber:Ljava/lang/String;

.field private ModelUrl:Ljava/lang/String;

.field private SerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    new-array v0, v0, [Lmediabrowser/model/dlna/HttpHeaderInfo;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceIdentification;->setHeaders([Lmediabrowser/model/dlna/HttpHeaderInfo;)V

    return-void
.end method


# virtual methods
.method public final getDeviceDescription()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->DeviceDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->FriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()[Lmediabrowser/model/dlna/HttpHeaderInfo;
    .locals 1

    .line 139
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->Headers:[Lmediabrowser/model/dlna/HttpHeaderInfo;

    return-object v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->Manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getManufacturerUrl()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ManufacturerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelDescription()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ModelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ModelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelNumber()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ModelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelUrl()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ModelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceIdentification;->SerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final setDeviceDescription(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->DeviceDescription:Ljava/lang/String;

    return-void
.end method

.method public final setFriendlyName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->FriendlyName:Ljava/lang/String;

    return-void
.end method

.method public final setHeaders([Lmediabrowser/model/dlna/HttpHeaderInfo;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->Headers:[Lmediabrowser/model/dlna/HttpHeaderInfo;

    return-void
.end method

.method public final setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->Manufacturer:Ljava/lang/String;

    return-void
.end method

.method public final setManufacturerUrl(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ManufacturerUrl:Ljava/lang/String;

    return-void
.end method

.method public final setModelDescription(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ModelDescription:Ljava/lang/String;

    return-void
.end method

.method public final setModelName(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ModelName:Ljava/lang/String;

    return-void
.end method

.method public final setModelNumber(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ModelNumber:Ljava/lang/String;

    return-void
.end method

.method public final setModelUrl(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->ModelUrl:Ljava/lang/String;

    return-void
.end method

.method public final setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceIdentification;->SerialNumber:Ljava/lang/String;

    return-void
.end method
