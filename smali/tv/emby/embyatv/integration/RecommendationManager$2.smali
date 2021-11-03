.class Ltv/emby/embyatv/integration/RecommendationManager$2;
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

.field final synthetic val$nextUpChannel:Ltv/emby/embyatv/integration/OreoChannel;

.field final synthetic val$random:Ljava/util/Random;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/integration/RecommendationManager;Ltv/emby/embyatv/integration/OreoChannel;Ljava/util/Random;)V
    .locals 0

    .line 197
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    iput-object p2, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->val$nextUpChannel:Ltv/emby/embyatv/integration/OreoChannel;

    iput-object p3, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->val$random:Ljava/util/Random;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 197
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/integration/RecommendationManager$2;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 9

    .line 200
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->val$nextUpChannel:Ltv/emby/embyatv/integration/OreoChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->val$nextUpChannel:Ltv/emby/embyatv/integration/OreoChannel;

    invoke-virtual {v0}, Ltv/emby/embyatv/integration/OreoChannel;->clearPrograms()V

    .line 203
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->val$nextUpChannel:Ltv/emby/embyatv/integration/OreoChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->val$nextUpChannel:Ltv/emby/embyatv/integration/OreoChannel;

    invoke-virtual {v0}, Ltv/emby/embyatv/integration/OreoChannel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 204
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v4, p1, v1

    .line 205
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    if-eq v5, v6, :cond_3

    if-nez v0, :cond_2

    .line 206
    iget-object v5, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v5}, Ltv/emby/embyatv/integration/RecommendationManager;->access$500(Ltv/emby/embyatv/integration/RecommendationManager;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    sget-object v6, Ltv/emby/embyatv/integration/RecommendationType;->Tv:Ltv/emby/embyatv/integration/RecommendationType;

    iget-object v7, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->val$random:Ljava/util/Random;

    const/16 v8, 0x63

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-static {v5, v4, v6, v7}, Ltv/emby/embyatv/integration/RecommendationManager;->access$600(Ltv/emby/embyatv/integration/RecommendationManager;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/integration/RecommendationType;I)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 208
    iget-object v5, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->val$nextUpChannel:Ltv/emby/embyatv/integration/OreoChannel;

    if-eqz v5, :cond_3

    .line 209
    iget-object v5, p0, Ltv/emby/embyatv/integration/RecommendationManager$2;->val$nextUpChannel:Ltv/emby/embyatv/integration/OreoChannel;

    rsub-int/lit8 v6, v3, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ltv/emby/embyatv/integration/OreoChannel;->addNewProgram(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Integer;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
