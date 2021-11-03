.class Ltv/emby/embyatv/integration/RecommendationManager$3;
.super Lmediabrowser/apiinteraction/Response;
.source "RecommendationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/integration/RecommendationManager;->createAll()V
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
.field final synthetic this$0:Ltv/emby/embyatv/integration/RecommendationManager;

.field final synthetic val$random:Ljava/util/Random;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/util/Random;)V
    .locals 0

    .line 225
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$3;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    iput-object p2, p0, Ltv/emby/embyatv/integration/RecommendationManager$3;->val$random:Ljava/util/Random;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/integration/RecommendationManager$3;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 5

    .line 229
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 231
    iget-object v4, p0, Ltv/emby/embyatv/integration/RecommendationManager$3;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ltv/emby/embyatv/integration/RecommendationManager;->recommend(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$3;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {p1}, Ltv/emby/embyatv/integration/RecommendationManager;->access$400(Ltv/emby/embyatv/integration/RecommendationManager;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    .line 236
    new-instance p1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {p1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v0, "Movie"

    .line 237
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 239
    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationManager$3;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v2}, Ltv/emby/embyatv/integration/RecommendationManager;->access$400(Ltv/emby/embyatv/integration/RecommendationManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 240
    new-array v0, v0, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v2, Lmediabrowser/model/querying/ItemFilter;->IsUnplayed:Lmediabrowser/model/querying/ItemFilter;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v0, "DateCreated"

    .line 241
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 242
    sget-object v0, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 243
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/integration/RecommendationManager$3$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/integration/RecommendationManager$3$1;-><init>(Ltv/emby/embyatv/integration/RecommendationManager$3;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    :cond_1
    return-void
.end method
