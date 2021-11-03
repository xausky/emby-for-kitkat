.class Ltv/emby/embyatv/integration/RecommendationManager$3$1;
.super Lmediabrowser/apiinteraction/Response;
.source "RecommendationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/integration/RecommendationManager$3;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V
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
.field final synthetic this$1:Ltv/emby/embyatv/integration/RecommendationManager$3;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/integration/RecommendationManager$3;)V
    .locals 0

    .line 243
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$3$1;->this$1:Ltv/emby/embyatv/integration/RecommendationManager$3;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 243
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/integration/RecommendationManager$3$1;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 7

    .line 246
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 248
    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationManager$3$1;->this$1:Ltv/emby/embyatv/integration/RecommendationManager$3;

    iget-object v3, v3, Ltv/emby/embyatv/integration/RecommendationManager$3;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    sget-object v4, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    iget-object v5, p0, Ltv/emby/embyatv/integration/RecommendationManager$3$1;->this$1:Ltv/emby/embyatv/integration/RecommendationManager$3;

    iget-object v5, v5, Ltv/emby/embyatv/integration/RecommendationManager$3;->val$random:Ljava/util/Random;

    const/16 v6, 0x63

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v3, v2, v4, v5}, Ltv/emby/embyatv/integration/RecommendationManager;->access$600(Ltv/emby/embyatv/integration/RecommendationManager;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/integration/RecommendationType;I)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
