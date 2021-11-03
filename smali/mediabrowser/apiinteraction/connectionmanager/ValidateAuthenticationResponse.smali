.class public Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "ValidateAuthenticationResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

.field private jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field private request:Lmediabrowser/apiinteraction/http/HttpRequest;

.field private response:Lmediabrowser/apiinteraction/EmptyResponse;

.field private server:Lmediabrowser/model/apiclient/ServerInfo;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 25
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 26
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    .line 27
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    .line 28
    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 29
    iput-object p5, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    .line 30
    iput-object p6, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    .line 31
    iput-object p7, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setUserId(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setAccessToken(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 6

    .line 37
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/model/system/SystemInfo;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/system/SystemInfo;

    .line 38
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0, p1}, Lmediabrowser/model/apiclient/ServerInfo;->ImportInfo(Lmediabrowser/model/system/PublicSystemInfo;)V

    .line 40
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/emby/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    new-instance v1, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v3, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    iget-object v4, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    iget-object v5, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v1, v2, v3, v4, v5}, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-interface {p1, v0, v1}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :goto_0
    return-void
.end method
