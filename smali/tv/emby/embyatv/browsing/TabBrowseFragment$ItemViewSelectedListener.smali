.class final Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "TabBrowseFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/TabBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V
    .locals 0

    .line 510
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;Ltv/emby/embyatv/browsing/TabBrowseFragment$1;)V
    .locals 0

    .line 510
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 2

    .line 514
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$200(Ltv/emby/embyatv/browsing/TabBrowseFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p3, p3, Ltv/emby/embyatv/browsing/TabBrowseFragment;->updateContentTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    instance-of p1, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    const/4 p3, 0x0

    if-nez p1, :cond_1

    .line 517
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mTitle:Landroid/widget/TextView;

    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz p2, :cond_0

    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 519
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {p1, p3}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$302(Ltv/emby/embyatv/browsing/TabBrowseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$400(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    return-void

    .line 526
    :cond_1
    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 527
    check-cast p4, Landroidx/leanback/widget/ListRow;

    .line 528
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-virtual {p1, p4, p2}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->onNewViewSelected(Landroidx/leanback/widget/ListRow;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    .line 529
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eq p1, p2, :cond_6

    .line 530
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iput-object p2, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 531
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iput-object p4, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    .line 533
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->ShowFanart:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoAria:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 537
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-virtual {p1, p3}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->updateBackground(Ljava/lang/String;)V

    goto :goto_2

    .line 534
    :cond_3
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBackdropImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$302(Ltv/emby/embyatv/browsing/TabBrowseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$400(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V

    .line 540
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoAria:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 541
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 542
    iget-object p3, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p3, p3, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 543
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/TabBrowseFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 544
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$500(Ltv/emby/embyatv/browsing/TabBrowseFragment;)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 545
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$500(Ltv/emby/embyatv/browsing/TabBrowseFragment;)I

    move-result v0

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 546
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 549
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$600(Ltv/emby/embyatv/browsing/TabBrowseFragment;)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 550
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$600(Ltv/emby/embyatv/browsing/TabBrowseFragment;)I

    move-result v0

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 551
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    :goto_3
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mTitle:Landroid/widget/TextView;

    iget-object p3, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p3, p3, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 556
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$200(Ltv/emby/embyatv/browsing/TabBrowseFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p3, p3, Ltv/emby/embyatv/browsing/TabBrowseFragment;->updateContentTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    :cond_5
    invoke-virtual {p4}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 562
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->loadMoreItemsIfNeeded(J)V

    :cond_6
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 510
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/browsing/TabBrowseFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
