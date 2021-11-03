.class public Lmediabrowser/apiinteraction/ApiClientRequestListener;
.super Lmediabrowser/apiinteraction/Response;
.source "ApiClientRequestListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private apiClient:Lmediabrowser/apiinteraction/ApiClient;

.field private fireGlobalEvents:Z

.field private innerStringResponse:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/ApiClient;ZLmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/ApiClient;",
            "Z",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p3}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    .line 16
    iput-boolean p2, p0, Lmediabrowser/apiinteraction/ApiClientRequestListener;->fireGlobalEvents:Z

    .line 17
    iput-object p1, p0, Lmediabrowser/apiinteraction/ApiClientRequestListener;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    .line 18
    iput-object p3, p0, Lmediabrowser/apiinteraction/ApiClientRequestListener;->innerStringResponse:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 30
    instance-of v0, p1, Lmediabrowser/model/net/HttpException;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p1

    check-cast v0, Lmediabrowser/model/net/HttpException;

    .line 34
    iget-boolean v1, p0, Lmediabrowser/apiinteraction/ApiClientRequestListener;->fireGlobalEvents:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmediabrowser/model/net/HttpException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmediabrowser/model/net/HttpException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 36
    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClientRequestListener;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v1, v0}, Lmediabrowser/apiinteraction/ApiClient;->OnRemoteLoggedOut(Lmediabrowser/model/net/HttpException;)V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClientRequestListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClientRequestListener;->innerStringResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
