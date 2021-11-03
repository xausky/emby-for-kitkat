.class final Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 986
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;Ltv/emby/embyatv/browsing/StdGridFragment$1;)V
    .locals 0

    .line 986
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 991
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p3}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$3100(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 992
    instance-of p1, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez p1, :cond_0

    .line 993
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 994
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p3, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p3, p3, Ltv/emby/embyatv/browsing/StdGridFragment;->MainTitle:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ltv/emby/embyatv/browsing/StdGridFragment;->setTitle(Ljava/lang/String;)V

    .line 996
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1, p2}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2802(Ltv/emby/embyatv/browsing/StdGridFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 997
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2900(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    goto :goto_0

    .line 999
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iput-object p2, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 1000
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$3200(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$3300(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1002
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p2}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$3100(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 p3, 0x190

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1003
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mHideLetterJump:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowLetterJump:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$3400(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/ui/JumpList;->setVisibility(I)V

    .line 1004
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->determiningPosterSize:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->loadMoreItemsIfNeeded(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 986
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/browsing/StdGridFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
