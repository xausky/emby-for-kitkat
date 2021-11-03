.class Ltv/emby/embyatv/browsing/TabGridFragment$2;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "TabGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabGridFragment;->setupRetrieveListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabGridFragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 6

    .line 52
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabGridFragment;->hideSpinner()V

    .line 53
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 54
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/TabGridFragment;->updateCounter(I)V

    .line 55
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mAllowLetterJump:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    const-string v0, "SortName"

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getSortBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 57
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setParentId(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getIsRecursive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    .line 60
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getIncludeItemTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/TabGridFragment;->access$000(Ltv/emby/embyatv/browsing/TabGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v1

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v4, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/TabGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v4

    sget-object v5, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v4, v5}, Lmediabrowser/model/entities/SortOrder;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v3, v0, v4}, Ltv/emby/embyatv/ui/JumpList;->init(Landroid/content/Context;Lmediabrowser/model/querying/ItemQuery;Z)V

    .line 62
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabGridFragment;->access$100(Ltv/emby/embyatv/browsing/TabGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/JumpList;->setVisibility(I)V

    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabGridFragment;->access$200(Ltv/emby/embyatv/browsing/TabGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/JumpList;->setVisibility(I)V

    .line 66
    :goto_1
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/TabGridFragment;->setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    .line 67
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabGridFragment;->access$300(Ltv/emby/embyatv/browsing/TabGridFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 69
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/browsing/TabGridFragment$2$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabGridFragment$2$1;-><init>(Ltv/emby/embyatv/browsing/TabGridFragment$2;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 77
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->focusContentOnEntry()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabGridFragment;->focusGrid()V

    .line 82
    :cond_3
    :goto_2
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/base/BaseActivity;->setFocusContentOnEntry(Z)V

    :cond_4
    return-void
.end method
