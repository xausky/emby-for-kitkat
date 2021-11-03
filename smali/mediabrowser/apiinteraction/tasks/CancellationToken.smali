.class public final Lmediabrowser/apiinteraction/tasks/CancellationToken;
.super Ljava/lang/Object;
.source "CancellationToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;
    }
.end annotation


# instance fields
.field private isCancellationRequested:Z

.field private tokenState:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->NOT_FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    iput-object v0, p0, Lmediabrowser/apiinteraction/tasks/CancellationToken;->tokenState:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lmediabrowser/apiinteraction/tasks/CancellationToken;->isCancellationRequested:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    iput-object v0, p0, Lmediabrowser/apiinteraction/tasks/CancellationToken;->tokenState:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    .line 54
    iput-boolean p1, p0, Lmediabrowser/apiinteraction/tasks/CancellationToken;->isCancellationRequested:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lmediabrowser/apiinteraction/tasks/CancellationToken;->isCancellationRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmediabrowser/apiinteraction/tasks/CancellationToken;->tokenState:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    sget-object v1, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lmediabrowser/apiinteraction/tasks/CancellationToken;->isCancellationRequested:Z

    .line 78
    sget-object v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    iput-object v0, p0, Lmediabrowser/apiinteraction/tasks/CancellationToken;->tokenState:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change the state of a fixed cancellation token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 72
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCancellationRequested()Z
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lmediabrowser/apiinteraction/tasks/CancellationToken;->isCancellationRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
