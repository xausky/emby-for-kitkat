.class public Lmediabrowser/apiinteraction/connectionmanager/ConnectToSingleServerListResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "ConnectToSingleServerListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/apiinteraction/ConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private response:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 15
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectToSingleServerListResponse;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectToSingleServerListResponse;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 22
    sget-object v0, Lmediabrowser/model/apiclient/ConnectionState;->ServerSelection:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/ConnectionResult;->setState(Lmediabrowser/model/apiclient/ConnectionState;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectToSingleServerListResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
