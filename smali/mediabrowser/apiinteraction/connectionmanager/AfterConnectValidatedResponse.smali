.class public Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "AfterConnectValidatedResponse.java"


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

.field private credentials:Lmediabrowser/model/apiclient/ServerCredentials;

.field private options:Lmediabrowser/model/apiclient/ConnectionOptions;

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
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 27
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    .line 28
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    .line 29
    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->systemInfo:Lmediabrowser/model/system/PublicSystemInfo;

    .line 30
    iput-object p5, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    .line 31
    iput-object p6, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->options:Lmediabrowser/model/apiclient/ConnectionOptions;

    .line 32
    iput-object p7, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 8

    .line 38
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    iget-object v3, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->systemInfo:Lmediabrowser/model/system/PublicSystemInfo;

    iget-object v4, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    iget-object v6, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->options:Lmediabrowser/model/apiclient/ConnectionOptions;

    iget-object v7, p0, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;->response:Lmediabrowser/apiinteraction/Response;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->AfterConnectValidated(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/model/system/PublicSystemInfo;Lmediabrowser/model/apiclient/ConnectionMode;ZLmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
