.class final Ltv/emby/embyatv/util/Utils$9;
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
        "Lmediabrowser/model/livetv/ChannelInfoDto;",
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

    .line 822
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$9;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$9;->val$items:Ljava/util/List;

    iput-object p3, p0, Ltv/emby/embyatv/util/Utils$9;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 822
    check-cast p1, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$9;->onResponse(Lmediabrowser/model/livetv/ChannelInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 2

    .line 826
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 828
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$9;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setPremiereDate(Ljava/util/Date;)V

    .line 829
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$9;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setEndDate(Ljava/util/Date;)V

    .line 830
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$9;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setOfficialRating(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$9;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setRunTimeTicks(Ljava/lang/Long;)V

    .line 833
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$9;->val$mainItem:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$9;->val$items:Ljava/util/List;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$9;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->access$000(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
