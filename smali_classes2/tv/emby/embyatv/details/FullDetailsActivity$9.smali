.class Ltv/emby/embyatv/details/FullDetailsActivity$9;
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

.field final synthetic val$personSeriesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 700
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$9;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$9;->val$personSeriesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 4

    .line 703
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$9;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-boolean v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->gotRandomContentBd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$9;->val$personSeriesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v0

    if-lez v0, :cond_0

    .line 704
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 705
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$9;->val$personSeriesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$9;->val$personSeriesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_0

    .line 706
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$9;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$9;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->updateBackground(Ljava/lang/String;)V

    .line 708
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$9;->val$personSeriesAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
