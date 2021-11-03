.class Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/ConnectActivity$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/connect/PinStatusResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/startup/ConnectActivity$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/ConnectActivity$1$1;)V
    .locals 0

    .line 47
    iput-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/ConnectActivity$1$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lmediabrowser/model/connect/PinStatusResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->onResponse(Lmediabrowser/model/connect/PinStatusResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/connect/PinStatusResult;)V
    .locals 2

    .line 50
    invoke-virtual {p1}, Lmediabrowser/model/connect/PinStatusResult;->getIsConfirmed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/ConnectActivity$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iget-object v0, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/ConnectActivity$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity$1;->this$0:Ltv/emby/embyatv/startup/ConnectActivity;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity;->pinResult:Lmediabrowser/model/connect/PinCreationResult;

    new-instance v1, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;-><init>(Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;)V

    invoke-interface {p1, v0, v1}, Lmediabrowser/apiinteraction/IConnectionManager;->ExchangePin(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/ConnectActivity$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity$1;->this$0:Ltv/emby/embyatv/startup/ConnectActivity;

    const v1, 0x7f100627

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/startup/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
