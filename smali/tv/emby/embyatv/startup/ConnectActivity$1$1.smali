.class Ltv/emby/embyatv/startup/ConnectActivity$1$1;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/ConnectActivity$1;->onResponse(Lmediabrowser/model/connect/PinCreationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/ConnectActivity$1;)V
    .locals 0

    .line 44
    iput-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    iget-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    iget-object p1, p1, Ltv/emby/embyatv/startup/ConnectActivity$1;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iget-object v0, p0, Ltv/emby/embyatv/startup/ConnectActivity$1$1;->this$1:Ltv/emby/embyatv/startup/ConnectActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity$1;->this$0:Ltv/emby/embyatv/startup/ConnectActivity;

    iget-object v0, v0, Ltv/emby/embyatv/startup/ConnectActivity;->pinResult:Lmediabrowser/model/connect/PinCreationResult;

    new-instance v1, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/startup/ConnectActivity$1$1$1;-><init>(Ltv/emby/embyatv/startup/ConnectActivity$1$1;)V

    invoke-interface {p1, v0, v1}, Lmediabrowser/apiinteraction/IConnectionManager;->GetPinStatus(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
