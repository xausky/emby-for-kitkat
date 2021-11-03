.class public Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "FindServersResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/util/ArrayList<",
        "Lmediabrowser/model/apiclient/ServerInfo;",
        ">;>;"
    }
.end annotation


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

.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private credentials:Lmediabrowser/model/apiclient/ServerCredentials;

.field private foundServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private numTasks:I

.field private numTasksCompleted:[I

.field private response:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/apiclient/ServerCredentials;Ljava/util/ArrayList;Ljava/util/ArrayList;[IILmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;",
            "Lmediabrowser/model/apiclient/ServerCredentials;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;[II",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->foundServers:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->connectServers:Ljava/util/ArrayList;

    .line 20
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 21
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    .line 22
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->foundServers:Ljava/util/ArrayList;

    .line 23
    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->connectServers:Ljava/util/ArrayList;

    .line 24
    iput-object p5, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->numTasksCompleted:[I

    .line 25
    iput p6, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->numTasks:I

    .line 26
    iput-object p7, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method

.method private OnAny(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->foundServers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->numTasksCompleted:[I

    const/4 v1, 0x0

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    .line 37
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->numTasksCompleted:[I

    aget p1, p1, v1

    iget v1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->numTasks:I

    if-lt p1, v1, :cond_0

    .line 38
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->credentials:Lmediabrowser/model/apiclient/ServerCredentials;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->foundServers:Ljava/util/ArrayList;

    iget-object v3, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->connectServers:Ljava/util/ArrayList;

    iget-object v4, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, v1, v2, v3, v4}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnGetServerResponse(Lmediabrowser/model/apiclient/ServerCredentials;Ljava/util/ArrayList;Ljava/util/ArrayList;Lmediabrowser/apiinteraction/Response;)V

    .line 40
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


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->OnAny(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;->OnAny(Ljava/util/ArrayList;)V

    return-void
.end method
