.class final Ltv/emby/embyatv/livetv/TvManager$3;
.super Lmediabrowser/apiinteraction/Response;
.source "TvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/TvManager;->loadAllChannelsInternal(Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/results/ChannelInfoDtoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 251
    iput-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$3;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 251
    check-cast p1, Lmediabrowser/model/results/ChannelInfoDtoResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/TvManager$3;->onResponse(Lmediabrowser/model/results/ChannelInfoDtoResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/results/ChannelInfoDtoResult;)V
    .locals 4

    .line 254
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** channel query response"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ltv/emby/embyatv/livetv/TvManager;->access$202(Ljava/util/List;)Ljava/util/List;

    if-eqz p1, :cond_1

    .line 256
    invoke-virtual {p1}, Lmediabrowser/model/results/ChannelInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/results/ChannelInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/livetv/ChannelInfoDto;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 257
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->access$300()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v0

    iget-boolean v0, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->favoriteChannelsOnly:Z

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p1}, Lmediabrowser/model/results/ChannelInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/livetv/ChannelInfoDto;

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    .line 259
    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 260
    invoke-virtual {v3}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->access$200()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->access$200()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/results/ChannelInfoDtoResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 271
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$3;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->access$400()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
