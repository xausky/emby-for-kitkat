.class Lmediabrowser/apiinteraction/ApiClient$3;
.super Lmediabrowser/apiinteraction/Response;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmediabrowser/apiinteraction/ApiClient;->detectBitrate(Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmediabrowser/apiinteraction/ApiClient;

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/IResponse;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 2643
    iput-object p1, p0, Lmediabrowser/apiinteraction/ApiClient$3;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    iput-object p3, p0, Lmediabrowser/apiinteraction/ApiClient$3;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Long;)V
    .locals 5

    .line 2648
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x2dc6c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2649
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient$3;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 2654
    :cond_0
    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient$3;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    new-instance v0, Lmediabrowser/apiinteraction/ApiClient$3$1;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient$3;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {v0, p0, v1}, Lmediabrowser/apiinteraction/ApiClient$3$1;-><init>(Lmediabrowser/apiinteraction/ApiClient$3;Lmediabrowser/apiinteraction/IResponse;)V

    invoke-virtual {p1, v2, v3, v0}, Lmediabrowser/apiinteraction/ApiClient;->detectBitrate(JLmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2643
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient$3;->onResponse(Ljava/lang/Long;)V

    return-void
.end method
