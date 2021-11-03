.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "LiveProgramDetailPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;)V
    .locals 0

    .line 212
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;->this$3:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 215
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;->this$3:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iput-object p1, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    .line 216
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;->this$3:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->setRecSeriesTimer(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;->this$3:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->setRecTimer(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;->this$3:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;->this$3:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    sget-object v0, Ltv/emby/embyatv/base/CustomMessage;->ActionComplete:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    .line 220
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;->this$3:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v0, 0x7f100650

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 221
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1$1;->this$3:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1$1;->this$2:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->dismiss()V

    return-void
.end method
