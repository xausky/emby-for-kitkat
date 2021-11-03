.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/livetv/SeriesTimerQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/results/SeriesTimerInfoDtoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 1768
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1798
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving live tv series timers"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1799
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1800
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1801
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1768
    check-cast p1, Lmediabrowser/model/results/SeriesTimerInfoDtoResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->onResponse(Lmediabrowser/model/results/SeriesTimerInfoDtoResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/results/SeriesTimerInfoDtoResult;)V
    .locals 9

    .line 1771
    invoke-virtual {p1}, Lmediabrowser/model/results/SeriesTimerInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/results/SeriesTimerInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1773
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1774
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/results/SeriesTimerInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    .line 1775
    iget-object v7, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v8, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {v8, v6}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1778
    :cond_1
    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Lmediabrowser/model/results/SeriesTimerInfoDtoResult;->getTotalRecordCount()I

    move-result p1

    invoke-static {v2, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$102(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    .line 1779
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    if-nez v5, :cond_2

    .line 1781
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    goto :goto_2

    :cond_2
    if-lez v0, :cond_4

    .line 1785
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeItems(II)I

    goto :goto_2

    .line 1789
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1792
    :cond_4
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$23;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method
