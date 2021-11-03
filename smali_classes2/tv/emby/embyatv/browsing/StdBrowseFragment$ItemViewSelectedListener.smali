.class final Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "StdBrowseFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 430
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;Ltv/emby/embyatv/browsing/StdBrowseFragment$1;)V
    .locals 0

    .line 430
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 2

    .line 435
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/StdBrowseFragment;->ShowInfoPanel:Z

    if-eqz p1, :cond_0

    .line 437
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p3}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$800(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 438
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ltv/emby/embyatv/ui/ItemPanel;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Ltv/emby/embyatv/ui/ItemPanel;->setVisibility(I)V

    .line 441
    :cond_0
    instance-of p1, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez p1, :cond_1

    .line 442
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 443
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p3}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$200(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p1, p2}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$902(Ltv/emby/embyatv/browsing/StdBrowseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$1000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    return-void

    .line 449
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    move-object p3, p2

    check-cast p3, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iput-object p3, p1, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 450
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/StdBrowseFragment;->ShowInfoPanel:Z

    if-eqz p1, :cond_2

    instance-of p1, p2, Ltv/emby/embyatv/itemhandling/AudioQueueItem;

    if-nez p1, :cond_2

    .line 452
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p2}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$800(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    check-cast p4, Landroidx/leanback/widget/ListRow;

    iput-object p4, p1, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    .line 460
    invoke-virtual {p4}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 461
    invoke-virtual {p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->loadMoreItemsIfNeeded(J)V

    .line 463
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/StdBrowseFragment;->ShowFanart:Z

    if-eqz p1, :cond_3

    .line 464
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-virtual {p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBackdropImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$902(Ltv/emby/embyatv/browsing/StdBrowseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$1000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 430
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
