.class Ltv/emby/embyatv/details/FullDetailsActivity$30;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->addButtons(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1408
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1411
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1412
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1414
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$30;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetDefaultLiveTvTimerInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 1448
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$30$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$30$2;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$30;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->CancelLiveTvTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    .line 1465
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3200(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    :goto_0
    return-void
.end method
