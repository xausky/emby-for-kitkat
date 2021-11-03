.class public Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "WakeServerResponse.java"


# instance fields
.field private count:I

.field private doneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/apiinteraction/EmptyResponse;",
            ">;"
        }
    .end annotation
.end field

.field private innerResponse:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/apiinteraction/EmptyResponse;",
            ">;",
            "Lmediabrowser/apiinteraction/EmptyResponse;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    .line 14
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->doneList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->count:I

    .line 16
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->innerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    return-void
.end method

.method private OnServerDone()V
    .locals 3

    .line 21
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->doneList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->doneList:Ljava/util/ArrayList;

    new-instance v2, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->doneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->count:I

    if-lt v1, v2, :cond_0

    .line 26
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->innerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    .line 28
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->OnServerDone()V

    return-void
.end method

.method public onResponse()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;->OnServerDone()V

    return-void
.end method
