.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveAlbumArtists(Lmediabrowser/model/querying/ArtistsQuery;)V
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


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 1463
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1463
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 11

    .line 1466
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1467
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setTotalItems(I)V

    .line 1468
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1470
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v3, p1

    move v4, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v5, p1, v0

    .line 1471
    iget-object v6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v7, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getPreferParentThumb()Z

    move-result v9

    iget-object v10, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v10}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->isStaticHeight()Z

    move-result v10

    invoke-direct {v7, v4, v5, v9, v10}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v8

    goto :goto_1

    .line 1474
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    if-nez v4, :cond_2

    .line 1476
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    goto :goto_2

    :cond_2
    if-lez v2, :cond_4

    .line 1480
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeItems(II)I

    goto :goto_2

    .line 1482
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result p1

    if-nez p1, :cond_4

    .line 1484
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setTotalItems(I)V

    .line 1485
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1488
    :cond_4
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setCurrentlyRetrieving(Z)V

    .line 1489
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$16;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyRetrieveFinished()V

    return-void
.end method
