.class Ltv/emby/embyatv/startup/StartupActivity$1$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/StartupActivity$1$1;->onError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/users/AuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/StartupActivity$1$1;)V
    .locals 0

    .line 254
    iput-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 268
    invoke-super {p0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    .line 269
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error logging in"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 270
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    const v1, 0x7f100630

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/startup/StartupActivity$1$1$1$1;-><init>(Ltv/emby/embyatv/startup/StartupActivity$1$1$1;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 254
    check-cast p1, Lmediabrowser/model/users/AuthenticationResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->onResponse(Lmediabrowser/model/users/AuthenticationResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/users/AuthenticationResult;)V
    .locals 4

    .line 259
    :try_start_0
    new-instance v0, Ltv/emby/embyatv/startup/LogonCredentials;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v1}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v1

    invoke-virtual {p1}, Lmediabrowser/model/users/AuthenticationResult;->getUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    iget-object v3, v3, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v3, v3, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v3}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUserPw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ltv/emby/embyatv/startup/LogonCredentials;-><init>(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V

    const-string v1, "tv.mediabrowser.login.json"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->SaveLoginCredentials(Ltv/emby/embyatv/startup/LogonCredentials;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/users/AuthenticationResult;->getUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/StartupActivity$1$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v1}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDirectItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->loginAuthenticatedUser(Lmediabrowser/model/dto/UserDto;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
