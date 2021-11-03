.class Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->onResponse(Lmediabrowser/model/connect/PinStatusResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/connect/PinExchangeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;)V
    .locals 0

    .line 52
    iput-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;->this$3:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lmediabrowser/model/connect/PinExchangeResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;->onResponse(Lmediabrowser/model/connect/PinExchangeResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/connect/PinExchangeResult;)V
    .locals 1

    .line 56
    iget-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;->this$3:Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;->this$2:Ltv/emby/embyatv/startup/ConnectActivity$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    new-instance v0, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1$1;-><init>(Ltv/emby/embyatv/startup/ConnectActivity$1$1$1$1;)V

    invoke-interface {p1, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->Connect(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
