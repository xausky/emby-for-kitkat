.class Ltv/emby/embyatv/startup/StartupActivity$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/StartupActivity$1;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/UserDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/startup/StartupActivity$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/StartupActivity$1;)V
    .locals 0

    .line 222
    iput-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 251
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error Signing in.  Will try to re-authenticate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 253
    :try_start_0
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {p1}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/startup/LogonCredentials;->getPw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setCurrentUserPw(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {p1}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/startup/LogonCredentials;->getUserDto()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v1}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUserPw()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/startup/StartupActivity$1$1$1;-><init>(Ltv/emby/embyatv/startup/StartupActivity$1$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->AuthenticateUserAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 280
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p1, Lmediabrowser/model/dto/UserDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/StartupActivity$1$1;->onResponse(Lmediabrowser/model/dto/UserDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/UserDto;)V
    .locals 3

    .line 225
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setCurrentUser(Lmediabrowser/model/dto/UserDto;)V

    .line 226
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getConnectUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setConnectLogin(Z)V

    .line 227
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDirectItemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 228
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getAppValidator()Ltv/emby/embyatv/validation/AppValidator;

    move-result-object v0

    new-instance v1, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/AppValidator;->validate(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 229
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->determineAutoBitrate()V

    .line 230
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getHasPassword()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    .line 231
    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getIsAutoLoginConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    .line 232
    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_auto_pw_prompt"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v1}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDirectItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ltv/emby/embyatv/util/Utils;->processPasswordEntry(Landroid/app/Activity;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v1}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDirectItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->loginAuthenticatedUser(Lmediabrowser/model/dto/UserDto;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getHasPassword()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    invoke-static {v0}, Ltv/emby/embyatv/startup/StartupActivity;->access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_auto_pw_prompt"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->processPasswordEntry(Landroid/app/Activity;Lmediabrowser/model/dto/UserDto;)V

    goto :goto_1

    .line 244
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$1$1;->this$1:Ltv/emby/embyatv/startup/StartupActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/StartupActivity$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->loginAuthenticatedUser(Lmediabrowser/model/dto/UserDto;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
