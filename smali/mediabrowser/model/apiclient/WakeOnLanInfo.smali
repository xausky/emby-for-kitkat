.class public Lmediabrowser/model/apiclient/WakeOnLanInfo;
.super Ljava/lang/Object;
.source "WakeOnLanInfo.java"


# instance fields
.field private BroadcastAddress:Ljava/lang/String;

.field private MacAddress:Ljava/lang/String;

.field private Port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 30
    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/WakeOnLanInfo;->setPort(I)V

    return-void
.end method


# virtual methods
.method public final getBroadcastAddress()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lmediabrowser/model/apiclient/WakeOnLanInfo;->BroadcastAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getMacAddress()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/apiclient/WakeOnLanInfo;->MacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 17
    iget v0, p0, Lmediabrowser/model/apiclient/WakeOnLanInfo;->Port:I

    return v0
.end method

.method public final setBroadcastAddress(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/apiclient/WakeOnLanInfo;->BroadcastAddress:Ljava/lang/String;

    return-void
.end method

.method public final setMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/apiclient/WakeOnLanInfo;->MacAddress:Ljava/lang/String;

    return-void
.end method

.method public final setPort(I)V
    .locals 0

    .line 21
    iput p1, p0, Lmediabrowser/model/apiclient/WakeOnLanInfo;->Port:I

    return-void
.end method
