.class final Ltv/emby/embyatv/util/Utils$4;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->getItemsToPlay(Lmediabrowser/model/dto/BaseItemDto;ZZLmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 684
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$4;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$4;->val$items:Ljava/util/List;

    iput-object p3, p0, Ltv/emby/embyatv/util/Utils$4;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 710
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to retrieve next episodes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 711
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$4;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$4;->val$items:Ljava/util/List;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 684
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$4;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 6

    .line 687
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 689
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 691
    iget-object v4, p0, Ltv/emby/embyatv/util/Utils$4;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 695
    sget-object v4, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/model/entities/LocationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 696
    iget-object v4, p0, Ltv/emby/embyatv/util/Utils$4;->val$items:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$4;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$4;->val$items:Ljava/util/List;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
