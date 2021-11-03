.class Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "StdGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment$2$1;)V
    .locals 0

    .line 211
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 4

    .line 214
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->waitIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->hideSpinner()V

    .line 216
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "**** letter jump response index %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 218
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 211
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
