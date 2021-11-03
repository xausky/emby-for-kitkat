.class final Ltv/emby/embyatv/util/KeyProcessor$4;
.super Lmediabrowser/apiinteraction/Response;
.source "KeyProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/KeyProcessor;->markUnplayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/UserItemDataDto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 600
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 611
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error setting played status"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 612
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const-string v0, "Error setting played status"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 600
    check-cast p1, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/KeyProcessor$4;->onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 1

    .line 603
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setLastLibraryChange(Ljava/util/Calendar;)V

    .line 604
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    sget-object v0, Ltv/emby/embyatv/base/CustomMessage;->RefreshCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    .line 605
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    sget-object v0, Ltv/emby/embyatv/base/CustomMessage;->RefreshRows:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    .line 606
    invoke-static {}, Ltv/emby/embyatv/integration/RecommendationManager;->getInstance()Ltv/emby/embyatv/integration/RecommendationManager;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/integration/RecommendationManager;->recommend(Ljava/lang/String;)V

    return-void
.end method
