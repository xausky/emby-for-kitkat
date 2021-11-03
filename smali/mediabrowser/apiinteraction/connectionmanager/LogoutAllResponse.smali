.class public Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "LogoutAllResponse.java"


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private response:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/ICredentialProvider;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    .line 20
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    .line 21
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->logger:Lmediabrowser/model/logging/ILogger;

    .line 22
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 23
    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    return-void
.end method

.method private OnSuccessOrFail()V
    .locals 5

    .line 28
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Updating saved credentials for all servers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/ServerInfo;

    .line 35
    invoke-virtual {v3, v4}, Lmediabrowser/model/apiclient/ServerInfo;->setAccessToken(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3, v4}, Lmediabrowser/model/apiclient/ServerInfo;->setUserId(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, v4}, Lmediabrowser/model/apiclient/ServerInfo;->setExchangeToken(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, v4}, Lmediabrowser/model/apiclient/ServerCredentials;->setConnectAccessToken(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v4}, Lmediabrowser/model/apiclient/ServerCredentials;->setConnectUserId(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/ServerCredentials;->setServers(Ljava/util/ArrayList;)V

    .line 45
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v1, v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->SaveCredentials(Lmediabrowser/model/apiclient/ServerCredentials;)V

    .line 47
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->clearConnectUserAfterLogout()V

    .line 49
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->OnSuccessOrFail()V

    return-void
.end method

.method public onResponse()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;->OnSuccessOrFail()V

    return-void
.end method
