.class public Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "TestNextConnectionModeTryConnectResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/system/PublicSystemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private finalTimeout:I

.field private index:I

.field private isLocalNetworkAvailable:Z

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private mode:Lmediabrowser/model/apiclient/ConnectionMode;

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

.field private tests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ConnectionMode;",
            ">;"
        }
    .end annotation
.end field

.field private wakeOnLanSendTime:J


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Ljava/util/ArrayList;Lmediabrowser/model/apiclient/ConnectionMode;Ljava/lang/String;ILmediabrowser/model/apiclient/ConnectionOptions;IZJLmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ConnectionMode;",
            ">;",
            "Lmediabrowser/model/apiclient/ConnectionMode;",
            "Ljava/lang/String;",
            "I",
            "Lmediabrowser/model/apiclient/ConnectionOptions;",
            "IZJ",
            "Lmediabrowser/model/logging/ILogger;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 33
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 34
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    .line 35
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->tests:Ljava/util/ArrayList;

    .line 36
    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->mode:Lmediabrowser/model/apiclient/ConnectionMode;

    .line 37
    iput-object p5, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->address:Ljava/lang/String;

    .line 38
    iput p6, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->finalTimeout:I

    .line 39
    iput-object p7, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->options:Lmediabrowser/model/apiclient/ConnectionOptions;

    .line 40
    iput p8, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->index:I

    .line 41
    iput-boolean p9, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->isLocalNetworkAvailable:Z

    .line 42
    iput-wide p10, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->wakeOnLanSendTime:J

    .line 43
    iput-object p12, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->logger:Lmediabrowser/model/logging/ILogger;

    .line 44
    iput-object p13, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 9

    .line 68
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->tests:Ljava/util/ArrayList;

    iget p1, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->index:I

    add-int/lit8 v2, p1, 0x1

    iget-boolean v3, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->isLocalNetworkAvailable:Z

    iget-object v4, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    iget-wide v5, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->wakeOnLanSendTime:J

    iget-object v7, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->options:Lmediabrowser/model/apiclient/ConnectionOptions;

    iget-object v8, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual/range {v0 .. v8}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->TestNextConnectionMode(Ljava/util/ArrayList;IZLmediabrowser/model/apiclient/ServerInfo;JLmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lmediabrowser/model/system/PublicSystemInfo;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->onResponse(Lmediabrowser/model/system/PublicSystemInfo;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/system/PublicSystemInfo;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/system/PublicSystemInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid server"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->server:Lmediabrowser/model/apiclient/ServerInfo;

    iget-object v4, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->mode:Lmediabrowser/model/apiclient/ConnectionMode;

    iget-object v5, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->options:Lmediabrowser/model/apiclient/ConnectionOptions;

    iget-object v6, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->response:Lmediabrowser/apiinteraction/Response;

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnSuccessfulConnection(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/system/PublicSystemInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v0, "Somehow we got into TestNextConnectionModeTryConnectResponse.onResponse with a null response."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
