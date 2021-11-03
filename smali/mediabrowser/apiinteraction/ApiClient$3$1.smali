.class Lmediabrowser/apiinteraction/ApiClient$3$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmediabrowser/apiinteraction/ApiClient$3;->onResponse(Ljava/lang/Long;)V
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
.field final synthetic this$1:Lmediabrowser/apiinteraction/ApiClient$3;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/ApiClient$3;Lmediabrowser/apiinteraction/IResponse;)V
    .locals 0

    .line 2654
    iput-object p1, p0, Lmediabrowser/apiinteraction/ApiClient$3$1;->this$1:Lmediabrowser/apiinteraction/ApiClient$3;

    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Long;)V
    .locals 5

    .line 2659
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient$3$1;->this$1:Lmediabrowser/apiinteraction/ApiClient$3;

    iget-object v0, v0, Lmediabrowser/apiinteraction/ApiClient$3;->val$response:Lmediabrowser/apiinteraction/Response;

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
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2654
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient$3$1;->onResponse(Ljava/lang/Long;)V

    return-void
.end method
