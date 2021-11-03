.class Ltv/emby/embyatv/details/ItemListActivity$19;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->loadTimers(Ljava/lang/String;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 718
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$19;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 718
    check-cast p1, Lmediabrowser/model/results/TimerInfoDtoResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$19;->onResponse(Lmediabrowser/model/results/TimerInfoDtoResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/results/TimerInfoDtoResult;)V
    .locals 10

    .line 721
    invoke-virtual {p1}, Lmediabrowser/model/results/TimerInfoDtoResult;->getTotalRecordCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 722
    invoke-virtual {p1}, Lmediabrowser/model/results/TimerInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/livetv/TimerInfoDto;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 723
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 725
    new-instance v4, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v4}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    .line 726
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getProgramId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getChannelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setChannelName(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unknown"

    invoke-static {v6, v7}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 729
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v6

    const-string v7, "No program info for timer %s.  Creating one..."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-interface {v6, v7, v8}, Lmediabrowser/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "Program"

    .line 730
    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v6

    sget-object v7, Lmediabrowser/model/livetv/RecordingStatus;->Cancelled:Lmediabrowser/model/livetv/RecordingStatus;

    if-eq v6, v7, :cond_0

    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setTimerId(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setSeriesTimerId(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getStartDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setStartDate(Ljava/util/Date;)V

    .line 734
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getEndDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setEndDate(Ljava/util/Date;)V

    .line 736
    :cond_1
    sget-object v6, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setLocationType(Lmediabrowser/model/entities/LocationType;)V

    .line 737
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/livetv/RecordingStatus;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmediabrowser/model/dto/BaseItemDto;->setStatus(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v3}, Lmediabrowser/model/livetv/TimerInfoDto;->getStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v3

    sget-object v6, Lmediabrowser/model/livetv/RecordingStatus;->Cancelled:Lmediabrowser/model/livetv/RecordingStatus;

    if-ne v3, v6, :cond_2

    invoke-virtual {v4, v5}, Lmediabrowser/model/dto/BaseItemDto;->setTimerId(Ljava/lang/String;)V

    .line 739
    :cond_2
    iget-object v3, p0, Ltv/emby/embyatv/details/ItemListActivity$19;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 741
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$19;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyDataSetChanged()V

    .line 743
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$19;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$100(Ltv/emby/embyatv/details/ItemListActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeGradient()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method
