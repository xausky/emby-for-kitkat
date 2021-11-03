.class Ltv/emby/embyatv/browsing/BaseTabActivity$6;
.super Ljava/lang/Object;
.source "BaseTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/BaseTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V
    .locals 0

    .line 395
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 398
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/TabText;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mCurrentTab:Ltv/emby/embyatv/ui/TabText;

    if-eq v0, v1, :cond_2

    .line 399
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/TabText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mCurrentTab:Ltv/emby/embyatv/ui/TabText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Tab lost focus so not switching..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mCurrentTab:Ltv/emby/embyatv/ui/TabText;

    iput-object v1, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    goto :goto_1

    .line 400
    :cond_1
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$6;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mNewTab:Ltv/emby/embyatv/ui/TabText;

    invoke-static {v0, v1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->access$100(Ltv/emby/embyatv/browsing/BaseTabActivity;Ltv/emby/embyatv/ui/TabText;)V

    :cond_2
    :goto_1
    return-void
.end method
