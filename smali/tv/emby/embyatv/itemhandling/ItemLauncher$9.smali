.class final Ltv/emby/embyatv/itemhandling/ItemLauncher$9;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemLauncher;->ServerSignIn(Lmediabrowser/apiinteraction/IConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Landroid/app/Activity;)V
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

.field final synthetic val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

.field final synthetic val$serverInfo:Lmediabrowser/model/apiclient/ServerInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/IConnectionManager;)V
    .locals 0

    .line 502
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 586
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    const-string v1, "Error Signing in to server"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 502
    check-cast p1, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 4

    .line 505
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getConnectUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setConnectLogin(Z)V

    .line 506
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 579
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response from server connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 558
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isConnectLogin()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_login_behavior"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 571
    :cond_1
    :pswitch_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setLoginApiClient(Lmediabrowser/apiinteraction/ApiClient;)V

    .line 573
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/startup/SelectUserActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 574
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 575
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 560
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$3;-><init>(Ltv/emby/embyatv/itemhandling/ItemLauncher$9;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetUserAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_2

    .line 508
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 509
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1005a8

    .line 510
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    const v1, 0x7f10065f

    .line 511
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100464

    const/4 v1, 0x0

    .line 512
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Wake"

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2;-><init>(Ltv/emby/embyatv/itemhandling/ItemLauncher$9;)V

    .line 513
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100580

    new-instance v1, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;-><init>(Ltv/emby/embyatv/itemhandling/ItemLauncher$9;)V

    .line 541
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 554
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
