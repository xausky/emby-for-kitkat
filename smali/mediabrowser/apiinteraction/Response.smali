.class public Lmediabrowser/apiinteraction/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lmediabrowser/apiinteraction/IResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmediabrowser/apiinteraction/IResponse;"
    }
.end annotation


# instance fields
.field private innerResponse:Lmediabrowser/apiinteraction/IResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/apiinteraction/IResponse;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lmediabrowser/apiinteraction/Response;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/apiinteraction/Response;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lmediabrowser/apiinteraction/Response;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    invoke-interface {v0, p1}, Lmediabrowser/apiinteraction/IResponse;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/Response;->triggerInnerResponse()V

    return-void
.end method

.method protected triggerInnerResponse()V
    .locals 1

    .line 21
    iget-object v0, p0, Lmediabrowser/apiinteraction/Response;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmediabrowser/apiinteraction/Response;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    instance-of v0, v0, Lmediabrowser/apiinteraction/EmptyResponse;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lmediabrowser/apiinteraction/Response;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    check-cast v0, Lmediabrowser/apiinteraction/EmptyResponse;

    .line 24
    invoke-virtual {v0}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method
