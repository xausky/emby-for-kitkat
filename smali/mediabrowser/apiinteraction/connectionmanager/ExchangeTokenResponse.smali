.class public Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "ExchangeTokenResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field private response:Lmediabrowser/apiinteraction/EmptyResponse;

.field private server:Lmediabrowser/model/apiclient/ServerInfo;


# direct methods
.method public constructor <init>(Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 16
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    .line 17
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    .line 18
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setUserId(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setAccessToken(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/model/connect/ConnectAuthenticationExchangeResult;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/connect/ConnectAuthenticationExchangeResult;

    .line 26
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectAuthenticationExchangeResult;->getLocalUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/ServerInfo;->setUserId(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectAuthenticationExchangeResult;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/apiclient/ServerInfo;->setAccessToken(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
