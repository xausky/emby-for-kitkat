.class Ltv/emby/embyatv/integration/RecommendationManager$4;
.super Lmediabrowser/apiinteraction/Response;
.source "RecommendationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/integration/RecommendationManager;->recommend(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/integration/RecommendationManager;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$4;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    iput-object p2, p0, Ltv/emby/embyatv/integration/RecommendationManager$4;->val$itemId:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 350
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

    .line 267
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/integration/RecommendationManager$4;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 271
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No item found with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationManager$4;->val$itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCanResume()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-static {p1}, Ltv/emby/embyatv/integration/OreoChannelHelper;->addWatchNext(Lmediabrowser/model/dto/BaseItemDto;)V

    goto/16 :goto_2

    .line 279
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager$4;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    sget-object v1, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    const/16 v2, 0x63

    invoke-static {v0, p1, v1, v2}, Ltv/emby/embyatv/integration/RecommendationManager;->access$600(Ltv/emby/embyatv/integration/RecommendationManager;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/integration/RecommendationType;I)Z

    goto/16 :goto_2

    .line 282
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/integration/OreoChannelHelper;->deleteWatchNext(Ljava/lang/String;)V

    .line 286
    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x4714f10

    const/4 v5, 0x1

    if-eq v3, v4, :cond_5

    const v4, 0x72a55db

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "Episode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "Movie"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :cond_6
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 313
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 314
    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationManager$4;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v1}, Ltv/emby/embyatv/integration/RecommendationManager;->access$200(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/integration/OreoChannel;->removeProgram(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationManager$4;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    const-string v2, "NEXTUP"

    invoke-static {v1, v2}, Ltv/emby/embyatv/integration/RecommendationManager;->access$300(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 317
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/integration/OreoChannel;->removeProgram(Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :cond_7
    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationManager$4;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v1}, Ltv/emby/embyatv/integration/RecommendationManager;->access$700(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/Recommendations;

    move-result-object v1

    sget-object v2, Ltv/emby/embyatv/integration/RecommendationType;->Tv:Ltv/emby/embyatv/integration/RecommendationType;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/integration/Recommendations;->remove(Ltv/emby/embyatv/integration/RecommendationType;Ljava/lang/String;)Z

    .line 324
    :cond_8
    :goto_1
    new-instance v1, Lmediabrowser/model/querying/NextUpQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/NextUpQuery;-><init>()V

    .line 325
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/NextUpQuery;->setSeriesId(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/NextUpQuery;->setUserId(Ljava/lang/String;)V

    .line 327
    new-array p1, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, p1, v0

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/NextUpQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 328
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/NextUpQuery;->setLimit(Ljava/lang/Integer;)V

    .line 329
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/integration/RecommendationManager$4$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/integration/RecommendationManager$4$2;-><init>(Ltv/emby/embyatv/integration/RecommendationManager$4;)V

    invoke-virtual {p1, v1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetNextUpEpisodesAsync(Lmediabrowser/model/querying/NextUpQuery;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_2

    .line 289
    :pswitch_1
    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationManager$4;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v1}, Ltv/emby/embyatv/integration/RecommendationManager;->access$700(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/Recommendations;

    move-result-object v1

    sget-object v2, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/integration/Recommendations;->remove(Ltv/emby/embyatv/integration/RecommendationType;Ljava/lang/String;)Z

    .line 292
    new-instance v1, Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/SimilarItemsQuery;-><init>()V

    .line 293
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->setId(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 294
    new-array p1, p1, [Lmediabrowser/model/querying/ItemFields;

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, p1, v0

    sget-object v0, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v0, p1, v5

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 295
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 296
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->setUserId(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/integration/RecommendationManager$4$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/integration/RecommendationManager$4$1;-><init>(Ltv/emby/embyatv/integration/RecommendationManager$4;)V

    invoke-virtual {p1, v1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetSimilarItems(Lmediabrowser/model/querying/SimilarItemsQuery;Lmediabrowser/apiinteraction/Response;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
