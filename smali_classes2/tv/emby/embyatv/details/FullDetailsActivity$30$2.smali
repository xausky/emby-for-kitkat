.class Ltv/emby/embyatv/details/FullDetailsActivity$30$2;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$30;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$30;)V
    .locals 0

    .line 1448
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1458
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p1

    const v0, 0x7f10065c

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 1451
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->setRecTimer(Ljava/lang/String;)V

    .line 1452
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastDeletedItemId(Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$30$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$30;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$30;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v0

    const v1, 0x7f100644

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
