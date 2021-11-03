.class Ltv/emby/embyatv/details/ListItemAdapter$14;
.super Lmediabrowser/apiinteraction/Response;
.source "ListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter;->showRecordingOptions(Ljava/lang/String;Lmediabrowser/model/dto/BaseItemDto;Landroid/view/View;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;

.field final synthetic val$program:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 625
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$14;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$14;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 625
    check-cast p1, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$14;->onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V
    .locals 4

    .line 628
    new-instance v0, Ltv/emby/embyatv/model/CombinedTimerInfo;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/model/CombinedTimerInfo;-><init>(Lmediabrowser/model/livetv/BaseTimerInfoDto;)V

    .line 629
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$14;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter$14;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$14;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/ui/IRecordingIndicatorView;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v0, v2, v3}, Ltv/emby/embyatv/ui/RecordPopup;->setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/model/CombinedTimerInfo;Ltv/emby/embyatv/ui/IRecordingIndicatorView;Z)V

    .line 630
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$14;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/RecordPopup;->show()V

    return-void
.end method
