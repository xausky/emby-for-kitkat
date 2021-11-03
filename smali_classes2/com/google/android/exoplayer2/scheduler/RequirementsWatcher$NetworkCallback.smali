.class final Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RequirementsWatcher.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkCallback"
.end annotation


# instance fields
.field networkValidated:Z

.field receivedCapabilitiesChange:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$1;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;-><init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V

    return-void
.end method

.method public static synthetic lambda$onNetworkCallback$0(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$400(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$200(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V

    :cond_0
    return-void
.end method

.method private onNetworkCallback()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$300(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/scheduler/-$$Lambda$RequirementsWatcher$NetworkCallback$791AAbo2y2AoEG_LWG4fQV9-Ibc;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/scheduler/-$$Lambda$RequirementsWatcher$NetworkCallback$791AAbo2y2AoEG_LWG4fQV9-Ibc;-><init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->onNetworkCallback()V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0x10

    .line 180
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    .line 181
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->receivedCapabilitiesChange:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->networkValidated:Z

    if-eq p2, p1, :cond_1

    :cond_0
    const/4 p2, 0x1

    .line 182
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->receivedCapabilitiesChange:Z

    .line 183
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->networkValidated:Z

    .line 184
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->onNetworkCallback()V

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->onNetworkCallback()V

    return-void
.end method
