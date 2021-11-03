.class Ltv/emby/embyatv/browsing/BrowseRecordingsFragment$1;
.super Lmediabrowser/apiinteraction/Response;
.source "BrowseRecordingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->addNext24Timers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment$1;->this$0:Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 120
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment$1;->this$0:Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Lmediabrowser/model/results/TimerInfoDtoResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment$1;->onResponse(Lmediabrowser/model/results/TimerInfoDtoResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/results/TimerInfoDtoResult;)V
    .locals 12

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    .line 90
    invoke-virtual {p1}, Lmediabrowser/model/results/TimerInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/livetv/TimerInfoDto;

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_3

    aget-object v7, p1, v5

    .line 91
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getStartDate()Ljava/util/Date;

    move-result-object v8

    invoke-static {v8}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v8, v8, v1

    if-gtz v8, :cond_2

    .line 92
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v8

    if-nez v8, :cond_0

    .line 94
    new-instance v8, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v8}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    .line 95
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getProgramId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getChannelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmediabrowser/model/dto/BaseItemDto;->setChannelName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Unknown"

    invoke-static {v9, v10}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v9

    invoke-virtual {v9}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v9

    const-string v10, "No program info for timer %s.  Creating one..."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v8}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v4

    invoke-interface {v9, v10, v6}, Lmediabrowser/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "Program"

    .line 99
    invoke-virtual {v8, v6}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lmediabrowser/model/dto/BaseItemDto;->setSeriesTimerId(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getStartDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v8, v6}, Lmediabrowser/model/dto/BaseItemDto;->setStartDate(Ljava/util/Date;)V

    .line 102
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getEndDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v8, v6}, Lmediabrowser/model/dto/BaseItemDto;->setEndDate(Ljava/util/Date;)V

    .line 104
    :cond_0
    sget-object v6, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    invoke-virtual {v8, v6}, Lmediabrowser/model/dto/BaseItemDto;->setLocationType(Lmediabrowser/model/entities/LocationType;)V

    .line 105
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/livetv/RecordingStatus;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lmediabrowser/model/dto/BaseItemDto;->setStatus(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v7}, Lmediabrowser/model/livetv/TimerInfoDto;->getStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v6

    sget-object v7, Lmediabrowser/model/livetv/RecordingStatus;->Cancelled:Lmediabrowser/model/livetv/RecordingStatus;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lmediabrowser/model/dto/BaseItemDto;->setTimerId(Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 110
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 111
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/presentation/CardPresenter;

    const/16 v2, 0x12c

    invoke-direct {v1, v6, v2}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment$1;->this$0:Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p1, v0, v1, v2, v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V

    .line 112
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 113
    new-instance v0, Landroidx/leanback/widget/ListRow;

    new-instance v1, Landroidx/leanback/widget/HeaderItem;

    const-string v2, "Scheduled in Next 24 Hours"

    invoke-direct {v1, v2}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 114
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment$1;->this$0:Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BrowseRecordingsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1, v4, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method
