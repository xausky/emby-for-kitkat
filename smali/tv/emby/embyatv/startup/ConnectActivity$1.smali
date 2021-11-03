.class Ltv/emby/embyatv/startup/ConnectActivity$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/ConnectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/connect/PinCreationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/startup/ConnectActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

.field final synthetic val$next:Landroid/widget/Button;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/ConnectActivity;Landroid/widget/Button;Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1;->this$0:Ltv/emby/embyatv/startup/ConnectActivity;

    iput-object p2, p0, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$next:Landroid/widget/Button;

    iput-object p3, p0, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iput-object p4, p0, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 82
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lmediabrowser/model/connect/PinCreationResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ConnectActivity$1;->onResponse(Lmediabrowser/model/connect/PinCreationResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/connect/PinCreationResult;)V
    .locals 2

    .line 41
    iget-object v0, p0, Ltv/emby/embyatv/startup/ConnectActivity$1;->this$0:Ltv/emby/embyatv/startup/ConnectActivity;

    iput-object p1, v0, Ltv/emby/embyatv/startup/ConnectActivity;->pinResult:Lmediabrowser/model/connect/PinCreationResult;

    .line 42
    iget-object v0, p0, Ltv/emby/embyatv/startup/ConnectActivity$1;->this$0:Ltv/emby/embyatv/startup/ConnectActivity;

    const v1, 0x7f0a02fe

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/startup/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    invoke-virtual {p1}, Lmediabrowser/model/connect/PinCreationResult;->getPin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$next:Landroid/widget/Button;

    new-instance v0, Ltv/emby/embyatv/startup/ConnectActivity$1$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/startup/ConnectActivity$1$1;-><init>(Ltv/emby/embyatv/startup/ConnectActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
