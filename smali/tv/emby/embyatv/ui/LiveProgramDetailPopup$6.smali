.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$6;
.super Ljava/lang/Object;
.source "LiveProgramDetailPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V
    .locals 0

    .line 302
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$6;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 306
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$6;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$6$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$6$1;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup$6;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetDefaultLiveTvTimerInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
