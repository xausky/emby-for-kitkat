.class Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "EditSubPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;)V
    .locals 0

    .line 109
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1$1;->this$4:Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 117
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1$1;->this$4:Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;->this$3:Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const v1, 0x7f1003e1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 118
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error downloading subtitle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 112
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1$1;->this$4:Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;->this$3:Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const v1, 0x7f10025c

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
