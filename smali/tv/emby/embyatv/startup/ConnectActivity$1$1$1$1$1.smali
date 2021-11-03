.class Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;->onResponse(Lmediabrowser/model/connect/PinExchangeResult;)V
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
.field final synthetic this$4:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;)V
    .locals 0

    .line 56
    iput-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1$1;->this$4:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 66
    iget-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1$1;->this$4:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;->this$3:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/ConnectActivity$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$activity:Landroid/app/Activity;

    const-string v0, "Error connecting"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->reportError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1$1;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 3

    .line 59
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setConnectLogin(Z)V

    .line 60
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_login_behavior"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    iget-object v0, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1$1;->this$4:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;->this$3:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/ConnectActivity$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iget-object v1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1$1;->this$4:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;->this$3:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/ConnectActivity$1$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    iget-object v1, v1, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Ltv/emby/embyatv/util/Utils;->handleConnectionResponse(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method
