.class Ltv/emby/embyatv/details/FullDetailsActivity$41;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->showRecordingOptions(Ljava/lang/String;Lmediabrowser/model/dto/BaseItemDto;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/livetv/TimerInfoDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

.field final synthetic val$program:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$recordSeries:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 0

    .line 1729
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$41;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$41;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    iput-boolean p3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$41;->val$recordSeries:Z

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1729
    check-cast p1, Lmediabrowser/model/livetv/TimerInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$41;->onResponse(Lmediabrowser/model/livetv/TimerInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/TimerInfoDto;)V
    .locals 4

    .line 1732
    new-instance v0, Ltv/emby/embyatv/model/CombinedTimerInfo;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/model/CombinedTimerInfo;-><init>(Lmediabrowser/model/livetv/BaseTimerInfoDto;)V

    .line 1733
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$41;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$41;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$41;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v2

    iget-boolean v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$41;->val$recordSeries:Z

    invoke-virtual {p1, v1, v0, v2, v3}, Ltv/emby/embyatv/ui/RecordPopup;->setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/model/CombinedTimerInfo;Ltv/emby/embyatv/ui/IRecordingIndicatorView;Z)V

    .line 1734
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$41;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/RecordPopup;->show()V

    return-void
.end method
