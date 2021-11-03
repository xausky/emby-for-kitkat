.class public Lmediabrowser/apiinteraction/connectionmanager/BeginWakeServerRunnable;
.super Ljava/lang/Object;
.source "BeginWakeServerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private info:Lmediabrowser/model/apiclient/ServerInfo;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/BeginWakeServerRunnable;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 13
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/BeginWakeServerRunnable;->info:Lmediabrowser/model/apiclient/ServerInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 18
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/BeginWakeServerRunnable;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/BeginWakeServerRunnable;->info:Lmediabrowser/model/apiclient/ServerInfo;

    new-instance v2, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->WakeServer(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
