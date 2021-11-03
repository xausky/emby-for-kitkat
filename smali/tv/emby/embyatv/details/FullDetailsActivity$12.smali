.class Ltv/emby/embyatv/details/FullDetailsActivity$12;
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

.field final synthetic val$seasonsAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 850
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->val$seasonsAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 4

    .line 853
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->val$seasonsAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 855
    new-instance v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v0}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    .line 856
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setSeriesId(Ljava/lang/String;)V

    .line 858
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 859
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setOverview(Ljava/lang/String;)V

    .line 860
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setStartDate(Ljava/util/Date;)V

    .line 861
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setEndDate(Ljava/util/Date;)V

    .line 862
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setImageTags(Ljava/util/HashMap;)V

    .line 863
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPrimaryImageAspectRatio()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setPrimaryImageAspectRatio(Ljava/lang/Double;)V

    const-string v1, "AllEpisodes"

    .line 864
    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->val$seasonsAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$12;->val$seasonsAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v3

    invoke-direct {v2, v3, v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
