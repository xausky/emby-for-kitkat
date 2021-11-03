.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/ItemQuery;)V
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

.field final synthetic val$query:Lmediabrowser/model/querying/ItemQuery;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/model/querying/ItemQuery;)V
    .locals 0

    .line 1317
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->val$query:Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 5

    .line 1348
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving items"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1349
    instance-of v0, p1, Lmediabrowser/model/net/HttpException;

    if-eqz v0, :cond_1

    .line 1350
    check-cast p1, Lmediabrowser/model/net/HttpException;

    .line 1351
    invoke-virtual {p1}, Lmediabrowser/model/net/HttpException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/net/HttpException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "ParentalControl"

    invoke-virtual {p1}, Lmediabrowser/model/net/HttpException;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "X-Application-Error-Code"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1352
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10061e

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1353
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12$1;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1360
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1361
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string v0, "There appears to be a problem accessing your server.  Ensure it is running and the network is available."

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1364
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1365
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string v0, "There appears to be a problem accessing your server.  Ensure it is running and the network is available."

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1368
    :goto_0
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 1369
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveFinished()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1317
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 11

    .line 1320
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1321
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->val$query:Lmediabrowser/model/querying/ItemQuery;

    invoke-virtual {v2}, Lmediabrowser/model/querying/ItemQuery;->getEnableTotalRecordCount()Z

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

    .line 1322
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v0

    if-nez v0, :cond_1

    .line 1323
    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1324
    :goto_1
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v3, p1

    move v4, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v5, p1, v0

    .line 1325
    iget-object v6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v7, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getPreferParentThumb()Z

    move-result v9

    iget-object v10, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v10}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isStaticHeight()Z

    move-result v10

    invoke-direct {v7, v4, v5, v9, v10}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v8

    goto :goto_2

    .line 1329
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    if-nez v4, :cond_3

    .line 1331
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    goto :goto_3

    :cond_3
    if-lez v2, :cond_5

    .line 1335
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeItems(II)I

    goto :goto_3

    .line 1339
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1342
    :cond_5
    :goto_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 1343
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveFinished()V

    return-void
.end method
