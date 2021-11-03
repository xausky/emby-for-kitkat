.class final Ltv/emby/embyatv/util/Utils$24;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->signInToServer(Lmediabrowser/apiinteraction/IConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Landroid/app/Activity;)V
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

.field final synthetic val$server:Lmediabrowser/model/apiclient/ServerInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/IConnectionManager;)V
    .locals 0

    .line 1750
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$24;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$24;->val$server:Lmediabrowser/model/apiclient/ServerInfo;

    iput-object p3, p0, Ltv/emby/embyatv/util/Utils$24;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1750
    check-cast p1, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$24;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 4

    .line 1753
    sget-object v0, Ltv/emby/embyatv/util/Utils$36;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1814
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " trying to sign in to specific server "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$24;->val$server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1764
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$24;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$24;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$24;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1765
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$24;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1005a8

    .line 1766
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$24;->val$activity:Landroid/app/Activity;

    const v2, 0x7f10065f

    .line 1767
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/emby/embyatv/util/Utils$24;->val$server:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100464

    const/4 v1, 0x0

    .line 1768
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Wake"

    new-instance v1, Ltv/emby/embyatv/util/Utils$24$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/Utils$24$2;-><init>(Ltv/emby/embyatv/util/Utils$24;)V

    .line 1769
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100580

    new-instance v1, Ltv/emby/embyatv/util/Utils$24$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/Utils$24$1;-><init>(Ltv/emby/embyatv/util/Utils$24;)V

    .line 1797
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1810
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1757
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setLoginApiClient(Lmediabrowser/apiinteraction/ApiClient;)V

    .line 1759
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$24;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/startup/SelectUserActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 1760
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1761
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$24;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
