.class Ltv/emby/embyatv/startup/StartupActivity$1;
.super Lmediabrowser/apiinteraction/Response;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/StartupActivity;->establishConnection(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/apiinteraction/ConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/startup/StartupActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/StartupActivity;Landroid/app/Activity;Lmediabrowser/apiinteraction/IConnectionManager;)V
    .locals 0

    .line 212
    iput-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    iput-object p2, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 291
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to connect to configured server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v1}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/startup/LogonCredentials;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/startup/StartupActivity;->access$100(Ltv/emby/embyatv/startup/StartupActivity;Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p1, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/StartupActivity$1;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 2

    .line 215
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 216
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to connect to configured server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v1}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/startup/LogonCredentials;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/startup/StartupActivity;->access$100(Ltv/emby/embyatv/startup/StartupActivity;Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLoginApiClient(Lmediabrowser/apiinteraction/ApiClient;)V

    .line 222
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/startup/LogonCredentials;->getUserDto()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/startup/StartupActivity$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/startup/StartupActivity$1$1;-><init>(Ltv/emby/embyatv/startup/StartupActivity$1;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetUserAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
