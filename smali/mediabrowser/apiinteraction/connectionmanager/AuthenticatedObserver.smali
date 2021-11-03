.class public Lmediabrowser/apiinteraction/connectionmanager/AuthenticatedObserver;
.super Ljava/lang/Object;
.source "AuthenticatedObserver.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private apiClient:Lmediabrowser/apiinteraction/ApiClient;

.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/ApiClient;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/AuthenticatedObserver;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 20
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/AuthenticatedObserver;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .line 25
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/AuthenticatedObserver;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/AuthenticatedObserver;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    check-cast p2, Lmediabrowser/model/users/AuthenticationResult;

    new-instance v1, Lmediabrowser/model/apiclient/ConnectionOptions;

    invoke-direct {v1}, Lmediabrowser/model/apiclient/ConnectionOptions;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v1, v2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnAuthenticated(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/users/AuthenticationResult;Lmediabrowser/model/apiclient/ConnectionOptions;Z)V

    return-void
.end method
