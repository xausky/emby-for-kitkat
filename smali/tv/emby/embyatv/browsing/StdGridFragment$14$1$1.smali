.class Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "StdGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

.field final synthetic val$photos:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment$14$1;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 749
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->val$photos:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 766
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v1, 0x7f100626

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 767
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error playing grid items"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse()V
    .locals 3

    .line 752
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->val$photos:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result v0

    if-lez v0, :cond_0

    .line 753
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->val$photos:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    .line 754
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaPosition(I)V

    .line 755
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-class v2, Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play"

    const/4 v2, 0x1

    .line 756
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 757
    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v1, 0x7f100639

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
