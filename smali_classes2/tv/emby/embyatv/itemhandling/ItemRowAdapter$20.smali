.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/NextUpQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$query:Lmediabrowser/model/querying/NextUpQuery;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/model/querying/NextUpQuery;)V
    .locals 0

    .line 1602
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$query:Lmediabrowser/model/querying/NextUpQuery;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1674
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving next up items"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1675
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1676
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1677
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1602
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 14

    .line 1605
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 1606
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    .line 1608
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$query:Lmediabrowser/model/querying/NextUpQuery;

    invoke-virtual {v0}, Lmediabrowser/model/querying/NextUpQuery;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1611
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    aget-object v0, v0, v1

    .line 1612
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 1614
    :goto_1
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v8, v4, v6

    if-eqz v0, :cond_3

    .line 1615
    invoke-virtual {v8}, Lmediabrowser/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1616
    :cond_3
    iget-object v9, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v10, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v11, v7, 0x1

    iget-object v12, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v12}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1700(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z

    move-result v12

    iget-object v13, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v13}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1800(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z

    move-result v13

    invoke-direct {v10, v7, v8, v12, v13}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V

    invoke-virtual {v9, v10}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    move v7, v11

    goto :goto_2

    .line 1621
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result v4

    invoke-static {v0, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$102(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    .line 1622
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v0, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    if-nez v7, :cond_5

    .line 1624
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1625
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    goto :goto_3

    .line 1628
    :cond_5
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$query:Lmediabrowser/model/querying/NextUpQuery;

    invoke-virtual {v0}, Lmediabrowser/model/querying/NextUpQuery;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1629
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    .line 1630
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1631
    new-instance v0, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    .line 1632
    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$query:Lmediabrowser/model/querying/NextUpQuery;

    invoke-virtual {v2}, Lmediabrowser/model/querying/NextUpQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setUserId(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setStartIndex(Ljava/lang/Integer;)V

    .line 1635
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;

    invoke-direct {v3, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;Lmediabrowser/model/querying/ItemsResult;)V

    invoke-virtual {v2, v0, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    .line 1659
    :cond_7
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    .line 1660
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveFinished()V

    goto :goto_3

    .line 1665
    :cond_8
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1666
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    .line 1667
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveFinished()V

    :goto_3
    return-void
.end method
