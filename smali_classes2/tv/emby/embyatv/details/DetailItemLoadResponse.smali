.class public Ltv/emby/embyatv/details/DetailItemLoadResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "DetailItemLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 15
    iput-object p1, p0, Ltv/emby/embyatv/details/DetailItemLoadResponse;->activity:Ltv/emby/embyatv/details/FullDetailsActivity;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 25
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving full object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/DetailItemLoadResponse;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 20
    iget-object v0, p0, Ltv/emby/embyatv/details/DetailItemLoadResponse;->activity:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method
