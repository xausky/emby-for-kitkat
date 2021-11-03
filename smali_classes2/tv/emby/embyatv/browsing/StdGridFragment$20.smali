.class Ltv/emby/embyatv/browsing/StdGridFragment$20;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "StdGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->setupRetrieveListeners()V
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

    .line 896
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 8

    .line 899
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->hideSpinner()V

    .line 900
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->updateCounter(I)V

    .line 901
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowLetterJump:Z

    const/4 v1, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result v0

    const/16 v4, 0x14

    if-le v0, v4, :cond_3

    const-string v0, "SortName"

    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getSortBy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 902
    new-instance v0, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    const-string v4, "boxsets"

    .line 903
    iget-object v5, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v5, v5, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Lmediabrowser/model/querying/ItemQuery;->setParentId(Ljava/lang/String;)V

    .line 904
    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 905
    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getIsRecursive()Z

    move-result v4

    invoke-virtual {v0, v4}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    .line 906
    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getIncludeItemTypes()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 907
    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v4}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2200(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v4

    iget-object v5, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v5, v5, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v6, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v6, v6, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v6}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v6

    sget-object v7, Lmediabrowser/model/entities/SortOrder;->Descending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v6, v7}, Lmediabrowser/model/entities/SortOrder;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v5, v0, v6}, Ltv/emby/embyatv/ui/JumpList;->init(Landroid/content/Context;Lmediabrowser/model/querying/ItemQuery;Z)V

    .line 908
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHideLetterJump:Z

    if-eqz v0, :cond_2

    .line 909
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2300(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/ui/JumpList;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mLetterButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 912
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mLetterButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/ui/ImageButton;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2400(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/JumpList;->setVisibility(I)V

    goto :goto_2

    .line 916
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2500(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/ui/JumpList;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mLetterButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/ui/ImageButton;->setVisibility(I)V

    .line 919
    :goto_2
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    .line 920
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result v0

    if-nez v0, :cond_4

    .line 921
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2600(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 922
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$20$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$20$1;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment$20;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 929
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->focusGrid()V

    :goto_3
    return-void
.end method
