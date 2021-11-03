.class public Lmediabrowser/apiinteraction/android/VolleyErrorListener;
.super Ljava/lang/Object;
.source "VolleyErrorListener.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private logger:Lmediabrowser/model/logging/ILogger;

.field private outerResponse:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/logging/ILogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "TT;>;",
            "Lmediabrowser/model/logging/ILogger;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/VolleyErrorListener;->outerResponse:Lmediabrowser/apiinteraction/Response;

    .line 16
    iput-object p2, p0, Lmediabrowser/apiinteraction/android/VolleyErrorListener;->logger:Lmediabrowser/model/logging/ILogger;

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolleyError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/VolleyErrorListener;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 40
    new-instance v1, Lmediabrowser/model/net/HttpException;

    invoke-direct {v1, v0, p1}, Lmediabrowser/model/net/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 42
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/net/HttpException;->setStatusCode(Ljava/lang/Integer;)V

    .line 45
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lmediabrowser/model/net/HttpException;->setHeaders(Ljava/util/Map;)V

    .line 48
    :cond_0
    instance-of p1, p1, Lcom/android/volley/TimeoutError;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 49
    invoke-virtual {v1, p1}, Lmediabrowser/model/net/HttpException;->setIsTimedOut(Z)V

    .line 52
    :cond_1
    iget-object p1, p0, Lmediabrowser/apiinteraction/android/VolleyErrorListener;->outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, v1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method
