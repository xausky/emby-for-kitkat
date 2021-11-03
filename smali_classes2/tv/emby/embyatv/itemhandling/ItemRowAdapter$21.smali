.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/livetv/LiveTvChannelQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/results/ChannelInfoDtoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 1685
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1714
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving live tv channels"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1715
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1716
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string v0, "Error retrieving live tv channels"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1717
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1685
    check-cast p1, Lmediabrowser/model/results/ChannelInfoDtoResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->onResponse(Lmediabrowser/model/results/ChannelInfoDtoResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/results/ChannelInfoDtoResult;)V
    .locals 9

    .line 1688
    invoke-virtual {p1}, Lmediabrowser/model/results/ChannelInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/results/ChannelInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/livetv/ChannelInfoDto;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1689
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1690
    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    .line 1691
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/results/ChannelInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmediabrowser/model/livetv/ChannelInfoDto;

    array-length v3, v2

    move v4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v5, v2, v0

    .line 1692
    iget-object v6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1900(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1693
    invoke-virtual {v5}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v6

    invoke-virtual {v5}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setChannelNumber(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {v5}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v6

    invoke-virtual {v5}, Lmediabrowser/model/livetv/ChannelInfoDto;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmediabrowser/model/dto/BaseItemDto;->setChannelNumber(Ljava/lang/String;)V

    .line 1695
    iget-object v6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v7, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v5}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v5

    invoke-direct {v7, v4, v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 1697
    :cond_1
    iget-object v6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v7, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v8, v4, 0x1

    invoke-direct {v7, v4, v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/livetv/ChannelInfoDto;)V

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    :goto_1
    move v4, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1700
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Lmediabrowser/model/results/ChannelInfoDtoResult;->getTotalRecordCount()I

    move-result p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$102(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    .line 1701
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    if-nez v4, :cond_4

    .line 1702
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    goto :goto_2

    .line 1705
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1708
    :cond_4
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    .line 1709
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$21;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveFinished()V

    return-void
.end method
