.class final Ltv/emby/embyatv/util/Utils$25;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->signInToServer(Lmediabrowser/apiinteraction/IConnectionManager;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1824
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$25;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1844
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$25;->val$activity:Landroid/app/Activity;

    const v0, 0x7f10062c

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1824
    check-cast p1, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$25;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 3

    .line 1827
    sget-object v0, Ltv/emby/embyatv/util/Utils$36;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1837
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response from server login "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1838
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$25;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$25;->val$activity:Landroid/app/Activity;

    const v1, 0x7f10062c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1830
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setLoginApiClient(Lmediabrowser/apiinteraction/ApiClient;)V

    .line 1832
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$25;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/startup/SelectUserActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 1833
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1834
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$25;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
