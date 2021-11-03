.class public Ltv/emby/embyatv/base/EnsureContextCallback;
.super Ljava/lang/Object;
.source "EnsureContextCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 20
    instance-of p2, p1, Ltv/emby/embyatv/startup/SelectServerActivity;

    if-nez p2, :cond_1

    instance-of p2, p1, Ltv/emby/embyatv/startup/SelectUserActivity;

    if-nez p2, :cond_1

    instance-of p2, p1, Ltv/emby/embyatv/startup/DpadPwActivity;

    if-nez p2, :cond_1

    instance-of p2, p1, Ltv/emby/embyatv/startup/StartupActivity;

    if-nez p2, :cond_1

    instance-of p2, p1, Ltv/emby/embyatv/startup/ConnectActivity;

    if-nez p2, :cond_1

    instance-of p2, p1, Ltv/emby/embyatv/startup/ExpiredActivity;

    if-nez p2, :cond_1

    instance-of p2, p1, Ltv/emby/embyatv/validation/UnlockActivity;

    if-nez p2, :cond_1

    .line 26
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object p2

    if-nez p2, :cond_1

    .line 27
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Ltv/emby/embyatv/startup/StartupActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
