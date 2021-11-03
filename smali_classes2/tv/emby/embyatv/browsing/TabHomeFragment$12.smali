.class Ltv/emby/embyatv/browsing/TabHomeFragment$12;
.super Ljava/lang/Object;
.source "TabHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

.field final synthetic val$gridHeader:Landroidx/leanback/widget/HeaderItem;

.field final synthetic val$rowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Landroidx/leanback/widget/ArrayObjectAdapter;Landroidx/leanback/widget/HeaderItem;)V
    .locals 0

    .line 662
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->val$rowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iput-object p3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->val$gridHeader:Landroidx/leanback/widget/HeaderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 665
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isPaid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    new-instance v2, Ltv/emby/embyatv/ui/GridButton;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1005ff

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801ac

    invoke-direct {v2, v1, v3, v4}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-static {v0, v2}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$702(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/ui/GridButton;)Ltv/emby/embyatv/ui/GridButton;

    .line 667
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$800(Ltv/emby/embyatv/browsing/TabHomeFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$700(Ltv/emby/embyatv/browsing/TabHomeFragment;)Ltv/emby/embyatv/ui/GridButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->val$rowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRow;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->val$gridHeader:Landroidx/leanback/widget/HeaderItem;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v3}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$800(Ltv/emby/embyatv/browsing/TabHomeFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 669
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    new-instance v2, Ltv/emby/embyatv/ui/GridButton;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v4, 0x7f1003b6

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080096

    invoke-direct {v2, v1, v3, v4}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-static {v0, v2}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$902(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/ui/GridButton;)Ltv/emby/embyatv/ui/GridButton;

    .line 671
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$800(Ltv/emby/embyatv/browsing/TabHomeFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$900(Ltv/emby/embyatv/browsing/TabHomeFragment;)Ltv/emby/embyatv/ui/GridButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->val$rowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRow;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->val$gridHeader:Landroidx/leanback/widget/HeaderItem;

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$12;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v3}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$800(Ltv/emby/embyatv/browsing/TabHomeFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
