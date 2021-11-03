.class public Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "GetConnectServersResponse.java"


# instance fields
.field private connectServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private credentials:Lmediabrowser/model/apiclient/ServerCredentials;

.field private finalResponse:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private foundServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private numTasks:I

.field private numTasksCompleted:[I


# direct methods
.method public constructor <init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/connect/ConnectService;Lmediabrowser/model/apiclient/ServerCredentials;Ljava/util/ArrayList;Ljava/util/ArrayList;I[ILmediabrowser/apiinteraction/Response;Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/logging/ILogger;",
            "Lmediabrowser/apiinteraction/connect/ConnectService;",
            "Lmediabrowser/model/apiclient/ServerCredentials;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;I[I",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;",
            "Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    .line 31
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->logger:Lmediabrowser/model/logging/ILogger;

    .line 32
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    .line 33
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    .line 34
    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->foundServers:Ljava/util/ArrayList;

    .line 35
    iput-object p5, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->connectServers:Ljava/util/ArrayList;

    .line 36
    iput p6, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->numTasks:I

    .line 37
    iput-object p7, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->numTasksCompleted:[I

    .line 38
    iput-object p8, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->finalResponse:Lmediabrowser/apiinteraction/Response;

    .line 39
    iput-object p9, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    return-void
.end method

.method private ConvertServerList([Lmediabrowser/model/connect/ConnectUserServer;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lmediabrowser/model/connect/ConnectUserServer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 76
    new-instance v4, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-direct {v4}, Lmediabrowser/model/apiclient/ServerInfo;-><init>()V

    .line 78
    invoke-virtual {v3}, Lmediabrowser/model/connect/ConnectUserServer;->getAccessKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/model/apiclient/ServerInfo;->setExchangeToken(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Lmediabrowser/model/connect/ConnectUserServer;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/model/apiclient/ServerInfo;->setId(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3}, Lmediabrowser/model/connect/ConnectUserServer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/model/apiclient/ServerInfo;->setName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3}, Lmediabrowser/model/connect/ConnectUserServer;->getLocalAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/model/apiclient/ServerInfo;->setLocalAddress(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Lmediabrowser/model/connect/ConnectUserServer;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/model/apiclient/ServerInfo;->setRemoteAddress(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3}, Lmediabrowser/model/connect/ConnectUserServer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmediabrowser/model/apiclient/ServerInfo;->setConnectServerId(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method OnAny([Lmediabrowser/model/connect/ConnectUserServer;)V
    .locals 5

    .line 44
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->connectServers:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->ConvertServerList([Lmediabrowser/model/connect/ConnectUserServer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->numTasksCompleted:[I

    const/4 v1, 0x0

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    .line 50
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->numTasksCompleted:[I

    aget p1, p1, v1

    iget v1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->numTasks:I

    if-lt p1, v1, :cond_0

    .line 51
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->foundServers:Ljava/util/ArrayList;

    iget-object v3, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->connectServers:Ljava/util/ArrayList;

    iget-object v4, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->finalResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, v1, v2, v3, v4}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnGetServerResponse(Lmediabrowser/model/apiclient/ServerCredentials;Ljava/util/ArrayList;Ljava/util/ArrayList;Lmediabrowser/apiinteraction/Response;)V

    .line 53
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    .line 67
    new-array p1, p1, [Lmediabrowser/model/connect/ConnectUserServer;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->OnAny([Lmediabrowser/model/connect/ConnectUserServer;)V

    return-void
.end method

.method public onResponse()V
    .locals 4

    .line 59
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Getting connect servers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    invoke-virtual {v2}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectAccessToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersInnerResponse;

    invoke-direct {v3, p0}, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersInnerResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;)V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetServers(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
