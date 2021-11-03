.class public Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ApiClientLogoutResponse.java"


# instance fields
.field private apiClient:Lmediabrowser/apiinteraction/ApiClient;

.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private count:I

.field private doneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;ILmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/ApiClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lmediabrowser/apiinteraction/EmptyResponse;",
            "Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;",
            "Lmediabrowser/apiinteraction/ApiClient;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    .line 17
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->doneList:Ljava/util/ArrayList;

    .line 18
    iput p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->count:I

    .line 19
    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 20
    iput-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 21
    iput-object p5, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->onResponse()V

    return-void
.end method

.method public onResponse()V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->onResponse(Z)V

    return-void
.end method

.method public onResponse(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnLocalUserSignout(Lmediabrowser/apiinteraction/ApiClient;)V

    .line 35
    :cond_0
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->doneList:Ljava/util/ArrayList;

    monitor-enter p1

    .line 37
    :try_start_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->doneList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->doneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->count:I

    if-lt v0, v1, :cond_1

    .line 40
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    .line 42
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
