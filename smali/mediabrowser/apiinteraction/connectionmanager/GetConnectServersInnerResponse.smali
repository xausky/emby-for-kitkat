.class public Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersInnerResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "GetConnectServersInnerResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/connect/ConnectUserServer;",
        ">;"
    }
.end annotation


# instance fields
.field private parent:Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 14
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersInnerResponse;->parent:Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersInnerResponse;->parent:Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;

    const/4 v0, 0x0

    new-array v0, v0, [Lmediabrowser/model/connect/ConnectUserServer;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->OnAny([Lmediabrowser/model/connect/ConnectUserServer;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, [Lmediabrowser/model/connect/ConnectUserServer;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersInnerResponse;->onResponse([Lmediabrowser/model/connect/ConnectUserServer;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/connect/ConnectUserServer;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersInnerResponse;->parent:Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;->OnAny([Lmediabrowser/model/connect/ConnectUserServer;)V

    return-void
.end method
