.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/querying/LatestItemsQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 1562
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1594
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving latest items"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1595
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1562
    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->onResponse([Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1565
    array-length v1, p1

    if-lez v1, :cond_3

    .line 1566
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setTotalItems(I)V

    .line 1567
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v1

    if-nez v1, :cond_0

    .line 1568
    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1569
    :goto_0
    array-length v3, p1

    move v5, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v6, p1, v1

    .line 1570
    iget-object v10, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v11, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v12, v5, 0x1

    iget-object v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getPreferParentThumb()Z

    move-result v7

    iget-object v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1600(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z

    move-result v8

    iget-object v4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isStaticHeight()Z

    move-result v9

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZZ)V

    invoke-virtual {v10, v11}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v5, v12

    goto :goto_1

    .line 1573
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    if-nez v5, :cond_2

    .line 1575
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    goto :goto_2

    :cond_2
    if-lez v2, :cond_4

    .line 1579
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v0, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeItems(II)I

    goto :goto_2

    .line 1583
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setTotalItems(I)V

    .line 1584
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1587
    :cond_4
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 1588
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$19;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveFinished()V

    return-void
.end method
