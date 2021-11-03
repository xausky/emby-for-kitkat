.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "LiveProgramDetailPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;)V
    .locals 0

    .line 273
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 284
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v0, 0x7f10065c

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 276
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->val$selectedGridView:Ltv/emby/embyatv/ui/ProgramGridCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->setRecTimer(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setTimerId(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->dismiss()V

    .line 279
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5$1;->this$1:Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v1, 0x7f100644

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
