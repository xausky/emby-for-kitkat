.class Ltv/emby/embyatv/details/FullDetailsActivity$30$1;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$30;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$30;)V
    .locals 0

    .line 1414
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1443
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error creating recording"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1444
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p1

    const v0, 0x7f10065d

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1414
    check-cast p1, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;->onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V
    .locals 2

    .line 1417
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$30$1;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->CreateLiveTvTimerAsync(Lmediabrowser/model/livetv/BaseTimerInfoDto;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
