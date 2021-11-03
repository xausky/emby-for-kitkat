.class Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$3:Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1$1;->this$3:Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1421
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 1424
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1$1;->this$3:Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$30$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    .line 1425
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1$1;->this$3:Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$30$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->setRecSeriesTimer(Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1$1;->this$3:Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$30$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->setRecTimer(Ljava/lang/String;)V

    .line 1427
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1$1;->this$3:Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$30$1$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$30$1;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$30$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p1

    const v0, 0x7f100650

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
