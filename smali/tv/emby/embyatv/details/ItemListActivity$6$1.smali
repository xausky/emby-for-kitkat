.class Ltv/emby/embyatv/details/ItemListActivity$6$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ItemListActivity$6;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity$6;)V
    .locals 0

    .line 338
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$6$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$6;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 347
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$6$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$6;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$6;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$700(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error canceling recording"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 348
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$6$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$6;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$6;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$1400(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const v0, 0x7f10065c

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 341
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$6$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$6;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$6;->val$row:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->setRecord(Z)Z

    .line 342
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$6$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$6;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$6;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$1400(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const v1, 0x7f100644

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
