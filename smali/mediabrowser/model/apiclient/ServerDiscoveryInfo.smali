.class public Lmediabrowser/model/apiclient/ServerDiscoveryInfo;
.super Ljava/lang/Object;
.source "ServerDiscoveryInfo.java"


# instance fields
.field private Address:Ljava/lang/String;

.field private EndpointAddress:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->Address:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndpointAddress()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->EndpointAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->Address:Ljava/lang/String;

    return-void
.end method

.method public final setEndpointAddress(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->EndpointAddress:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->Name:Ljava/lang/String;

    return-void
.end method
