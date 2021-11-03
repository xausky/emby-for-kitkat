.class public Lmediabrowser/apiinteraction/SerializedResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "SerializedResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected innerResponse:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "TT;>;"
        }
    .end annotation
.end field

.field private jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private type:Ljava/lang/Class;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "TT;>;",
            "Lmediabrowser/model/serialization/IJsonSerializer;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    .line 17
    iput-object p2, p0, Lmediabrowser/apiinteraction/SerializedResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    .line 18
    iput-object p3, p0, Lmediabrowser/apiinteraction/SerializedResponse;->type:Ljava/lang/Class;

    .line 19
    iput-object p1, p0, Lmediabrowser/apiinteraction/SerializedResponse;->innerResponse:Lmediabrowser/apiinteraction/Response;

    return-void
.end method

.method public constructor <init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/String;Lmediabrowser/model/logging/ILogger;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "TT;>;",
            "Lmediabrowser/model/serialization/IJsonSerializer;",
            "Ljava/lang/String;",
            "Lmediabrowser/model/logging/ILogger;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    .line 24
    iput-object p2, p0, Lmediabrowser/apiinteraction/SerializedResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    .line 25
    iput-object p5, p0, Lmediabrowser/apiinteraction/SerializedResponse;->type:Ljava/lang/Class;

    .line 26
    iput-object p1, p0, Lmediabrowser/apiinteraction/SerializedResponse;->innerResponse:Lmediabrowser/apiinteraction/Response;

    .line 27
    iput-object p3, p0, Lmediabrowser/apiinteraction/SerializedResponse;->url:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lmediabrowser/apiinteraction/SerializedResponse;->logger:Lmediabrowser/model/logging/ILogger;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/SerializedResponse;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5

    .line 35
    iget-object v0, p0, Lmediabrowser/apiinteraction/SerializedResponse;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lmediabrowser/apiinteraction/SerializedResponse;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Received response from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmediabrowser/apiinteraction/SerializedResponse;->url:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/SerializedResponse;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    iget-object v1, p0, Lmediabrowser/apiinteraction/SerializedResponse;->type:Ljava/lang/Class;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/SerializedResponse;->onSerializedResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    iget-object v0, p0, Lmediabrowser/apiinteraction/SerializedResponse;->innerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected onSerializedResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lmediabrowser/apiinteraction/SerializedResponse;->innerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
