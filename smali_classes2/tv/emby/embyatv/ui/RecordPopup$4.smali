.class Ltv/emby/embyatv/ui/RecordPopup$4;
.super Ljava/lang/Object;
.source "RecordPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/RecordPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/RecordPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/RecordPopup;)V
    .locals 0

    .line 144
    iput-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 147
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-boolean p1, p1, Ltv/emby/embyatv/ui/RecordPopup;->mRecordSeries:Z

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup;->mCurrentOptions:Ltv/emby/embyatv/model/CombinedTimerInfo;

    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mOnlyNew:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/CombinedTimerInfo;->setRecordNewOnly(Z)V

    .line 149
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup;->mCurrentOptions:Ltv/emby/embyatv/model/CombinedTimerInfo;

    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mAnyChannel:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/CombinedTimerInfo;->setRecordAnyChannel(Z)V

    .line 150
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup;->mCurrentOptions:Ltv/emby/embyatv/model/CombinedTimerInfo;

    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mAnyTime:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/CombinedTimerInfo;->setRecordAnyTime(Z)V

    .line 151
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup;->mCurrentOptions:Ltv/emby/embyatv/model/CombinedTimerInfo;

    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mSkipExisting:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/CombinedTimerInfo;->setSkipEpisodesInLibrary(Z)V

    .line 153
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mCurrentOptions:Ltv/emby/embyatv/model/CombinedTimerInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/CombinedTimerInfo;->getSeriesTimer()Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/RecordPopup$4$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/RecordPopup$4$1;-><init>(Ltv/emby/embyatv/ui/RecordPopup$4;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->UpdateLiveTvSeriesTimerAsync(Lmediabrowser/model/livetv/SeriesTimerInfoDto;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup$4;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/RecordPopup;->mCurrentOptions:Ltv/emby/embyatv/model/CombinedTimerInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/CombinedTimerInfo;->getProgramTimer()Lmediabrowser/model/livetv/TimerInfoDto;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/RecordPopup$4$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/RecordPopup$4$2;-><init>(Ltv/emby/embyatv/ui/RecordPopup$4;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->UpdateLiveTvTimerAsync(Lmediabrowser/model/livetv/TimerInfoDto;Lmediabrowser/apiinteraction/EmptyResponse;)V

    :goto_0
    return-void
.end method
