.class Ltv/emby/embyatv/details/FullDetailsActivity$11;
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

.field final synthetic val$nextUpAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 830
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$11;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$11;->val$nextUpAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 6

    .line 833
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$11;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$800(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$11;->val$nextUpAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getItemsLoaded()I

    move-result v0

    if-lez v0, :cond_1

    .line 835
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$11;->val$nextUpAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 836
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 837
    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$11;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$800(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$11;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCanResume()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f100593

    goto :goto_0

    :cond_0
    const v4, 0x7f10054d

    :goto_0
    invoke-virtual {v3, v4}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/ui/TextUnderButton;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
