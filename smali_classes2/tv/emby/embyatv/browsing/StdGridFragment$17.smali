.class Ltv/emby/embyatv/browsing/StdGridFragment$17;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->setupEventListeners()V
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

    .line 840
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_5

    const/16 p2, 0x55

    if-ne p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_4

    const/16 p2, 0x61

    if-ne p1, p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p2, 0x13

    if-ne p1, p2, :cond_3

    .line 853
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p2}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2000(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz p2, :cond_3

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p2

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/StdGridFragment;->getGridPresenter()Ltv/emby/embyatv/presentation/IGridPresenter;

    move-result-object v2

    invoke-interface {v2}, Ltv/emby/embyatv/presentation/IGridPresenter;->getNumberOfColumnsOrRows()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 854
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mAlreadyArrivedAtFirstRow:Z

    if-eqz p2, :cond_2

    .line 855
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    instance-of p2, p2, Ltv/emby/embyatv/browsing/BaseTabActivity;

    if-eqz p2, :cond_6

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    check-cast p2, Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/browsing/BaseTabActivity;->requestTabFocus()V

    goto/16 :goto_2

    .line 857
    :cond_2
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iput-boolean v1, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mAlreadyArrivedAtFirstRow:Z

    goto :goto_2

    :cond_3
    const/16 p2, 0x14

    if-ne p1, p2, :cond_6

    .line 860
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p2}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2100(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz p2, :cond_6

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p2

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getGridPresenter()Ltv/emby/embyatv/presentation/IGridPresenter;

    move-result-object v1

    invoke-interface {v1}, Ltv/emby/embyatv/presentation/IGridPresenter;->getNumberOfColumnsOrRows()I

    move-result v1

    if-lt p2, v1, :cond_6

    .line 861
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iput-boolean v0, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mAlreadyArrivedAtFirstRow:Z

    goto :goto_2

    .line 846
    :cond_4
    :goto_0
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p2}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$1900(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 847
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz p2, :cond_6

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p2, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_6

    .line 848
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getGridPresenter()Ltv/emby/embyatv/presentation/IGridPresenter;

    move-result-object p1

    invoke-interface {p1, v0}, Ltv/emby/embyatv/presentation/IGridPresenter;->setPosition(I)V

    .line 849
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iput-boolean v1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mAlreadyArrivedAtFirstRow:Z

    return v1

    .line 844
    :cond_5
    :goto_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaPosition(I)V

    .line 864
    :cond_6
    :goto_2
    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$17;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {p1, p2, v0}, Ltv/emby/embyatv/util/KeyProcessor;->HandleKey(ILtv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)Z

    move-result p1

    return p1
.end method
