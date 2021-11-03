.class public Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "EnsureConnectUserResponse.java"


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

.field private connectionOptions:Lmediabrowser/model/apiclient/ConnectionOptions;

.field private credentials:Lmediabrowser/model/apiclient/ServerCredentials;

.field private response:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private server:Lmediabrowser/model/apiclient/ServerInfo;

.field private systemInfo:Lmediabrowser/model/system/PublicSystemInfo;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/model/system/PublicSystemInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            "Lmediabrowser/model/apiclient/ServerCredentials;",
            "Lmediabrowser/model/system/PublicSystemInfo;",
            "Lmediabrowser/model/apiclient/ConnectionMode;",
            "Lmediabrowser/model/apiclient/ConnectionOptions;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    .line 26
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 27
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    .line 28
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    .line 29
    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->systemInfo:Lmediabrowser/model/system/PublicSystemInfo;

    .line 30
    iput-object p5, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    .line 31
    iput-object p6, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->connectionOptions:Lmediabrowser/model/apiclient/ConnectionOptions;

    .line 32
    iput-object p7, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method onEnsureConnectUserDone()V
    .locals 8

    .line 36
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    iget-object v3, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->systemInfo:Lmediabrowser/model/system/PublicSystemInfo;

    iget-object v4, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    iget-object v6, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->connectionOptions:Lmediabrowser/model/apiclient/ConnectionOptions;

    iget-object v7, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->response:Lmediabrowser/apiinteraction/Response;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v7}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->AfterConnectValidated(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/model/system/PublicSystemInfo;Lmediabrowser/model/apiclient/ConnectionMode;ZLmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public onResponse()V
    .locals 5

    .line 42
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getExchangeToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    iget-object v3, p0, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    new-instance v4, Lmediabrowser/apiinteraction/connectionmanager/AddAuthenticationInfoFromConnectResponse;

    invoke-direct {v4, p0}, Lmediabrowser/apiinteraction/connectionmanager/AddAuthenticationInfoFromConnectResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->AddAuthenticationInfoFromConnect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->onEnsureConnectUserDone()V

    :goto_0
    return-void
.end method
