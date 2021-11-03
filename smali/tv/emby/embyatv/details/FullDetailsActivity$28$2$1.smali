.class Ltv/emby/embyatv/details/FullDetailsActivity$28$2$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$28$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/details/FullDetailsActivity$28$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$28$2;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$28$2;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1381
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$28$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$28$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$28;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p1

    const v0, 0x7f10065c

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 1373
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$28$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$28;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->setRecSeriesTimer(Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$28$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$28;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->setRecTimer(Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$28$2;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity$28$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$28;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastDeletedItemId(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2$1;->this$2:Ltv/emby/embyatv/details/FullDetailsActivity$28$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$28;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v0

    const v1, 0x7f100644

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
