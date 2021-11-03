.class public Lmediabrowser/apiinteraction/connectionmanager/GetConnectUserResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "GetConnectUserResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/connect/ConnectUser;",
        ">;"
    }
.end annotation


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private response:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 13
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectUserResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 14
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectUserResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectUserResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lmediabrowser/model/connect/ConnectUser;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/GetConnectUserResponse;->onResponse(Lmediabrowser/model/connect/ConnectUser;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/connect/ConnectUser;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectUserResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnConnectUserSignIn(Lmediabrowser/model/connect/ConnectUser;)V

    .line 21
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectUserResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
