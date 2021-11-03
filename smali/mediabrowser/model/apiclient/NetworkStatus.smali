.class public Lmediabrowser/model/apiclient/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# instance fields
.field private IsLocalNetworkAvailable:Ljava/lang/Boolean;

.field private IsNetworkAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final GetIsAnyLocalNetworkAvailable()Z
    .locals 1

    .line 40
    invoke-virtual {p0}, Lmediabrowser/model/apiclient/NetworkStatus;->getIsLocalNetworkAvailable()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lmediabrowser/model/apiclient/NetworkStatus;->getIsNetworkAvailable()Z

    move-result v0

    return v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/apiclient/NetworkStatus;->getIsLocalNetworkAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getIsLocalNetworkAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/apiclient/NetworkStatus;->IsLocalNetworkAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsNetworkAvailable()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lmediabrowser/model/apiclient/NetworkStatus;->IsNetworkAvailable:Z

    return v0
.end method

.method public final setIsLocalNetworkAvailable(Ljava/lang/Boolean;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/apiclient/NetworkStatus;->IsLocalNetworkAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsNetworkAvailable(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lmediabrowser/model/apiclient/NetworkStatus;->IsNetworkAvailable:Z

    return-void
.end method
