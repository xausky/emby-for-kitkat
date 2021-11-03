.class public Lmediabrowser/model/connect/PinCreationResult;
.super Ljava/lang/Object;
.source "PinCreationResult.java"


# instance fields
.field private DeviceId:Ljava/lang/String;

.field private IsConfirmed:Z

.field private IsExpired:Z

.field private Pin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/connect/PinCreationResult;->DeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsConfirmed()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lmediabrowser/model/connect/PinCreationResult;->IsConfirmed:Z

    return v0
.end method

.method public final getIsExpired()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lmediabrowser/model/connect/PinCreationResult;->IsExpired:Z

    return v0
.end method

.method public final getPin()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/connect/PinCreationResult;->Pin:Ljava/lang/String;

    return-object v0
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/connect/PinCreationResult;->DeviceId:Ljava/lang/String;

    return-void
.end method

.method public final setIsConfirmed(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lmediabrowser/model/connect/PinCreationResult;->IsConfirmed:Z

    return-void
.end method

.method public final setIsExpired(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lmediabrowser/model/connect/PinCreationResult;->IsExpired:Z

    return-void
.end method

.method public final setPin(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/connect/PinCreationResult;->Pin:Ljava/lang/String;

    return-void
.end method
