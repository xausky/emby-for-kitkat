.class final Ltv/emby/embyatv/util/Utils$10;
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
.method constructor <init>(Ljava/util/List;Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 841
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$10;->val$items:Ljava/util/List;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$10;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p3, p0, Ltv/emby/embyatv/util/Utils$10;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 857
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving intros"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 858
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$10;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$10;->val$items:Ljava/util/List;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$10;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->access$000(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 841
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$10;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 3

    .line 844
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 845
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$10;->val$items:Ljava/util/List;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 846
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " intro items added for playback."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setPlayingIntros(Z)V

    goto :goto_0

    .line 849
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/TvApp;->setPlayingIntros(Z)V

    .line 852
    :goto_0
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$10;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$10;->val$items:Ljava/util/List;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$10;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->access$000(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
