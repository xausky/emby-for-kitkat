.class Ltv/emby/embyatv/ui/RecordPopup$4$2;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "RecordPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/RecordPopup$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/RecordPopup$4;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/RecordPopup$4;)V
    .locals 0

    .line 170
    iput-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4$2;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 188
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error updating settings"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 189
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4$2;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v0, 0x7f10065d

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 4

    .line 173
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4$2;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 174
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4$2;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->ActionComplete:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    .line 176
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/RecordPopup$4$2;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object v1, v1, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v1, v1, Ltv/emby/embyatv/ui/RecordPopup;->mProgramId:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/ui/RecordPopup$4$2$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/ui/RecordPopup$4$2$1;-><init>(Ltv/emby/embyatv/ui/RecordPopup$4$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvProgramAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    .line 183
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4$2;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v1, 0x7f100650

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
