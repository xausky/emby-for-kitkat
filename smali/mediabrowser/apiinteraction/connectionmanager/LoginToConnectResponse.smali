.class public Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "LoginToConnectResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/connect/ConnectAuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

.field private response:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/ICredentialProvider;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 17
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 18
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    .line 19
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lmediabrowser/model/connect/ConnectAuthenticationResult;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;->onResponse(Lmediabrowser/model/connect/ConnectAuthenticationResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/connect/ConnectAuthenticationResult;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectAuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/ServerCredentials;->setConnectAccessToken(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectAuthenticationResult;->getUser()Lmediabrowser/model/connect/ConnectUser;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/connect/ConnectUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/ServerCredentials;->setConnectUserId(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v1, v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->SaveCredentials(Lmediabrowser/model/apiclient/ServerCredentials;)V

    .line 32
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectAuthenticationResult;->getUser()Lmediabrowser/model/connect/ConnectUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnConnectUserSignIn(Lmediabrowser/model/connect/ConnectUser;)V

    .line 34
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
