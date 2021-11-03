.class Ltv/emby/embyatv/ui/RecordPopup$4$2$1;
.super Lmediabrowser/apiinteraction/Response;
.source "RecordPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/RecordPopup$4$2;->onResponse()V
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
.field final synthetic this$2:Ltv/emby/embyatv/ui/RecordPopup$4$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/RecordPopup$4$2;)V
    .locals 0

    .line 176
    iput-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4$2$1;->this$2:Ltv/emby/embyatv/ui/RecordPopup$4$2;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/RecordPopup$4$2$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 179
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4$2$1;->this$2:Ltv/emby/embyatv/ui/RecordPopup$4$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4$2;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mSelectedView:Ltv/emby/embyatv/ui/IRecordingIndicatorView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/emby/embyatv/ui/IRecordingIndicatorView;->setRecTimer(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4$2$1;->this$2:Ltv/emby/embyatv/ui/RecordPopup$4$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4$2;->this$1:Ltv/emby/embyatv/ui/RecordPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mSelectedView:Ltv/emby/embyatv/ui/IRecordingIndicatorView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ltv/emby/embyatv/ui/IRecordingIndicatorView;->setRecSeriesTimer(Ljava/lang/String;)V

    return-void
.end method
