.class Ltv/emby/embyatv/util/KeyProcessor$2$3;
.super Lmediabrowser/apiinteraction/Response;
.source "KeyProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/KeyProcessor$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Ltv/emby/embyatv/util/KeyProcessor$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V
    .locals 0

    .line 449
    iput-object p1, p0, Ltv/emby/embyatv/util/KeyProcessor$2$3;->this$0:Ltv/emby/embyatv/util/KeyProcessor$2;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 461
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error trying to play first unwatched"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 462
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const v0, 0x7f100661

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 449
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/KeyProcessor$2$3;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 2

    .line 452
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const-string v0, "No items to play"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    :goto_0
    return-void
.end method
