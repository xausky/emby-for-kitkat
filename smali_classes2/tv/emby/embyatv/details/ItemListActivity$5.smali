.class Ltv/emby/embyatv/details/ItemListActivity$5;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;

.field final synthetic val$ndx:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;I)V
    .locals 0

    .line 276
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iput p2, p0, Ltv/emby/embyatv/details/ItemListActivity$5;->val$ndx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 279
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ItemListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ItemListActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$700(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Ltv/emby/embyatv/details/ItemListActivity$5;->val$ndx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/ItemListActivity;->access$700(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/details/ItemListActivity$5$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/details/ItemListActivity$5$1;-><init>(Ltv/emby/embyatv/details/ItemListActivity$5;)V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :cond_0
    return-void
.end method
