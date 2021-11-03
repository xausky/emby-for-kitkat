.class Ltv/emby/embyatv/browsing/TabHomeFragment$7;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "TabHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;->addActiveRecordings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

.field final synthetic val$active:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$row:Landroidx/leanback/widget/ListRow;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ListRow;)V
    .locals 0

    .line 496
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->val$active:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->val$row:Landroidx/leanback/widget/ListRow;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 499
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** Active recording retrieve finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->val$active:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->val$active:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setRetrieveFinishedListener(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 501
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->val$active:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$100(Ltv/emby/embyatv/browsing/TabHomeFragment;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 502
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$100(Ltv/emby/embyatv/browsing/TabHomeFragment;)I

    move-result v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$7;->val$row:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
