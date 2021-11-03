.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;
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

.field final synthetic val$program:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$selectedGridView:Ltv/emby/embyatv/ui/ProgramGridCell;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V
    .locals 0

    .line 270
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->val$selectedGridView:Ltv/emby/embyatv/ui/ProgramGridCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 273
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5$1;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->CancelLiveTvTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
