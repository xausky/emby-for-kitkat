.class public Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "GetAvailableServersResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/util/ArrayList<",
        "Lmediabrowser/model/apiclient/ServerInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private response:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/logging/ILogger;",
            "Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 17
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;->logger:Lmediabrowser/model/logging/ILogger;

    .line 18
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 19
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Looping through server list"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->Connect(Ljava/util/ArrayList;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
