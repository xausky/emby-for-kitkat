.class final Ltv/emby/embyatv/livetv/TvManager$5;
.super Lmediabrowser/apiinteraction/Response;
.source "TvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/TvManager;->getProgramsAsync(IILjava/util/Calendar;Ljava/util/Calendar;Lmediabrowser/apiinteraction/EmptyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/querying/ItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

.field final synthetic val$start:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 351
    iput-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$5;->val$start:Ljava/util/Calendar;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/TvManager$5;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 363
    iget-object v0, p0, Ltv/emby/embyatv/livetv/TvManager$5;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 351
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/TvManager$5;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 4

    .line 354
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** About to build dictionary"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    iget-object v0, p0, Ltv/emby/embyatv/livetv/TvManager$5;->val$start:Ljava/util/Calendar;

    invoke-static {p1, v0}, Ltv/emby/embyatv/livetv/TvManager;->access$500([Lmediabrowser/model/dto/BaseItemDto;Ljava/util/Calendar;)V

    .line 356
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Programs retrieval finished"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$5;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
