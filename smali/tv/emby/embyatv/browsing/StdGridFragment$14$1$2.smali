.class Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;
.super Lmediabrowser/apiinteraction/Response;
.source "StdGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/querying/ItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment$14$1;)V
    .locals 0

    .line 775
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 793
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v1, 0x7f100626

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 794
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

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 775
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 778
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 779
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 780
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-boolean v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->val$isMusic:Z

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;)V

    goto :goto_1

    .line 783
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 784
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3, v0}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 785
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    .line 786
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14$1$2;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$14;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method
