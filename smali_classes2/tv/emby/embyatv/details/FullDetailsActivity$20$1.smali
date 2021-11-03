.class Ltv/emby/embyatv/details/FullDetailsActivity$20$1;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$20;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$20;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$20;)V
    .locals 0

    .line 1184
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$20$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$20;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1197
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error playing next up episode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1198
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$20$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$20;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$20;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v1, 0x7f100661

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1184
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$20$1;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 6

    .line 1187
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1188
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 1189
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$20$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$20;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity$20;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, p1, v2, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->play(Lmediabrowser/model/dto/BaseItemDto;IZ)V

    goto :goto_0

    .line 1191
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string v0, "Unable to find next up episode"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
