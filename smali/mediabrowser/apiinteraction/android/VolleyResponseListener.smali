.class public Lmediabrowser/apiinteraction/android/VolleyResponseListener;
.super Ljava/lang/Object;
.source "VolleyResponseListener.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "TT;>;"
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

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "TT;>;",
            "Lmediabrowser/model/logging/ILogger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/VolleyResponseListener;->outerResponse:Lmediabrowser/apiinteraction/Response;

    .line 14
    iput-object p2, p0, Lmediabrowser/apiinteraction/android/VolleyResponseListener;->logger:Lmediabrowser/model/logging/ILogger;

    .line 15
    iput-object p3, p0, Lmediabrowser/apiinteraction/android/VolleyResponseListener;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyResponseListener;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Response received from: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmediabrowser/apiinteraction/android/VolleyResponseListener;->url:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyResponseListener;->outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
