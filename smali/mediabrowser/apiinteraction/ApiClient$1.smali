.class Lmediabrowser/apiinteraction/ApiClient$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmediabrowser/apiinteraction/ApiClient;->AuthenticateUserAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmediabrowser/apiinteraction/ApiClient;

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/IResponse;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lmediabrowser/apiinteraction/ApiClient$1;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    iput-object p3, p0, Lmediabrowser/apiinteraction/ApiClient$1;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1313
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 1318
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient$1;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    const-class v1, Lmediabrowser/model/users/AuthenticationResult;

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/users/AuthenticationResult;

    .line 1320
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient$1;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/model/users/AuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmediabrowser/model/users/AuthenticationResult;->getUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->SetAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient$1;->this$0:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getAuthenticatedObservable()Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 1324
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient$1;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
