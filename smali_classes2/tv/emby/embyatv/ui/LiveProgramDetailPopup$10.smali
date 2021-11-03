.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;
.super Lmediabrowser/apiinteraction/Response;
.source "LiveProgramDetailPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->showRecordingOptions(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/livetv/SeriesTimerInfoDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

.field final synthetic val$recordSeries:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;Z)V
    .locals 0

    .line 446
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iput-boolean p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;->val$recordSeries:Z

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 446
    check-cast p1, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;->onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V
    .locals 4

    .line 449
    new-instance v0, Ltv/emby/embyatv/model/CombinedTimerInfo;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/model/CombinedTimerInfo;-><init>(Lmediabrowser/model/livetv/BaseTimerInfoDto;)V

    .line 450
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->access$000(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)Ltv/emby/embyatv/ui/RecordPopup;

    move-result-object p1

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v1, v1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v2, v2, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    iget-boolean v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;->val$recordSeries:Z

    invoke-virtual {p1, v1, v0, v2, v3}, Ltv/emby/embyatv/ui/RecordPopup;->setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/model/CombinedTimerInfo;Ltv/emby/embyatv/ui/IRecordingIndicatorView;Z)V

    .line 451
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->access$000(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)Ltv/emby/embyatv/ui/RecordPopup;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/RecordPopup;->show()V

    return-void
.end method
