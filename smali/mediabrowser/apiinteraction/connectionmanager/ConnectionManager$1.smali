.class Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->GetRegistrationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field final synthetic val$featureName:Ljava/lang/String;

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;->this$0:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;->val$featureName:Ljava/lang/String;

    iput-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 763
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;->this$0:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    iget-object v0, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Error in GetRegistrationInfo"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 764
    new-instance v0, Lmediabrowser/model/registration/RegistrationInfo;

    invoke-direct {v0}, Lmediabrowser/model/registration/RegistrationInfo;-><init>()V

    .line 765
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/registration/RegistrationInfo;->setName(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0, v2}, Lmediabrowser/model/registration/RegistrationInfo;->setIsTrial(Z)V

    .line 767
    invoke-virtual {v0, v2}, Lmediabrowser/model/registration/RegistrationInfo;->setIsRegistered(Z)V

    .line 769
    instance-of v1, p1, Lmediabrowser/model/net/HttpException;

    if-eqz v1, :cond_0

    .line 770
    check-cast p1, Lmediabrowser/model/net/HttpException;

    .line 772
    invoke-virtual {p1}, Lmediabrowser/model/net/HttpException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 773
    invoke-virtual {p1}, Lmediabrowser/model/net/HttpException;->getStatusCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x193

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 774
    invoke-virtual {v0, p1}, Lmediabrowser/model/registration/RegistrationInfo;->setIsOverLimit(Z)V

    .line 778
    :cond_0
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 753
    new-instance v0, Lmediabrowser/model/registration/RegistrationInfo;

    invoke-direct {v0}, Lmediabrowser/model/registration/RegistrationInfo;-><init>()V

    .line 754
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/registration/RegistrationInfo;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 755
    invoke-virtual {v0, v1}, Lmediabrowser/model/registration/RegistrationInfo;->setIsTrial(Z)V

    const/4 v1, 0x1

    .line 756
    invoke-virtual {v0, v1}, Lmediabrowser/model/registration/RegistrationInfo;->setIsRegistered(Z)V

    .line 757
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
