.class final Ltv/emby/embyatv/util/Utils$8;
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
        "Lmediabrowser/model/dto/BaseItemDto;",
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

    .line 801
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$8;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$8;->val$items:Ljava/util/List;

    iput-object p3, p0, Ltv/emby/embyatv/util/Utils$8;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 815
    invoke-super {p0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 801
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$8;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 805
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$8;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setPremiereDate(Ljava/util/Date;)V

    .line 806
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$8;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setEndDate(Ljava/util/Date;)V

    .line 807
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$8;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setOfficialRating(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$8;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setRunTimeTicks(Ljava/lang/Long;)V

    .line 809
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$8;->val$items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$8;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$8;->val$items:Ljava/util/List;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
