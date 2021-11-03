.class Ltv/emby/embyatv/integration/RecommendationManager$4$1;
.super Lmediabrowser/apiinteraction/Response;
.source "RecommendationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/integration/RecommendationManager$4;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
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
.field final synthetic this$1:Ltv/emby/embyatv/integration/RecommendationManager$4;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/integration/RecommendationManager$4;)V
    .locals 0

    .line 297
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$4$1;->this$1:Ltv/emby/embyatv/integration/RecommendationManager$4;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 307
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving item for recommendation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 297
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/integration/RecommendationManager$4$1;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 4

    .line 300
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 301
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager$4$1;->this$1:Ltv/emby/embyatv/integration/RecommendationManager$4;

    iget-object v0, v0, Ltv/emby/embyatv/integration/RecommendationManager$4;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    sget-object v1, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Ltv/emby/embyatv/integration/RecommendationManager;->access$600(Ltv/emby/embyatv/integration/RecommendationManager;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/integration/RecommendationType;I)Z

    :cond_0
    return-void
.end method
