.class Ltv/emby/embyatv/details/FullDetailsActivity$8;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

.field final synthetic val$personMoviesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 675
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$8;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$8;->val$personMoviesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 4

    .line 678
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$8;->val$personMoviesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v0

    if-lez v0, :cond_0

    .line 679
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 680
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$8;->val$personMoviesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$8;->val$personMoviesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_0

    .line 682
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$8;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ltv/emby/embyatv/details/FullDetailsActivity;->gotRandomContentBd:Z

    .line 683
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$8;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$8;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v3

    invoke-static {v0, v3, v2}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->updateBackground(Ljava/lang/String;)V

    .line 686
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$8;->val$personMoviesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
