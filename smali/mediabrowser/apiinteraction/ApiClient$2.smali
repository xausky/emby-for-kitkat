.class Lmediabrowser/apiinteraction/ApiClient$2;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmediabrowser/apiinteraction/ApiClient;->Logout(Lmediabrowser/apiinteraction/EmptyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmediabrowser/apiinteraction/ApiClient;

.field final synthetic val$response:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 2249
    iput-object p1, p0, Lmediabrowser/apiinteraction/ApiClient$2;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    iput-object p2, p0, Lmediabrowser/apiinteraction/ApiClient$2;->val$response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 2261
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient$2;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    iget-object v0, v0, Lmediabrowser/apiinteraction/ApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Error logging out"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 2262
    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient$2;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ApiClient;->ClearAuthenticationInfo()V

    .line 2263
    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient$2;->val$response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public onResponse()V
    .locals 1

    .line 2254
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient$2;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->ClearAuthenticationInfo()V

    .line 2255
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient$2;->val$response:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
