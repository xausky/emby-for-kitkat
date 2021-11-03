.class public Lmediabrowser/apiinteraction/EmptyResponse;
.super Ljava/lang/Object;
.source "EmptyResponse.java"

# interfaces
.implements Lmediabrowser/apiinteraction/IResponse;


# instance fields
.field private innerResponse:Lmediabrowser/apiinteraction/IResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/apiinteraction/IResponse;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lmediabrowser/apiinteraction/EmptyResponse;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lmediabrowser/apiinteraction/EmptyResponse;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lmediabrowser/apiinteraction/EmptyResponse;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    invoke-interface {v0, p1}, Lmediabrowser/apiinteraction/IResponse;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onResponse()V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/EmptyResponse;->triggerInnerResponse()V

    return-void
.end method

.method protected triggerInnerResponse()V
    .locals 1

    .line 22
    iget-object v0, p0, Lmediabrowser/apiinteraction/EmptyResponse;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmediabrowser/apiinteraction/EmptyResponse;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    instance-of v0, v0, Lmediabrowser/apiinteraction/EmptyResponse;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lmediabrowser/apiinteraction/EmptyResponse;->innerResponse:Lmediabrowser/apiinteraction/IResponse;

    check-cast v0, Lmediabrowser/apiinteraction/EmptyResponse;

    .line 25
    invoke-virtual {v0}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method
