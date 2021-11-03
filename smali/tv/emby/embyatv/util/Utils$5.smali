.class final Ltv/emby/embyatv/util/Utils$5;
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

.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 742
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$5;->val$items:Ljava/util/List;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$5;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 742
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$5;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 1

    .line 745
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$5;->val$items:Ljava/util/List;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 746
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$5;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$5;->val$items:Ljava/util/List;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
