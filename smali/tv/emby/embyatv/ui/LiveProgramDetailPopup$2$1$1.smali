.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "LiveProgramDetailPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;)V
    .locals 0

    .line 172
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 185
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v0, 0x7f10065c

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 175
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->val$selectedGridView:Ltv/emby/embyatv/ui/ProgramGridCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->setRecSeriesTimer(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setSeriesTimerId(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->ActionComplete:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    .line 179
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->dismiss()V

    .line 180
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v1, 0x7f100644

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
