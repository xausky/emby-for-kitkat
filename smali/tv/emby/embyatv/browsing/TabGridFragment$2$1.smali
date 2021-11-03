.class Ltv/emby/embyatv/browsing/TabGridFragment$2$1;
.super Ljava/lang/Object;
.source "TabGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabGridFragment$2;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/TabGridFragment$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabGridFragment$2;)V
    .locals 0

    .line 69
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/TabGridFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 72
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/TabGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/TabGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/TabGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/TabGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/TabGridFragment$2;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabGridFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f100527

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/TabGridFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
