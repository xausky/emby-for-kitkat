.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/livetv/RecordingQuery;)V
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

.field final synthetic val$query:Lmediabrowser/model/livetv/RecordingQuery;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/model/livetv/RecordingQuery;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 1808
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->val$query:Lmediabrowser/model/livetv/RecordingQuery;

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1840
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving live tv recordings"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1841
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1842
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1843
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    .line 1844
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveFinished()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1808
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 12

    .line 1811
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1812
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->val$query:Lmediabrowser/model/livetv/RecordingQuery;

    invoke-virtual {v2}, Lmediabrowser/model/livetv/RecordingQuery;->getEnableTotalRecordCount()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v2, v2

    :goto_0
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setTotalItems(I)V

    .line 1813
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v0

    if-nez v0, :cond_1

    .line 1814
    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1816
    :goto_1
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v4, v3

    move v5, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    aget-object v6, v3, v0

    .line 1817
    iget-object v7, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v8, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v9, v5, 0x1

    iget-object v10, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v10}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getPreferParentThumb()Z

    move-result v10

    iget-object v11, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v11}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1800(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z

    move-result v11

    invoke-direct {v8, v5, v6, v10, v11}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v5, v9

    goto :goto_2

    .line 1819
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$102(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    .line 1820
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    if-nez v5, :cond_3

    .line 1822
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    goto :goto_3

    :cond_3
    if-lez v2, :cond_5

    .line 1826
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeItems(II)I

    goto :goto_3

    .line 1830
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    .line 1831
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1834
    :cond_5
    :goto_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    .line 1835
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$24;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveFinished()V

    return-void
.end method
