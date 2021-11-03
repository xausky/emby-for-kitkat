.class public Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "FirstServerConnectResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/apiinteraction/ConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private response:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private servers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Ljava/util/ArrayList;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 20
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 21
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;->servers:Ljava/util/ArrayList;

    .line 22
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->SignedIn:Lmediabrowser/model/apiclient/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;->response:Lmediabrowser/apiinteraction/Response;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;->servers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnFailedConnection(Lmediabrowser/apiinteraction/Response;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
