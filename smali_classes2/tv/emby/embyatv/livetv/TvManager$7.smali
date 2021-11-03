.class final Ltv/emby/embyatv/livetv/TvManager$7;
.super Lmediabrowser/apiinteraction/Response;
.source "TvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/TvManager;->findRecordingByTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
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
.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/Response;

.field final synthetic val$timerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 548
    iput-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$7;->val$timerId:Ljava/lang/String;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/TvManager$7;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 564
    iget-object v0, p0, Ltv/emby/embyatv/livetv/TvManager$7;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 548
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/TvManager$7;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 5

    .line 552
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 553
    iget-object v3, p0, Ltv/emby/embyatv/livetv/TvManager$7;->val$timerId:Ljava/lang/String;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 559
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$7;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, v2}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
