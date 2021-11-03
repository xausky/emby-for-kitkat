.class final Ltv/emby/embyatv/livetv/TvManager$6;
.super Lmediabrowser/apiinteraction/Response;
.source "TvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/TvManager;->getScheduleRowsAsync(Lmediabrowser/model/livetv/TimerQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/results/TimerInfoDtoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/Response;

.field final synthetic val$presenter:Landroidx/leanback/widget/Presenter;

.field final synthetic val$rowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 470
    iput-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$presenter:Landroidx/leanback/widget/Presenter;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$rowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iput-object p3, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 513
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 470
    check-cast p1, Lmediabrowser/model/results/TimerInfoDtoResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/TvManager$6;->onResponse(Lmediabrowser/model/results/TimerInfoDtoResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/results/TimerInfoDtoResult;)V
    .locals 11

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-virtual {p1}, Lmediabrowser/model/results/TimerInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/livetv/TimerInfoDto;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v5, p1, v3

    .line 477
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getStartDate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Ltv/emby/embyatv/livetv/TvManager;->access$600(Ljava/util/Date;)I

    move-result v6

    if-eq v6, v4, :cond_1

    if-lez v4, :cond_0

    .line 479
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 481
    iget-object v4, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$presenter:Landroidx/leanback/widget/Presenter;

    iget-object v7, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$rowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-static {v0, v4, v7}, Ltv/emby/embyatv/livetv/TvManager;->access$700(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 482
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    move v4, v6

    .line 486
    :cond_1
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v6

    if-nez v6, :cond_2

    .line 488
    new-instance v6, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v6}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    .line 489
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getChannelName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setChannelName(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown"

    invoke-static {v7, v8}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v7

    const-string v8, "No program info for timer %s.  Creating one..."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-interface {v7, v8, v9}, Lmediabrowser/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "Program"

    .line 493
    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setTimerId(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setSeriesTimerId(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getStartDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setStartDate(Ljava/util/Date;)V

    .line 497
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getEndDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setEndDate(Ljava/util/Date;)V

    .line 499
    :cond_2
    sget-object v7, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setLocationType(Lmediabrowser/model/entities/LocationType;)V

    .line 500
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v7

    invoke-virtual {v7}, Lmediabrowser/model/livetv/RecordingStatus;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setStatus(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v5}, Lmediabrowser/model/livetv/TimerInfoDto;->getStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v5

    sget-object v7, Lmediabrowser/model/livetv/RecordingStatus;->Cancelled:Lmediabrowser/model/livetv/RecordingStatus;

    if-ne v5, v7, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lmediabrowser/model/dto/BaseItemDto;->setTimerId(Ljava/lang/String;)V

    .line 502
    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 506
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$presenter:Landroidx/leanback/widget/Presenter;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$rowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-static {v0, p1, v1}, Ltv/emby/embyatv/livetv/TvManager;->access$700(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 508
    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    iget-object v0, p0, Ltv/emby/embyatv/livetv/TvManager$6;->val$rowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
