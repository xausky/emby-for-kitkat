.class Ltv/emby/embyatv/browsing/StdGridFragment$14$1;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

.field final synthetic val$isMusic:Z

.field final synthetic val$isPhotos:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment$14;ZZ)V
    .locals 0

    .line 724
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iput-boolean p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->val$isMusic:Z

    iput-boolean p3, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->val$isPhotos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    .line 728
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 734
    :goto_0
    new-instance v3, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v3}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    .line 735
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setUserId(Ljava/lang/String;)V

    const-string v2, "Genre"

    .line 736
    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v2}, Ltv/emby/embyatv/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "topParentId"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mParentId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v3, v1}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    .line 738
    new-array v2, v0, [Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "random"

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->val$isMusic:Z

    if-eqz v4, :cond_2

    const-string v4, "album,"

    goto :goto_2

    :cond_2
    const-string v4, "SeriesName,"

    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getSortBy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    aput-object p1, v2, v1

    invoke-virtual {v3, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 739
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object p1

    invoke-virtual {v3, p1}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 740
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object p1

    invoke-virtual {v3, p1}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string p1, "Genre"

    .line 741
    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v0, [Ljava/lang/String;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {v3, p1}, Ltv/emby/embyatv/querying/StdItemQuery;->setGenreIds([Ljava/lang/String;)V

    .line 742
    :cond_3
    invoke-virtual {v3, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 743
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->val$isPhotos:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x3e8

    goto :goto_4

    :cond_4
    const/16 p1, 0x1f4

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 744
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->val$isMusic:Z

    if-eqz p1, :cond_5

    const-string p1, "audio"

    :goto_5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_5
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->val$isPhotos:Z

    if-eqz p1, :cond_6

    const-string p1, "photo"

    const-string v0, "video"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_6
    const-string p1, "video"

    goto :goto_5

    :goto_6
    invoke-virtual {v3, p1}, Ltv/emby/embyatv/querying/StdItemQuery;->setMediaTypes([Ljava/lang/String;)V

    .line 746
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->val$isPhotos:Z

    if-eqz p1, :cond_7

    .line 748
    new-instance p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v6}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Lmediabrowser/model/querying/ItemQuery;IZLandroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 749
    new-instance v0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment$14$1;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 772
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    goto :goto_7

    .line 775
    :cond_7
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment$14$1;)V

    invoke-virtual {p1, v3, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    :goto_7
    return v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
