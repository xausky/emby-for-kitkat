.class Ltv/emby/embyatv/details/FullDetailsActivity$6$1;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$6;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/querying/ThemeMediaResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$6;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$6;)V
    .locals 0

    .line 392
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$6;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 402
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$6;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving theme songs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 403
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$6;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1902(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 392
    check-cast p1, Lmediabrowser/model/querying/ThemeMediaResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$6$1;->onResponse(Lmediabrowser/model/querying/ThemeMediaResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ThemeMediaResult;)V
    .locals 5

    .line 395
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$6;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Theme songs: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ThemeMediaResult;->getItems()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$6;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ThemeMediaResult;->getItems()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/querying/ThemeMediaResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    aget-object p1, p1, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1902(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;

    .line 397
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$6;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2000(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return-void
.end method
