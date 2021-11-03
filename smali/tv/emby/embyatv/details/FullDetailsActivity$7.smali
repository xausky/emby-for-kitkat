.class Ltv/emby/embyatv/details/FullDetailsActivity$7;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ltv/emby/embyatv/api/StreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 567
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$7;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$7;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 576
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$7;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error getting playback info"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 577
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$7;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2402(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/api/StreamInfo;)Ltv/emby/embyatv/api/StreamInfo;

    .line 578
    new-instance p1, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$7;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p1, v1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity$1;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$7;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 567
    check-cast p1, Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$7;->onResponse(Ltv/emby/embyatv/api/StreamInfo;)V

    return-void
.end method

.method public onResponse(Ltv/emby/embyatv/api/StreamInfo;)V
    .locals 3

    .line 570
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$7;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2402(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/api/StreamInfo;)Ltv/emby/embyatv/api/StreamInfo;

    .line 571
    new-instance p1, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$7;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity$1;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$7;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
