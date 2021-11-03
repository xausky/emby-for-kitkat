.class Ltv/emby/embyatv/browsing/TabBrowseFragment$7;
.super Ljava/lang/Object;
.source "TabBrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/TabBrowseFragment;
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

    .line 577
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 580
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez v0, :cond_0

    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** In update content for %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v5, v5, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-static {v0, v2}, Ltv/emby/embyatv/browsing/TabBrowseFragment;->access$700(Ltv/emby/embyatv/browsing/TabBrowseFragment;Z)V

    goto :goto_0

    .line 586
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v3, v2, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Ltv/emby/embyatv/itemhandling/BaseRowItem;Landroid/widget/LinearLayout;ZZ)V

    :goto_0
    return-void
.end method
