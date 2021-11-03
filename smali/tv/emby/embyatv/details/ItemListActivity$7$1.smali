.class Ltv/emby/embyatv/details/ItemListActivity$7$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity$7;->onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ItemListActivity$7;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity$7;)V
    .locals 0

    .line 359
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$7;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 375
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error creating recording"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 376
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$7;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$7;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$1400(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const v0, 0x7f10065d

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 4

    .line 363
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$7;

    iget-object v1, v1, Ltv/emby/embyatv/details/ItemListActivity$7;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;-><init>(Ltv/emby/embyatv/details/ItemListActivity$7$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvProgramAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
