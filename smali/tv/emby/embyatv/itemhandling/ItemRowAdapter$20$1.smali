.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V
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
.field final synthetic this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

.field final synthetic val$response:Lmediabrowser/model/querying/ItemsResult;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;Lmediabrowser/model/querying/ItemsResult;)V
    .locals 0

    .line 1635
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->val$response:Lmediabrowser/model/querying/ItemsResult;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1652
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to retrieve subsequent episodes in next up"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1653
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    iget-object p1, p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1635
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 10

    .line 1638
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->val$response:Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1639
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->val$response:Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {v0}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    .line 1640
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v3, v2

    move v4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v5, v2, v0

    .line 1641
    iget-object v6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    iget-object v6, v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v7, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    iget-object v9, v9, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v9}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1700(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z

    move-result v9

    invoke-direct {v7, v4, v5, v9, v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v8

    goto :goto_0

    .line 1643
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    iget-object v0, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    iget-object v2, v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$100(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v2

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result p1

    add-int/2addr v2, p1

    invoke-static {v0, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$102(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    .line 1644
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    iget-object p1, p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    iget-object v0, v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    .line 1647
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;

    iget-object p1, p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$20;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method
