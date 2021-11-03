.class public Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "ValidateAuthenticationInnerResponse.java"


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

.field private jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field private response:Lmediabrowser/apiinteraction/EmptyResponse;

.field private server:Lmediabrowser/model/apiclient/ServerInfo;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 20
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 21
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    .line 22
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    .line 23
    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setUserId(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setAccessToken(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/model/dto/UserDto;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/UserDto;

    .line 30
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnLocalUserSignIn(Lmediabrowser/model/dto/UserDto;)V

    .line 31
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationInnerResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
