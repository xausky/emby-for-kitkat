.class Ltv/emby/embyatv/browsing/StdGridFragment$21;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "StdGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->refreshCurrentItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 943
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 947
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyArrayItemRangeChanged(II)V

    .line 949
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 950
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/model/FilterOptions;->isFavoriteOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/model/FilterOptions;->isUnwatchedOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isPlayed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2700(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 953
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->remove(Ljava/lang/Object;)Z

    .line 954
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setTotalItems(I)V

    .line 955
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$21;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->updateCounter(I)V

    :cond_3
    return-void
.end method
