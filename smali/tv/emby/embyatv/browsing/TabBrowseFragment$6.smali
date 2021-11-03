.class Ltv/emby/embyatv/browsing/TabBrowseFragment$6;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "TabBrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabBrowseFragment;->refreshCurrentItem(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V
    .locals 0

    .line 484
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 4

    .line 487
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 488
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyArrayItemRangeChanged(II)V

    .line 489
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoAria:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v3, v2, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Ltv/emby/embyatv/itemhandling/BaseRowItem;Landroid/widget/LinearLayout;ZZ)V

    :cond_0
    return-void
.end method
