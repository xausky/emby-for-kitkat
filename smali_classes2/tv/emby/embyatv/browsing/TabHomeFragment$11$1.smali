.class Ltv/emby/embyatv/browsing/TabHomeFragment$11$1;
.super Ljava/lang/Object;
.source "TabHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/TabHomeFragment$11;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment$11;)V
    .locals 0

    .line 641
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$11$1;->this$1:Ltv/emby/embyatv/browsing/TabHomeFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 644
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$11$1;->this$1:Ltv/emby/embyatv/browsing/TabHomeFragment$11;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$11;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 645
    :cond_0
    new-instance v0, Ltv/emby/embyatv/browsing/RowRefreshTask;

    invoke-direct {v0}, Ltv/emby/embyatv/browsing/RowRefreshTask;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$11$1;->this$1:Ltv/emby/embyatv/browsing/TabHomeFragment$11;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabHomeFragment$11;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$11$1;->this$1:Ltv/emby/embyatv/browsing/TabHomeFragment$11;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabHomeFragment$11;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/RowRefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
