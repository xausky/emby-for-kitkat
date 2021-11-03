.class public Lmediabrowser/apiinteraction/ConnectionResult;
.super Ljava/lang/Object;
.source "ConnectionResult.java"


# instance fields
.field private ApiClient:Lmediabrowser/apiinteraction/ApiClient;

.field private Servers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private State:Lmediabrowser/model/apiclient/ConnectionState;

.field private connectUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lmediabrowser/model/apiclient/ConnectionState;->Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ConnectionResult;->setState(Lmediabrowser/model/apiclient/ConnectionState;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ConnectionResult;->setServers(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getApiClient()Lmediabrowser/apiinteraction/ApiClient;
    .locals 1

    .line 29
    iget-object v0, p0, Lmediabrowser/apiinteraction/ConnectionResult;->ApiClient:Lmediabrowser/apiinteraction/ApiClient;

    return-object v0
.end method

.method public final getConnectUserId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lmediabrowser/apiinteraction/ConnectionResult;->connectUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lmediabrowser/apiinteraction/ConnectionResult;->Servers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getState()Lmediabrowser/model/apiclient/ConnectionState;
    .locals 1

    .line 11
    iget-object v0, p0, Lmediabrowser/apiinteraction/ConnectionResult;->State:Lmediabrowser/model/apiclient/ConnectionState;

    return-object v0
.end method

.method public final setApiClient(Lmediabrowser/apiinteraction/ApiClient;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lmediabrowser/apiinteraction/ConnectionResult;->ApiClient:Lmediabrowser/apiinteraction/ApiClient;

    return-void
.end method

.method public final setConnectUserId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lmediabrowser/apiinteraction/ConnectionResult;->connectUserId:Ljava/lang/String;

    return-void
.end method

.method public final setServers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lmediabrowser/apiinteraction/ConnectionResult;->Servers:Ljava/util/ArrayList;

    return-void
.end method

.method public final setState(Lmediabrowser/model/apiclient/ConnectionState;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lmediabrowser/apiinteraction/ConnectionResult;->State:Lmediabrowser/model/apiclient/ConnectionState;

    return-void
.end method
